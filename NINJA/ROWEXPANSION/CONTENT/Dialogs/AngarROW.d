//-------------------------------------
var int Variable_Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor (C_INFO)
{
	npc			 =  DJG_705_ANGAR;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nemohl by ses mi podívat na tuhle zbroj? (Vylepšit Zbroj Templáře Vody).";
};
func int Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_Condition ()
{	
	if (DJG_AngarGotAmulett == FALSE)
	&& (Npc_HasItems(other, ItAr_RNG_TM_RoWExpansion) > 0)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_Info ()
{
    AI_Output(other, self, Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_15_01); //Nemohl by ses mi podívat na tuhle zbroj? 
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_15_02); //Promiň, ale teď nemám čas. Musím najít svůj amulet.
};
//-------------------------------------
var int Variable_Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet (C_INFO)
{
	npc			 =  DJG_705_ANGAR;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nemohl by ses mi podívat na tuhle zbroj? (Vylepšit Zbroj Templáře Vody).";
};
func int Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Condition ()
{	
	if (DJG_AngarGotAmulett == TRUE)
	&& (Npc_HasItems(other, ItAr_RNG_TM_RoWExpansion) > 0)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Info ()
{
    AI_Output(other, self, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_01); //Nemohl by ses mi podívat na tuhle zbroj? 
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_02); //Ukaž mi ji. 
	B_GiveInvItems(other, self, ITAR_RNG_TM_RoWExpansion, 1);
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_03); //Zajímavá, podobá se té kterou nosím já. Co chceš abych s ní udělal?
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_04); //Nemohl by si mi jí vylepšit? 
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_05); //Napadlo mně se zeptat tebe, jelikož se podobá té kterou nosíš.
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_06); //Určitě, bude to snadné.
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_07); //Tady, tohle je co sis představoval ne?
	B_GiveInvItems(self, other, ITAR_RNG_TH_RoWExpansion, 1);
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_08); //Díky, co ti za to dlužím?
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_09); //Nech to být, pomohl si mi najít amulet, to mi stačí.
};
//-------------------------------------
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD (C_INFO)
{
	npc			 =  DJG_705_ANGAR_NW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nemohl by ses mi podívat na tuhle zbroj? (Vylepšit Zbroj Templáře Vody).";
};
