CP-PCD-PIV-144\_Additional\_Route\_Values.doc

# **IHE Change Proposal**

Tracking information:

| IHE Domain | Patient Care Device (PCD) |
| --- | --- |
| Change Proposal ID: | CP-PCD-144 |
| Change Proposal Status: | Submitted |
| Date of last update: | 2019-08-16 |
| Person assigned: | Bill Haralson |

Change Proposal Summary information:

| Adding information regarding additional Route values |
| --- |
| Submitter's Name(s) and e-mail address(es): | Bill Haralson, bill.haralson@smiths-medical.com |
| Submission Date: | 2019-08-12 |
| Integration Profile(s) affected: | Communicate Infusion Order (PIV) |
| Actor(s) affected: | Infusion Order Programmer(IOP) and Infusion Order Consumer (IOC) |
| IHE Technical Framework or Supplement modified: | PCD TF revision 8.0, dated Oct 23, 2018 |
| Volume(s) and Section(s) affected: | IHE PCD TF Vol 2, Section 3.3.4.4.8 RXR – Pharmacy/Treatment Route Segment |
| Rationale for Change:Define additional values relevant to infusion pumps for the RXR-1 (Route) field in the PCD-03 PIV message. |

**Section 3.3.4.4.8 RXR – Pharmacy/Treatment Route Segment** , replace the descriptive paragraph under RXR-1 Route starting at line xxx with the following:

Definition: This field is the route of administration. The PCD TF requires that this field be valued as one of the following: ^IV^HL70162 for Intravenous, ^EP^HL70162 for Epidural, ^SC^HL70162 for Subcutaneous, ^NG^HL70162 for Nasogastric, ^GTT^HL70162 for Gastrostomy Tube or ^IT^HL70162 for Intrathecal.

Page 1 of 1
