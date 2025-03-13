//-------------------------------------
var int Ninja_RoWExpansion_DIA_Cronos_ArmorKaufen_perm;
var int Ninja_RoWExpansion_CRONOS_GIVEARMORINDEED;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED (C_INFO)
{
	npc			 =  KDW_14010_Addon_Cronos_ADW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_Info;
	permanent	 = 	FALSE;
	description	 = 	"Saturas říkal že pro mně něco máš";
};
func int Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_Condition ()
{	
	if (Npc_KnowsInfo (other, Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR))
	&& (Ninja_RoWExpansion_DIA_Cronos_ArmorKaufen_perm == FALSE)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_Info ()
{
    AI_Output(other, self, Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_15_01); //Saturas říkal že pro mně něco máš.
	AI_Output(self, other, Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_15_02); //Ano, mám tu pro tebe lepší zbroj. Nechceme ztratit dalšiho člena kruhu. 
    AI_Output(other, self, Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_13_03); //Díky, bude se hodit.
    B_GiveInvItems(self, other, ITAR_RNG_H_RoWExpansion, 1);
	Ninja_RoWExpansion_DIA_Cronos_ArmorKaufen_perm = TRUE;	
};
