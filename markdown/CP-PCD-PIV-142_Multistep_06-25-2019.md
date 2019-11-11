_CP-PCD-PIV-xxx_

_PIV – Multistep_

# **IHE Change Proposal**

Tracking information:

| IHE Domain | Patient Care Devices |
| --- | --- |
| Change Proposal ID: | CP-PCD-PIV-XXX |
| Change Proposal Status: | Submitted |
| Date of last update: | 06/25/2019 |
| Person assigned: | Jeff Rinda |

Change Proposal Summary information:

| PIV – Multistep |
| --- |
| Submitter's Name(s) and e-mail address(es): | Jeff Rinda (jeffrey.rinda@icumed.com) |
| Submission Date: | 06/25/2019 |
| Integration Profile(s) affected: | PIV, DEC, IPEC |
| Actor(s) affected: | IOP, IOC, DOR |
| IHE Technical Framework or Supplement modified: | PCD TF-2 Rev 8 (Oct 23 2018) |
| Volume(s) and Section(s) affected: | Vol 2, section 3.3 |
| Rationale for Change:Extending PIV profile to support multistep infusion orders.Minor additions to terminology to support DEC and IPEC.
 |

_ **Note: The following section is for informational purposes only. The text has been submitted as a separate CP to Volume 1 of the TF.** _

**Multistep**

Multistep refers to a type of program that can deliver a single medication and concentration in a sequence of 2 or more steps where each step may contain different settings for rate, dose, dosing unit, VTBI, and/or duration depending on the pump model.

**Example 1 – Cyclic TPN**

Medication – TPN 1000 mL

Step 1 – 25 mL/hr x 1 hr

Step 2 – 50 mL/hr x 1 hr

Step 3 – 100 mLhr x 6 hr

Step 4 – 50 mL/hr x 1 hr

Step 5 – 25 mL/hr x 1 hr

![](CP-PCD-PIV-142_Multistep_06-25-2019_html_57463d7a3a2067d4.png)

**Example 2 - Initial dose followed by continuous infusion**

Medication – Drug A 500 mg/500 mL

Step 1 – 50 mg over 30 min (100 mg/hr)

Step 2 – 10 mg/hr

Note: Step 1 in this example is sometimes referred to as a "bolus" or "loading dose".

![](CP-PCD-PIV-142_Multistep_06-25-2019_html_6a7425d87ea27bca.png)

**Supported use cases**

- Programming a new multistep infusion
- Programming a new infusion with an initial bolus or loading dose

**Excluded use cases**

- Ramp/taper modes
- Initial bolus or loading dose of the same medication with a _different_ concentration
- Other types of bolus doses

- Change of dose, rate, or other delivery parameters of one or more steps in a confirmed multistep program
  - Some pump models may support changing manually.
- Adding or removing a step to a confirmed multistep program
  - Some pump models may support manual addition or deletion of a step.
- Cancelling or clearing a confirmed multistep program
  - Done manually on pump by user.

_ **Note: The following section is for informational purposes only. The text has been submitted as a separate CP to Volume 2 of the TF.** _

**Multistep**

The ordered medication and concentration must be identical in all steps.

All steps are represented in the BCMA by a single order and a single order ID.

Some pump models may support different dosing units (RXG-15 and 16) among steps (see Example 2 in the PCD TF vol 1, Section 4.4).

**PCD-03 message structure**

When used for multistep the HL7 RGV message structure used by PIV will require repetition of certain segments resulting in some duplication.

The simplified message structure for multistep is shown below.

{} indicates repetition, [] indicates optionality.

MSH

PID

[PV1]

ORC

{

RXG

[TQ1]

RXR

OBX (multiple)

}

Each step must contain:

- Step number in RXG-1 (values are 1...n)
- An OBX segment to indicate the type of the current step
  - OBX-3 = MDCX\_INFUS\_ORDER\_STEP\_TYPE
  - enumerations are "loading dose" or "continuous"
  - "loading dose" is optional and supported in step 1 only
- An OBX segment to indicate the total number of steps in the program
  - OBX-3 = MDCX\_INFUS\_TOTAL\_NUM\_STEPS
- Additional OBX segments containing the pump ID or patient parameters (e.g. height, weight, BSA) as required

The following table applies to how data is provided in PCD-01 and PCD-10 messages when the IPEC or DEC profiles are used for a multistep infusion.

| **Data** | **Term** | **Location within PCD-01 or PCD-10 message** | **Required** |
| --- | --- | --- | --- |
| Current step number | MDCX\_INFUS\_ORDER\_STEP\_NUM | INFUSATE\_SOURCE\_\* | Yes |
| Total number of steps | MDCX\_INFUS\_TOTAL\_NUM\_STEPS | INFUSATE\_SOURCE\_\* | Yes |
| Current step volume to be infused | MDCX\_VOL\_STEP\_TBI | INFUSATE\_SOURCE\_\* |
 |
| Current step volume delivered | MDCX\_VOL\_STEP\_DELIV | INFUSATE\_SOURCE\_\* | Yes |
| Current step volume remaining | MDCX\_VOL\_STEP\_REMAIN | INFUSATE\_SOURCE\_\* |
 |
| Total volume infused for all steps | MDC\_VOL\_FLUID\_DELIV\_TOTAL | INFUSATE\_SOURCE\_\* | Yes |
|
 |
 | \* indicates the appropriate source |
 |

Make the indicated changes to 3.3.4.4.5 RXG - Pharmacy/Treatment Give Segment

**RXG-1 Give Sub-ID Counter**

**When used for a multistep infusion this field contains the step number (1..n).**

**For other uses** see HL7 V2.6 Section 4.14.6.1 for details. The PCD TF does not further constrain this field.

Make the indicated changes beginning at line 890

**3.3.4.4.9 OBX - Observation/Result segment**

Refer to HL7 v2.6: Section 7.4.2x

The HL7 OBX segment is used to transmit a single observation or observation fragment. In the

Point-of-Care Infusion Verification Profile the usage is limited to providing:

1. pump ID

2. patient parameters such as height, weight, or body surface area (BSA)

**3. infusion order step type**

~~3~~~~ **4** ~~. other parameters used to program the pump.

Note that the definition of the OBX segment in this profile is constrained from the definition used in the PCD Observation/Result Message to reflect this limited usage. The broader definition can be found in OBX - Observation/Result segment, Appendix Section B-8.

One OBX segment containing the pump ID must always be present. Additional OBX segments containing patient parameters **, infusion order step type,** or pump programming parameters may optionally follow.

Make the indicated changes beginning at line 910

**OBX-2 Value Type**

The PCD PIV Profile constrains this field as follows:

If OBX-3 refers to a pump ID this field must be empty.

If OBX-3 refers to a patient parameter that conveys a numeric quantity (e.g., patient weight), this value is restricted to NM.

**If OBX-3 refers to an infusion order step type this field must be "ST".**

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

**0^MDCX\_INFUSION\_ORDER\_STEP\_TYPE^MDC**

(Note: Code assignment ~~s~~~~ for last three terms are term is ~~pending as of publication date)

**OBX-4 Observation Sub-ID**

The PC PIV Profile does not further constrain this field.

**OBX-5 Observation Value**

If OBX-3 refers to a pump ID, this field must be empty.

If OBX-3 refers to a patient parameter, this field contains the parameter value.

**If OBX-3 refers to an infusion order step type, this field contains the enumerated value.**

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

**If OBX-3 refers to an infusion order step type, this field must be empty.**

If OBX-3 refers to a pump programming parameter, this field contains the units for the value in OBX-5 Observation Value.

Make the indicated changes beginning at line 1883

**Use of Error Segment in the PIV Profile.**

Add to table:

| **Code** | **Text** | **Example** |
| --- | --- | --- |
| 9041 | Unable to parse multistep program | Applies to multistep infusion only |
| 9042 | Medication is not configured for loading dose | Applies to multistep infusion only |
| 9043 | Medication does not support multistep | Applies to multistep infusion only |
| 9044 | Multistep order type is not supported | Applies to multistep infusion only |
