/*
 * Adds new armors.
 *
 * - Requires Ikarus, LeGo
 * - Compatible with Gothic 2 (Addon)
 *
 * Instructions
 * - Initialize from Init_Global with
 *     Patch_RE_Init();
 */

/*
 * Initialization function to be called from Init_Global
 */
func void Patch_RE_Init() {
    HookDaedalusFuncS("DIA_Addon_Lares_GetRangerArmor_Info", "Ninja_RoWExpansion_DIA_Addon_Lares_GetRangerArmor_Info");
};
