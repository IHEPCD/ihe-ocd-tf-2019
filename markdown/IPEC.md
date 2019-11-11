IHE Patient Care Device Technical Framework Supplement – Infusion Pump Event Communication (IPEC) \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

**Integrating the Healthcare Enterprise**

![](IHE_PCD_Suppl_IPEC_Rev1.5_TI_2015-11-25_html_7540ccff8bd4335f.jpg)

# **IHE Patient Care Device**

# **Technical Framework Supplement**

# **Infusion Pump Event Communication**

# **(IPEC)**

# **Trial Implementation**

Date: November 25, 2015

Author: IHE Patient Care Device Technical Committee

Email: pcd@ihe.net

**Please verify you have the most recent version of this document.** See [here](http://ihe.net/Technical_Frameworks/) for Trial Implementation and Final Text versions and [here](http://ihe.net/Public_Comment/) for Public Comment versions.

**Foreword**

This is a supplement to the IHE Patient Care Device Technical Framework 5.0. Each supplement undergoes a process of public comment and trial implementation before being incorporated into the volumes of the Technical Frameworks.

This supplement is published on November 25, 2015 for trial implementation and may be available for testing at subsequent IHE Connectathons. The supplement may be amended based on the results of testing. Following successful testing it will be incorporated into the Patient Care Device Technical Framework. Comments are invited and can be submitted at [http://www.ihe.net/PCD\_Public\_Comments](http://www.ihe.net/PCD_Public_Comments/).

This supplement describes changes to the existing technical framework documents.

"Boxed" instructions like the sample below indicate to the Volume Editor how to integrate the relevant section(s) into the relevant Technical Framework volume.

Amend Section X.X by the following:

Where the amendment adds text, make the added text **bold underline**. Where the amendment removes text, make the removed text **bold strikethrough**. When entire new sections are added, introduce with editor's instructions to "add new text" or similar, which for readability are not bolded or underlined.

General information about IHE can be found at: [www.ihe.net](http://www.ihe.net/).

Information about the IHE Patient Care Device domain can be found at: [ihe.net/IHE\_Domains](http://www.ihe.net/IHE_Domains/).

Information about the organization of IHE Technical Frameworks and Supplements and the process used to create them can be found at: [http://ihe.net/IHE\_Process](http://ihe.net/IHE_Process/) and [http://ihe.net/Profiles](http://ihe.net/Profiles/).

The current version of the IHE Patient Care Device Technical Framework can be found at: [http://ihe.net/Technical\_Frameworks](http://ihe.net/Technical_Frameworks/).

**CONTENTS**

Introduction 4

Profile Abstract 4

Open Issues and Questions 4

Closed Issues 5

**Volume 1 – Content Profiles 6**

1.7 History of Annual Changes 6

1.n Copyright Permission 6

2.1 Dependencies among Integration Profiles 6

X Infusion Pump Event Communication (IPEC) Integration Profile 7

X.1 Actors/Transactions 8

X.2 IPEC Options 9

X.3 IPEC Actor Groupings and Profile Interactions 10

X.4 Infusion Pump Event Communication Process Flow 10

X.4.1Standard Use Cases 10

X.4.1.1 Case IPEC-1: Communicate event data to EMR/EHR 10

X.5 IPEC Security Considerations 11

Appendix A Actor Summary Definitions 11

Appendix B Transaction Summary Definitions 11

Glossary 12

**Volume 2 - Transactions 13**

3.10 Communicate Infusion Event Data 13

3.10.1 Scope 13

3.10.2 Use Case Roles 13

3.10.3 Referenced Standard 13

3.10.4 Interaction Diagram 14

3.10.4.1 Communicate Infusion Event Data 14

3.10.4.1.1 Trigger Events 14

3.10.4.1.2 Message Semantics 14

3.10.4.1.3 Expected Actions 15

Appendix X Infusion Pump Events 16

X.1 Basic Infusion Events 16

X.1.1 Event Message – PCD-10 Communicate Infusion Event Data 18

X.1.2 Infusion Pump Events 19

X.1.2.1 Infusion Event Parameters 19

X.1.2.2 Infusion Event Sample Message 55

**EDITORS NOTE:** With the specification of Device Specialization – Infusion Pump profiles, it is anticipated that the pump-specific content of this IPEC Profile will be migrated to these infusion pump content specifications. As a result, in a future cycle, this profile shall be generalized to Event Communication (EC) and will provide a general capability – using the defined PCD-10 transaction – to support all device EC.

# Introduction

This supplement adds sections to the PCD Technical Framework Volume 1 describing the content associated with communicating Infusion Pump device events, and to Volume 2 describing data content and constraints.

## Profile Abstract

The Infusion Pump Event Communication (IPEC) Profile specifies methods for communicating significant clinical and technical events from a Patient Care Device such as infusion pump to an information system which may present it to a clinical user, acts on it in some way or records it. The information is communicated in a data format similar to that of Device Enterprise Communications (DEC) Profile, but differs in that DEC is mainly used for sampled physiological and technical data at timed, equal intervals, while IPEC is used to communicate significant occurrences which happen at unscheduled times. Infusion Pump Event Communications is also related to the Alert Communication Management (ACM) Profile, except that ACM is designed to communicate alarms (physiological and technical) and advisories to a human actor via portable devices, where IPEC is designed for system-to-system communication for automated recording or tracking occurrences which do not necessarily require urgent attention from a person.

## Open Issues and Questions

- For future consideration:

- Include a unique event identifier in order to help in associating related events (delivery starts and delivery stops). Since there are many different use cases in pump operation, it may be that this is not feasible. Further analysis is needed. In the meantime this can be accomplished by using patient, device and order identifiers that are supported in the PCD-10 message.
- Support for subscription option for event messages.
- Harmonize Patient ID Change event with the Point of Care Identity Management (PCIM) work group.
- Possible alignment with the Pharmacy domain through the use of the RAS^O17 message instead of ORU^R42

## Closed Issues

Containment level defined for all events.

# **Volume 1 – Content Profiles**

## 1.7 History of Annual Changes

Add the following bullet to the end of the bullet list in Section 1.7

- Added the Infusion Pump Event Communication Profile which specifies the transmission of event information from infusion pumps to other information systems.
- November 2013 – updated profile to reflect the revisions to the 11073-10101a infusion pump model; additional corrections and clarifications made.
- November 2015 – updated profile to reflect the revisions to the 11073-10101b infusion pump model, incorporated CD-PCD-115 (IPEC Editorial Change), and additional clarifications made.

## 1.n Copyright Permission

No new information.

## 2.1 Dependencies among Integration Profiles

Add the following to Table 2-1

| Integration Profile | Depends On | Dependency Type | Purpose |
| --- | --- | --- | --- |
| Infusion Pump Event Communication | Consistent Time | Each actor implementing IPEC shall be grouped with the Time Client Actor. | Required for consistent time-stamping of event data. |

Add Section X

# X Infusion Pump Event Communication (IPEC) Integration Profile

This document introduces a new profile - Infusion Pump Event Communication. This profile is based on the general observation reporting in the Device Enterprise Communication (DEC) Profile. Infusion Pump Event Communication uses the same general form of interactions among Device Observation Reporter and Device Observation Consumer Actors.

The principal intended uses of IHE Device Enterprise Communication in acute care are to communicate device data to enterprise information systems for:

- Reporting, charting and trending physiological data to assist clinicians in tracking the patients physiological state for situational awareness and care planning
- Near-real-time response to clinically or technically actionable events and situations
- Provision of information for an archival record of device observations, possibly including events, that are clinical, technical, or both

Device Enterprise Communications (DEC) is chiefly designed for the first goal listed based on periodic observation reporting, but has always provided for episodic and event reporting as a subtype of general event reporting.

The Infusion Pump Event Communication Integration Profile is designed to address the third goal of reporting events, specifically infusion pump events. It defines a means for communicating significant events related to medication administration by infusion pumps.

**Events in Medical Device Communications**

An event, in the context of medical device communications, is an occurrence about which it is desired to communicate information between devices and information systems. Events are communicated as soon after their occurrence as is technically feasible, in contrast to other observation reporting from devices to information systems which capture the trend of continuously-varying physiological characteristics indicating the patient's clinical status by communicating observations at regular time intervals. These characteristics are usually then displayed to clinical users in a spreadsheet-like grid or on a trend graph.

One special sort of event is an episodic measurement, that is, one that is not automatically initiated on a regular, timed basis, such as a spot blood pressure cuff reading, or a non-continuous cardiac output measurement. These are initiated manually and the receiving information system has no foreknowledge of when they will occur.

Another special case is an alarm or advisory, where the key outcome of the alert is meant to be some action by a person. The IHE PCD Alert Communication Management (ACM) Profile is focused on the human notification aspect of this.

**Relation of Infusion Pump Event Communication to Alert Communication Management (ACM) Profile**

_See the Glossary in Volume 1 of the PCD Technical Framework (PCD TF-1_) _for definitions of the terms Advisory, Alarm, and Alert._

Alert Communication Management has provided expanded formats with additional attributes for alarms and advisories, with emphasis on transmitting the information to specific individuals who need to be notified at the point of care via portable devices. For purposes of this discussion, a distinction is made between events and alerts.

- Events are operational milestones and key parameter changes. For example, during normal execution of an infusion therapy, non-alarm conditions such as start of delivery, change of rate, switchover from piggyback to primary drug, completion of delivery, transition to KVO, etc. are important to full recording or state awareness for the therapeutic process.
- Alerts, which are distinct from events and are intended to engage a response from the clinician, are supported by the Alert Communication Management Profile.

Clinical information systems must communicate, for real-time high-reliability review and action, and record for documentation purposes:

- Exception Events – physiological or technical, which may indicate conditions either in the patient or in the equipment in use by those caring for the patient, which need attention at stated levels of urgency. These include alarms, appropriately processed for human notification using the Alert Communication Management Profile, but may in addition need to be communicated to information systems for other purposes than immediate notification of persons, such as documentation.
- State transitions – operationally significant changes between discrete states of physiological or technical conditions (for example, "modes" and "settings" for a device, "warning or alarm limit" or "action limit" for a measured physiological parameter).
- Priority may be evaluated by the original sending device or by business rules and clinical protocols in downstream systems. Sources for raw and derived data and interpretations of priority must be documented for audit/forensic purposes, potentially by additions to content of message.

## X.1 Actors/Transactions

Figure X.1-1 shows the actors directly involved in the Infusion Pump Event Communication Integration Profile and the relevant transactions between them. Other actors that may be indirectly involved due to their participation in Device Enterprise Communications (DEC) or Point-of-care Infusion Verification (PIV), etc., are not necessarily shown.

![](IHE_PCD_Suppl_IPEC_Rev1.5_TI_2015-11-25_html_84c66a35902251a5.gif)

Figure X.1-1: Infusion Pump Event Communication Actor Diagram

Table X.1-1 lists the transactions for each actor directly involved in the Infusion Pump Event Communication Profile. In order to claim support of this Integration Profile, an implementation must perform the required transactions (labeled "R"). Transactions labeled "O" are optional.

Table X.1-1: Infusion Pump Event Communication Integration Profile - Actors and Transactions

| Actors | Transactions | Optionality | Section in Vol. 2 |
| --- | --- | --- | --- |
| Device Observation Reporter | Communicate Infusion Event Data | R | Z.1 |
| --- | --- | --- | --- |
| Device Observation Consumer | Communicate Infusion Event Data | R | Z.1 |

## X.2 IPEC Options

The IHE PCD Infusion Pump Event Communication Profile does not define any options.

## X.3 IPEC Actor Groupings and Profile Interactions

None

## X.4 Infusion Pump Event Communication Process Flow

### X.4.1 Standard Use Cases

#### X.4.1.1 Case IPEC-1: Communicate event data to EMR/EHR

Data from all of the patient care devices associated with a particular patient is communicated by a Gateway, Device or Clinical Information System (CIS) implementing the DOR Actor to an EMR/EHR, implementing the DOC Actor. This document only covers event data received from infusion pumps. Discrete parameters representing the device's state at or near the time of the event are included. The data is time stamped with a consistent time across the data from the respective patient care devices.

The primary intent is communication of structured data; however, provisions are made for inclusion of unstructured data. The application provides facilities to bind an authoritative enterprise patient identifier required for inclusion of the PCD data in the patient record. The workflow for associating the authoritative enterprise patient identifier to the PCD data is outside the scope of the current PCD TF.

![](IHE_PCD_Suppl_IPEC_Rev1.5_TI_2015-11-25_html_6f0aa04775769846.gif)

Figure X.4.1.1-1: Basic Process Flow in Infusion Pump Event Communication Profile

## X.5 IPEC Security Considerations

The IPEC Profile does not address issues of privacy, security, and confidentiality associated with cross-enterprise communication of PCD data. The assumption is made that the IPEC Profile is implemented in a single enterprise on a secure network.

**Appendix A Actor Summary Definitions**

This integration profile will not add any new actors.

**Appendix B Transaction Summary Definitions**

**Infusion Pump Event –** An event, in the context of infusion pump device communications, is an occurrence about which it is desired to communicate information between Infusion Pump devices and Clinical Information Systems. For example, during normal execution of an infusion therapy, non-alarm conditions such as start of delivery, change of rate, switchover from piggyback to primary drug, completion of delivery, transition to KVO, etc., are important to full documentation of the IV administration.

# Glossary

Add the following terms to the Glossary:

**Event:** an occurrence about which it is desired to communicate information between devices and information systems. Events include operational milestones and key parameter changes. Alarms are considered to be a subset of events.

**Program:** Settings used to control the operation of the pump. A program typically initiated by the clinician and entered manually on the device. Once the settings are confirmed, the clinician can then start the infusion.

**Auto Program:** A pump program in which some or all settings are received from another system such as EMR or BCMA system. When an auto-program is received on the pump, the clinician will enter any additional required settings, confirm them, and start the infusion.

**Delivery:** The infusion pump mechanism for moving fluid into a patient is engaged.

**KVO:** Keep Vein Open. A fluid delivery mode that may occur once the programmed volume has been infused.

# **Volume 2 - Transactions**

Add Section 3.10

## 3.10 Communicate Infusion Event Data

This section corresponds to the Communicate Infusion Event Data transaction of the IHE Technical Framework. Communicate Infusion Event Data is used by the DOR and DOC Actors.

### 3.10.1 Scope

This transaction is used to communicate infusion event data from:

- A Device Observation Reporter (DOR) to a Device Observation Consumer (DOC).

### 3.10.2 Use Case Roles

![](IHE_PCD_Suppl_IPEC_Rev1.5_TI_2015-11-25_html_4c34a412f55144c9.gif)

**Actor:** Device Observation Reporter

**Role:** Sends infusion event data to DOC

**Actor:** Device Observation Consumer

**Role:** Receives infusion event data from DOR

### 3.10.3 Referenced Standard

- HL7® - Health Level 7 Version 2.6 Ch7 Observation Reporting
- ISO/IEEE 11073-10101 Nomenclature
- IEEE P11073-10101a Nomenclature

### 3.10.4 Interaction Diagram

#### ![](IHE_PCD_Suppl_IPEC_Rev1.5_TI_2015-11-25_html_c35d3abc98517c1a.gif)


####


####


####


####


####


####


####


####


#### 3.10.4.1 Communicate Infusion Event Data

Event messages are generated by the infusion pump or Gateway during normal execution of an infusion therapy. Example of such events are start of infusion delivery, rate change or transition from piggyback to primary or transition to KVO. This information is sent from a DOR to a DOC.

Note that while a system is off-line, all events should be buffered and then communicated when communication is established again. Event time stamps should indicate when the event occurred, not when it was communicated.

##### 3.10.4.1.1 Trigger Events

The ORU^R42^ORU\_R01 message is an unsolicited update initiated by the Device Observation Reporter. The ORU^R42 can be sent with or without a preceding order, since it is common in a clinical setting for device data to be reported without a specific order having been transacted in the information system (that is, the reporting is the result of a "standing order" for monitoring in a particular clinical situation).

##### 3.10.4.1.2 Message Semantics

Refer to the HL7® standard for the ORU message of HL7 2.6 Chapter 7 and the general message semantics.

The ORU^R42^ORU\_R01 message structure provides the mechanism for mapping the hierarchical structure of an IEEE 11073 containment tree to a series of OBX segments. See the discussion of how the containment is represented using a "dotted notation" in field OBX-4 Observation Sub-ID in the PCD TF-2: Appendix B.8.

See "ISO/IEEE Nomenclature mapping to HL7 OBX-3" in the PCD TF-2: Appendix A.1 for further information on the mapping rules.

##### 3.10.4.1.3 Expected Actions

The ORU^R42^ORU\_R01 message is sent from the DOR to the DOC. Upon receipt the DOC validates the message and responds with an acknowledgement as defined in PCD TF-2: Appendix G.1, Acknowledgment Modes.

**Appendix X Infusion Pump Events**

This appendix is intended to provide background information to support a mechanism for the transmission of event information for infusion pumps. Common infusion modalities for infusion pumps may include continuous, piggyback, bolus, multi-step, and intermittent functionality. A major challenge in reporting infusion pump events is that although pumps are able to report programmed and operational parameters, they are typically not "aware" of how or why they are being used clinically. In medical environments there are an enormous number of use cases for administering an infusion using a pump. Even a routine delivery of an amount of fluid may involve several instances where the infusion is paused or stopped and then restarted (either within seconds or after several hours or more). The infusion rate may be changed, or an alarm may cause the infusion to stop until the alarm is addressed. For various practical and clinical reasons, the values programmed on the pump by the clinician may not relate to the volume that the physician ordered, the actual volume of the fluid container that was hung, or the rate at which the infusion was ordered.

All current pump systems do not report event information the same way. The same information may be represented differently, or a different set of information may be reported. Information may be reported periodically or episodically, but not in accordance with a common specification.

As a result, a decision has been made to standardize a small number of basic operational events. In combination with pump mode and status information, these can be used to express the various key operational components of an infusion over time. Systems that receive event information, such as EMR or BCMA systems, have the clinical/medication order information and will need to reconcile the reported operational events with this information.

**X.1 Basic Infusion Events**

It may be helpful to think of an infusion as a series of delivery segments, each of which is bounded by one of the following events:

- Delivery Start
- Delivery Stop
- Delivery Complete

There are also several other operational events not related to fluid delivery:

- Communication Status Change – communication between pump and gateway is lost or resumed
- Program Cleared – pump settings are cleared (indicating that a new program will be initiated)
- Auto-Program Cleared – an auto-program was received on the pump but the programmed settings were cleared on the pump prior to starting delivery
- Patient Change
- Patient ID Change
- Patient Parameter Change (e.g., weight, height, BSA)
- Pump Volume Counters Cleared
- Device Time Changed

The following diagram illustrates a typical scenario where a bag of fluid is infused and a rate change is made:

- An infusion is started at 75 mL/hr. A volume to be infused is programmed (not shown).
- After a period of time the infusion is stopped (paused), perhaps in order to move the patient.
- The infusion is resumed at 100 mL/hr.
- The programmed volume to be infused is met (delivery is complete).
- Pump switches to KVO (keep vein open) mode.
- Pump is stopped.

![](IHE_PCD_Suppl_IPEC_Rev1.5_TI_2015-11-25_html_cc5e553d6f6c4c14.jpg)

Figure X.1-1: Infusion with a Rate Change

**X.1.1 Event Message – PCD-10 Communicate Infusion Event Data**

The structure of the message differs from the PCD-01 message (ORU^R01) in the following ways

- MSH-9.2 contains a new trigger event code (R42) assigned for infusion event data.
- MSH-21.3 contains the PCD-10 unique profile identifier. The OID identifier assigned to PCD-10 is "1.3.6.1.4.1.19376.1.6.4.10".

Each PCD-10 message contains only information relevant to the specific device and fluid source on which the event occurred. Each PCD-10 message contains a single event. Only information pertinent to the event is included.

**X.1.2 Infusion Pump Events**

Table X.1.2-1: Infusion Pump Events

| Event | MDC Code | Required by Profile |
| --- | --- | --- |
| Delivery Start | MDC\_EVT\_PUMP\_DELIV\_START | Yes |
| Delivery Stop | MDC\_EVT\_PUMP\_DELIV\_STOP | Yes |
| Delivery Complete | MDC\_EVT\_PUMP\_DELIV\_COMP | Yes |
| Communication Status Change | MDC\_EVT\_COMM\_STATUS\_CHANGE | No |
| Program Cleared | MDC\_EVT\_PUMP\_PROG\_CLEARED | No |
| Auto-Program Cleared | MDC\_EVT\_PUMP\_AUTO\_PROG\_CLEARED | No |
| Patient Change | MDC\_EVT\_PATIENT\_CHANGE | No |
| Patient ID Change | MDC\_EVT\_PATIENT\_ID\_CHANGE | No |
| Patient Parameter Change | MDC\_EVT\_PATIENT\_PARAMETER\_CHANGE | No |
| Pump Volume Counters Cleared | MDC\_EVT\_PUMP\_VOL\_COUNTERS\_CLEARED | No |
| Device Time Changed | MDC\_EVT\_DEVICE\_TIME\_CHANGED | No |

**X.1.2.1 Infusion Event Parameters**

Infusion Event Parameters are defined in separate Infusion Pump Model and Infusion Pump Terms documents. Current versions of these documents can be found on the IHE Patient Care Devices Wiki page entitled "PCD Reference Pages" ([http://wiki.ihe.net/index.php?title=Category:PCD\_Reference\_Pages](http://wiki.ihe.net/index.php?title=Category:PCD_Reference_Pages)).

The names of the infusion pump event parameters that are used in subsequent tables correspond to MDC codes as shown in Table X.1.2.1-1 below:

Table X.1.2.1-1: Mapping of Infusion Pump Event Parameters to MDC Codes

| Parameter | MDC Code |
| --- | --- |
|

**Pump Delivery Info Parameters:**
 |
| --- |
| Infusing Status | MDC\_PUMP\_INFUSING\_STATUS |
| Current Pump Fluid Flow | MDC\_FLOW\_FLUID\_PUMP\_CURRENT |
| Pump Active Sources | MDC\_DEV\_PUMP\_ACTIVE\_SOURCES |
|

**Active Source Parameters:**
 |
| Current Delivery Status | MDC\_DEV\_PUMP\_CURRENT\_DELIVERY\_STATUS |
| Program Delivery Mode | MDC\_DEV\_PUMP\_PROGRAM\_DELIVERY\_MODE |
| Pump Not Delivering Reason | MDC\_DEV\_PUMP\_NOT\_DELIVERING\_REASON |
| Source Channel Label | MDC\_DEV\_PUMP\_SOURCE\_CHANNEL\_LABEL |
| Rate | MDC\_FLOW\_FLUID\_PUMP |
| Dose Rate | MDC\_RATE\_DOSE |
| Volume Programmed | MDC\_VOL\_FLUID\_TBI |
| Current Segment Volume Delivered | MDC\_VOL\_FLUID\_DELIV\_SEGMENT |
| Cumulative Volume Delivered | MDC\_VOL\_FLUID\_DELIV\_TOTAL |
| Volume Remaining | MDC\_VOL\_FLUID\_TBI\_REMAIN |
| Time Remaining | MDC\_TIME\_PD\_REMAIN |

For IPEC delivery events, the DOR should send all parameters that are known for the infusion.

The following table outlines the parameters that are typically sent with each Delivery Start, Stop, and Complete event, with additional constraints as noted. Refer to the Infusion Pump Model and Infusion Pump Terms documents for the other parameters that may be reported with each event.

Table X.1.2.1-2: Infusion Pump Delivery Event Parameters

| PARAMETER | NOTES |
| --- | --- |
| **Pump Delivery Info Parameters:** |
| --- |
| Infusing Status | Required for Delivery Start, Stop, and Complete. |
| Current Pump Fluid Flow | Required for Delivery Start, Stop, and Complete. |
| Pump Active Sources | Required for Delivery Start, Stop, and Complete. |
| **Active Source Parameters:** |
| Current Delivery Status | Required for Delivery Start, Stop, and Complete. |
| Program Delivery Mode | Required for Delivery Start, Stop, and Complete. |
| Pump Not Delivering Reason | Required for Delivery Stop and Delivery Complete if Current Delivery Status = pump-delivery-status-not-delivering; not applicable for Delivery Start. |
| Source Channel Label | Required for Delivery Start, Stop, and Complete. |
| Current Segment Volume Delivered Note 1 | For Delivery Stop and Delivery Complete, either this parameter or Cumulative Volume Delivered is required; optional for Delivery Start. |
| Cumulative Volume Delivered Note 1 | For Delivery Stop and Delivery Complete, either this parameter or Current Segment Volume Delivered is required; optional for Delivery Start. |

Note 1: When Pump Active Sources is primary or secondary, this parameter is reported under the corresponding containment group. When Pump Active Sources is PCA, loading, clinician, or intermittent, this parameter is reported under the containment group for the fluid source (primary or secondary).

The following table outlines the parameters that are sent with the Communication Status Change event.

Table X.1.2.1-3: Infusion Pump Communication Status Change Event Parameters

| PARAMETER | NOTES |
| --- | --- |
| Communication Status | Required. |
| --- | --- |

Table X.1.2.1-4: Clinical Scenarios describes the mapping of clinical scenarios to pump events.

Notes:

- The term "delivery segment" refers to the period between a MDC\_EVT\_PUMP\_DELIV\_START event and the next MDC\_EVT\_PUMP\_DELIV\_STOP or MDC\_EVT\_PUMP\_DELIV\_COMP event
- Although the Pump Active Sources parameters can identify multiple sources, there is only one active source at a given time in each of the scenarios in the table
- For Pump Active Sources, the value "pump-source-info-\*" indicates that either pump-source-info-primary or pump-source-info-secondary is a valid value for the event
- When Pump Active Sources is one of the following:

- pump-source-info-pca
- pump-source-info-loading
- pump-source-info-clinician
- pump-source-info-intermittent

parameter values specific to that dose are reported within a corresponding containment group (reflected in the scenarios as "Active Source Parameters (pump-source-info-...)". Parameters that apply to the overall delivery for the active fluid source (such as Cumulative Volume Delivered) are reported within a separate containment group for that source (reflected in the scenarios as "Source Parameters (primary or secondary)").

- Source Channel Label is assigned a vendor-specific value (e.g., "primary" or "secondary", 'A' or 'B', etc.). This is especially useful when Pump Active Sources is not pump-source-info-primary or pump-source-info-secondary (e.g., during a bolus). In that case, the source for the bolus can be identified via Source Channel Label.
- The value of pump-delivery-status-transitioning for Current Delivery Status is applicable to transitional stop and complete events in cases where the medication or fluid associated with the source will continue to be delivered after the transition (e.g., to/from bolus, to KVO, titration, etc.). It should not be used for transitions from piggyback to primary.
- For events where Current Delivery Status = pump-delivery-status-transitioning, the values for Infusing Status and Current Pump Fluid Flow must be consistent; i.e., either:

- Infusing Status = pump-status-infusing and Current Pump Fluid Flow \> 0, or
- Infusing Status = pump-status-not-infusing and Current Pump Fluid Flow = 0

In the scenarios, the terms "pump reported status" and "pump reported rate" are used in place of actual values to indicate that it is vendor-specific as to which of these two combinations of values will be reported.

- Additional clinical scenarios will be added to this table as they are identified.

Table X.1.2.1-4: Clinical Scenarios

| Clinical Scenario | PCD-10 Event | Parameters | Discussion |
| --- | --- | --- | --- |
| New infusion start, followed by eventual transition to KVO, followed by transition from KVO to paused


 | MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed ratePump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=programmed rateDose Rate=programmed dose rateVolume Programmed=volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining=volume programmedTime Remaining=based upon Volume Remaining and Rate | Depending on pump make/model, Rate may not be specific to KVO rate and volume infused may continue to increase after the transition to KVO even though the VTBI has been met
 |
| --- | --- | --- | --- |
| MDC\_EVT\_PUMP\_DELIV\_ COMP | Pump Delivery Info Parameters:Infusing Status=pump reported statusCurrent Pump Fluid Flow=pump reported ratePump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-transitioningProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=programmed rateDose Rate=programmed dose rateVolume Programmed=volume programmedCurrent Segment Volume Delivered= volume programmedCumulative Volume Delivered=volume programmedVolume Remaining=0Time Remaining=0 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=KVO ratePump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-kvoProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=KVO rateDose Rate=n/aVolume Programmed=0Current Segment Volume Delivered=0Cumulative Volume Delivered=volume programmedVolume Remaining=0Time Remaining=0 |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=either pump-stopped-by-clinician or pump-stopped-not-specifiedProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=KVO rateDose Rate=n/aVolume Programmed=0Current Segment Volume Delivered= volume delivered since last DELIV\_STARTCumulative Volume Delivered=volume programmed plus the amount delivered during KVOVolume Remaining=0Time Remaining=0 |
| Start/restart an infusion, followed by pausing the running infusion
 | MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed ratePump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=programmed rateDose Rate=programmed dose rateVolume Programmed=volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery prior to this oneVolume Remaining=volume remainingTime Remaining=based upon Volume Remaining and Rate |
 |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=either pump-stopped-by-clinician or pump-stopped-not-specifiedProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=programmed rateDose Rate=programmed dose rateVolume Programmed=volume programmedCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery, including the one just completedVolume Remaining=volume remainingTime Remaining=based upon Volume Remaining and Rate |
| Rate Change (e.g., titration) while running (NOTE: events associated with the start of the infusion at original rate and pausing or completion at the new rate are not shown) | MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump reported statusCurrent Pump Fluid Flow=pump reported ratePump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-transitioningProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=old programmed rateDose Rate=old programmed dose rateVolume Programmed=volume programmedCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery, including the one just completedVolume Remaining=volume remainingTime Remaining=based upon Volume Remaining and Rate |
 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=new programmed ratePump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=new programmed rateDose Rate=new programmed dose rateVolume Programmed=volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery prior to this oneVolume Remaining=volume remainingTime Remaining=based upon Volume Remaining and Rate |
| Piggyback start, followed by piggyback end, followed by resumption of the primary infusion (this assumes the pump will revert to the primary rate once piggyback VTBI is achieved)

(Note: events associated with the start of the primary infusion prior to the piggyback and completion of the primary infusion after the piggyback are not shown)
 | MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-primary

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=either pump-stopped-by-clinician, pump-stopped-not-specified, or pump-stopped-switching-sourceProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=primary rateDose Rate=primary dose rateVolume Programmed=primary volume programmedCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the primary delivery, including the one just completedVolume Remaining=primary volume remainingTime Remaining=based upon Volume Remaining and Rate |

The first DELIV\_STOP represents the stop of the primary infusion that was running.

If the pump supports automatic transition from primary to secondary (i.e., without a manual pause by the clinician), then the appropriate value for Pump Not Delivering Reason on the first DELIV\_STOP event in this scenario is pump-stopped-switching-source. If not, then its value should be either pump-stopped-by-clinician or pump-stopped-not-specified.
 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=piggyback programmed ratePump Active Sources=pump-source-info-secondary

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=piggyback programmed rateDose Rate=piggyback dose rateVolume Programmed=piggyback volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining=piggyback volume programmedTime Remaining=based upon Volume Remaining and Rate |
| MDC\_EVT\_PUMP\_DELIV\_ COMP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-secondary

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=pump-stopped-switching-sourceProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=piggyback programmed rateDose Rate=piggyback dose rateVolume Programmed=piggyback volume programmedCurrent Segment Volume Delivered= volume delivered since last piggyback DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the piggyback delivery, including the one just completedVolume Remaining=0Time Remaining=0 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=primary ratePump Active Sources=pump-source-info-primary

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=primary rateDose Rate=primary dose rateVolume Programmed=primary volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the primary deliveryVolume Remaining=primary volume remainingTime Remaining=based upon Volume Remaining and Rate |
| Bolus start, followed by bolus end, followed by resumption of continuous rate after the bolus (this assumes the pump will revert to the continuous rate once the bolus VTBI is achieved)

(NOTE: events associated with the start of the continuous infusion prior to the bolus and completion of the continuous infusion after the bolus completes are not shown)
 | MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump reported statusCurrent Pump Fluid Flow=pump reported ratePump Active Sources=pump-source-info-\*

Active Source Parameters (primary or secondary):Current Delivery Status=pump-delivery-status-transitioningProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=continuous rateDose Rate=continuous dose rateVolume Programmed=continuous volume programmedCurrent Segment Volume Delivered=continuous volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the continuous delivery, including the one just completed, and any previously completed bolusesVolume Remaining=continuous volume remainingTime Remaining=based upon Volume Remaining and Rate | DELIV\_STOP – Used if the pump is switching from continuous to bolus. Not needed if starting bolus from a pause or stop.
 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=bolus programmed ratePump Active Sources=pump-source-info-clinician

Source Parameters (primary or secondary):Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the continuous delivery and any previously completed boluses

Active Source Parameters (clinician dose):Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=bolus programmed rateDose Rate=bolus dose rateVolume Programmed=bolus volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining=bolus volume programmedTime Remaining=based upon Volume Remaining and Rate |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump reported statusCurrent Pump Fluid Flow=pump reported ratePump Active Sources=pump-source-info-clinician

Source Parameters (primary or secondary):Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the continuous delivery and any boluses, including the one just completed

Active Source Parameters (clinician dose):Current Delivery Status=pump-delivery-status-transitioningProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=bolus programmed rateDose Rate=bolus dose rateVolume Programmed=bolus volume programmedCurrent Segment Volume Delivered=bolus volume delivered since last DELIV\_STARTCumulative Volume Delivered=bolus volume programmedVolume Remaining=0Time Remaining=0 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=continuous ratePump Active Sources=pump-source-info-\*

Active Source Parameters (primary or secondary:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=continuous rateDose Rate=continuous dose rateVolume Programmed=continuous volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the continuous delivery and any bolusesVolume Remaining=continuous volume remainingTime Remaining=based upon Volume Remaining and Rate |
| Multi-step start, followed by multi-step transition, followed by multi-step stop


 | MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed rate for step 1Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-multi-stepSource Channel Label=vendor-specificRate=programmed rate for step 1Dose Rate=programmed dose rate for step 1Volume Programmed=volume programmed for step 1Current Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining=volume programmed for step 1Time Remaining=based upon Volume Remaining and Rate | The transition is handled like a rate change
 |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump reported statusCurrent Pump Fluid Flow=pump reported rate for step 1Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-transitioningProgram Delivery Mode=pump-program-delivery-mode-multi-stepSource Channel Label=vendor-specificRate=programmed rate for step 1Dose Rate=programmed dose rate for step 1Volume Programmed=volume programmed for step 1Current Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery, including the one just completedVolume Remaining=0Time Remaining=0 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed rate for step 2Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-multi-stepSource Channel Label=vendor-specificRate=programmed rate for step 2Dose Rate=programmed dose rate for step 2Volume Programmed=volume programmed for step 2Current Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery prior to this oneVolume Remaining=volume programmed for step 2Time Remaining=based upon Volume Remaining and Rate |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery- not-deliveringPump Not Delivering Reason=either pump-stopped-by-clinician or pump-stopped-not-specifiedProgram Delivery Mode=pump-program-delivery-mode-multi-stepSource Channel Label=vendor-specificRate=programmed rate for current stepDose Rate=programmed dose rate for current stepVolume Programmed=volume programmed for current stepCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery, including the one just completedVolume Remaining=volume remainingTime Remaining=based upon Volume Remaining and Rate |
| Intermittent step start, followed by intermittent step stop
 | MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed rate for step nPump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-multi-dosingSource Channel Label=vendor-specificRate=programmed rate for step nDose Rate=programmed dose rate for step nVolume Programmed=volume programmed for step nCurrent Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery prior to this oneVolume Remaining=volume programmed for step nTime Remaining=based upon Volume Remaining and Rate |
 |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=either pump-stopped-between-doses or pump-stopped-not-specifiedProgram Delivery Mode=pump-program-delivery-mode-multi-dosingSource Channel Label=vendor-specificRate=programmed rate for current stepDose Rate=programmed dose rate for current stepVolume Programmed=volume programmed for current stepCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery, including the one just completedVolume Remaining=0Time Remaining=0 |
| Loading dose start, followed by loading dose end, followed by start of continuous (this assumes the pump will start at the continuous rate once the loading dose VTBI is achieved)(NOTE: the event associated with the completion of the continuous infusion after the bolus completes is not shown)
 | MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=loading dose programmed ratePump Active Sources=pump-source-info-loading

Source Parameters (primary or secondary):Cumulative Volume Delivered=0

Active Source Parameters (Loading Dose):Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate= loading dose programmed rateDose Rate= loading dose dose rateVolume Programmed= loading dose volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining= loading dose volume programmedTime Remaining=based upon Volume Remaining and Rate |
 |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump reported statusCurrent Pump Fluid Flow=pump reported ratePump Active Sources=pump-source-info-loading

Source Parameters (primary or secondary):Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the loading dose, including the one just completed

Active Source Parameters (Loading Dose):Current Delivery Status=pump-delivery-status-transitioningProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate= loading dose programmed rateDose Rate= loading dose dose rateVolume Programmed= loading dose volume programmedCurrent Segment Volume Delivered=loading dose volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the loading dose, including the one just completedVolume Remaining=0Time Remaining=0 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=continuous ratePump Active Sources=pump-source-info-\*

Active Source Parameters (primary or secondary):Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-continuousSource Channel Label=vendor-specificRate=continuous rateDose Rate=continuous dose rateVolume Programmed=continuous volume programmedCurrent Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the loading doseVolume Remaining=continuous volume remainingTime Remaining=based upon Volume Remaining and Rate |
| Infusion Stopped Due to Alarm |
 |
 | Same as "Pause a running infusion" scenario, except that Pump Not Delivering Reason=either pump-stopped-alarming or pump-stopped-not-specified |
| Auto-restart after alarm resolved |
 |
 | e.g., occlusion resolved or AILSame as "Start/restart an infusion" scenario |
| Nurse restart after alarm resolved |
 |
 | Same as "Start/restart an infusion" scenario |
| Nurse changes VTBI |
 |
 | e.g., bag change, hourly check, etc.

Same as "Pause a running infusion" case followed by "Start/restart an infusion" case |
| Ramp/taper start, followed by ramp/taper rate change, followed by ramp/taper stop


 | MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed rate for step 1Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-ramp-taperSource Channel Label=vendor-specificRate=programmed rate for step 1Dose Rate=programmed dose rate for step 1Volume Programmed=volume programmed for entire ramp/taper deliveryCurrent Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining=volume programmed for entire ramp/taper deliveryTime Remaining=based upon Volume Remaining and Rate |
 |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump reported statusCurrent Pump Fluid Flow=pump reported rate for step 1Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-transitioningProgram Delivery Mode=pump-program-delivery-mode-ramp-taperSource Channel Label=vendor-specificRate=programmed rate for step 1Dose Rate=programmed dose rate for step 1Volume Programmed=volume programmed for entire ramp/taper deliveryCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery, including the one just completedVolume Remaining=volume remaining for entire ramp/taper deliveryTime Remaining=based upon Volume Remaining and Rate |
| MDC\_EVT\_PUMP\_DELIV\_ START | based uponPump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed rate for step 2Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-ramp-taperSource Channel Label=vendor-specificRate=programmed rate for step 2Dose Rate=programmed dose rate for step 2Volume Programmed=volume programmed for entire ramp/taper deliveryCurrent Segment Volume Delivered=0Cumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery prior to this oneVolume Remaining=volume remaining for entire ramp/taper deliveryTime Remaining=based upon Volume Remaining and Rate |
| MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=either pump-stopped-by-clinician or pump-stopped-not-specifiedProgram Delivery Mode=pump-program-delivery-mode-ramp-taperSource Channel Label=vendor-specificRate=programmed rate for step 2Dose Rate=programmed dose rate for step 2Volume Programmed=volume programmed for entire ramp/taper deliveryCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the delivery, including the one just completedVolume Remaining= volume remaining for entire ramp/taper deliveryTime Remaining= based upon Volume Remaining and Rate |
| Patient ID Change | MDC\_EVT\_PATIENT\_ID\_ CHANGE | New Patient ID=PID.3 |
 |
| New Weight or New Height or New BSA (same patient) | MDC\_EVT\_PATIENT\_ PARAMETER\_CHANGE | Weight=New Patient Weight, orBody Surface Area=New Patient BSA, or Height=New Patient Height | e.g., when weight changed during an active weight-based infusion |
| Switch to library-based infusion(NOTE: events associated with the start of the non-library infusion and the completion of the library-based infusion are not shown)
 | MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=either pump-stopped-by-clinician or pump-stopped-not-specifiedProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=rate of non-library infusionDose Rate= dose rate of non-library infusionVolume Programmed=volume programmed for non-library infusionCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the non-library delivery, including the one just completedVolume Remaining=volume remaining of non-library infusionTime Remaining=based upon Volume Remaining and Rate | The library-based infusion is considered a new delivery |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed rate of library-based infusionPump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=rate of library-based infusionDose Rate=dose rate of library-based infusionVolume Programmed=volume programmed for library-based infusionCurrent Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining=volume programmed for library-based infusionTime Remaining=based upon Volume Remaining and Rate |
| Switch from library-based infusion(NOTE: events associated with the start of the library-based infusion and the completion of the non- library-based infusion are not shown)
 | MDC\_EVT\_PUMP\_DELIV\_ STOP | Pump Delivery Info Parameters:Infusing Status=pump-status-not-infusingCurrent Pump Fluid Flow=0Pump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-not-deliveringPump Not Delivering Reason=either pump-stopped-by-clinician or pump-stopped-not-specifiedProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=rate of library infusionDose Rate= dose rate of library infusionVolume Programmed=volume programmed for library infusionCurrent Segment Volume Delivered=volume delivered since last DELIV\_STARTCumulative Volume Delivered=sum of "Current Segment Volume Delivered" values across all segments for the library delivery, including the one just completedVolume Remaining=volume remaining of library infusionTime Remaining=based upon Volume Remaining and Rate |
 |
| MDC\_EVT\_PUMP\_DELIV\_ START | Pump Delivery Info Parameters:Infusing Status=pump-status-infusingCurrent Pump Fluid Flow=programmed rate of non-library-based infusionPump Active Sources=pump-source-info-\*

Active Source Parameters:Current Delivery Status=pump-delivery-status-deliveringProgram Delivery Mode=pump-program-delivery-mode-\*Source Channel Label=vendor-specificRate=rate of non-library-based infusionDose Rate=dose rate of non-library-based infusionVolume Programmed=volume programmed for non-library-based infusionCurrent Segment Volume Delivered=0Cumulative Volume Delivered=0Volume Remaining=volume programmed for non-library-based infusionTime Remaining=based upon Volume Remaining and Rate |

**X.1.2.2 Infusion Event Sample Message**

**Delivery Start Event**

(Note: Code assignments for MDC terms shown below with a code value of "0" are pending as of publication date.)

MSH|^~\&|PAT\_DEVICE\_PUMPVENDOR^9999990000000000^EUI-64|PUMPVENDOR|DOC\_VENDOR|DOC\_VENDOR|20151015132107-0500||ORU^R42^ORU\_R01|6358051206735492253|P|2.6|||AL|NE||ASCII|en^English^ISO639||IHE\_PCD\_010^IHE PCD^ 1.3.6.1.4.1.19376.1.6.4.10^ISO

PID|||HO2009002^^^IHE^PI||Hon^Charles^^^^^L|Brooks^^^^^^L|19610201000000-0600|M|||||||||||||||||||||||N

PV1||I|3 West ICU^3002^1

OBR|1|AB12345^PCD-03|CD12345^HL7^ACDE48234567ABCD^EUI-64|2222^Dopamine|||20151015132106-0500

OBX|1||70049^MDC\_DEV\_PUMP\_INFUS\_LVP\_MDS^MDC|1.0.0.0|||||||X|||||N0002||E0002^^0012210000000000^EUI-64

OBX|2|ST|184517^MDC\_PUMP\_DRUG\_LIBRARY\_VERSION^MDC|1.0.0.1|DL1||||||R

OBX|3|CWE|0^MDC\_ATTR\_EVT\_COND^MDC|1.0.0.2|197288^MDC\_EVT\_PUMP\_DELIV\_START^MDC||||||R

OBX|4|ST|0^MDC\_ATTR\_EVT\_SOURCE^MDC|1.0.0.3|1.1.2.0||||||R

OBX|5||70050^MDC\_DEV\_PUMP\_INFUS\_LVP\_VMD^MDC|1.1.0.0|||||||X

OBX|6||0^MDC\_DEV\_PUMP\_DELIVERY\_INFO^MDC|1.1.1.0|||||||X

OBX|7|CWE|184519^MDC\_PUMP\_INFUSING\_STATUS^MDC|1.1.1.1|^pump-status-infusing||||||R

OBX|8|NM|0^MDC\_FLOW\_FLUID\_PUMP\_CURRENT^MDC|1.1.1.2|15.4|265266^MDC\_DIM\_MILLI\_L\_PER\_HR^MDC^mL/h^mL/h^UCUM|||||R

OBX|9|CWE|0^MDC\_DEV\_PUMP\_ACTIVE\_SOURCES^MDC|1.1.1.3|^pump-source-info-primary||||||R

OBX|10||0^MDC\_DEV\_PUMP\_INFUSATE\_SOURCE\_PRIMARY^MDC|1.1.2.0|||||||X

OBX|11|CWE|0^MDC\_DEV\_PUMP\_CURRENT\_DELIVERY\_STATUS^MDC|1.1.2.1|^pump-delivery-status-delivering||||||R

OBX|12|CWE|0^MDC\_DEV\_PUMP\_PROGRAM\_DELIVERY\_MODE^MDC|1.1.2.2|^pump-program-delivery-mode-continuous||||||R

OBX|13|ST|0^MDC\_DEV\_PUMP\_SOURCE\_CHANNEL\_LABEL^MDC|1.1.2.3|Primary||||||R

OBX|14|NM|157784^MDC\_FLOW\_FLUID\_PUMP^MDC|1.1.2.4|15.4|265266^MDC\_DIM\_MILLI\_L\_PER\_HR^MDC^mL/h^mL/h^UCUM|||||R

OBX|15|NM|157924^MDC\_RATE\_DOSE^MDC|1.1.2.5|5.00|265619^MDC\_DIM\_MICRO\_G\_PER\_KG\_PER\_MIN^MDC^ug/kg/min^ug/kg/min^UCUM|||||R

OBX|16|NM|157884^MDC\_VOL\_FLUID\_TBI^MDC|1.1.2.6|250.0|263762^MDC\_DIM\_MILLI\_L^MDC^mL^mL^UCUM|||||R

OBX|17|NM|157993^MDC\_VOL\_FLUID\_DELIV\_TOTAL^MDC|1.1.2.7|0.0|263762^MDC\_DIM\_MILLI\_L^MDC^mL^mL^UCUM|||||R

OBX|18|NM|157872^MDC\_VOL\_FLUID\_TBI\_REMAIN^MDC|1.1.2.8|250.0|263762^MDC\_DIM\_MILLI\_L^MDC^mL^mL^UCUM|||||R

OBX|19|NM|157916^MDC\_TIME\_PD\_REMAIN^MDC|1.1.2.9|974|264352^MDC\_DIM\_MIN^MDC^min^min^UCUM|||||R

OBX|20|ST|184514^MDC\_DRUG\_NAME\_LABEL^MDC|1.1.2.10|Dopamine||||||R

OBX|21|NM|157760^MDC\_CONC\_DRUG^MDC|1.1.2.11|1.6|264306^MDC\_DIM\_MILLI\_G\_PER\_ML^MDC^mg/mL^mg/mL^UCUM|||||R

OBX|22|ST|184516^MDC\_PUMP\_DRUG\_LIBRARY\_CARE\_AREA^MDC|1.1.2.12|Crit Care||||||R

OBX|23|NM|68063^MDC\_ATTR\_PT\_WEIGHT^MDC|1.1.2.13|82.0|263875^MDC\_DIM\_KILO\_G^MDC^kg^kg^UCUM|||||R

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

56

Rev. 1.5 – 2015-11-25 Copyright © 2015: IHE International, Inc.
