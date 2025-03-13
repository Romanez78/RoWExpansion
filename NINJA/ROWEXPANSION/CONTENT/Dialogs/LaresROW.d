// [02022024 13:35] Damianut: Replacing the given armor in dialogue, when Lares gives Water Ring's Armor.
func void Ninja_RoWExpansion_DIA_Addon_Lares_GetRangerArmor_Info ()
{
    // Continue an execution of original function
    ContinueCall();
    
    AI_UnequipArmor(hero);
    Npc_RemoveInvItem(hero, ITAR_RANGER_Addon);
    CreateInvItem(hero, ITAR_RNG_L);
    AI_EquipArmor(hero, ITAR_RNG_L);
};
//-------------------------------------
var int Variable_Ninja_RoWExpansion_DIA_Lares_GetArmor;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Lares_GetArmor (C_INFO)
{
	npc			 =  VLK_449_Lares;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Lares_GetArmor_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Lares_GetArmor_Info;
	permanent	 = 	FALSE;
	description	 = 	"Poslal mně za tebou Vatras, říkal že si mám něco vyzvednout. ";
};
func int Ninja_RoWExpansion_DIA_Lares_GetArmor_Condition ()
{	
	if (MIS_Vatras_FindTheBanditTrader == LOG_SUCCESS)
	&& (Npc_KnowsInfo (other, Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares))
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Lares_GetArmor_Info ()
{
    AI_Output(other, self, Ninja_RoWExpansion_DIA_Lares_GetArmor_15_01); //Poslal mně za tebou Vatras, říkal že si mám něco vyzvednout. 
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Lares_GetArmor_15_02); //Vážně? Tím určitě myslel to o čem jsme se bavily...
    B_GiveInvItems(self, other, ITAR_RANGER_Addon, 1);
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Lares_GetArmor_13_03); //Tady máš, zasloužil sis lepší zbroj, bratře kruhu
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Lares_GetArmor_15_04); //Díky.
};
