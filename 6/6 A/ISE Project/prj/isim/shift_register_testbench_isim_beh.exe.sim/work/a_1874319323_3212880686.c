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
static const char *ng0 = "C:/Users/MASHADSERVICE/Desktop/6/6 A/ISE Project/prj/shift_register.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1874319323_3212880686_p_0(char *t0)
{
    char t22[16];
    char t23[16];
    char t28[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1792U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3880);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 6465);
    t1 = 1;
    if (2U == 2U)
        goto LAB17;

LAB18:    t1 = 0;

LAB19:    if (t1 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 6467);
    t1 = 1;
    if (2U == 2U)
        goto LAB26;

LAB27:    t1 = 0;

LAB28:    if (t1 != 0)
        goto LAB23;

LAB25:
LAB24:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 6471);
    t1 = 1;
    if (2U == 2U)
        goto LAB39;

LAB40:    t1 = 0;

LAB41:    if (t1 != 0)
        goto LAB36;

LAB38:
LAB37:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 6475);
    t1 = 1;
    if (2U == 2U)
        goto LAB52;

LAB53:    t1 = 0;

LAB54:    if (t1 != 0)
        goto LAB49;

LAB51:
LAB50:
LAB12:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 6457);
    t12 = (t0 + 3976);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 4U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 6461);
    t5 = (t0 + 4040);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB11:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t2 = (t0 + 3976);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 4040);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB12;

LAB14:    xsi_set_current_line(71, ng0);
    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t12 = (t0 + 4040);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t13, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB15;

LAB17:    t17 = 0;

LAB20:    if (t17 < 2U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB18;

LAB22:    t17 = (t17 + 1);
    goto LAB20;

LAB23:    xsi_set_current_line(76, ng0);
    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t19 = (3 - 2);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t12 = (t13 + t21);
    t14 = (t0 + 6469);
    t18 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 2;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 2);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t28 + 0U);
    t29 = (t25 + 0U);
    *((int *)t29) = 0;
    t29 = (t25 + 4U);
    *((int *)t29) = 0;
    t29 = (t25 + 8U);
    *((int *)t29) = 1;
    t30 = (0 - 0);
    t27 = (t30 * 1);
    t27 = (t27 + 1);
    t29 = (t25 + 12U);
    *((unsigned int *)t29) = t27;
    t16 = xsi_base_array_concat(t16, t22, t18, (char)97, t12, t23, (char)97, t14, t28, (char)101);
    t27 = (3U + 1U);
    t3 = (4U != t27);
    if (t3 == 1)
        goto LAB32;

LAB33:    t29 = (t0 + 4040);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t16, 4U);
    xsi_driver_first_trans_fast(t29);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t17 = (3 - 2);
    t19 = (t17 * 1U);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t5 = (t0 + 6470);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t23 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 2;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t26 = (0 - 2);
    t21 = (t26 * -1);
    t21 = (t21 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t21;
    t14 = (t28 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t30 = (0 - 0);
    t21 = (t30 * 1);
    t21 = (t21 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t21;
    t11 = xsi_base_array_concat(t11, t22, t12, (char)97, t2, t23, (char)97, t5, t28, (char)101);
    t21 = (3U + 1U);
    t1 = (4U != t21);
    if (t1 == 1)
        goto LAB34;

LAB35:    t15 = (t0 + 3976);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t24 = (t18 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB24;

LAB26:    t17 = 0;

LAB29:    if (t17 < 2U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB27;

LAB31:    t17 = (t17 + 1);
    goto LAB29;

LAB32:    xsi_size_not_matching(4U, t27, 0);
    goto LAB33;

LAB34:    xsi_size_not_matching(4U, t21, 0);
    goto LAB35;

LAB36:    xsi_set_current_line(82, ng0);
    t12 = (t0 + 6473);
    t14 = (t0 + 1992U);
    t15 = *((char **)t14);
    t19 = (3 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t14 = (t15 + t21);
    t18 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (0 - 0);
    t27 = (t26 * 1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t28 + 0U);
    t29 = (t25 + 0U);
    *((int *)t29) = 3;
    t29 = (t25 + 4U);
    *((int *)t29) = 1;
    t29 = (t25 + 8U);
    *((int *)t29) = -1;
    t30 = (1 - 3);
    t27 = (t30 * -1);
    t27 = (t27 + 1);
    t29 = (t25 + 12U);
    *((unsigned int *)t29) = t27;
    t16 = xsi_base_array_concat(t16, t22, t18, (char)97, t12, t23, (char)97, t14, t28, (char)101);
    t27 = (1U + 3U);
    t3 = (4U != t27);
    if (t3 == 1)
        goto LAB45;

LAB46:    t29 = (t0 + 4040);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t16, 4U);
    xsi_driver_first_trans_fast(t29);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6474);
    t5 = (t0 + 1992U);
    t8 = *((char **)t5);
    t17 = (3 - 3);
    t19 = (t17 * 1U);
    t20 = (0 + t19);
    t5 = (t8 + t20);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t23 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t26 = (0 - 0);
    t21 = (t26 * 1);
    t21 = (t21 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t21;
    t14 = (t28 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 3;
    t15 = (t14 + 4U);
    *((int *)t15) = 1;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t30 = (1 - 3);
    t21 = (t30 * -1);
    t21 = (t21 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t21;
    t11 = xsi_base_array_concat(t11, t22, t12, (char)97, t2, t23, (char)97, t5, t28, (char)101);
    t21 = (1U + 3U);
    t1 = (4U != t21);
    if (t1 == 1)
        goto LAB47;

LAB48:    t15 = (t0 + 3976);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t24 = (t18 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB37;

LAB39:    t17 = 0;

LAB42:    if (t17 < 2U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB40;

LAB44:    t17 = (t17 + 1);
    goto LAB42;

LAB45:    xsi_size_not_matching(4U, t27, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(4U, t21, 0);
    goto LAB48;

LAB49:    xsi_set_current_line(88, ng0);
    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t26 = (3 - 3);
    t19 = (t26 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t12 = (t13 + t21);
    t3 = *((unsigned char *)t12);
    t14 = (t0 + 1992U);
    t15 = *((char **)t14);
    t27 = (3 - 3);
    t35 = (t27 * 1U);
    t36 = (0 + t35);
    t14 = (t15 + t36);
    t18 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 3;
    t25 = (t24 + 4U);
    *((int *)t25) = 1;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t30 = (1 - 3);
    t37 = (t30 * -1);
    t37 = (t37 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t37;
    t16 = xsi_base_array_concat(t16, t22, t18, (char)99, t3, (char)97, t14, t23, (char)101);
    t37 = (1U + 3U);
    t6 = (4U != t37);
    if (t6 == 1)
        goto LAB58;

LAB59:    t25 = (t0 + 4040);
    t29 = (t25 + 56U);
    t31 = *((char **)t29);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t16, 4U);
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t26 = (3 - 3);
    t17 = (t26 * -1);
    t19 = (1U * t17);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 1992U);
    t8 = *((char **)t5);
    t21 = (3 - 3);
    t27 = (t21 * 1U);
    t35 = (0 + t27);
    t5 = (t8 + t35);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t23 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 3;
    t14 = (t13 + 4U);
    *((int *)t14) = 1;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t30 = (1 - 3);
    t36 = (t30 * -1);
    t36 = (t36 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t36;
    t11 = xsi_base_array_concat(t11, t22, t12, (char)99, t1, (char)97, t5, t23, (char)101);
    t36 = (1U + 3U);
    t3 = (4U != t36);
    if (t3 == 1)
        goto LAB60;

LAB61:    t14 = (t0 + 3976);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t24 = *((char **)t18);
    memcpy(t24, t11, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB50;

LAB52:    t17 = 0;

LAB55:    if (t17 < 2U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB53;

LAB57:    t17 = (t17 + 1);
    goto LAB55;

LAB58:    xsi_size_not_matching(4U, t37, 0);
    goto LAB59;

LAB60:    xsi_size_not_matching(4U, t36, 0);
    goto LAB61;

}

static void work_a_1874319323_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4104);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1874319323_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1874319323_3212880686_p_0,(void *)work_a_1874319323_3212880686_p_1};
	xsi_register_didat("work_a_1874319323_3212880686", "isim/shift_register_testbench_isim_beh.exe.sim/work/a_1874319323_3212880686.didat");
	xsi_register_executes(pe);
}
