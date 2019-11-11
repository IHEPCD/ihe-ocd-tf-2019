**Integrating the Healthcare Enterprise**

![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_7540ccff8bd4335f.jpg)

## **IHE Patient Care Device (PCD)**

## **Technical Framework**

## **Volume 1**

## **IHE PCD TF-1**

## **Profiles**

**Revision 8.0 – Final Text**

**October 23, 2018**

**Please verify you have the most recent version of this document,** which is published [here](http://www.ihe.net/Technical_Frameworks/).

**CONTENTS**

1 Introduction 4

1.1 Introduction to IHE 4

1.2 Introduction to IHE Patient Care Device (PCD) 4

1.3 Intended Audience 5

1.4 Pre-requisites and Reference Material 5

1.4.1 Actor Descriptions 5

1.4.2 Transaction Descriptions 5

1.4.3 Content Modules 5

1.4.4 IHE Integration Statements 5

1.5 Overview of Technical Framework Volume 1 6

1.6 Comment Process 6

1.7 Copyright Licenses 6

1.7.1 Copyright of Base Standards 6

1.8 Trademark 7

1.9 Disclaimer Regarding Patent Rights 7

1.10 History of Document Changes 7

2 Patient Care Device Integration Profiles 9

2.1 Required Actor Groupings and Bindings 9

2.2 Security Implications 10

2.3 Integration Profiles Overview 10

2.4 Product Implementations 10

2.5 Dependencies between Integration Profiles 10

2.6 Rosetta Terminology Mapping (RTM) 11

3 Device Enterprise Communication (DEC) Profile 13

3.1 DEC Actors and Transactions 13

3.1.1 Patient Demographics – Recommended Transactions 14

3.2 DEC Profile Options 14

3.3 DEC Overview 15

3.3.1 Note on Patient Identification 16

3.4 DEC Use Cases 16

3.4.1 Standard Use Cases 16

3.4.1.1 Case DEC-1: Communicate patient identified DEC data to EMR/EHR 16

3.4.1.2 Case DEC-2: Communicate validated periodic DEC data to EMR/EHR 16

3.4.2 Optional Use Cases for Automatic Patient Demographics Acquisition 17

3.4.2.1 Case DEC-ID-1: Patient ID known in ADT, locally available 18

3.4.2.2 Case DEC-ID-2: Patient ID known in ADT, not locally available 18

3.4.2.3 Case DEC-ID-3 Patient ID not known in ADT, locally available 18

3.4.2.4 Case DEC-ID-4: Patient ID not known in ADT, not locally available. 18

3.4.2.5 Other Clinical Examples 19

4 Point-of-Care Infusion Verification (PIV) Profile 20

4.1 PIV Actors and Transactions 20

4.2 Integration Profile Options 21

4.3 PIV Overview 21

4.3.1 PIV Process Flow 22

4.4 Integration Profile Safety and Security Considerations 23

5 Implantable Device – Cardiac – Observation (IDCO) 23

5.1 IDCO Actors and Transactions 24

5.2 IDCO Integration Profile Options 25

5.3 IDCO Use Cases 25

5.3.1 Use Case IDCO-1: Implantable Cardiac Device In-Clinic Follow-up 25

5.3.2 Use Case IDCO2: Implantable Cardiac Device In-Clinic Follow-up with Networked Programmer that Translates Information 26

5.3.3 Use Case IDCO-3: Implantable Cardiac Device Remote Follow-up 26

5.3.4 Use Case IDCO-4: Remote Monitoring of Implanted Cardiac Devices 26

5.4 IDCO Process Flow 27

5.5 IDCO Patient Identification Considerations 29

5.6 IDCO Security Considerations 29

6 Alert Communication Management (ACM) Integration Profile 30

6.1 ACM Actors and Transactions 31

6.2 ACM Integration Profile Options 33

6.3 Actor Descriptions 33

6.3.1 Alert Reporter (AR) Actor 33

6.3.2 Alert Manager (AM) Actor 34

6.3.3 Alert Consumer (ACON) Actor 36

6.3.4 Alert Communicator (AC) Actor 36

6.4 ACM Use Cases 37

6.4.1 ACM Process Flow 38

6.4.2 ACM Use Cases 38

6.4.2.1 Case A1: Location Sourced 38

6.4.2.2 Case A2: Identified Patient Source 40

6.4.2.3 Case A3: Same as A1/A2 with Escalation with Cancel at Alert Source 42

6.4.2.4 Case A4: Same as A1/A2 with Escalation with Cancel at Communication Endpoint 42

6.4.2.5 Case A5: Same as A1/A2 with Escalation with Cancel at Alert Manager 42

6.4.2.6 Case A6: Information with no destination other than logging by the Alert Manager (AM) or Alert Consumer Actor 42

6.4.2.7 Case A7: Equipment Sourced Alert 43

6.5 ACM Security Considerations 43

Appendix A – Rosetta Terminology Mapping (RTM) 44

A.1 Problem Statement 44

A.2 Key Use Case 45

Glossary 46

1.
# Introduction

This document, Volume 1 of the IHE Patient Care Device (PCD) Technical Framework, describes the clinical use cases, actors, content module, and transaction requirements for the Patient Care Device profiles.

  1.
## Introduction to IHE

Integrating the Healthcare Enterprise (IHE) is an international initiative to promote the use of standards to achieve interoperability among health information technology (HIT) systems and effective use of electronic health records (EHRs). IHE provides a forum for care providers, HIT experts and other stakeholders in several clinical and operational domains to reach consensus on standards-based solutions to critical interoperability issues.

The primary output of IHE is system implementation guides, called IHE profiles. IHE publishes each profile through a well-defined process of public review and Trial Implementation and gathers profiles that have reached Final Text status into an IHE Technical Framework, of which this volume is a part.

For general information regarding IHE, refer to [www.ihe.net](http://www.ihe.net/). It is strongly recommended that, prior to reading this volume, the reader familiarizes themselves with the concepts defined in the [_IHE Technical Frameworks General Introduction_](http://ihe.net/Technical_Frameworks/#GenIntro).

  1.
## Introduction to IHE Patient Care Device (PCD)

The Patient Care Device (PCD) domain is concerned with use cases in which at least one actor is a regulated patient-centric point-of-care medical device that communicates with at least one other actor such as a medical device or information system.

The PCD domain coordinates with and supports other domains, such as Radiology (medical imaging), Laboratory, and Cardiology to ensure consistency in use cases involving regulated medical devices as they occur throughout the Enterprise.

**PCD Vision Statement**

The PCD domain is the nexus for vendors and providers to jointly define and demonstrate unambiguous interoperability specifications, called profiles, which are based on industry standards, and which can be brought to market.

**PCD Mission Statement**

The IHE Patient Care Device domain, working with regional and national deployment committees, will apply the proven, use case driven IHE processes to:

- Deliver the technical framework for the IHE-PCD domain profiles
- Test conformance with published IHE-PCD profiles using test plans, tools and scripts at Connectathons
- Demonstrate marketable solutions at public trade shows

IHE PCD domain is sponsored by the [American College of Clinical Engineering (ACCE)](http://www.accenet.org/), the [Health Information Management Systems Society (HIMSS)](http://www.himss.org/), and the [Association for the Advancement of Medical Instrumentation (AAMI)](http://www.aami.org/). IHE PCD manages the development and maintenance of the [PCD Profiles](http://wiki.ihe.net/index.php?title=PCD_Profiles) and the [PCD\_Technical\_Framework](http://wiki.ihe.net/index.php?title=PCD_Technical_Framework).

  1.
## Intended Audience

The intended audience of IHE Technical Frameworks Volume 1 (Profiles) is:

- Those interested in integrating healthcare information systems and workflows
- IT departments of healthcare institutions
- Technical staff of vendors participating in the IHE initiative

  1.
## Pre-requisites and Reference Material

For more general information regarding IHE, refer to [www.ihe.net](http://www.ihe.net/). It is strongly recommended that, prior to reading this volume, the reader familiarizes themselves with the concepts defined in the [_IHE Technical Frameworks General Introduction_](https://www.ihe.net/resources/technical_frameworks/#GenIntro).

Additional reference material available includes:

    1.
### Actor Descriptions

Actors are information systems or components of information systems that produce, manage, or act on information associated with operational activities in the enterprise.

A list of actors defined for all domains and their brief descriptions can be found as [Appendix A](https://www.ihe.net/resources/technical_frameworks/#GenIntro) to the _IHE Technical Frameworks General Introduction_.

    1.
### Transaction Descriptions

Transactions are interactions between actors that transfer the required information through standards-based messages.

A list of transactions defined for all domains, their transactions numbers, and a brief description can be found as [Appendix B](https://www.ihe.net/resources/technical_frameworks/#GenIntro) to the _IHE Technical Frameworks General Introduction_.

    1.
### Content Modules

Content modules are data and data definitions shared between actors.

    1.
### IHE Integration Statements

IHE Integration Statements provide a consistent way to document high level IHE implementation status in products between vendors and users.

The instructions and template for IHE Integration Statements can be found as [Appendix F](http://ihe.net/Technical_Frameworks/#GenIntro) to the _IHE Technical Frameworks General Introduction_.

IHE also provides the IHE Product Registry ([http://www.ihe.net/IHE\_Product\_Registry](http://www.ihe.net/IHE_Product_Registry/)) as a resource for vendors and purchasers of HIT systems to communicate about the IHE compliance of such systems. Vendors can use the Product Registry to generate and register Integration Statements.

  1.
## Overview of Technical Framework Volume 1

Volume 1 is comprised of several distinct sections:

- Section 1 provides background and reference material.
- Section 2 presents the conventions used in this volume to define the profiles.
- Sections 3 and beyond define Patient Care Device profiles, actors, and requirements in detail.

The appendices in Volume 1 provide clarification of uses cases or other details. A glossary of terms and acronyms used in the IHE Technical Framework is provided in [Appendix D](http://ihe.net/Technical_Frameworks/#GenIntro) to the _IHE Technical Frameworks General Introduction_.

  1.
## Comment Process

IHE International welcomes comments on this document and the IHE initiative. They can be submitted by sending an email to the co-chairs and secretary of the Patient Care Device domain committees at pcd@ihe.net.

  1.
## Copyright Licenses

IHE International hereby grants to each Member Organization, and to any other user of these documents, an irrevocable, worldwide, perpetual, royalty-free, nontransferable, nonexclusive, non-sublicensable license under its copyrights in any IHE profiles and Technical Framework documents, as well as any additional copyrighted materials that will be owned by IHE International and will be made available for use by Member Organizations, to reproduce and distribute (in any and all print, electronic or other means of reproduction, storage or transmission) such IHE Technical Documents.

The licenses covered by this Copyright License are only to those copyrights owned or controlled by IHE International itself. If parts of the Technical Framework are included in products that also include materials owned or controlled by other parties, licenses to use those products are beyond the scope of this IHE document and would have to be obtained from that other party.

    1.
### Copyright of Base Standards

IHE technical documents refer to and make use of a number of standards developed and published by several standards development organizations. All rights for their respective base standards are reserved by these organizations. This agreement does not supersede any copyright provisions applicable to such base standards.

Health Level Seven has granted permission to IHE to reproduce tables from the HL7®

# 1
 standard. The HL7 tables in this document are copyrighted by Health Level Seven. All rights reserved. Material drawn from these documents is credited where used.

  1.
## Trademark

IHE® and the IHE logo are trademarks of the Healthcare Information Management Systems Society in the United States and trademarks of IHE Europe in the European Community. They may only be used with the written consent of the IHE International Board Operations Committee, which may be given to a Member Organization in broad terms for any use that is consistent with the IHE mission and operating principles.

  1.
## Disclaimer Regarding Patent Rights

Attention is called to the possibility that implementation of the specifications in this document may require use of subject matter covered by patent rights. By publication of this document, no position is taken with respect to the existence or validity of any patent rights in connection therewith. IHE International is not responsible for identifying Necessary Patent Claims for which a license may be required, for conducting inquiries into the legal validity or scope of Patents Claims or determining whether any licensing terms or conditions provided in connection with submission of a Letter of Assurance, if any, or in any licensing agreements are reasonable or non-discriminatory. Users of the specifications in this document are expressly advised that determination of the validity of any patent rights, and the risk of infringement of such rights, is entirely their own responsibility. Further information about the IHE International patent disclosure process including links to forms for making disclosures is available at [http://www.ihe.net/Patent\_Disclosure\_Process](http://www.ihe.net/Patent_Disclosure_Process/). Please address questions about the patent disclosure process to the secretary of the IHE International Board: [secretary@ihe.net](mailto:secretary@ihe.net).

  1.
## History of Document Changes

This section provides a brief summary of changes and additions to this document.

| Date | Document Revision | Change Summary |
| --- | --- | --- |
| 2014-11-04 | 4.0 | Added Alert Consumer to Alert Communication Management Profile. Rearranged material to conform to current template for Technical Framework Volume 1. |
| --- | --- | --- |
| 2015-10-14 | 5.0 | Updated ACM Profile with approved CPs and housekeeping corrections. |
| 2016-11-09 | 6.0 | Added cross-reference to ITI mACM Profile |
| 2017-11-09 | 7.0 | Updated ACM Profile for CP 132 ACM Use Case A6 to indicate that the Alert Consumer (ACon) Actor is an additional recipient and that the decision to log only is implementation specific. |
| 2018-10-23 | 8.0 | Updated some wording in Section 1 and links to the General Introduction and associated appendices. |

1.
# Patient Care Device Integration Profiles

IHE Integration Profiles offer a common language that healthcare professionals and vendors can use to discuss integration needs of healthcare enterprises and the integration capabilities of information systems in precise terms. Integration Profiles specify implementations of standards that are designed to meet identified clinical needs. They enable users and vendors to state which IHE capabilities they require or provide, by reference to the detailed specifications of the IHE Patient Care Device Technical Framework.

IHE Integration Profiles are defined in terms of IHE actors (defined in Volume 1), transactions (defined in Volume 2), and content modules (defined in Volume 3). Actors are information systems or components of information systems that produce, manage, or act on information associated with clinical and operational activities in healthcare. Transactions are interactions between actors that communicate the required information through standards-based messages. Content modules define how the content used in a transaction is structured. A content module is specified to be independent of the transaction in which it appears.

Vendor products support an Integration Profile by implementing the appropriate actor(s) and transactions. A given product may implement more than one actor and more than one integration profile.

IHE profiles which have reached the status of _Final Text_ are published as part of the domain's Technical Framework Volumes 1-4. Prior to Final Text status, IHE profiles are published independently as _Profile Supplements_ with the status of _Public Comment_ or _Trial Implementation_.

For a list and short description of Patient Care Device profiles, see [http://wiki.ihe.net/index.php?title=Profiles#IHE\_Patient\_Care\_Device\_Profiles](http://wiki.ihe.net/index.php?title=Profiles%23IHE_Patient_Care_Device_Profiles). The list includes all of the profiles in this document (Final Text) and may include profiles in the Trial Implementation stage.

  1.
## Required Actor Groupings and Bindings

The IHE Technical Framework relies on the concepts of _required actor groupings_ and _bindings_.

Required actor groupings may be defined between two or more IHE actors. Actors are grouped to combine the features of existing actors. This allows reuse of features of an existing actor and does not recreate those same features in another actor. Internal communication between grouped actors is not specified by IHE. An example of grouped actors in the IHE Radiology Scheduled Workflow Profile is the grouping between the Image Manager and Image Archive.

Additionally, required actor groupings may cross profile boundaries. For example, an XDS Document Registry is required to be grouped with an ATNA Secure Node. Required actor groupings are defined in each profile definition in Volume 1. To comply with an actor in an IHE profile, a system must perform all transactions required for that actor in that profile. Actors supporting multiple Integration Profiles must support all of the transactions of each profile. (Note: In previous versions of IHE Technical Framework documents, the concept of profile dependencies existed. For simplification, profile dependencies have been combined with required actor groupings and are enumerated/repeated within each profile in Volume 1.)

Bindings refer to content modules. Bindings map data from a content module to the metadata of a specific transport profile. Bindings for content modules, and the associated concepts, are defined in Volume 3.

  1.
## Security Implications

IHE transactions often contain information that must be protected in conformance with privacy laws, regulations and best practices. This protection is documented in the Security Considerations section of each profile, which communicates security/privacy concerns that the implementers need to be aware of, assumptions made about security/privacy pre-conditions and, where appropriate, key elements of a risk mitigation strategy to be applied.

  1.
## Integration Profiles Overview

An overview of the profiles is listed at [http://www.ihe.net/Profiles](http://www.ihe.net/Profiles/).

  1.
## Product Implementations

As described in detail in the [_IHE Technical Frameworks General Introduction_](https://www.ihe.net/resources/technical_frameworks/#GenIntro), an implementer chooses specific profiles, actors, and options to implement for their product. To comply with an actor in an IHE profile, a system must perform all the required transactions required for that actor in that profile.

To communicate the conformance of a product offering with IHE profiles, implementers provide an IHE Integration Statement describing which IHE integration profiles, IHE actors and options are incorporated.

To make consumers aware of the product integration statement, enter it in the IHE Product Registry ([http://product-registry.ihe.net/](http://product-registry.ihe.net/)).

  1.
## Dependencies between Integration Profiles

Dependencies among IHE Integration Profiles exist when implementation of one integration profile is a prerequisite for achieving the functionality defined in another integration profile. Table 2.5-1 defines the required dependencies. Some dependencies require that an actor supporting one profile be grouped with one or more actors supporting other integration profiles.

There are of course other useful synergies that occur when different combinations of profiles are implemented, but those are not described in the table below. For instance, actors of the various PCD profiles may implement profiles of the IT Infrastructure domain for user or node authentication, audit trails, patient identifier cross-referencing, etc.

Table 2.5-1: Patient Care Device Integration Profile Dependencies

| Integration Profile | Depends on | Dependency Type | Purpose |
| --- | --- | --- | --- |
| Device Enterprise Communication (DEC) | Consistent Time | Each actor implementing DEC shall be grouped with the Time Client | Required for consistent time-stamping of messages and data |
| --- | --- | --- | --- |
| Point-of-Care Infusion Verification (PIV) | Consistent Time | Each actor implementing PIV shall be grouped with the Time Client | Required for consistent time-stamping of messages and data |
| Alert Communication Management (ACM) | Consistent Time | Each actor implementing ACM shall be grouped with the Time Client | Required for consistent time-stamping of messages and data |
| Implantable Device - Cardiac – Observation (IDCO) | None | N/A | N/A |

Vendor products support an Integration Profile by implementing the appropriate actor-transactions as outlined in the Integration Profile in Section 3. A product may implement more than one actor and more than one Integration Profile.

To support a dependent profile, an actor must implement all required transactions in the pre-requisite profiles in addition to those in the dependent profile. In some cases, the prerequisite is that the actor selects any one of a given set of profiles.

Actors are information systems or components of information systems that produce, manage, or act on information associated with operational activities in the enterprise.

A list of actors defined for all domains and their brief descriptions can be found as an appendix to the [_IHE Technical Frameworks General Introduction_](https://www.ihe.net/resources/technical_frameworks/#GenIntro).

Transactions are interactions between actors that transfer the required information through standards-based messages.

  1.
## Rosetta Terminology Mapping (RTM)

The Rosetta Terminology Mapping has general application in IHE PCD Profiles.

The primary purpose of the Rosetta Terminology Mapping (RTM) managed value set is to _harmonize the use of existing ISO/IEEE 11073-10101 nomenclature terms_ by systems compliant with IHE PCD profiles. The RTM Profile also specifies the _units-of-measure_ and _enumerated values_ permitted for each numeric parameter to facilitate safe and interoperable communication between devices and systems. Use of RTM is required in IHE-PCD profiles.

The Rosetta Table also is designed to serve as a temporary repository that can be used to define _new nomenclature terms_ that are currently not present in the ISO/IEEE 11073-10101 nomenclature. Based on our experience to date, well over 100 new terms will be required, principally in the area of ventilator and ventilator settings. The RTM will also serve as a framework for capturing new terms to support the IEEE 11073 'Personal Health Devices' (PHD) initiative. Additional information on RTM can be found in Appendix A.

1.
# Device Enterprise Communication (DEC) Profile

The Device Enterprise Communication Integration Profile supports communication of vendor independent, multi-modality Patient Care Devices data to Enterprise Applications using consistent semantics. It accomplishes this by mapping PCD data from proprietary syntax and semantics into a single syntactic and semantic representation for communication to the enterprise. The PCD data is time stamped with a consistent enterprise time. Options are provided to allow applications to filter particular PCD data of interest.

  1.
## DEC Actors and Transactions

The following figure diagrams the actors involved with this profile and the transactions between actors.

![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_8e212fb6b6ba3343.gif)

Figure 3.1-1: DEC Integration Profile with Actors and Transactions

Table 3.1-1: DEC - Actors and Transactions lists the transactions for each actor directly involved in the DEC Integration Profile. In order to claim support of this Integration Profile, an implementation must perform the required transactions (labeled "R"). Transactions labeled "O" are optional. A complete list of options defined by this Integration Profile that implementations may choose to support is listed in Section 3.2.

Table 3.1-1: DEC - Actors and Transactions

| Actors | Transactions | Optionality | Section in Volume 2 |
| --- | --- | --- | --- |
| Device Observation Consumer | Communicate PCD Data [PCD-01] | R | Section 3.1 |
| --- | --- | --- | --- |
| Device Observation Reporter | Communicate PCD Data [PCD-01] | R | Section 3.1 |

Refer to Table 2.5-1: Patient Care Device Integration Profile Dependencies for other profiles that may be pre-requisites for this profile.

    1.
### Patient Demographics – Recommended Transactions

While not required, it is recommended that IHE transactions be employed for acquisition of Patient Demographics from other systems. The recommended transactions include:

**Patient Demographics Query** – This transaction contains the Patient Demographics information in response to a specific query on a specific patient. [ITI-21]

**Patient Identity Feed** - This transaction is broadcast from the Patient Demographics supplier when changes to the patient demographics occur. [ITI-30]

**Patient Encounter Management** - The Patient Encounter Source registers or updates an encounter (inpatient, outpatient, pre-admit, etc.) and forwards the information to other systems implementing the Patient Encounter Consumer. This information will include the patient's location and care providers for a particular (usually current) encounter. [ITI-31]

  1.
## DEC Profile Options

Many actors have options defined in order to accommodate variations in use across domains or implementations. Options that may be selected for this integration profile are listed in Table 3.2-1: DEC - Actors and Options along with the actors to which they apply. A subset of these options is required for implementation by actors in this profile (although they may be truly optional in other profiles).

Table 3.2-1: DEC - Actors and Options

| Actor | Option Name | Section in Volume 2 |
| --- | --- | --- |
| Device Observation Reporter | _No option (assumes MLLP Transport)_ | Appendix I |
| --- | --- | --- |
| _Web Services (WS\*) Transport Option (rather than default MLLP Transport)_ | Appendix J |
| Device Observation Consumer | _None (assumes MLLP Transport)_ | Appendix I |
| --- | --- | --- |
| _Web Services (WS\*) Transport Option (rather than default MLLP Transport)_ | Appendix J |

  1.
## DEC Overview

In a recent HIMSS survey of requirements for Patient Care Device (PCD), the respondents identified Enterprise Sharing of PCD data as their highest priority. Goals include shortening decision time, increasing productivity, minimizing transcription errors, and obtaining increased contextual information regarding the data.

PCD data includes:

- Periodic physiologic data (heart rate, invasive blood pressure, respiration rate, etc.)
- Aperiodic physiologic data (non-invasive blood pressure, patient weight, cardiac output, etc.)
- Alarm and alert information
- Device settings and the ability to manipulate those settings
- CLIA waived (or equivalent international waiver) point-of-care laboratory tests (i.e., home blood glucose, etc.)

PCD data may also include contextual data such as the patient ID, caregiver identification, and physical location of the device.

The Device Enterprise Communication (DEC) Profile addresses the need for consistent communication of PCD data to the enterprise. Enterprise recipients of PCD data include, but are not limited to, Clinical Decision Support applications, Clinical Data Repositories (CDRs), Electronic Medical Record applications (EMRs), and Electronic Health Records (EHRs).

The current profile does not address issues of privacy, security, and confidentiality associated with cross-enterprise communication of PCD data. The assumption is made that the DEC Profile is implemented in a single enterprise on a secure network. These aspects are on the IHE PCD roadmap for subsequent years.

The current profile does not address use cases and transactions associated with either open loop or closed loop control of patient care devices. Real-time data such as alarms and alerts, waveforms (ECG, EEG, etc.) is currently not addressed.

    1.
### Note on Patient Identification

Patient Identification is perhaps the most essential infrastructural component of any interoperability and communication process, particularly when PCD data is exported to the enterprise. It is the key element in medical device, communication, data analysis, reporting and record keeping. Automation of the entry of patient identification to patient care device has the potential for improving throughput, reducing errors, increasing safety and device and drug effectiveness, and efficiency. It is strongly recommended that implementations use IHE compliant transactions for acquisition of Patient Identification credentials. These transactions include ITI-21, ITI-30 and ITI-31. Other mechanisms such as bar code or RFID are also perfectly valid alternatives or complements.

  1.
## DEC Use Cases

This Section describes the specific use cases and interactions defined for the DEC Workflow Profile. There are both standard Use Cases as well as optional Use Cases.

    1.
### Standard Use Cases

      1.
#### Case DEC-1: Communicate patient identified DEC data to EMR/EHR

Data from all of the patient care devices associated with a particular patient is communicated by a Gateway, Device or Clinical Information System (CIS) implementing the Device Observation Reporter to an EMR/EHR, implementing the Device Observation Consumer. Examples include data from bedside monitors, ventilators, and infusion pumps. Discrete parameters representing both periodic and aperiodic data are typically communicated at an interval of no less than once per minute. The data is time stamped with a consistent time across the data from the respective patient care devices.

The primary intent is communication of structured data; however, provisions are made for inclusion of unstructured data. The application provides facilities to bind an authoritative enterprise patient identifier required for inclusion of the PCD data in the patient record. The workflow for associating the authoritative enterprise patient identifier to the PCD data is outside the scope of the current PCD Technical Framework.

      1.
#### Case DEC-2: Communicate validated periodic DEC data to EMR/EHR

This Use Case builds on Case DEC-1 by communicating only data which has been validated by a caregiver by identifying the caregiver in the PCD data. The workflow implementing validation is outside the scope of the current PCD TF.

![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_82fef6fe24142e1a.gif)

Figure 3.4.1.2-1: DEC Process Flow (No filtering)

    1.
### Optional Use Cases for Automatic Patient Demographics Acquisition

The following examples describe which actors typical systems might be expected to support. This is not intended to define requirements, but rather to provide illustrative examples.

- A general purpose observation reporting gateway which combines the Device Observation Reporter and patient demographics.
- A patient care device which bundles the Device Observation Reporter and patient demographics.
- Patient Demographic Data that can be used in identifying the patient includes the following:
- Partial or complete patient name (printed on the patient record or wrist band, or related by the patient)
- Patient ID (from printed barcode, bedside chart, RFID, scan, etc.)
- Date of Birth / age range

Note: Bed ID is not accepted by the Joint Commission as a means of patient identity verification.

Patient Identification Binding Use Cases: The caregiver connects the patient to a patient care device. The patient is physically identified by the caregiver, using some institutionally unique protocol for identification such as verification of information contained on a wristband. The caregiver uses the information from the physical patient identification to authorize an electronic identification, made by the device or an independent device or system, binding the patient's electronic identity to all data communicated from the patient care device. The verification may involve direct entry of data to the device being bound, a gateway, or an actor residing in a separate system. It may be based on direct physical identification of the patient by the caregiver or on confirmation by the caregiver of an electronic identification made by the device in concert with other devices or systems. The verification may also include fully automated binding when a unique logical authentication can be made. The end result is that data communicated from the patient care device contains an authoritative institutionally unique electronic identifier.

      1.
#### Case DEC-ID-1: Patient ID known in ADT, locally available

Note: The following are Use Cases in support of automatic acquisition of patient demographics. They do not map into any specific PCD profiles or transactions.

A patient is connected to a bedside monitor of a cardiac monitoring system (e.g., central station with continuous ADT feed via PAM broadcasts that includes a number of bedside monitors. The patient may or may not be able to provide positive ID information. Demographic information used to identify a patient includes: partial or complete patient name (printed on the patient record or told by the patient); Patient MRN (this may be obtained from printed barcode, a bedside chart, etc.); Partial ID entry or scan; Date of birth / age range. _Note: Bed ID is not permitted as an identifier in accord with Joint Commission standards.)_ Caregiver selects the patient from a pick list on the system console, in response to prompts by caregiver. System information includes showing the Medical Record Number (MRN), full name, age, sex, room/bed, and admit date. The central station binds the patient identity information with the device data.

      1.
#### Case DEC-ID-2: Patient ID known in ADT, not locally available

In the event that the patient above is not registered in the cardiac monitoring system, due to ADT lag or other situations, caregiver can execute a PDQ query of the patient registry to receive a pick list of patients and enter the patient ID into the system

      1.
#### Case DEC-ID-3 Patient ID not known in ADT, locally available

This is the John/Jane Doe patient, for whom the system has set up a Proxy Identification. The Proxy Identification is determined by either method, in accord with institutional policy and later linked with the true patient ID via ITI-PAM.

      1.
#### Case DEC-ID-4: Patient ID not known in ADT, not locally available.

This is the case of a patient presenting in the ER who is not registered in the system, where care must continue and identification may follow. When the patient demographics are unknown, time and device MAC address can be sent automatically, providing unique identification to the data. This last approach can also be used to create an audit trail as a complement to the other binding mechanisms.

      1.
#### Other Clinical Examples

**DEC-ID-A** : A patient is connected to an infusion device. The infusion device is connected to the network but is not managed by an infusion or drug administration management application. Caregiver scans barcode of the patient and the device. Caregiver is presented with a display of patient IDs from ADT and device ID from an authoritative database. Caregiver confirms.

**DEC-ID-B** : A patient is connected to an infusion device. The infusion device is connected to the network but is not managed by an infusion or drug administration management application. No ADT feed is available to confirm the ID. Caregiver confirms patient's wristband identity through interactive communication with patient. The Patient ID wristband is scanned (barcode, RFID, etc.) and bound to the PCD.

**DEC-ID-C** : A patient is connected to a ventilator. The ventilator is connected to the network but is not managed by a system. Ventilator and patient have RFID tags. Proximity of the tags implies binding of patient's ADT identification and device's ID from an authoritative database. Verification of an existing Order for a Ventilator for the identified patient is required. If verified, Patient Id is bound to PCD.

1.
# Point-of-Care Infusion Verification (PIV) Profile

The Point-of-Care Infusion Verification Profile supports the electronic transfer of infusion parameters from a Bedside Computer assisted Medication Administration (BCMA) system to a general-purpose infusion pump. This capability will reduce errors by eliminating keystroke errors and by increasing the use of automatic dosage checking facilitated by the onboard drug libraries in "smart pump" systems. In addition to the reduction of medication administration errors, this integration may also increase caregiver productivity and provide more contextual information regarding infusion data.

Electronic transfer of infusion status information from a pump to a clinical information system can be accomplished using the Communicate PCD Data [PCD-01], possibly with Subscribe to PCD Data [PCD-02] transactions of the IHE-PCD Device Enterprise Communication Profile.

The goal of the proposed integration is to bring infusion systems into the electronic medication delivery process.

  1.
## PIV Actors and Transactions

Figure 4.1-1 shows the actors involved in the Point-of-Care Infusion Verification Integration Profile and the relevant transactions between them.

Figure 4.1-1: Point-of-Care Infusion Verification Actor Diagram

Table 4.1-1 lists the transactions for each actor directly involved in the Point-of-Care Infusion Verification Profile. In order to claim support of this Integration Profile, an implementation must perform the required transactions (labeled "R"). Transactions labeled "O" involve optional actors. A complete list of options defined by this Integration Profile and that implementations may choose to support is listed in Section 3.3.

Table 4.1-1: Point-of-Care Infusion Verification Integration Profile - Actors and Transactions

| Actors | Transactions | Optionality | Section in Vol. 2 |
| --- | --- | --- | --- |
| Infusion Order Programmer | Communicate Infusion Order [PCD-03] | R | 3.3 |
| Infusion Order Consumer | Communicate Infusion Order [PCD-03] | R | 3.3 |

  1.
## Integration Profile Options

Options that may be selected for this Integration Profile are listed in the Table 4.2-1 along with the actors to which they apply. Dependencies between options when applicable are specified in notes.

Table 4.2-1: Evidence Documents - Actors and Options

| Actor | Options | Section in Volume 2 |
| --- | --- | --- |
| Infusion Order Programmer | _No options defined_ | - - |
| --- | --- | --- |
| Infusion Order Consumer | _No options defined_ | - - |

  1.
## PIV Overview

The goal of the proposed integration is to bring infusion systems into the electronic medication administration process. The following primary steps comprise this process:

- Order medication
- Verify order for inclusion in the eMAR
- Prepare and dispense medication
- Administer medication

While medication errors can occur at each point in this process, this proposal is concerned with the "Administer medication" step, where half of the errors made by clinicians involve infusions. These errors usually involve a breach of one of the 5 Rights of Medication Administration:

- Right Patient
- Right Drug
- Right Dose
- Right Route
- Right Time

It is the caregiver's responsibility to ensure that these rights are reviewed prior to administering each drug or starting each infusion.

Because manual programming of the pump may still result in administration errors, this profile was developed to support automated programming of the pump, thereby closing the loop between the clinician who uses a BCMA system to verify the 5 Rights and the actual programming of the pump.

The Point-of-Care Infusion Verification Profile supports the electronic transfer of infusion parameters from a Bedside Computer assisted Medication Administration (BCMA) system to an infusion pump. This capability will reduce errors by eliminating keystroke errors and by increasing the use of automatic dosage checking facilitated by the onboard drug libraries in "smart pump" systems. In addition to the reduction of medication administration errors, this integration may also increase caregiver productivity and provide more contextual information regarding infusion data.

Electronic transfer of infusion status information from an infusion pump to a clinical information system can be accomplished using the Communicate PCD Data [PCD-01]) or Subscribe to PCD Data [PCD-02] transactions of the IHE-PCD Device Enterprise Communication Profile.

The use case addressed in this profile includes the following steps (note that the workflow supported by the BCMA application may not necessarily occur in the order specified):

- Clinician uses BCMA to administer an IV
- Clinician identifies self, medication, patient, pump
- Clinician confirms or edits infusion parameters for an IV medication order using the BCMA
- Infusion parameters are transmitted to pump
- Clinician confirms settings directly on pump and starts infusion

    1.
### PIV Process Flow

Figure 4.3-1 shows the sequence diagram for this profile.

![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_7d1a01d6c2a6413.gif)

Figure 4.3-1: Basic Process Flow in Point-of-Care Infusion Verification Profile

  1.
## Integration Profile Safety and Security Considerations

This profile relies on the BCMA system to verify the clinician and patient, as well as the correct medication and infusion parameters, prior to initiating the Communicate Infusion Order transaction.

Although the profile provides infusion settings for an infusion pump, the infusion is not started automatically. The clinician must always verify all settings and start the infusion directly on the pump.

1.
# Implantable Device – Cardiac – Observation (IDCO)

Cardiac physicians follow patients with implantable cardiac devices from multiple manufacturers. These devices are categorized as implantable pacemakers, cardioverter defibrillators, cardiac resynchronization therapy devices, and implantable cardiac monitor devices. As part of patient follow-up an interrogation of an implanted cardiac device is performed (either in-clinic or remotely from a patient's residence). These initial device interrogations (solicited or unsolicited) are typically performed by manufacturer provided interrogation equipment using manufacturer specific protocols. Information is collected regarding the implanted device (attributes, settings and status), the patient (demographics and observations) and therapy (delivery and results).

To improve workflow efficiencies cardiology and electrophysiology practices require the management of "key" information in a central system such as an EHR or a device clinic management system.

To address this requirement, the Implantable Device – Cardiac – Observation (IDCO) Profile defines a standards based translation and transfer of summary device interrogation information from the manufacturer provided interrogation equipment to the information management system.

The IDCO Profile specifies a mechanism for the translation, transmission, processing, and storage of discrete data elements and report attachments associated with cardiac device interrogations (observations).

  1.
## IDCO Actors and Transactions

Figure 5.1-1 shows the actors directly involved in the IDCO Integration Profile and the relevant transactions between them. Other actors that may be indirectly involved due to their participation in other related profiles are not necessarily shown.

![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_37a1dd605dbeefdc.gif)

Figure 5.1-1: IDCO Actor Diagram

See Section 5.5 Patient Identification for details concerning how patient identity is managed.

Table 5.1-1 lists the transactions for each actor directly involved in the IDCO Profile. In order to claim support of this Integration Profile, an implementation must perform the required transactions (labeled "R"). Transactions labeled "O" are optional. A complete list of options defined by this Integration Profile and that implementations may choose to support is listed in Volume 1, Section 5.2.

Table 5.1-1: IDCO Integration Profile - Actors and Transactions

| Actors | Transactions | Optionality | Section in Volume 2 |
| --- | --- | --- | --- |
| Implantable Device – Cardiac – Reporter | Communicate IDC Observation [PCD-09] | R | 3.9 |
| --- | --- | --- | --- |
| Implantable Device – Cardiac – Consumer | Communicate IDC Observation [PCD-09] | R | 3.9 |

  1.
## IDCO Integration Profile Options

Options that may be selected for this Integration Profile are listed in the Table 5.2-1 along with the actors to which they apply. Dependencies between options when applicable are specified in notes.

Table 5.2-1: IDCO - Actors and Options

| Actor | Options | Section in Volume 2 |
| --- | --- | --- |
| Implantable Device – Cardiac – Reporter | PV1 – Patient Visit | 3.9.4.1.2.3 |
| --- | --- | --- |
| OBX – Encapsulated PDF or Reference Pointer | 3.9.4.1.2.7 |
| Implantable Device – Cardiac – Consumer | PV1 – Patient Visit | 3.9.4.1.2.3 |
| OBX – Encapsulated PDF or Reference Pointer | 3.9.4.1.2.7 |

Patient Visit Option – Because this is an unsolicited observation and the Implantable Device – Cardiac – Reporter will not be aware of an associated order, this segment is optional. The Implantable Device – Cardiac – Reporter may want to track the interrogation as a visit using this segment.

Encapsulated PDF or Reference Pointer Option - observations or additional analyses may be provided in an encapsulated PDF containing displayable information or as a reference pointer to an external report.

  1.
## IDCO Use Cases

    1.
### Use Case IDCO-1: Implantable Cardiac Device In-Clinic Follow-up

**Clinical Context:**

Alex Everyman presents at the implantable cardiac device follow-up clinic for his appointment. Alex will present for follow-up 7-10 days after implant and every 3-6 months thereafter, depending on the therapy protocol.

Dr. Tom Electrode, a cardiac physician, and Nicci Nightingale, a registered nurse (R.N.), work in the implantable cardiac device follow-up clinic.

Nicci interrogates the device using a cardiac device programmer. The programmer extracts the device data (e.g., settings, status, events) from the device. Nicci reviews and verifies the device data and initiates a transfer of the data from the programmer to a translator system. A necessary subset of the data that represents a summary is converted by the translator system from a proprietary data format to a standard HL7 format. The data is then transmitted using HL7 messaging to the EHR or device clinic management system.

This summary data is sent as an unsolicited observation message.

Notes:

1. In the area of Electrophysiology, a "programmer" is a commonly used term to describe a specialized computer that is capable of communicating with an implanted device. Programmers are used to interrogate implanted devices (as are "interrogators") and "program", or make changes to the cardiac device settings.
2. In this use case, the translator system is a clinical information computer system that can receive proprietary structured data from the programmer and perform the necessary transformation and communication protocols to communicate effectively with the EMR.
3. Electrocardiograms are not currently addressed in the HL7 standards. They can be sent as a PDF attachment to the HL7 message.

**IHE Context:**

In the use case, the translator system equates to the Implantable Device – Cardiac – Reporter and the EHR or device clinic management system equates to the Implantable Device – Cardiac – Consumer. The HL7 formatted cardiac device message is the [PCD-09] transaction.

    1.
### Use Case IDCO2: Implantable Cardiac Device In-Clinic Follow-up with Networked Programmer that Translates Information

**Clinical Context:**

Same as in-clinic use case above with the following change. The programmer communicates directly with an EHR or device clinic management system, acting as a translator system.

**IHE Context:**

Same as in-clinic use case above with the following change. The programmer assumes the role the actor Implantable Device – Cardiac – Reporter.

    1.
### Use Case IDCO-3: Implantable Cardiac Device Remote Follow-up

**Clinical Context:**

Portions of the previous use case also apply to Alex Everyman having his device followed remotely. Alex will present to an interrogation device located outside of the clinic (e.g., in Alex's residence) which will capture the state of his implanted device and will transmit the information to a translator system. The translator system converts the data into an HL7 message and communicates the summary data to the clinic's EHR.

**IHE Context:**

Same as in-clinic use case 5.3.1 above. It is recommended that the Implantable Device – Cardiac – Reporter be grouped with the Secure Node of the ATNA Profile to secure communications for remote follow-ups if data is sent across an un-trusted network.

    1.
### Use Case IDCO-4: Remote Monitoring of Implanted Cardiac Devices

**Clinical Context:**

The translator system described in use case IDCO-3 may be implemented as a service, e.g., the device manufacturer or a monitoring service. This system may collect data provided on a periodic basis to enable early detection of trends and problems, or provide other event information. This system may also provide various types of value-added services, such as data aggregation and analysis, trending, statistical reports, and the ability to review and verify data before sending to the EMR. Depending on user selectable settings in the translator system, detailed information concerning the current status of the patient and reports may be sent to the recipient system.

**IHE Context:**

The same as the Remote Follow-up use case above. The additional data aggregation or rendering can be sent as a PDF attachment to the HL7 message.

These types of value-added services are likely to be provided by a party that will send the results over the Internet. It is recommended that the Implantable Device – Cardiac – Reporter be grouped with the Secure Node of the ATNA Profile to secure communications for remote follow-ups if data is sent across an un-trusted network.

  1.
## IDCO Process Flow

![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_3bab70687b72626c.gif)

Figure 5.4-1: Basic Process Flow in IDCO Profile

Note: Device, Interrogator, and steps 1 thru 4, 6 and 7 are informative and are not formal actors or transactions of the IDCO Profile.

1. Send Interrogation – The Device sends information in a manufacturer-proprietary manner to the Interrogator.
2. Send Interrogation – The Interrogator sends information in a manufacturer-proprietary manner to the Implantable Device – Cardiac – Reporter.
3. Validate and Review – The Implantable Device – Cardiac – Reporter validates the information. This may include the clinician reviewing and approving the information.
4. Translate Information – The Implantable Device – Cardiac – Reporter translates/maps/transforms the information into the proper HL7 format.
5. Send Observation – The Implantable Device – Cardiac – Reporter sends the device information to the Observation Consumer using the [PCD-09] transaction.
6. Receive Observation – The Implantable Device – Cardiac – Consumer receives the observation message.
7. Process Observation – The Implantable Device – Cardiac – Consumer further processes the observation message for inclusion within derivative products, such as clinical reports, databases, or trans-coded / reformatted results.

  1.
## IDCO Patient Identification Considerations

This profile assumes a pre-coordinated association of identifiers across the two Patient Identifier Domains: the device manufacturer systems providing the observations and the clinics receiving the observations.

Depending on local regulations, each implantable cardiac device manufacturer may be obligated to maintain a registry that maps a unique device identifier with the patient in which it is implanted. In some locales, this mapping is the strict responsibility of the implanting or other organization. Specific patient identification information is typically not stored in the device but is made available in the registry or by other means. Consequently, the Implantable Device – Cardiac – Reporter is only required to send this identifier which represents the patient to device relationship for an implanted device as part of the [PCD-09] transaction. This identifier by normative convention is the concatenation of a unique industry wide manufacturer id, unique manufacturer model number, and unique manufacturer serial number.

This profile specifies one actor, the Implantable Device – Cardiac – Consumer, as the endpoint for observation messages. The Implantable Device – Cardiac – Consumer will have pre-coordinated a cross-reference of patient identifiers across the two Patient Identifier Domains. This will be done by storing the unique device identifier within the patient's record. This will typically be the patient's unique identity but could be the patient's location in emergency situations.

In some cases, the Implantable Device – Cardiac – Reporter will have detailed patient identification information like name, address, etc. In these cases, the Implantable Device – Cardiac – Reporter can send this information as part of the [PCD-09] transaction.

  1.
## IDCO Security Considerations

This profile does not require the use of ATNA. There are several implementation models for this profile that do not require transmission of data over public networks including intra-institutional, VPN, etc. However, when public networks are used, ATNA is one option for secure transport over those networks. It is recommended that the Implantable Device – Cardiac – Reporter be grouped with the Secure Node of the ATNA Profile to secure communications for remote follow-ups if data is sent across an un-trusted network.

1.
# Alert Communication Management (ACM) Integration Profile

Alert Communication Management defines the communication of alerts (physiologic alarms, technical alarms, and advisories) from alert reporting systems to alert consumer or alert manager systems and from alert manager systems to alert communicator systems.

Figure 6-1: What is an Alert?

This is an alert (alarms and advisories) distribution solution providing the following:

- Communication from an alert gateway to an alert consumer, manager, or distributor
- Communication to an alert communicator for dissemination to people using both wired and wireless communication devices, typically clinicians, physicians, or other healthcare staff, for responding to patient needs or related workflows

The primary use of the IHE PCD Alert Communications Management Profile is to serve in communication of alert information from alert reporting systems, such as patient care devices, location service systems (LS/RTLS/RFID), or equipment management systems (CMMS/CEMS) to an alert manager system communicating with additional means of notification to caregivers. Notification devices would include those capable of supporting this profile, in particular [PCD-06] and [PCD-07].

Consolidation of alerts is out of scope for this profile.

The definition of escalation actions in response to a notification not being responded to is outside the scope of this profile.

  1.
## ACM Actors and Transactions

Figure 6.1-1 shows the actors directly involved in the ACM Integration Profile and the relevant transactions between them. Other actors that may be indirectly involved due to their participation in other related profiles, etc. are not necessarily shown.

F ![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_de0475b7cc87617a.gif)
 igure 6.1-1: ACM Profile Actor Diagram

Table 6.1-1 lists the transactions for each actor directly involved in the ACM Profile. In order to claim support of this Integration Profile, an implementation must perform the required transactions (labeled "R"). Transactions labeled "O" are optional. A complete list of options defined by this Integration Profile and that implementations may choose to support is listed in Section 6.2.

Table 6.1-1: ACM Integration Profile – Actors and Transactions

| Actors | Transactions | Direction | Optionality | Section in Vol. 2 |
| --- | --- | --- | --- | --- |
| Alert Reporter (AR) | Report Alert [PCD-04] | Outbound | R | 3.4 |
| --- | --- | --- | --- | --- |
| Report Alert Status [PCD-05] | Inbound | O | 3.5 |
| Alert Manager (AM)
 | Report Alert [PCD-04] | Inbound | R | 3.4 |
| Disseminate Alert [PCD-06] | Outbound | R | 3.6 |
| Report Dissemination Alert Status [PCD-07] | Inbound | R | 3.7 |
| Report Alert Status [PCD-05] | Outbound | O | 3.5 |
| Alert Consumer | Report Alert [PCD-04] | Inbound | R | 3.7 |
| Alert Communicator (AC)
 | Disseminate Alert [PCD-06] | Inbound | R | 3.6 |
| Report Dissemination Alert Status [PCD-07] | Outbound | R | 3.7 |

Evidentiary data for ECG or other physiological waveforms are defined in a separate format specification, Waveform Content Module (WCM). WCM evidentiary data can optionally be included in ACM Report Alert [PCD-04] messages and optionally processed by the Alert Manager into evidentiary data and/or graphical snippet attachments to the Disseminate Alert [PCD-06] message.

T ![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_c87ee8bc5c42ee64.gif)
 he capability for the Alert Manager to optionally synthesize a static graphical snippet and provide that to the Alert Communicator is provided so that the Alert Communicator can avoid implementing the algorithms needed to synthesize the graphical snippet from the HL7 evidentiary data.

Figure 6.1-2: ACM Profile Actor Diagram

  1.
## ACM Integration Profile Options

Options that may be selected for the ACM Integration Profile are listed in Table 6.2-1 ACM Actor Options along with the actors to which they apply.

Through use of the Disseminate and Report Alert Status Option an ACM Alert Manager, Alert Communicator, and its population of endpoint communication devices can be shared between HL7 v2.6 based Alert Reporter Actors of the PCD ACM Profile and FHIR®

# 2
 DSTU2 based Alert Reporters of the ITI mACM Profile. An Alert Consumer can make use of this option and it not affect its lack of requirement for support of communication with an Alert Communicator (AC). For definitions of ITI mACM actors and transactions and for mapping of FHIR data items to ACM PCD-04 HL7 v2.6 data items refer to the ITI mACM Profile.

Table 6.2-1: ACM Actor Options

| Actor | Options | Section inVolume 2 |
| --- | --- | --- |
| AR | May send additional alert notification recipients in PCD-04 | B.7.1.1 |
| AR | Receives Report Alert Status in PCD-05 | B.7.1.1 |
| AR | Can send WCM data in PCD-04 | B.7.1.1 |
| AM | Processes additional alert notification recipients in PCD-04 | B.7.1.1 |
| AM | Sends Report Alert Status in PCD-05 | B.7.1.1 |
| AM | Can send WCM data from PCD-04 in PCD-06 | B.7.1.1 |
| AM | Can send WCM PCD-04 based data as graphical snippet in PCD-06 | B.7.1.1 |
| ACON | Can receive WCM data in PCD-04 | B.7.1.1 |
| AC | Can receive WCM evidentiary data in PCD-06 and present graphics | B.7.1.1 |
| AC | Can receive WCM graphics snippet in PCD-06 and present it | B.7.1.1 |
| AM | Disseminate and Report Alert Status (in support of ITI mACM) | B.7.1.1 |
| ACON | Disseminate and Report Alert Status (in support of ITI mACM) | B.7.1.1 |

If protocol specific proper default processing is performed in Alert Manager for HL7 and in Alert Communicator for WCTP implementations there should be no need for the above transaction specific options. The options are for Connectathon vendor actor matching to identify WCM specific capability testing partners.

  1.
## Actor Descriptions

    1.
### Alert Reporter (AR) Actor

This actor originates the alert (an alarm, either physiological or technical, or an advisory).

The semantics and data types used to represent alert type, alert priority, alert inactivation state and escalation and de-escalation of priority in the messages of this actor are based on IEC 60601-1-8 definitions.

The Alert Reporter (AR) is responsible for receiving optional PCD-05 Report Alert Status transactions sent by the Alert Manager (AM). The PCD-05 transaction serves to inform the Alert Reporter (AR) as to alert notification recipients (who and/or communication device), delivery confirmation status, read receipt, and endpoint communication device operator responses.

Receipt of PCD-05 Report Alert Status transactions shall at a minimum be logged. How the Alert Reporter (AR) responds to PCD-05 Report Alert Status transactions besides logging is beyond the scope of the ACM Profile.

The Alert Reporter can optionally include WCM evidentiary data in the Report Alert [PCD-04] message.

A single source can produce multiple, possibly concurrent, alerts.

A single Report Alert transaction can contain at most a single alert.

This profile specifies the required data and data types produced by this actor.

This profile specifies communication of the data produced by this actor.

This actor may optionally cancel an outstanding alert condition.

This may optionally indicate cancellation of any related escalation.

An outstanding alert condition may be optionally escalated via follow-on alert.

This actor may aggregate and adapt alerts from multiple sources as needed to make them interoperable with the Alert Manager. It does not need to be the original source of the alert data.

In large alert source populations, an aggregation system may be useful for concentration and possible alert coordination (smart alerting).

    1.
### Alert Manager (AM) Actor

This actor receives alerts from the Alert Reporter, manages them, and dispatches them to the Alert Communicator.

The semantics and data types used to represent alert type, alert priority, alert inactivation state and escalation and de-escalation of priority in the messages of this actor are based on IEC 60601-1-8 definitions.

The Alert Manager (AM) is responsible for sending optional PCD-05 Report Alert Status transactions to the Alert Reporter (AR) as a result of alert notification dissemination status updates received from the Alert Communicator (AC) in PCD-07 Report Dissemination Alert Status transactions. The PCD-05 transaction serves to inform the Alert Reporter (AR) as to alert notification recipients (who and/or communication device), delivery confirmation status, read receipt, and endpoint communication device operator responses.

There is a one-to-many nature of the PCD-04 transaction into many PCD-05 transactions. A single PCD-04 transaction from the Alert Reporter to the Alert Manager can be sent to multiple recipients. Think of unit-wide code alert notifications (which could be tens of recipients) or a clinician and their buddies (typically two recipients). This results in multiple PCD-06 transactions from the Alert Manager to the Alert Communicator. Each PCD-06 transaction from the Alert Manager to the Alert Communicator can result in multiple PCD-07 dissemination and reply status updates from the Alert Communicator back to the Alert Manager.

The Alert Manager may take WCM evidentiary data from the Report Alert [PCD-04] message and optionally send that to the Alert Communicator (AC) as WCTP message attachments in the Disseminate Alert [PCD-06] message as either or both of the original PCD-04 message in its entirety or as a graphical snippet synthesized by the Alert Manager into a graphical snippet.

This profile specifies the required data and data types produced by this actor in communication with the Alert Communicator and Alert Reporter Actors.

If the following is performed, it is likely performed within the Alert Manager.

- Alert formatting for dissemination
- Alert harmonization across multiple similar and dissimilar Alert Reporter
- Any additional alert priority actions following any performed by the Alert Reporter
- Alert mapping of recipients to Alert Communicator endpoints,
- Additional recipients are optionally indicated in the Report Alert [PCD-04] transaction
- Alert dissemination escalation
- Alert dissemination sequencing to Alert Communicator endpoints
- Alert dissemination escalation to Alert Communicator endpoints
- Location to staff assignments
- Patient identification to staff assignments
- Equipment to patient to staff assignments
- Staff to Alert Communicator endpoint assignments
- Alert reporting
- Alert caching

To accomplish assignments the Alert Manager may receive HL7 ADT or SCH message feeds from one or more sourcing systems for the following purposes:

- Identify patients
- Assign resources to patients (staff, equipment, rooms)

This profile specifies the required data and data types produced by this actor.

The protocol used in the communication of the data to/from the Alert Manager (AM) and the Alert Communicator (AC) is the Wireless Communication Transfer Protocol (WCTP).

    1.
### Alert Consumer (ACON) Actor

Alert Consumer – The Alert Consumer (ACON) receives the alert from the Alert Reporter (AR) and uses the alert information strictly as a consumer of the alert being raised.

The Alert Consumer may receive WCM evidentiary data from the Report Alert [PCD-04] message.

There is no implementation requirement for how the Alert Consumer ultimately uses the alert information.

    1.
### Alert Communicator (AC) Actor

The Alert Communicator (AC) is not responsible for taking action in the event that the endpoint operator has received but not responded to the notification. Actions for non-response by the Alert Communicator (AC) endpoint operator (clinical user) are within the scope of the Alert Manager (AM). These actions are commonly referred to as escalation whether it is repeatedly sending the same message to the same recipient or to alternate recipients. The definition of such actions has been identified as out-of-scope for the ACM Profile.

The Alert Communicator (AC) receives alerts from the Alert Manager (AM). Endpoint devices are connected either directly or indirectly to the Alert Communicator (AC). The Alert Communicator (AC) may utilize a locally controlled or public infrastructure.

The protocol for communication between the Alert Manager (AM) and the Alert Communicator (AC) is WCTP.

The Alert Communicator may optionally take WCM related WCTP attachments from the Disseminate Alert [PCD-06] message and display an attached graphical snippet with appropriate and display data safe scaling to fit the display of the endpoint communication device or may take content from an evidentiary data attachment and synthesize an endpoint communication device display appropriate waveform graphical snippet and display it on the device.

The capability for the Alert Manager to optionally synthesize a static graphical snippet and provide that to the Alert Communicator is provided so that the Alert Communicator doesn't have to implement the algorithms needed to synthesize the graphical snippet from the HL7 evidentiary data.

This profile does not specify the protocol used in the communication of the data to the final destination as it is potentially not controllable by the Alert Communicator (AC).

This profile does not specify the presentation of the data at the endpoint as that is beyond its control.

This profile does not specify the human interface at the endpoint as that is beyond its control.

This profile does make recommendations as to the significant data items to be included in alert notifications with consideration for ePHI (electronic Patient Healthcare Information). The correlation of what data items are to be sent for specific alerts is defined in IHE PCD Device Profiles in conjunction with alert inclusion in the IHE PCD Rosetta Terminology Mapping (RTM) activities.

It is recognized that in healthcare communication there are certain data items which should not be transported over unsecured and unencrypted communication connections. A number of controls come into play including HIPAA requirements and ePHI guidelines. It is the responsibility of the deploying parties to insure that capabilities are put into place and monitored to assure that information protection requirements are met.

WCTP was originally defined by the Personal Communications Industry Association (PCIA) consortium. The PCIA is not an SDO and is not at this time actively sustaining or enhancing WCTP. WCTP is in popular and stable use by a number of wide area communication service providers. The protocol provides the capabilities required by Alert Manager to Alert Communicator communication, specifically Internet common practice recognized HTTP or HTTPS securable application to application communication, reliable TCP/IP transport, extensible XML data envelope, transactions for application to individual person communication, and communication status responses for closed loop confirmations for delivery to Alert Communicator (AC), delivery to endpoint device, read by device operator, and operator responses. With permission from the PCIA, this IHE PCD ACM Profile includes and adopts version 1.3 update 1 of the WCTP protocol as defined by PCIA at [www.wctp.org](http://www.wctp.org/) for use in Alert Manager (AC) to Alert Communicator (AC) communication. Corrections and extensions to this capture of the protocol are the responsibility of the Alert Communication Management (ACM) Working Group (WG) within the Patient Care Devices (PCD) domain of IHE. As the protocol has been in live operation with major communication carriers for some time, the risk of changes required for corrective actions is perceived as low. The protocol includes defined areas for client-server agreed two-party extensions. The ACM Profile will make use of that capability as needs arise.

Not all of the WCTP protocol possible request/response transactions are required for Alert Manager (AM) to Alert Communicator (AC) communication. Later sections of this document identify the specifics.

  1.
## ACM Use Cases

Alert Communication Management is meant to improve clinical efficiency by using technology to deliver the right alerts, with the right priority, to the right individuals via devices with the right content, and through configuration escalating communication of alerts to devices associated with other individuals.

T ![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_987f80889dba1b0a.gif)
 he following are the use cases. The use cases are noticeably generic and not so much focused on the alert clinical purpose as they are focused on the system interactions. The use cases may be directly applicable to other IHE domains, and may be supplemented with additional use cases to serve specific needs in other domains.

    1.
### ACM Process Flow

Figure 6.4.1-1: Basic Process Flow in ACM Profile

Each actor is identified below. Actor identity is implicitly identified in the alert (for example, through MSH-21 Message Profile, identifying the message as PCD-04 by OID, which is sent by an ACM Alert Reporter, which is identified in MSH-3 Sending Application).

The functional units comprising an actor may be provided by one or more vendors in one or more systems. Reducing the total number of systems is preferred, but is not required.

Data flow of individual use model messaging communication indicates the command response sequences and directions.

    1.
### ACM Use Cases

      1.
#### Case A1: Location Sourced

Use Case – Patient wants a pillow. Patient pulls nurse call. Nurse call system lights the room's dome light and light at central station. Nurse call system, operating as an Alert Reporter (AR) sends Report Alert [PCD-04] to Alert Manager (AM) indicating nurse call alert. The Alert Manager (AM) logs receipt of the alert. The Alert Manager (AM) identifies the appropriate nurse based upon configured nurse to patient assignments, identifies the appropriate Alert Communicator (AC) and destination communication device based upon nurse to device configuration in Alert Manager (AM), sends Disseminate Alert [PCD-06] to nurse's communication device. The Alert Manager (AM) logs the dissemination to the Alert Communicator (AC). The Alert Manager (AM) sends a Report Alert Status [PCD-05] to the Alert Reporter (AR) to inform the Alert Reporter (AR) of the status of the communication of the alert to the Alert Communication (AC) which may indicate successfully sent or not. The nurse receives the alert on their assigned device. The information minimally includes the patient location (room number). The Alert Manager (AM) sends a Report Alert Status [PCD-05] to the Alert Reporter (AR) to inform the Alert Reporter (AR) of the delivery confirmation status which may indicate delivered or not delivered. The nurse replies to the alert on the communication device, the Alert Communicator (AC) sends a Report Dissemination Alert Status [PCD-07] to the Alert Manager (AM). The Alert Manager (AM) sends a Report Alert Status [PCD-05] to the Alert Reporter (AR) to inform the Alert Reporter (AR) of the nurse response to the alert notification. The nurse goes to the room, determines the needs of the patient, and provides the patient with a pillow. The nurse then resets the nurse call pull. The nurse call system turns off the room's dome light and the light at the central station. The nurse call system, operating as an Alert Reporter (AR) sends Report Alert [PCD-04] to Alert Manager (AM) indicating reset of the nurse call alert. The Alert Manager (AM) receives the alert turns off any configured alert escalation and logs the alert.

      1.
#### Case A2: Identified Patient Source

![](IHE_PCD_TF_Rev8-0_Vol1_FT_2018-10-23_html_47f1b565c1506ca1.gif)
 Use Case – Alert occurs on PCD assigned to patient. PCD or PCD gateway system, operating as an Alert Reporter (AR) sends Report Alert [PCD-04] to Alert Manager (AM) indicating PCD alert. The Alert Manager (AM) logs receipt of the alert. The Alert Manager (AM) identifies the appropriate nurse based upon configured nurse to patient assignments, identifies the appropriate Alert Communicator (AC) and destination communication device based upon nurse to device configuration in Alert Manager (AM), sends Disseminate Alert [PCD-06] to nurse's communication device. The Alert Manager (AM) logs the dissemination to the Alert Communicator (AC). The Alert Manager (AM) sends a Report Alert Status [PCD-05] to the Alert Reporter (AR) to inform the Alert Reporter (AR) of the status of the communication of the alert to the Alert Communication (AC) which may indicate successfully sent or not. The nurse receives the alert on their assigned device. The information minimally includes the patient identification. The Alert Manager (AM) sends a Report Alert Status [PCD-05] to the Alert Reporter (AR) to inform the Alert Reporter (AR) of the delivery confirmation status which may indicate delivered or not delivered. The nurse replies to the alert on the communication device, the Alert Communicator (AC) sends a Report Dissemination Alert Status [PCD-07] to the Alert Manager (AM). The Alert Manager (AM) sends a Report Alert Status [PCD-05] to the Alert Reporter (AR) to inform the Alert Reporter (AR) of the nurse response to the alert notification. The nurse goes to the room, determines the needs of the patient, and responds to the PCD alert. The nurse then clears the PCD alert. The PCD or PCD gateway system, operating as an Alert Reporter (AR) sends Report Alert [PCD-04] to Alert Manager (AM) indicating reset of the PCD alert. The Alert Manager (AM) receives the alert turns off any configured alert escalation and logs the alert.

      1.
#### Case A3: Same as A1/A2 with Escalation with Cancel at Alert Source

Use Case 3: (same as use case 1 or 2 with escalation with cancel at source) if the communication destination is inaccessible or the target individual is indicated as unavailable, then the alert is rerouted to one or more alternatives with escalation to higher levels of responsibility until the alert is canceled at its source and the alert system notified of the cancel.

      1.
#### Case A4: Same as A1/A2 with Escalation with Cancel at Communication Endpoint

Use Case 4: (same as use case 1 or 2 with escalation with cancel of any active Alert Manager (AM) escalation actions at communication endpoint) if the communication destination is inaccessible or the target individual is indicated as unavailable then the alert is rerouted to one or more alternatives with escalation to higher levels of responsibility until the alert is canceled by a recipient at a communication endpoint.

      1.
#### Case A5: Same as A1/A2 with Escalation with Cancel at Alert Manager

Use Case 5: (same as use case 1 or 2 with escalation with cancel of any active Alert Manager (AM) escalation actions at alert management system) if the communication destination is inaccessible or the target individual is indicated as unavailable then the alert is rerouted to one or more alternatives with escalation to higher levels of responsibility until the alert is canceled by a user on the Alert Manager (AM), however not automatically via algorithms in the Alert Manager (AM).

      1.
#### Case A6: Information with no destination other than logging by the Alert Manager (AM) or Alert Consumer Actor

Use Case 6: The use case for this is to log information from the Alert Reporter (AR) with the Alert Manager (AM) and not to disseminate the information to the Alert Communicator (AC). The information can be information meant to be used in concert with alerts received from the Alert Reporter (AR), or for logs or information not meant for dissemination to users, but used in reporting alert environment after the fact.

This is also applicable to the Alert Consumer (ACon) actor where there is no presumption of any Disseminate Alert [PCD-06] message generation.

This is also applicable to the Alert Consumer (ACon) actor where there is no presumption of any Disseminate Alert [PCD-06] message generation.

      1.
#### Case A7: Equipment Sourced Alert

Use Case 7: The use case for this alert is to communicate medical equipment management events from devices when those events are not patient focused, such as battery low or failure to charge or malfunctioning of alerts. Such indications are device specific, patient independent, and potentially location independent.

  1.
## ACM Security Considerations

This profile itself does not impose specific requirements for authentication, encryption, or auditing, leaving these matters to site-specific policy or agreement. The IHE PCD Technical Framework identifies security requirements across all PCD profiles.

# Appendix A – Rosetta Terminology Mapping (RTM)

## A.1 Problem Statement

The majority of PCD devices use vendor-specific or proprietary nomenclatures and terminologies. As a result, even though information may be exchanged using standards-based transactions such as Device Enterprise Communication (DEC), semantic interoperability requires that the content be mapped to a standard nomenclature as well. This mapping is often inconsistent and subject to loss of semantic precision when mapping from a specific term to a more generic term.

The RTM value set identifies the core set of semantics appropriate for medical devices typically used in acute care settings (e.g., physiological monitors, ventilators, infusion pumps, etc.) and mapping them to a standard terminology. The RTM mapping effort initially focused on numeric parameters and their associated units of measurement and enumerated values. The RTM mapping effort currently is focused on numeric parameters and associated units of measure and enumerated values, and will likely be expanded to include aspects of the observation hierarchy expressed in OBR-4 and event content models in the future.

The RTM information is represented in a uniform manner e.g., in a machine-readable form that is easily adaptable by industry, as a set of Excel worksheets and a set of XML files for publication and distribution. This will facilitate use by production systems, but more importantly, facilitate comparison between vendors that have (or will) implement the nomenclature standards in their systems, with the following goals:

- identify terms that are missing from the standard nomenclature
- ensure correct and consistent use if multiple representations are possible
- ensure correct and consistent use of units-of-measure
- ensure correct and consistent use of enumerated values
- ensure correct and consistent identification of 'containment hierarchy'

During the development of the RTM and later, gaps in the standardized medical device terminology will be identified. In these cases, proposals will be made for adding the semantics to the appropriate terminologies. Although the immediate focus of the RTM will be to standardize the content in transaction profiles such as DEC, which are typically between a device data gateway and enterprise level applications, the standardized terms should also support direct device communication, enabling semantic interoperability literally from the sensor to the EHR.

The availability of the RTM information will also facilitate development of tools that can more rigorously validate messages, such as enforcing the use of the correct units-of-measure and correct enumerated values associated with specific numeric values. For example, ST segment deviation will be expressed in "uV" or "mV", rather than the traditional "mm". This will promote greater interoperability, clarity and correctness which will in turn benefit patient safety.

The consistent and correct use of standard nomenclatures such as ISO/IEEE 11073-10101 and UCUM for medical device and system data exchange will facilitate further development of real-time clinical decision support, smart alarms, safety interlocks, clinical algorithms, and data mining and other clinical research. This work can also be expanded at a future date to support events and alarms, waveforms, device settings and other critical monitoring information.

## A.2 Key Use Case

A patient is monitored at home. A potentially life-threatening cardiac event is detected and reported to a remote monitoring service that confirms and forwards the event to his caregiver. The patient is subsequently admitted to the ER complaining about chest pain. A diagnostic 12-lead is taken followed by continuous vital signs monitoring or telemetry for further observation. Following a series of premonitory episodes of ST segment deviation, the patient exhibits short runs of ventricular ectopy that rapidly devolve into ventricular tachycardia and then fibrillation, all along triggering alarms from the monitor. The patient is cardioverted in the ER and scheduled for CABG surgery. During surgery, the patient is connected to well over a dozen medical devices (e.g., multiparameter patient monitor, anesthesia machine, multiple infusion pumps, bypass machine, etc.) and the data from these devices and systems is displayed in a unified and comprehensible manner and automatically charted. After successful surgery, the patient is monitored in the ICU. The patient is discharged a week later to continue his recovery at home, where, among other things, he uses a spirometer with a low-cost wireless interface to facilitate recovery. He also exercises while walking around inside and outside the house attached to a wireless sensor that records and transmits his ECG via his cell phone to a remote monitoring service. The patient also has follow-up visits to cardiac rehab, where his ECG and glucose measurements are taken before and after exercise, with all the data also electronically recorded. This information is ultimately stored in the patient's personal health record and made available for a follow-up clinical research study regarding the cardiac medications he was taking.

The key point of this comprehensive but realistic use case is that the patient's data is "touched" by well over three dozen medical devices and systems designed and manufactured by nearly an equal number of different vendors. An essential first step towards achieving interoperability across all these devices and systems is that they use a shared and common semantic foundation.

# Glossary

The IHE Glossary, an appendix to the _IHE Technical Frameworks General Introduction_, can be found [here](http://ihe.net/Technical_Frameworks/#GenIntro).

1

HL7 is the registered trademark of Health Level Seven International.

2

FHIR is the registered trademark of Health Level Seven International.

Copyright © 2018: IHE International, Inc.
