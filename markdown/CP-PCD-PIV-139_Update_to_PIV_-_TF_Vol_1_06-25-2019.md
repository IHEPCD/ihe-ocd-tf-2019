_CP-PCD-PIV-139_

_Update to PIV section of TF Vol 1_

# **IHE Change Proposal**

Tracking information:

| IHE Domain | Patient Care Devices |
| --- | --- |
| Change Proposal ID: | CP-PCD-PIV-139 |
| Change Proposal Status: | Submitted |
| Date of last update: | 06/26/2019 |
| Person assigned: | Jeff Rinda |

Change Proposal Summary information:

| Update to PIV section of TF Vol 1 |
| --- |
| Submitter's Name(s) and e-mail address(es): | Jeff Rinda (jeffrey.rinda@icumed.com) |
| Submission Date: | 06/21/2019 |
| Integration Profile(s) affected: | PIV |
| Actor(s) affected: | IOP, IOC |
| IHE Technical Framework or Supplement modified: | PCD TF-1 Rev 8 (Oct 23 2018) |
| Volume(s) and Section(s) affected: | Vol 1, section 4 |
| Rationale for Change:Updating text description of PIV profile; adding information about supported use cases.
 |

Final text below. A document containing the additions and edits can be found at the following location:

.[ftp://ftp.ihe.net/Patient\_Care\_Devices/TF\_Maintenance-Yr14-2019-2020/](ftp://iheyr2:interop@ftp.ihe.net/Patient_Care_Devices/TF_Maintenance-Yr14-2019-2020/)

**4 Point-of-Care Infusion Verification (PIV) Profile**

The Point-of-Care Infusion Verification Profile supports the electronic transfer of infusion parameters from a Bedside Computer assisted Medication Administration (BCMA) system to an infusion pump, including general purpose, syringe, or patient-controlled analgesia (PCA) pumps. This capability will reduce errors by eliminating keystroke errors and by increasing the use of automatic dosage checking facilitated by the onboard drug libraries in "smart pump" systems. In addition to the reduction of medication administration errors, this integration may also increase caregiver productivity and provide more contextual information regarding infusion data.

520 Electronic transfer of infusion information from a pump to a clinical information system once an infusion has started can be accomplished using the Communicate PCD Data [PCD-01], possibly with Subscribe to PCD Data [PCD-02] transactions of the IHE-PCD Device Enterprise Communication Profile, as well as Communicate Infusion Event Data [PCD-10] of the IHE-PCD Infusion Pump Event Communication profile.

The goal of the proposed integration is to bring infusion systems into the electronic medication administration and documentation process.

525 **4.1 PIV Actors and Transactions**

Figure 4.1-1 shows the actors involved in the Point-of-Care Infusion Verification Integration Profile and the relevant transactions between them.

![Group 31547](CP-PCD-PIV-139_Update_to_PIV_-_TF_Vol_1_06-25-2019_html_13a311dd48c964be.gif)

530

**Figure 4.1-1: Point-of-Care Infusion Verification Actor Diagram**

Table 4.1-1 lists the transactions for each actor directly involved in the Point-of-Care Infusion Verification Profile. In order to claim support of this Integration Profile, an implementation must perform the required transactions (labeled "R"). Transactions labeled "O" involve optional

535 actors. A complete list of options defined by this Integration Profile and that implementations may choose to support is listed in Section 3.3.

**Table 4.1-1: Point-of-Care Infusion Verification Integration Profile - Actors and Transactions**

| **Actors** | **Transactions** | **Optionality** | **Section in Vol. 2** |
| --- | --- | --- | --- |
| Infusion Order Programmer | Communicate Infusion Order [PCD-03] | R | 3.3 |
| Infusion Order Consumer | Communicate Infusion Order [PCD-03] | R | 3.3 |

540 **4.2 Integration Profile Options**

Options that may be selected for this Integration Profile are listed in the Table 4.2-1 along with the actors to which they apply. Dependencies between options when applicable are specified in notes.

**Table 4.2-1: Evidence Documents - Actors and Options**

| **Actor** | **Options** | **Section in Volume 2** |
| --- | --- | --- |
| Infusion Order Programmer | _No options defined_ | - - |
| Infusion Order Consumer | _No options defined_ | - - |

545

**4.3 PIV Overview**

The goal of the proposed integration is to bring infusion systems into the electronic medication administration process. The following primary steps comprise this process:

•Order medication

550 •Verify order

- Prepare and dispense medication

- Administer medication

While medication errors can occur at each point in this process, this profile is concerned with the "Administer medication" step, where half of the errors made by clinicians involve infusions.

555 These errors usually involve a breach of one of the 5 Rights of Medication Administration:

- Right Patient
- Right Drug
- Right Dose
- Right Route

560 •Right Time

It is the caregiver's responsibility to ensure that these rights are reviewed prior to administering each drug or starting each infusion.

Because manual programming of the pump may still result in administration errors, this profile was developed to support automated programming of the pump, thereby closing the loop

565 between the clinician who uses a BCMA system to verify the 5 Rights and the actual programming of the pump.

The Point-of-Care Infusion Verification Profile supports the electronic transfer of infusion parameters from a Bedside Computer assisted Medication Administration (BCMA) system to an infusion pump. This capability will reduce errors by eliminating keystroke errors and by

570 increasing the use of automatic dosage checking facilitated by the onboard drug libraries in "smart pump" systems. In addition to the reduction of medication administration errors, this integration may also increase caregiver productivity and provide more contextual information regarding infusion data.

Electronic transfer of infusion information from a pump to a clinical information system once an infusion has started can be accomplished using the Communicate PCD Data [PCD-01] or Subscribe to PCD Data [PCD-02]) transactions of the IHE-PCD Device Enterprise Communication Profile, as well as the Communicate Infusion Event Data [PCD-10] transaction of the IHE-PCD Infusion Pump Event Communication profile.

The profile includes the following steps (note that the workflow supported by the BCMA application may not necessarily occur in the order specified):

•Clinician uses BCMA to administer an IV

580 •Clinician identifies self, medication, patient, pump

- Clinician confirms or edits infusion parameters for an IV medication order using the

BCMA

- Infusion parameters are transmitted to pump
- Clinician confirms settings directly on pump and starts infusion

585 **4.3.1 PIV Process Flow**

Figure 4.3-1 shows the sequence diagram for this profile.

![Group 33587](CP-PCD-PIV-139_Update_to_PIV_-_TF_Vol_1_06-25-2019_html_a96ff4d8d860d35c.gif)

**Figure 4.3-1: Basic Process Flow in Point-of-Care Infusion Verification Profile**

**4.4 Use Cases**

The PIV profile supports the following use cases:

**New bag/syringe/container**

**Subsequent bag/syringe/container of same medication**

An infusion order that is used to program an initial or subsequent bag, syringe or other container.

**Rate change or titration of an existing infusion**

An order specifying a titration or change of rate on an existing infusion.

**Patient controlled analgesia (PCA)**

A PCA order for an initial or subsequent bag, syringe or other container on a PCA pump with complete settings including

- Loading dose (initial bolus)
- Patient dose (PCA dose, patient bolus)
- Lockout interval (lockout time)
- Continuous rate (basal rate)
- Dose limit (per hour, per x hours)

**Bolus from an existing infusion**

A bolus can be programmed under the following conditions:

• An infusion is currently programmed on the pump.

• A bolus of the same medication is ordered (i.e. there is a new order in the EHR).

• The EHR workflow provides the nurse the capability to administer the bolus from the same bag or syringe using the PIV PCD-03 transaction to send the bolus order to the pump.

• No assumption is made about the behavior of the pump once the bolus has been delivered. Depending on the pump type or model it may stop, alarm, or resume delivering the underlying infusion.

**Multistep**

Multistep refers to a type of program that can deliver a single medication and concentration in a sequence of 2 or more steps where each step may contain different settings for rate, dose, dosing unit, VTBI, and/or duration depending on the pump model.

**Example 1 – Cyclic TPN**

Medication – TPN 1000 mL

Step 1 – 25 mL/hr x 1 hr

Step 2 – 50 mL/hr x 1 hr

Step 3 – 100 mLhr x 6 hr

Step 4 – 50 mL/hr x 1 hr

Step 5 – 25 mL/hr x 1 hr

![](CP-PCD-PIV-139_Update_to_PIV_-_TF_Vol_1_06-25-2019_html_57463d7a3a2067d4.png)

**Example 2 - Initial dose followed by continuous infusion**

Medication – Drug A 500 mg/500 mL

Step 1 – 50 mg over 30 min (100 mg/hr)

Step 2 – 10 mg/hr

Note: Step 1 in this example is sometimes referred to as a "bolus" or "loading dose".

![](CP-PCD-PIV-139_Update_to_PIV_-_TF_Vol_1_06-25-2019_html_6a7425d87ea27bca.png)

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
