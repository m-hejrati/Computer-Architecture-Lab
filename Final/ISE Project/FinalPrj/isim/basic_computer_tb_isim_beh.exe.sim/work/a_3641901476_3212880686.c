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
static const char *ng0 = "C:/Users/MASHADSERVICE/Desktop/FP/FinalPrj/RAM_Dual_port.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3641901476_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    int t10;
    int t11;
    int t12;
    int t13;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 11195);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB2;

LAB3:    t4 = (t0 + 4216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 4080U, 16U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 11211);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB4;

LAB5:    t4 = (t0 + 4216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 4064U, 16U, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 11227);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB6;

LAB7:    t4 = (t0 + 4216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 4048U, 16U, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 11243);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 4216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 3920U, 16U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 11259);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB10;

LAB11:    t4 = (t0 + 4216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 3760U, 16U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB20;

LAB22:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB23;

LAB24:
LAB21:
LAB13:    t1 = (t0 + 4120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB3;

LAB4:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB5;

LAB6:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB7;

LAB8:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(66, ng0);
    t10 = xsi_vhdl_pow(2, 8);
    t11 = (t10 - 1);
    t1 = (t0 + 11275);
    *((int *)t1) = 0;
    t4 = (t0 + 11279);
    *((int *)t4) = t11;
    t12 = 0;
    t13 = t11;

LAB15:    if (t12 <= t13)
        goto LAB16;

LAB18:    goto LAB13;

LAB16:    xsi_set_current_line(67, ng0);
    t5 = (t0 + 11275);
    t6 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, *((int *)t5), 16);
    t7 = (t0 + 11275);
    t15 = *((int *)t7);
    t16 = (t15 - 255);
    t17 = (t16 * -1);
    t18 = (16U * t17);
    t19 = (0U + t18);
    t8 = (t0 + 4216);
    t20 = (t8 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t6, 16U);
    xsi_driver_first_trans_delta(t8, t19, 16U, 0LL);

LAB17:    t1 = (t0 + 11275);
    t12 = *((int *)t1);
    t2 = (t0 + 11279);
    t13 = *((int *)t2);
    if (t12 == t13)
        goto LAB18;

LAB19:    t10 = (t12 + 1);
    t12 = t10;
    t4 = (t0 + 11275);
    *((int *)t4) = t12;
    goto LAB15;

LAB20:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 6944U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t11 = (t10 - 255);
    t17 = (t11 * -1);
    t18 = (16U * t17);
    t19 = (0U + t18);
    t6 = (t0 + 4216);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t20 = (t8 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t4, 16U);
    xsi_driver_first_trans_delta(t6, t19, 16U, 0LL);
    goto LAB21;

LAB23:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 6944U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t11 = (t10 - 255);
    t17 = (t11 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t10);
    t18 = (16U * t17);
    t19 = (0 + t18);
    t6 = (t4 + t19);
    t7 = (t0 + 4280);
    t8 = (t7 + 56U);
    t20 = *((char **)t8);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    goto LAB21;

}

static void work_a_3641901476_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4344);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4136);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3641901476_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3641901476_3212880686_p_0,(void *)work_a_3641901476_3212880686_p_1};
	xsi_register_didat("work_a_3641901476_3212880686", "isim/basic_computer_tb_isim_beh.exe.sim/work/a_3641901476_3212880686.didat");
	xsi_register_executes(pe);
}
