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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/MASHADSERVICE/Desktop/ram_dual/RAMDualProj/RAM_Dual_port.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_0922431251_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1952U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB3:    t1 = (t0 + 3872);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6816);
    *((int *)t1) = 0;
    t7 = (t0 + 6820);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB5:    if (t8 <= t9)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(61, ng0);
    t11 = (t0 + 6816);
    t12 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t11), 4);
    t13 = (t0 + 6816);
    t14 = *((int *)t13);
    t15 = (t14 - 15);
    t16 = (t15 * -1);
    t17 = (4U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 3952);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 4U);
    xsi_driver_first_trans_delta(t19, t18, 4U, 0LL);

LAB7:    t1 = (t0 + 6816);
    t8 = *((int *)t1);
    t2 = (t0 + 6820);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB8;

LAB9:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6816);
    *((int *)t7) = t8;
    goto LAB5;

LAB10:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1032U);
    t11 = *((char **)t2);
    t26 = *((unsigned char *)t11);
    t27 = (t26 == (unsigned char)3);
    if (t27 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB20:
LAB17:    goto LAB11;

LAB13:    t2 = (t0 + 1992U);
    t7 = *((char **)t2);
    t24 = *((unsigned char *)t7);
    t25 = (t24 == (unsigned char)3);
    t3 = t25;
    goto LAB15;

LAB16:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1512U);
    t12 = *((char **)t2);
    t2 = (t0 + 1352U);
    t13 = *((char **)t2);
    t2 = (t0 + 6640U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t13, t2);
    t6 = (t5 - 15);
    t16 = (t6 * -1);
    t17 = (4U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 3952);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 4U);
    xsi_driver_first_trans_delta(t19, t18, 4U, 0LL);
    goto LAB17;

LAB19:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2152U);
    t7 = *((char **)t1);
    t1 = (t0 + 1352U);
    t11 = *((char **)t1);
    t1 = (t0 + 6640U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t11, t1);
    t6 = (t5 - 15);
    t16 = (t6 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t5);
    t17 = (4U * t16);
    t18 = (0 + t17);
    t12 = (t7 + t18);
    t13 = (t0 + 4016);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB17;

}


extern void work_a_0922431251_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0922431251_3212880686_p_0};
	xsi_register_didat("work_a_0922431251_3212880686", "isim/RAM_Dual_port_tb_isim_beh.exe.sim/work/a_0922431251_3212880686.didat");
	xsi_register_executes(pe);
}
