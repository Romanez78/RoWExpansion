// *********************************************************
// 		  				      My Changes				
// *********************************************************
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
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_15_01"); //Poèkej
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_15_02"); //Nechceme aby si dopadl stejnì jako Lance. Zdejší okolí je nebezpeènìjší než jsme si myslely. 
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_13_03"); //Jdi za Cronosem, mìl by pro tebe nìco mít.		
};
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
	description	 = 	"Saturas øíkal že pro mnì nìco máš";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_15_01"); //Saturas øíkal že pro mnì nìco máš.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_15_02"); //Ano, mám tu pro tebe lepší zbroj. Nechceme ztratit dalšiho èlena kruhu. 
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_13_03"); //Díky, bude se hodit.
    B_GiveInvItems(self, other, ITAR_RNG_H, 1);
	Ninja_RoWExpansion_DIA_Cronos_ArmorKaufen_perm = TRUE;	
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
	description	 = 	"Stalo se tu mezitím nìco zajímavého?";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_01"); //Stalo se tu mezitím nìco zajímavého?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_02"); //Vlastnì ano, pøi našem prùzkumu zdejších ruin jsme našly zajímavou zbroj. Je v pøekvapivì dobrém stavu.
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_03"); //Podle jejího vzhledu tušime že patøila èlenùm váleènické kasty zdejších obyvatelù.
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_04"); //Svým vzhledem pøipomíná zbroj templáøù z tábora v bažinách, zajímavé...
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_05"); //Mùžeš mi jí dát? Urèitì by se mi hodila.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_06"); //Je to sice pozùstatek obyvatelù Jharkendaru, ale dobrá, tvùj ùkol je dùležitìjší.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_07"); //Až bude po všem, tak mi ji ale pøines zpátky.
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
	description	 = 	"Pøinesl jsem ti zpìt tu zbroj Válìènické kasty.";
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
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_15_01"); //Pøinesl jsem ti zpìt tu zbroj Válìènické kasty, tak jak si chtìl.
	B_GiveInvItems(other, self, ITAR_RNG_TL, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_15_02"); //Dokonce je i stále v dobrém stavu, pøijmi mé díky.
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
	description	 = 	"Našly jste nìco zajímavého mezitím co jsem bojoval s Ravenem?";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_01"); //Našly jste nìco zajímavého mezitím co jsem bojoval s Ravenem?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_02"); //Ano, našly jsme další zbroj. Rozhodly jsme se ti ji vìnovat jako díky za tvojí pomoc s Ravenem.
    B_GiveInvItems(self, other, ITAR_RNG_TM, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_03"); //Díky.
};


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
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_15_01"); //Poèkej
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_15_02"); //S tím obchodníkem se zbranìmi sis vedl dobøe.
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_13_03"); //Jdi za Laresem, øekni že jsem tì poslal si nìco vyzvednout.	
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
	description	 = 	"Poslal mnì za tebou Vatras, øíkal že si mám nìco vyzvednout. ";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Lares_GetArmor_15_01"); //Poslal mnì za tebou Vatras, øíkal že si mám nìco vyzvednout. 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Lares_GetArmor_15_02"); //Vážnì? Tím urèitì myslel to o èem jsme se bavily...
    B_GiveInvItems(self, other, ITAR_RANGER_Addon, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Lares_GetArmor_13_03"); //Tady máš, zasloužil sis lepší zbroj, bratøe kruhu
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Lares_GetArmor_15_04"); //Díky.
};
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
	description	 = 	"Nemohl by ses mi podívat na tuhle zbroj? (Vylepšit Zbroj Templáøe Vody).";
};
func int Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_Condition ()
{	
	if (DJG_AngarGotAmulett == FALSE)
	&& (Npc_HasItems(other, ItAr_RNG_TM) > 0)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_Info ()
{
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_15_01"); //Nemohl by ses mi podívat na tuhle zbroj? 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_15_02"); //Promiò, ale teï nemám èas. Musím najít svùj amulet.
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
	description	 = 	"Nemohl by ses mi podívat na tuhle zbroj? (Vylepšit Zbroj Templáøe Vody).";
};
func int Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Condition ()
{	
	if (DJG_AngarGotAmulett == TRUE)
	&& (Npc_HasItems(other, ItAr_RNG_TM) > 0)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_Info ()
{
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_01"); //Nemohl by ses mi podívat na tuhle zbroj? 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_02"); //Ukaž mi ji. 
	B_GiveInvItems(other, self, ITAR_RNG_TM, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_03"); //Zajímavá, podobá se té kterou nosím já. Co chceš abych s ní udìlal?
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_04"); //Nemohl by si mi jí vylepšit? 
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_05"); //Napadlo mnì se zeptat tebe, jelikož se podobá té kterou nosíš.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_06"); //Urèitì, bude to snadné.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_07"); //Tady, tohle je co sis pøedstavoval ne?
	B_GiveInvItems(self, other, ITAR_RNG_TH, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_08"); //Díky, co ti za to dlužím?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_09"); //Nech to být, pomohl si mi najít amulet, to mi staèí.
};
//-------------------------------------
var int Variable_Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD (C_INFO)
{
	npc			 =  DJG_705_ANGAR_NW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nemohl by ses mi podívat na tuhle zbroj? (Vylepšit Zbroj Templáøe Vody).";
};
func int Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_Condition ()
{	
	if (DJG_AngarGotAmulett == TRUE)
	&& (Npc_HasItems(other, ItAr_RNG_TM) > 0)
	{
		return TRUE;
	};
};
func void Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_Info ()
{
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_01"); //Nemohl by ses mi podívat na tuhle zbroj? 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_02"); //Ukaž mi ji. 
	B_GiveInvItems(other, self, ITAR_RNG_TM, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_03"); //Zajímavá, podobá se té kterou nosím já. Co chceš abych s ní udìlal?
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_04"); //Nemohl by si mi jí vylepšit? 
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_05"); //Napadlo mnì se zeptat tebe, jelikož se podobá té kterou nosíš.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_06"); //Urèitì, bude to snadné.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_07"); //Tady, tohle je co sis pøedstavoval ne?
	B_GiveInvItems(self, other, ITAR_RNG_TH, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_08"); //Díky, co ti za to dlužím?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_09"); //Nech to být, pomohl si mi najít amulet, to mi staèí.
};
//-------------------------------------
var int Variable_Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor;
//-------------------------------------
instance Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor (C_INFO)
{
	npc			 =  DJG_705_ANGAR_NW;
	nr			 =  888;
	condition	 = 	Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_Condition;
	information	 = 	Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_Info;
	permanent	 = 	FALSE;
	description	 = 	"Vím kde se schovává nepøítel, potøebuji lepší vybavení.";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_01"); //Vím kde se schovává nepøítel, potøebuji lepší vybavení. 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_02"); //Vlastnì jsme o tom mluvily. 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_03"); //Byl jsi pro nás nesmírnì užiteèný, a rozhodly jsme se ti dát tuhle zbroj jako naše podìkování.
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_04"); //Je to nejlepší zbroj jakou ti mùže kruh vody poskytnout, jen málo si ji zasloužilo nosit.
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_05"); //Nos ji s rozvahou a a ti Adanos žehná.
	B_GiveInvItems(self, other, ITAR_RNG_KM, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_08"); //Dìkuji.
};