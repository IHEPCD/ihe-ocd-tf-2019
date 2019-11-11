_CP-PCD-PIV-xxx_

_PIV - Bolus from an existing infusion_

# **IHE Change Proposal**

Tracking information:

| IHE Domain | Patient Care Devices |
| --- | --- |
| Change Proposal ID: | CP-PCD-PIV-XXX |
| Change Proposal Status: | Submitted |
| Date of last update: | 06/25/2019 |
| Person assigned: | Jeff Rinda |

Change Proposal Summary information:

| PIV – Bolus from an existing infusion |
| --- |
| Submitter's Name(s) and e-mail address(es): | Jeff Rinda (jeffrey.rinda@icumed.com) |
| Submission Date: | 06/25/2019 |
| Integration Profile(s) affected: | PIV, DEC, IPEC |
| Actor(s) affected: | IOP, IOC, DOR |
| IHE Technical Framework or Supplement modified: | PCD TF-2 Rev 8 (Oct 23 2018) |
| Volume(s) and Section(s) affected: | Vol 2, section 3.3 |
| Rationale for Change:Adding support for the EHR to program a bolus order when an infusion for the same medication is currently programmed and confirmed on an infusion pump. This will extend the PIV profile to support this common use case |

**B

_Note: The following section is for informational purposes only. The text has been submitted as a separate CP to Volume 2 of the TF._

olus from an existing infusion**

Considerations:

- An infusion is currently programmed on the pump.
- A bolus of the same medication is ordered (i.e. there is a new order in the EHR).
- The EHR workflow provides the nurse the capability to administer the bolus from the same bag or syringe using the PIV PCD-03 transaction to send the bolus order to the pump.
- No assumption is made about the behavior of the pump once the bolus has been delivered. Depending on the pump type or model it may stop, alarm, or resume delivering the underlying infusion.

ORC segment

- ORC-1 Order Control = "CH" (change)
- ORC-2 Placer Order Number = bolus order ID (child order ID)
- ORC-8 Parent = parent order ID

A bolus order may be specified in 3 ways:

- Dose or Volume + Rate
- Dose or Volume + Duration
- Rate + Duration

The following table outlines the required and optional data for each type of bolus order.

| **Bolus order type** | **ORC-1** | **ORC-2** | **ORC-8** | **RXG-15/16** | **TQ1 segment** | **OBX segment with OBX-5 = MDCX\_INFUSION\_PROGRAM\_TYPE = clinician-dose** | **OBX segment with OBX-5 = MDC\_FLOW\_FLUID\_PUMP** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Dose or volume + rate | "CH" | Bolus (child) order ID | Parent order ID | Dose or volume amount | O | R | R |
| Dose or volume + duration | "CH" | Bolus (child) order ID | Parent order ID | Dose or volume amount | R | R | O |
| Rate + duration | "CH" | Bolus (child) order ID | Parent order ID | Rate | R | R | O |

OBX segment

- Include an OBX segment specifying the order type of bolus (clinician dose) where

OBX-5 = MDCX\_INFUSION\_ORDER\_TYPE. This term has enumerations "clinician-dose", "loading-dose", and "continuous".

- When RXG-15 and RXG-16 specify a dose, include an OBX segment specifying the rate where OBX-5 = MDC\_FLOW\_FLUID\_PUMP.

When the IPEC or DEC profiles contain information about a bolus from an existing infusion, note that the PCD-01 and PCD-10 messages contain bolus information in the Clinician Dose Info section.

In the OBR segment, OBR-2 Placer Order Number contains the order ID of the bolus as a "child" order ID. OBR-29 Parent is used to contain the order ID for the parent (i.e. the existing infusion).

At line 735, reverse the order of section 3.3.4.4.6 TQ1 Timing Quantity Segment and section 3.3.4.4.7 Usage notes for RXG 17, 18, 23, and 24 so that the Usage notes immediately follow the RXG section.

Make the indicated changes beginning at line 890

**3.3.4.4.9 OBX - Observation/Result segment**

Refer to HL7 v2.6: Section 7.4.2x

The HL7 OBX segment is used to transmit a single observation or observation fragment. In the

Point-of-Care Infusion Verification Profile the usage is limited to providing:

1. pump ID

2. patient parameters such as height, weight, or body surface area (BSA)

**3. infusion order type**

~~3~~~~ **4** ~~. other parameters used to program the pump.

Note that the definition of the OBX segment in this profile is constrained from the definition used in the PCD Observation/Result Message to reflect this limited usage. The broader definition can be found in OBX - Observation/Result segment, Appendix Section B-8.

One OBX segment containing the pump ID must always be present. Additional OBX segments containing patient parameters **, infusion order type,** or pump programming parameters may optionally follow.

Make the indicated changes beginning at line 910

**OBX-2 Value Type**

The PCD PIV Profile constrains this field as follows:

If OBX-3 refers to a pump ID this field must be empty.

If OBX-3 refers to a patient parameter that conveys a numeric quantity (e.g., patient weight), this value is restricted to NM.

**If OBX-3 refers to an infusion order type this field must be "ST".**

If OBX-3 refers to a pump programming parameter, this value should identify the data type of the value in OBX-5 Observation Value.

**OBX-3 Observation Identifier**

The PCD PIV Profile constrains the value of this field to one of the following:

Pump ID

69986^MDC\_DEV\_PUMP\_INFUS\_VMD^MDC

Patient parameter

68063^MDC\_ATTR\_PT\_WEIGHT^MDC

68060^MDC\_ATTR\_PT\_HEIGHT^MDC

188744^MDC\_AREA\_BODY\_SURF\_ACTUAL^MDC

Pump programming parameter

157985^MDC\_DOSE\_PCA\_LIMIT^MDC

157986^MDC\_VOL\_PCA\_DOSE\_LIMIT^MDC

157987^MDC\_TIME\_PD\_PCA\_DOSE\_LIMIT^MDC

157988^MDC\_RATE\_PCA\_MAX\_DOSES\_PER\_HOUR^MDC

157989^MDC\_TIME\_PCA\_LOCKOUT^MDC

157994^MDC\_VOL\_FLUID\_CONTAINER\_START^MDC

~~0~~ **158017** ^MDC\_DOSE\_PCA\_PATIENT^MDC

~~0~~ **158019** ^MDC\_DOSE\_CLINICIAN^MDC

~~0~~ **158018** ^MDC\_DOSE\_LOADING^MDC

**0^MDCX\_INFUS\_ORDER\_TYPE^MDC**

(Note: Code **assignment** ~~assignments for last three terms are~~ pending as of publication date)

**OBX-4 Observation Sub-ID**

The PC PIV Profile does not further constrain this field.

**OBX-5 Observation Value**

If OBX-3 refers to a pump ID, this field must be empty.

If OBX-3 refers to a patient parameter, this field contains the parameter value.

**If OBX-3 refers to an infusion order type, this field contains the enumerated value.**

If OBX-3 refers to a pump programming parameter, this field contains the parameter value.

**OBX-6 Units**

The PCD PIV Profile constrains the value of this field based on the value in OBX-3.

If OBX-3 refers to a pump ID, this field must be empty.

If OBX-3 refers to a patient parameter, this field contains the coded units for the parameter. The preferred format is an MDC value; UCUM values are also acceptable.

When OBX-3 refers to weight, the first three components of OBX-6 must contain one of the following sets of values:

263872^MDC\_DIM\_X\_G^MDC

263875^MDC\_DIM\_KILO\_G^MDC

g^g^UCUM

kg^kg^UCUM

When OBX-3 refers to height, the first three components of OBX-6 must contain one of the following sets of values:

263441^MDC\_DIM\_CENTI\_M^MDC

cm^cm^UCUM

When OBX-3 refers to BSA, the first three components of OBX-6 must contain one of the following sets of values:

263616^ MDC\_DIM\_SQ\_X\_M^MDC

m2^m2^UCUM

**If OBX-3 refers to an infusion order type, this field must be empty.**

If OBX-3 refers to a pump programming parameter, this field contains the units for the value in OBX-5 Observation Value.

Make the indicated changes beginning at line 1883

**Use of Error Segment in the PIV Profile.**

Add to table:

| **Code** | **Text** | **Example** |
| --- | --- | --- |
| 9034 | Not enough fluid or medication in container to deliver bolus | Applies to bolus from existing infusion only |
| 9035 | Parent order ID does not match the currently programmed order | Applies to bolus from existing infusion only |
| 9036 | Medication does not match the currently programmed order | Applies to bolus from existing infusion only |
| 9037 | Medication concentration does not match the currently programmed order | Applies to bolus from existing infusion only |
| 9038 | Bolus order type is not supported | ORC-1 = "CH" not supported by pump |
| 9039 | Medication does not support bolus | Medication in drug library not configured for bolus |
| 9040 | Bolus dose units do not match the currently programmed order | e.g. "mg" instead of "mL" |

**O

Make the indicated changes beginning at line 3136

RC-1 Order Control**

Definition: Determines the function of the order segment. The PCD TF requires that this field be valued as RE **,** ~~or~~ XO **or CH** according to the table below when the RGV^O15^RGV\_O15 Pharmacy/Treatment Give Message is used to send information from the Infusion Order Programmer (IOP) to the Infusion Order Consumer (IOC).

Add to table:

| CH | Program a bolus from an existing infusion |
| --- | --- |

Make the indicated changes to ORC-8 beginning at line 3171 (text is from HL7 v2.6 documentation - section 4.5.1.8

Line 3171

ORC-8 Parent (EIP) 00222

Components: \<Placer Assigned Identifier (EI)\> ^ \<Filler Assigned Identifier (EI)\>

Subcomponents for Placer Assigned Identifier (EI): \<Entity Identifier (ST)\> & \<Namespace ID (IS)\> & \<Universal ID (ST)\> & \<Universal ID Type (ID)\>

Subcomponents for Filler Assigned Identifier (EI): \<Entity Identifier (ST)\> & \<Namespace ID (IS)\> & \<Universal ID (ST)\> & \<Universal ID Type (ID)\>

Definition: This field relates a child to its parent when a parent-child relationship exists. The parent-child mechanism is described under _HL7 Table 0119 - Order control codes_ .

The first component has the same format as ORC-2-placer order number (Section _4.5.1.2,_ "_Placer Order Number_ (EI) 00216"). The second component has the same format as ORC-3-filler order number 4.5.1.3Filler Order Number (Section , "(EI) 00217"). The components of the placer order number and the filler order number are transmitted in sub-components of the two components of this field.

ORC-8-parent is the same as OBR-29-parent. If the parent is not present in the ORC, it must be present in the associated OBR. (This rule is the same for other identical fields in the ORC and OBR and promotes upward and ASTM compatibility.) This is particularly important when results are transmitted in an ORU message. In this case, the ORC is not required and the identifying filler order number must be present in the OBR segments.
