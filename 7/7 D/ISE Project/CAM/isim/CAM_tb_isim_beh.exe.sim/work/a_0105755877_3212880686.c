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
static const char *ng0 = "C:/Users/MASHADSERVICE/Desktop/CAM/CAM/CAM.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_0105755877_3212880686_p_0(char *t0)
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
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1952U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB40;

LAB42:
LAB41:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4528);
    t7 = (t1 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB11:
LAB3:    t1 = (t0 + 4192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 7249);
    *((int *)t1) = 0;
    t7 = (t0 + 7253);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB5:    if (t8 <= t9)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(60, ng0);
    t11 = (t0 + 7249);
    t12 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t11), 8);
    t13 = (t0 + 7249);
    t14 = *((int *)t13);
    t15 = (t14 - 15);
    t16 = (t15 * -1);
    t17 = (8U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 4272);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 8U);
    xsi_driver_first_trans_delta(t19, t18, 8U, 0LL);

LAB7:    t1 = (t0 + 7249);
    t8 = *((int *)t1);
    t2 = (t0 + 7253);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB8;

LAB9:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 7249);
    *((int *)t7) = t8;
    goto LAB5;

LAB10:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1032U);
    t11 = *((char **)t2);
    t26 = *((unsigned char *)t11);
    t27 = (t26 == (unsigned char)3);
    if (t27 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB11;

LAB13:    t2 = (t0 + 1992U);
    t7 = *((char **)t2);
    t24 = *((unsigned char *)t7);
    t25 = (t24 == (unsigned char)3);
    t3 = t25;
    goto LAB15;

LAB16:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4336);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 7257);
    *((int *)t1) = 0;
    t2 = (t0 + 7261);
    *((int *)t2) = t6;
    t8 = 0;
    t9 = t6;

LAB19:    if (t8 <= t9)
        goto LAB20;

LAB22:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB34;

LAB36:
LAB35:    goto LAB17;

LAB20:    xsi_set_current_line(73, ng0);
    t7 = (t0 + 2152U);
    t11 = *((char **)t7);
    t7 = (t0 + 7257);
    t14 = *((int *)t7);
    t15 = (t14 - 15);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t7));
    t17 = (8U * t16);
    t18 = (0 + t17);
    t12 = (t11 + t18);
    t13 = (t0 + 1352U);
    t19 = *((char **)t13);
    t3 = 1;
    if (8U == 8U)
        goto LAB26;

LAB27:    t3 = 0;

LAB28:    if (t3 != 0)
        goto LAB23;

LAB25:
LAB24:
LAB21:    t1 = (t0 + 7257);
    t8 = *((int *)t1);
    t2 = (t0 + 7261);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB22;

LAB33:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 7257);
    *((int *)t7) = t8;
    goto LAB19;

LAB23:    xsi_set_current_line(74, ng0);
    t21 = (t0 + 4336);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t29 = (t23 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 7257);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t1), 4);
    t7 = (t0 + 4400);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t19 = *((char **)t13);
    memcpy(t19, t2, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(76, ng0);
    goto LAB22;

LAB26:    t28 = 0;

LAB29:    if (t28 < 8U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t13 = (t12 + t28);
    t20 = (t19 + t28);
    if (*((unsigned char *)t13) != *((unsigned char *)t20))
        goto LAB27;

LAB31:    t28 = (t28 + 1);
    goto LAB29;

LAB32:    goto LAB24;

LAB34:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t1 = (t0 + 2312U);
    t11 = *((char **)t1);
    t5 = *((int *)t11);
    t6 = (t5 - 15);
    t16 = (t6 * -1);
    t17 = (8U * t16);
    t18 = (0U + t17);
    t1 = (t0 + 4272);
    t12 = (t1 + 56U);
    t13 = *((char **)t12);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 8U);
    xsi_driver_first_trans_delta(t1, t18, 8U, 0LL);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t5 = *((int *)t2);
    t6 = (t5 + 1);
    t1 = (t0 + 4464);
    t7 = (t1 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t6;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t5 = *((int *)t2);
    t6 = xsi_vhdl_pow(2, 4);
    t8 = (t6 - 1);
    t3 = (t5 == t8);
    if (t3 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB35;

LAB37:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4464);
    t7 = (t1 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB38;

LAB40:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4336);
    t7 = (t1 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(96, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 7265);
    *((int *)t1) = 0;
    t2 = (t0 + 7269);
    *((int *)t2) = t6;
    t8 = 0;
    t9 = t6;

LAB43:    if (t8 <= t9)
        goto LAB44;

LAB46:    goto LAB41;

LAB44:    xsi_set_current_line(97, ng0);
    t7 = (t0 + 2152U);
    t11 = *((char **)t7);
    t7 = (t0 + 7265);
    t14 = *((int *)t7);
    t15 = (t14 - 15);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t7));
    t17 = (8U * t16);
    t18 = (0 + t17);
    t12 = (t11 + t18);
    t13 = (t0 + 1352U);
    t19 = *((char **)t13);
    t3 = 1;
    if (8U == 8U)
        goto LAB50;

LAB51:    t3 = 0;

LAB52:    if (t3 != 0)
        goto LAB47;

LAB49:
LAB48:
LAB45:    t1 = (t0 + 7265);
    t8 = *((int *)t1);
    t2 = (t0 + 7269);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB46;

LAB57:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 7265);
    *((int *)t7) = t8;
    goto LAB43;

LAB47:    xsi_set_current_line(98, ng0);
    t21 = (t0 + 4336);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t29 = (t23 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 7265);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t1), 4);
    t7 = (t0 + 4400);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t19 = *((char **)t13);
    memcpy(t19, t2, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(100, ng0);
    goto LAB46;

LAB50:    t28 = 0;

LAB53:    if (t28 < 8U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t13 = (t12 + t28);
    t20 = (t19 + t28);
    if (*((unsigned char *)t13) != *((unsigned char *)t20))
        goto LAB51;

LAB55:    t28 = (t28 + 1);
    goto LAB53;

LAB56:    goto LAB48;

}


extern void work_a_0105755877_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0105755877_3212880686_p_0};
	xsi_register_didat("work_a_0105755877_3212880686", "isim/CAM_tb_isim_beh.exe.sim/work/a_0105755877_3212880686.didat");
	xsi_register_executes(pe);
}
