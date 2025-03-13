//-------------------------------------
var int Ninja_RoWExpansion_SATURAS_GOGETARMOR;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR (C_INFO)
{
	npc			 =  KDW_14000_Addon_Saturas_ADW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_Info;
	permanent	 = 	FALSE;
	important	 =	TRUE;
};
func int Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Addon_Saturas_LanceLeiche))
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_Info ()
{
    AI_Output(self, other, Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_15_01); //Počkej
	AI_Output(self, other, Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_15_02); //Nechceme aby si dopadl stejně jako Lance. Zdejší okolí je nebezpečnější než jsme si myslely. 
    AI_Output(self, other, Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_13_03); //Jdi za Cronosem, měl by pro tebe něco mít.		
};
//-------------------------------------
var int Ninja_RoWExpansion_DIA_Saturas_TemplarArmorKaufen_perm;
// var int DIA_Saturas_TemplarArmor;
/*
 *  [02022024 13:12] Damianut: Repeated identifier: `DIA_Saturas_TemplarArmor`
 *
 *  You have to use different names for variables and instances as well.
 *
 *  And as is written in the documentation of Ninja it is good to start names in the following format:
 *
 *    Ninja_PatchName_VariableName
 *
 *  In case of `var int DIA_Saturas_TemplarArmor;` it will be:
 *
 *    var int Ninja_RoWExpansion_DIA_Saturas_TemplarArmor;
 *
 *  https://github.com/szapp/Ninja/wiki/Inject-Changes#naming-conventions
 */

//-------------------------------------
instance Ninja_RoWExpansion_DIA_Saturas_TemplarArmor (C_INFO)
{
	npc			 =  KDW_14000_Addon_Saturas_ADW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_Info;
	permanent	 = 	FALSE;
	description	 = 	"Stalo se tu mezitím něco zajímavého?";
};
func int Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_Condition ()
{	
	if (Saturas_BroughtTokenAmount >= 3)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_Info ()
{
    AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_01); //Stalo se tu mezitím něco zajímavého?
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_02); //Vlastně ano, při našem průzkumu zdejších ruin jsme našly zajímavou zbroj. Je v překvapivě dobrém stavu.
    AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_03); //Podle jejího vzhledu tušime že patřila členům válečnické kasty zdejších obyvatelů.
    AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_04); //Svým vzhledem připomíná zbroj templářů z tábora v bažinách, zajímavé...
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_05); //Můžeš mi jí dát? Určitě by se mi hodila.
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_06); //Je to sice pozůstatek obyvatelů Jharkendaru, ale dobrá, tvůj ůkol je důležitější.
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_07); //Až bude po všem, tak mi ji ale přines zpátky.
	B_GiveInvItems(self, other, ITAR_RNG_TL, 1);
	Ninja_RoWExpansion_DIA_Saturas_TemplarArmorKaufen_perm = TRUE;	
};
//-------------------------------------
var int DIA_Saturas_BringBackTemplarArmor;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_RavenIsDead (C_INFO)
{
	npc			 =  KDW_14000_Addon_Saturas_ADW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_Info;
	permanent	 = 	True;
	description	 = 	"Přinesl jsem ti zpět tu zbroj Válěčnické kasty.";
};
func int Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_Condition ()
{	
	if (RavenIsDead == TRUE)
	&& (Npc_HasItems(other, ItAr_RNG_TL) > 0)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_Info ()
{
    B_GivePlayerXP(50);
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_15_01); //Přinesl jsem ti zpět tu zbroj Válěčnické kasty, tak jak si chtěl.
	B_GiveInvItems(other, self, ITAR_RNG_TL, 1);
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_15_02); //Dokonce je i stále v dobrém stavu, přijmi mé díky.
};
//-------------------------------------
// var int DIA_Saturas_RavenDeadArmor;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor (C_INFO)
{
	npc			 =  KDW_14000_Addon_Saturas_ADW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_Info;
	permanent	 = 	FALSE;
	description	 = 	"Našly jste něco zajímavého mezitím co jsem bojoval s Ravenem?";
};
func int Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_Condition ()
{	
	if (Npc_KnowsInfo (other, Ninja_RoWExpansion_DIA_Saturas_TemplarArmor))
	&& (RavenIsDead == TRUE)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_Info ()
{
    AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_01); //Našly jste něco zajímavého mezitím co jsem bojoval s Ravenem?
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_02); //Ano, našly jsme další zbroj. Rozhodly jsme se ti ji věnovat jako díky za tvojí pomoc s Ravenem.
    B_GiveInvItems(self, other, ITAR_RNG_TM, 1);
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_03); //Díky.
};
//-------------------------------------
var int Variable_Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor (C_INFO)
{
	npc			 =  KDW_14000_Addon_Saturas_ADW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_Info;
	permanent	 = 	FALSE;
	description	 = 	"Vím kde se schovává nepřítel, potřebuji lepší vybavení.";
};
func int Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_Condition ()
{	
	if (MIS_Vatras_FindTheBanditTrader == LOG_SUCCESS)
	&& (MIS_Saturas_LookingForHousesOfRulers == LOG_SUCCESS)
	&& (MissingPeopleReturnedHome == TRUE)
	&& (SC_ADW_ActivatedAllTelePortStones == TRUE)
	&& (Kapitel >= 5) 
	&& (MadKillerCount <= 4)
	&& (MIS_Vatras_Message == LOG_SUCCESS)
	&& (MIS_SCKnowsWayToIrdorath == TRUE)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_Info ()
{
    AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_01); //Vím kde se schovává nepřítel, potřebuji lepší vybavení. 
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_02); //Vlastně jsme o tom mluvily. 
	AI_Output(self, other, Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_03); //Byl jsi pro nás nesmírně užitečný, a rozhodly jsme se ti dát tuhle zbroj jako naše poděkování.
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_04); //Je to nejlepší zbroj jakou ti může kruh vody poskytnout, jen málo si ji zasloužilo nosit.
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_05); //Taky prosím přijmi tento meč, byl vyroben jako kopie jednoho z nejsilnějších artefaktů mágů vody.	
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_06); //Nos je s rozvahou a ať ti Adanos žehná.
	B_GiveInvItems(self, other, ITAR_RNG_KM, 1);
		B_GiveInvItems(self, other, ITMW_ROZJEMCA, 1);
	AI_Output(other, self, Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_08); //Děkuji.
};
