/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_2951549607_2486610892_init();
    work_a_3006959317_2486610892_init();
    work_a_2735068677_0632001823_init();
    work_a_1197816981_0632001823_init();
    work_a_0541274071_3212880686_init();
    work_a_4257852587_2762913819_init();
    work_a_1114599700_0632001823_init();
    work_a_0064645060_3212880686_init();
    work_a_0109786735_3212880686_init();
    work_a_2780122769_0632001823_init();
    work_a_1028713086_3212880686_init();
    work_a_3257634109_3212880686_init();
    work_a_0175864385_3212880686_init();
    work_a_4053882090_2762913819_init();
    work_a_2973221874_2486610892_init();
    work_a_3112044328_0632001823_init();
    work_a_0786579940_3212880686_init();
    work_a_0832606739_4109858050_init();
    work_a_1043461248_2762913819_init();
    work_a_2742488700_2762913819_init();
    work_a_3641901476_3212880686_init();
    work_a_1901705547_3990940387_init();
    work_a_2983565165_2372691052_init();


    xsi_register_tops("work_a_2983565165_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
