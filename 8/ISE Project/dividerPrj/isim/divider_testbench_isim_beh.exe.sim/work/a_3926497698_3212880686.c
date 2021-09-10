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
static const char *ng0 = "C:/Users/MASHADSERVICE/Desktop/div/dividerPrj/divider.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3926497698_3212880686_p_0(char *t0)
{
    char t20[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1968U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (7 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2088U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2208U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 6036U);
    t6 = (t0 + 2208U);
    t7 = *((char **)t6);
    t6 = (t0 + 6068U);
    t8 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t2, t1, t7, t6);
    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 6036U);
    t6 = (t0 + 2208U);
    t7 = *((char **)t6);
    t6 = (t0 + 6068U);
    t8 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t2, t1, t7, t6);
    if (t8 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3776);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 3840);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t9 = (t0 + 3712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 6117);
    t6 = (t0 + 1968U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 6121);
    t6 = (t0 + 2088U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    goto LAB3;

LAB5:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 3712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 6125);
    *((int *)t1) = 0;
    t2 = (t0 + 6129);
    *((int *)t2) = 3;
    t14 = 0;
    t15 = 3;

LAB7:    if (t14 <= t15)
        goto LAB8;

LAB10:    goto LAB3;

LAB8:    xsi_set_current_line(71, ng0);
    t6 = (t0 + 1968U);
    t7 = *((char **)t6);
    t16 = (3 - 3);
    t3 = (t16 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t6 = (t7 + t5);
    t8 = *((unsigned char *)t6);
    t9 = (t0 + 2328U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    *((unsigned char *)t9) = t8;
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = (3 - 2);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2088U);
    t7 = *((char **)t6);
    t16 = (3 - 3);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t6 = (t7 + t19);
    t8 = *((unsigned char *)t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t21 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 2;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t22 = (0 - 2);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t23;
    t9 = xsi_base_array_concat(t9, t20, t10, (char)97, t1, t21, (char)99, t8, (char)101);
    t12 = (t0 + 1968U);
    t13 = *((char **)t12);
    t23 = (3 - 3);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t12 = (t13 + t25);
    t26 = (3U + 1U);
    memcpy(t12, t9, t26);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t3 = (3 - 2);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t21 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 2;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t16 = (0 - 2);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t17;
    t6 = xsi_base_array_concat(t6, t20, t7, (char)97, t1, t21, (char)99, (unsigned char)2, (char)101);
    t10 = (t0 + 2088U);
    t11 = *((char **)t10);
    t17 = (3 - 3);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t10 = (t11 + t19);
    t23 = (3U + 1U);
    memcpy(t10, t6, t23);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t27 = (t8 == (unsigned char)3);
    if (t27 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t27 = (t8 == (unsigned char)2);
    if (t27 != 0)
        goto LAB14;

LAB15:
LAB12:
LAB9:    t1 = (t0 + 6125);
    t14 = *((int *)t1);
    t2 = (t0 + 6129);
    t15 = *((int *)t2);
    if (t14 == t15)
        goto LAB10;

LAB19:    t16 = (t14 + 1);
    t14 = t16;
    t6 = (t0 + 6125);
    *((int *)t6) = t14;
    goto LAB7;

LAB11:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1968U);
    t6 = *((char **)t1);
    t1 = (t0 + 6036U);
    t7 = (t0 + 2208U);
    t9 = *((char **)t7);
    t7 = (t0 + 6068U);
    t10 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t20, t6, t1, t9, t7);
    t11 = (t0 + 1968U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t13 = (t20 + 12U);
    t3 = *((unsigned int *)t13);
    t4 = (1U * t3);
    memcpy(t11, t10, t4);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t16 = (0 - 3);
    t3 = (t16 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB12;

LAB14:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1968U);
    t6 = *((char **)t1);
    t1 = (t0 + 6036U);
    t7 = (t0 + 2208U);
    t9 = *((char **)t7);
    t7 = (t0 + 6068U);
    t28 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t6, t1, t9, t7);
    if (t28 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB12;

LAB16:    xsi_set_current_line(81, ng0);
    t10 = (t0 + 1968U);
    t11 = *((char **)t10);
    t10 = (t0 + 6036U);
    t12 = (t0 + 2208U);
    t13 = *((char **)t12);
    t12 = (t0 + 6068U);
    t29 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t20, t11, t10, t13, t12);
    t30 = (t0 + 1968U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    t32 = (t20 + 12U);
    t3 = *((unsigned int *)t32);
    t4 = (1U * t3);
    memcpy(t30, t29, t4);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t16 = (0 - 3);
    t3 = (t16 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB17;

}


extern void work_a_3926497698_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3926497698_3212880686_p_0};
	xsi_register_didat("work_a_3926497698_3212880686", "isim/divider_testbench_isim_beh.exe.sim/work/a_3926497698_3212880686.didat");
	xsi_register_executes(pe);
}
