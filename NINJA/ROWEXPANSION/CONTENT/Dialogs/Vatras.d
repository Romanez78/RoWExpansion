//-------------------------------------
var int Variable_Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares (C_INFO)
{
	npc			 =  VLK_439_Vatras;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_Info;
	permanent	 = 	FALSE;
	important	 =	TRUE;
};
func int Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_Condition ()
{	
	if (MIS_Vatras_FindTheBanditTrader == LOG_SUCCESS)
	&& (Npc_KnowsInfo (other, DIA_Addon_Lares_GetRangerArmor))
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_Info ()
{
    AI_Output(self, other, Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_15_01); //Počkej
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_15_02); //S tím obchodníkem se zbraněmi sis vedl dobře.
    AI_Output(self, other, Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_13_03); //Jdi za Laresem, řekni že jsem tě poslal si něco vyzvednout.	
};
