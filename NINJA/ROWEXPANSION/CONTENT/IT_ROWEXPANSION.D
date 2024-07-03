/*
 *  Ninja_RowExpansion_ItemsWithBonuses_UnEquipping
 *  
 *  Note: It is better to put it in separate file, because it is for defining items. To keep order. And load this another file before any file with defined items.
 */
func void Ninja_RowExpansion_ItemsWithBonuses_HPMana_UnEquipping(var int attribute, var int bonus)
{
    // NOTE: There is a pitfall, that in vanilla scripts you can't use variables as parameters of arrays, only constants.
    // I reminded it already. So I have to do comparisions.
    if (ATR_HITPOINTS_MAX == attribute)
    {
        self.attribute[ATR_HITPOINTS_MAX] -= bonus;
        if (self.attribute[ATR_HITPOINTS] > bonus + 1)
        {
            self.attribute[ATR_HITPOINTS] -= bonus;
        }
        else
        {
            self.attribute[ATR_HITPOINTS] = 2;
        };
    } else if (ATR_MANA_MAX == attribute)
    {
        self.attribute[ATR_MANA_MAX] -= bonus;
        if (self.attribute[ATR_MANA] > bonus + 1)
        {
            self.attribute[ATR_MANA] -= bonus;
        }
        else
        {
            self.attribute[ATR_MANA] = 2;
        };
    };
};


const int NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_HP = 50;
const int NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_MANA = 50;
const int NINJA_ROWEXPANSION_ITAR_RNG_TH_BONUS_MANA = 40;
const int NINJA_ROWEXPANSION_ITAR_RNG_TM_BONUS_MANA = 25;
const int NINJA_ROWEXPANSION_ITAR_RNG_TL_BONUS_MANA = 15;
INSTANCE ITAR_RNG_KM (C_Item)
{
	name 					=	"Tìžká Zbroj Kruhu Vody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	140;
	protection [PROT_BLUNT] = 	140;
	protection [PROT_POINT] = 	140;
	protection [PROT_FIRE] 	= 	115;
	protection [PROT_MAGIC] = 	65;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"ITAR_COW_HA.3ds";
	visual_change 			=	"KM_COW_HA.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_RNG_KM;
    on_unequip    			=    UnEquip_ITAR_RNG_KM;
	
	description				=	name;

	TEXT[0]					= 	"+50 Bonus k maximálnímu zdraví a manì";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
FUNC VOID Equip_ItAr_RNG_KM()
{
    // Hitpoints
    self.attribute[ATR_HITPOINTS_MAX] += NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_HP;
	self.attribute[ATR_HITPOINTS] += NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_HP;
    
    // Mana
    self.attribute[ATR_MANA_MAX] += NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_MANA;
	self.attribute[ATR_MANA] += NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_MANA;
};
FUNC VOID UnEquip_ItAr_RNG_KM()
{
    // Hitpoints
    Ninja_RowExpansion_ItemsWithBonuses_HPMana_UnEquipping(ATR_HITPOINTS_MAX, NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_HP);
    
    // Mana
    Ninja_RowExpansion_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, NINJA_ROWEXPANSION_ITAR_RNG_KM_BONUS_MANA);
};
INSTANCE ITAR_RNG_TH (C_Item)
{
	name 					=	"Tìžká Zbroj Templáøe Vody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	65;
	protection [PROT_MAGIC] = 	40;

	value 					=	4000;

	wear 					=	WEAR_TORSO;

	visual 					=	"WOJADANOSH.3ds";
	visual_change 			=	"Hum_TplS_Adanos.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_RNG_TH;
    on_unequip    			=    UnEquip_ITAR_RNG_TH;
	
	description				=	name;

	TEXT[0]					= 	"+40 Bonus k maximální manì";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
FUNC VOID Equip_ItAr_RNG_TH()
{   
    // Mana
    self.attribute[ATR_MANA_MAX] += NINJA_ROWEXPANSION_ITAR_RNG_TH_BONUS_MANA;
	self.attribute[ATR_MANA] += NINJA_ROWEXPANSION_ITAR_RNG_TH_BONUS_MANA;
};
FUNC VOID UnEquip_ItAr_RNG_TH()
{  
    // Mana
    Ninja_RowExpansion_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, NINJA_ROWEXPANSION_ITAR_RNG_TH_BONUS_MANA);
};
INSTANCE ITAR_RNG_TM (C_Item)
{
	name 					=	"Zbroj Templáøe Vody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	75;
	protection [PROT_BLUNT] = 	75;
	protection [PROT_POINT] = 	75;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	30;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"WOJADANOSM.3ds";
	visual_change 			=	"Hum_TplM_Adanos.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_RNG_TM;
    on_unequip    			=    UnEquip_ITAR_RNG_TM;
	
	description				=	name;

	TEXT[0]					= 	"+25 Bonus k maximální manì";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
FUNC VOID Equip_ItAr_RNG_TM()
{   
    // Mana
    self.attribute[ATR_MANA_MAX] += NINJA_ROWEXPANSION_ITAR_RNG_TM_BONUS_MANA;
	self.attribute[ATR_MANA] += NINJA_ROWEXPANSION_ITAR_RNG_TM_BONUS_MANA;
};
FUNC VOID UnEquip_ItAr_RNG_TM()
{  
    // Mana
    Ninja_RowExpansion_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, NINJA_ROWEXPANSION_ITAR_RNG_TM_BONUS_MANA);
};
INSTANCE ITAR_RNG_TL (C_Item)
{
	name 					=	"Lehká Zbroj Templáøe Vody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	65;
	protection [PROT_FIRE] 	= 	30;
	protection [PROT_MAGIC] = 	20;

	value 					=	700;

	wear 					=	WEAR_TORSO;

	visual 					=	"WOJADANOSL.3ds";
	visual_change 			=	"Hum_TplL_Adanos.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_RNG_TL;
    on_unequip    			=    UnEquip_ITAR_RNG_TL;
	
	description				=	name;

	TEXT[0]					= 	"+15 Bonus k maximální manì";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
FUNC VOID Equip_ItAr_RNG_TL()
{   
    // Mana
    self.attribute[ATR_MANA_MAX] += NINJA_ROWEXPANSION_ITAR_RNG_TL_BONUS_MANA;
	self.attribute[ATR_MANA] += NINJA_ROWEXPANSION_ITAR_RNG_TL_BONUS_MANA;
};
FUNC VOID UnEquip_ItAr_RNG_TL()
{  
    // Mana
    Ninja_RowExpansion_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, NINJA_ROWEXPANSION_ITAR_RNG_TL_BONUS_MANA);
};
INSTANCE ITAR_RNG_H (C_Item)
{
	name 					=	"Vyztužená Zbroj Kruhu Vody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	15;

	value 					=	500;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Ranger_ADDON.3ds";
	visual_change 			=	"ARMOR_RANGER_ADDON2.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_RNG_L (C_Item)
{
	name 					=	"Lehká Zbroj Kruhu Vody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	5;

	value 					=	200;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Ranger_ADDON.3ds";
	visual_change 			=	"RdW_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
