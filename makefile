
%.md : %.doc
	w2m $< >$@

%.md : %.docx
	w2m $< >$@
	
MDFILES = \
	CP-PCD-143-MWP_PCDTF_ACM_Use_Optional_OBX_Instance_for_Display_Text_Print_Text.docx \
    CP-PCD-145-MWP_PCDTF_ACM_Alert_Timing_Diagram_01.md \
    CP-PCD-146-MWP_PCDTF_ACM_Alert_Fatigue_04.md \
    CP-PCD-PIV-139_Update_to_PIV_-_TF_Vol_1_06-25-2019.md \
    CP-PCD-PIV-140_Update_to_PIV_-_TF_Vol_2_06-25-2019.md \
    CP-PCD-PIV-141_Bolus_from_existing_infusion_06-25-2019.md \
    CP-PCD-PIV-142_Multistep_06-25-2019.md \
    IHE_PCD_Suppl_IPEC_Rev1.5_TI_2015-11-25.md \
    IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23.md \
    IHE_PCD_TF_Rev8-0_Vol2_FT_2018-10-23.md \
    IHE_PCD_TF_Rev8-0_Vol3_FT_2018-10-23.md \
    Quiet_Hospital_ACM_alert_timing_diagram_07.md \
    TF_vol_1-PIV-06252019.md

all: $(MDFILES) 
#
#
#
#    CP-PCD-143-MWP_PCDTF_ACM_Use_Optional_OBX_Instance_for_Display_Text_Print_Text.md \
