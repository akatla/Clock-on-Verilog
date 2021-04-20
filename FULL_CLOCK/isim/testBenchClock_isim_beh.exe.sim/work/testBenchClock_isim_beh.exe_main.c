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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003056884540_2315745068_init();
    work_m_00000000001407570212_0068024098_init();
    work_m_00000000001989370304_0896015010_init();
    work_m_00000000002840475477_1434260695_init();
    work_m_00000000002552774100_2820646033_init();
    work_m_00000000002974354030_3351739358_init();
    work_m_00000000002055557357_2551213789_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002055557357_2551213789");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
