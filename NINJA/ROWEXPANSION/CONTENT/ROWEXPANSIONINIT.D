/*
 * Menu initialization function called by Ninja every time a menu is opened
 *
 * Here used to inject initialization before very first new game/loading once
 */
func void Ninja_ArmorExpansion_Menu() {
    // Only initialize one time: When the constant "once" is changed to "1" the rest of the function is skipped.
    const int once = 0;
    if (once) { return; };
    once = 1;

    // Initialize Ikarus
    MEM_InitAll();

    // Register script hooks for events and dialogs
    HookDaedalusFuncS("DIA_Addon_Lares_GetRangerArmor_Info", "Ninja_RoWExpansion_DIA_Addon_Lares_GetRangerArmor_Info");

    // Localization
    const int loc = 0; loc = Patch_ROW_GuessLocalization();

    if (loc == Patch_ROW_Lang_EN) {
        Patch_ROW_LocalizeEnglish();
    } else if (loc == Patch_ROW_Lang_PL) {
        Patch_ROW_LocalizePolish();
    } else if (loc == Patch_ROW_Lang_DE) {
        Patch_ROW_LocalizeGerman(); 
    };
    // Else: keep Czech
};

/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_ROWExpansion_Init() {
    // Initialize Ikarus
    MEM_InitAll();
    Patch_ROW_ApplyChanges();
};
