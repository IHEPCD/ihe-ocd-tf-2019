CP-PCD-145-MWP\_PCDTF\_ACM\_Alert\_Timing\_Diagram\_01.doc

_Alert Timing Diagram_

# **IHE Change Proposal**

Tracking information:

| IHE Domain | Patient Care Device (PCD) |
| --- | --- |
| Change Proposal ID: | CP-PCD-145 |
| Change Proposal Status: | Submitted |
| Date of last update: | 2019-09-08 |
| Person assigned: | Monroe Pattillo |

Change Proposal Summary information:

| Alert Timing Diagram |
| --- |
| Submitter's Name(s) and e-mail address(es): | Monroe Pattillo, monroe.pattillo@gmail.com |
| Submission Date: | 2019-09-05 |
| Integration Profile(s) affected: | Alert Communication Management (ACM) |
| Actor(s) affected: | Alert Reporter (AR) |
| IHE Technical Framework or Supplement modified: | ACM profile in PCD TF revision 8.0, dated Oct 23, 2018 |
| Volume(s) and Section(s) affected: | IHE PCD TF Vol 2, section 3.5.4.1.5 Expected Actions |
| Rationale for Change:As a part of the Quiet Hospital Working Group (WG) effort a diagram was created and reviewed within that WG and within the Alert Communication Management (ACM) WG. The diagram depicts the alert dissemination progress triggers back to the ACM Alert Reporter (AR) actor for passing to the alert source. This diagram contains consolidated information that is useful to alert sources in deciding whether or not and when to change the state of their local alarm audio without the need for any direct commands from other actors to change the state of the local alarm audio.This change proposal is to include this diagram in the ACM profile within the PCD Technical Framework (TF) to the end of the section describing AR actor expected actions in response to PCD-05 transactions from the Alert Manager (AM) actor to the AR actor. If the text at the bottom of the diagram is easier to integrate into the section text than to retain it in the diagram that would be acceptable. |

Add the below diagram to the end of section 3.5.4.1.5 Expected Actions, page 48, before line 1215

![Canvas 23](CP-PCD-145-MWP_PCDTF_ACM_Alert_Timing_Diagram_01_html_a9080763a3c810b0.gif)

Page 2 of 2
