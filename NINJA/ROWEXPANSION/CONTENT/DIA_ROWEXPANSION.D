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
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_15_01"); //Po�kej
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_15_02"); //Nechceme aby si dopadl stejn� jako Lance. Zdej�� okol� je nebezpe�n�j�� ne� jsme si myslely. 
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_SATURAS_GOGETARMOR_13_03"); //Jdi za Cronosem, m�l by pro tebe n�co m�t.		
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
	description	 = 	"Saturas ��kal �e pro mn� n�co m�";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_15_01"); //Saturas ��kal �e pro mn� n�co m�.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_15_02"); //Ano, m�m tu pro tebe lep�� zbroj. Nechceme ztratit dal�iho �lena kruhu. 
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_CRONOS_GIVEARMORINDEED_13_03"); //D�ky, bude se hodit.
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
	description	 = 	"Stalo se tu mezit�m n�co zaj�mav�ho?";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_01"); //Stalo se tu mezit�m n�co zaj�mav�ho?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_02"); //Vlastn� ano, p�i na�em pr�zkumu zdej��ch ruin jsme na�ly zaj�mavou zbroj. Je v p�ekvapiv� dobr�m stavu.
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_03"); //Podle jej�ho vzhledu tu�ime �e pat�ila �len�m v�le�nick� kasty zdej��ch obyvatel�.
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_04"); //Sv�m vzhledem p�ipom�n� zbroj templ��� z t�bora v ba�in�ch, zaj�mav�...
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_05"); //M��e� mi j� d�t? Ur�it� by se mi hodila.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_06"); //Je to sice poz�statek obyvatel� Jharkendaru, ale dobr�, tv�j �kol je d�le�it�j��.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_TemplarArmor_15_07"); //A� bude po v�em, tak mi ji ale p�ines zp�tky.
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
	description	 = 	"P�inesl jsem ti zp�t tu zbroj V�l��nick� kasty.";
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
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_15_01"); //P�inesl jsem ti zp�t tu zbroj V�l��nick� kasty, tak jak si cht�l.
	B_GiveInvItems(other, self, ITAR_RNG_TL, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_BringBackTemplarArmor_RavenIsDead_15_02"); //Dokonce je i st�le v dobr�m stavu, p�ijmi m� d�ky.
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
	description	 = 	"Na�ly jste n�co zaj�mav�ho mezit�m co jsem bojoval s Ravenem?";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_01"); //Na�ly jste n�co zaj�mav�ho mezit�m co jsem bojoval s Ravenem?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_02"); //Ano, na�ly jsme dal�� zbroj. Rozhodly jsme se ti ji v�novat jako d�ky za tvoj� pomoc s Ravenem.
    B_GiveInvItems(self, other, ITAR_RNG_TM, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_RavenDeadArmor_15_03"); //D�ky.
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
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_15_01"); //Po�kej
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_15_02"); //S t�m obchodn�kem se zbran�mi sis vedl dob�e.
    AI_Output(self, other, "Ninja_RoWExpansion_DIA_Vatras_GetArmorFromLares_13_03"); //Jdi za Laresem, �ekni �e jsem t� poslal si n�co vyzvednout.	
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
	description	 = 	"Poslal mn� za tebou Vatras, ��kal �e si m�m n�co vyzvednout. ";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Lares_GetArmor_15_01"); //Poslal mn� za tebou Vatras, ��kal �e si m�m n�co vyzvednout. 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Lares_GetArmor_15_02"); //V�n�? T�m ur�it� myslel to o �em jsme se bavily...
    B_GiveInvItems(self, other, ITAR_RANGER_Addon, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Lares_GetArmor_13_03"); //Tady m�, zaslou�il sis lep�� zbroj, brat�e kruhu
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Lares_GetArmor_15_04"); //D�ky.
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
	description	 = 	"Nemohl by ses mi pod�vat na tuhle zbroj? (Vylep�it Zbroj Templ��e Vody).";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_15_01"); //Nemohl by ses mi pod�vat na tuhle zbroj? 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_HelpMeImproveArmor_15_02"); //Promi�, ale te� nem�m �as. Mus�m naj�t sv�j amulet.
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
	description	 = 	"Nemohl by ses mi pod�vat na tuhle zbroj? (Vylep�it Zbroj Templ��e Vody).";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_01"); //Nemohl by ses mi pod�vat na tuhle zbroj? 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_02"); //Uka� mi ji. 
	B_GiveInvItems(other, self, ITAR_RNG_TM, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_03"); //Zaj�mav�, podob� se t� kterou nos�m j�. Co chce� abych s n� ud�lal?
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_04"); //Nemohl by si mi j� vylep�it? 
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_05"); //Napadlo mn� se zeptat tebe, jeliko� se podob� t� kterou nos�.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_06"); //Ur�it�, bude to snadn�.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_07"); //Tady, tohle je co sis p�edstavoval ne?
	B_GiveInvItems(self, other, ITAR_RNG_TH, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_08"); //D�ky, co ti za to dlu��m?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmulet_15_09"); //Nech to b�t, pomohl si mi naj�t amulet, to mi sta��.
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
	description	 = 	"Nemohl by ses mi pod�vat na tuhle zbroj? (Vylep�it Zbroj Templ��e Vody).";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_01"); //Nemohl by ses mi pod�vat na tuhle zbroj? 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_02"); //Uka� mi ji. 
	B_GiveInvItems(other, self, ITAR_RNG_TM, 1);
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_03"); //Zaj�mav�, podob� se t� kterou nos�m j�. Co chce� abych s n� ud�lal?
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_04"); //Nemohl by si mi j� vylep�it? 
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_05"); //Napadlo mn� se zeptat tebe, jeliko� se podob� t� kterou nos�.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_06"); //Ur�it�, bude to snadn�.
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_07"); //Tady, tohle je co sis p�edstavoval ne?
	B_GiveInvItems(self, other, ITAR_RNG_TH, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_08"); //D�ky, co ti za to dlu��m?
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Angar_NowYouHaveTheAmuletNEWWORLD_15_09"); //Nech to b�t, pomohl si mi naj�t amulet, to mi sta��.
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
	description	 = 	"V�m kde se schov�v� nep��tel, pot�ebuji lep�� vybaven�.";
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
    AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_01"); //V�m kde se schov�v� nep��tel, pot�ebuji lep�� vybaven�. 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_02"); //Vlastn� jsme o tom mluvily. 
	AI_Output(self, other, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_03"); //Byl jsi pro n�s nesm�rn� u�ite�n�, a rozhodly jsme se ti d�t tuhle zbroj jako na�e pod�kov�n�.
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_04"); //Je to nejlep�� zbroj jakou ti m��e kruh vody poskytnout, jen m�lo si ji zaslou�ilo nosit.
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_05"); //Nos ji s rozvahou a a� ti Adanos �ehn�.
	B_GiveInvItems(self, other, ITAR_RNG_KM, 1);
	AI_Output(other, self, "Ninja_RoWExpansion_DIA_Saturas_KnowWhereEnemyIsGiveArmor_15_08"); //D�kuji.
};