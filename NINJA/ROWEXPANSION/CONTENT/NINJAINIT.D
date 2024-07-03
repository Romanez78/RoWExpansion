const string Ninja_RoWExpansion_Version = "RoWExpansion 1.0";

/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_RoWExpansion_Init() {
    // Init Ikarus&Lego
    LeGo_MergeFlags(LeGo_PermMem);
    
    MEM_Info(ConcatStrings(ConcatStrings("Initialize ", Ninja_RoWExpansion_Version), "."));
    Patch_RE_Init();
    MEM_Info(ConcatStrings(Ninja_RoWExpansion_Version, " was initialized successfully."));
};
