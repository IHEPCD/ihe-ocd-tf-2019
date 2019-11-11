**Integrating the Healthcare Enterprise**

![](IHE_PCD_TF_Rev8-0_Vol3_FT_2018-10-23_html_7540ccff8bd4335f.jpg)

## **IHE Patient Care Device (PCD)**

## **Technical Framework**

## **Volume 3**

## **IHE PCD TF-3**

## **Semantic Content**

**Revision 8.0 - Final Text**

**October 23, 2018**

**Please verify you have the most recent version of this document,** which is published [here](http://www.ihe.net/Technical_Frameworks/).

**CONTENTS**

1Introduction 4

1.1Overview of the Patient Care Device Technical Framework 4

1.2Overview of Volume 3 5

1.3Audience 5

1.4Relationship to Standards 6

1.5Relationship to Real-world Architectures 6

1.6Comments 7

1.7Copyright Permission 7

2Conventions 8

2.1The Generic IHE Transaction Model 8

2.2Security considerations 9

3Overview of device semantic content profiling 10

3.1General device content considerations 10

3.1.1Hierarchical containment tree information 10

3.1.2Device semantics & controlled terminologies 12

3.1.3Overview of the ISO/IEEE 11073 nomenclature/terminology 13

3.1.4Private terms and scope 13

3.1.5New or non-specified terms 14

3.1.6Episodic vs. periodic data updates 14

3.1.7Alternative units of measurement mapping 16

3.2Alert and event semantics 17

3.3Body site semantics 19

3.4Basic data type specifications 19

3.5MDS semantics 22

3.6VMD semantics 23

3.7Channel semantics 24

4Reserved 26

5Reserved 26

6Reserved 26

7Device specialization content modules 27

7.1Device: Infusion Pump 27

7.1.1Containment tree 27

7.1.2Channel: Source 27

7.1.3Channel: Delivery 28

7.2Device: Ventilator 29

7.2.1Containment tree 29

7.2.2Channel: Ventilator 30

7.2.3Channel: Airway Pressure 30

7.2.4Channel: Airway Volume 31

7.2.5Channel: Airway Breath Pattern 31

7.3Device: Physiologic Monitor 32

7.3.1Containment tree 32

7.3.2Channel: Invasive Blood Pressure 33

7.3.3Channel: Blood Pressure – Non-Invasive 33

7.3.4Channel: Blood Pressure – Pulse Rate 33

7.3.5Channel: Temperature 34

7.3.6Channel: Pulse Ox 34

7.3.7Channel: Pulse Rate Ox 34

7.3.8Channel: ECG Monitoring 35

7.3.9Channel: ECG Resp 35

7.3.10Channel: Heart Rate 35

7.3.11Channel: Arrhythmia 35

7.3.12Channel: Ischemia 36

7.3.13Channel: ECG Measurements 36

7.3.14Channel: Cardiac Output – Continuous 36

7.3.15Channel: Cardiac Output – Intermittent 36

7.3.16Channel: Hemodynamics Calculator 37

Appendix A Reserved 37

1.
# Introduction

Integrating the Healthcare Enterprise (IHE) is an initiative designed to stimulate the integration of the information systems that support modern healthcare institutions. Its fundamental objective is to ensure that, in the care of patients, all required information for medical decisions is both correct and available to healthcare professionals. The IHE initiative is both a process and a forum for encouraging integration efforts. It defines a technical framework for the implementation of established messaging standards to achieve specific clinical goals. It includes a rigorous testing process for the implementation of this framework and it organizes educational sessions and exhibits at major meetings of medical professionals to demonstrate the benefits of this framework and encourage its adoption by industry and users.

The approach employed in the IHE initiative is not to define new integration standards, but rather to support the use of existing standards, HL7®

# 1
, ISO, IEEE, DICOM®
# 2
, IETF, and others, as appropriate in their respective domains in an integrated manner, defining configuration choices when necessary. When clarifications or extensions to existing standards are necessary, IHE refers recommendations to the relevant standards bodies.

This initiative has numerous sponsors and supporting organizations in different medical specialty domains and geographical regions. In North America the primary sponsors are the American College of Cardiology (ACC), the Healthcare Information and Management Systems Society (HIMSS) the Radiological Society of North America (RSNA), and the American College of Clinical Engineering (ACCE). IHE Canada has also been formed. IHE Europe (IHE-EUR) is supported by a large coalition of organizations including the European Society of Cardiology (ESC), European Association of Radiology (EAR) and European Congress of Radiologists (ECR), the Coordination Committee of the Radiological and Electromedical Industries (COCIR), Deutsche Röntgengesellschaft (DRG), the EuroPACS Association, Groupement pour la Modernisation du Système d'Information Hospitalier (GMSIH), Société Française de Radiologie (SFR), and Società Italiana di Radiologia Medica (SIRM). In Japan IHE-J is sponsored by the Ministry of Economy, Trade, and Industry (METI); the Ministry of Health, Labor, and Welfare; and MEDIS-DC; cooperating organizations include the Japan Industries Association of Radiological Systems (JIRA), the Japan Association of Healthcare Information Systems Industry (JAHIS), Radiological Society (JRS), Japan Society of Radiological Technology (JSRT), and the Japan Association of Medical Informatics (JAMI). Other organizations representing healthcare professionals are invited to join in the expansion of the IHE process across disciplinary and geographic boundaries.

  1.
## Overview of the Patient Care Device Technical Framework

This document, the IHE Patient Care Device Technical Framework Volume 3 (IHE PCD TF-3), defines specific implementations of established standards to achieve integration goals for the Patient Care Device domain, focusing specifically on common semantic content. Such integration promotes appropriate sharing of medical information to support optimal patient care.

The IHE PCD TF will be expanded annually, after a period of public review, and maintained regularly through the identification and correction of errors.

The PCD TF identifies a subset of the functional components of the healthcare enterprise, called IHE actors, and specifies their interactions in terms of a set of coordinated, standards-based transactions, as well as the semantic content conveyed in each transaction. It describes this body of transactions and semantic content modules in progressively greater depth.

The present volume (PCD TF-3) focuses on the semantic content that is exchanged between systems in support of the IHE Patient Care Device integration profiles defined in the IHE Patient Care Device Technical Framework Volume 1. Volume 2 of this Technical Framework provides detailed specifications for the transactions (e.g., messages) that are exchanged between the actors identified in Volume 1.

The PCD TF is part of a related set of IHE Technical Frameworks, comprised of the following domain-specific documents:

- IHE Cardiology Technical Framework
- IHE IT Infrastructure Technical Framework
- IHE Laboratory Technical Framework
- IHE Patient Care Coordination Technical Framework
- IHE Radiology Technical Framework

The IHE Patient Care Device integration profiles rely on, and reference, the transactions defined in those other IHE Technical Framework documents. For the conventions on referencing these other Frameworks, see Section 1.6.4 within PCD TF-1 of the IHE Patient Care Device Technical Framework.

  1.
## Overview of Volume 3

The remainder of Section 1 further describes the general nature, purpose and function of the Technical Framework. Section 2 presents the conventions used in this volume to define IHE transactions.

Section 3 defines the general approach for defining device-related content. Subsequent sections address general content elements, as well as specifications for the content related to specific integration profiles and device specializations (e.g., ventilator). All of these address both terminology and information model specifications. These abstract semantic content specifications may then be bound to IHE profile implementations, including the "payload" in transactions, as well as content modules in documents. In some cases this content may be mandatory for a given exchange, and in others it may be used as the result of a profile option.

The appendices following the main body of this volume provide technical details associated with the semantic content specifications.

  1.
## Audience

The intended audience of this document is:

- IT departments of healthcare institutions
- Health informatics professionals that utilize device-sourced semantic content
- Technical staff of vendors planning to participate in the IHE initiative
- Experts involved in standards development
- Those interested in integrating healthcare information systems and workflows

  1.
## Relationship to Standards

The IHE Technical Framework identifies functional components of a distributed healthcare environment (referred to as IHE actors), solely from the point of view of their interactions in the healthcare enterprise. At its current level of development, it defines a coordinated set of transactions based on ASTM, DICOM, HL7, IEEE, IETF, ISO, OASIS and W3C standards. As the scope of the IHE initiative expands, transactions based on other standards may be included as required.

In some cases, IHE recommends selection of specific options supported by these standards; however, IHE does not introduce technical choices that contradict conformance to these standards. If errors in or extensions to existing standards are identified, IHE's policy is to report them to the appropriate standards bodies for resolution within their conformance and standards evolution strategy.

IHE is therefore an implementation framework, not a standard. Conformance claims for products must still be made in direct reference to specific standards. In addition, vendors who have implemented IHE integration capabilities in their products may publish IHE Integration Statements to communicate their products' capabilities. Vendors publishing IHE Integration Statements accept full responsibility for their content. By comparing the IHE Integration Statements from different products, a user familiar with the IHE concepts of actors and integration profiles can determine the level of integration between them. See IHE PCD TF-2, Appendix H for the format of IHE PCD Integration Statements. IHE encourages implementers to ensure that products implemented in accordance with the IHE Technical Framework also meet the full requirements of the standards underlying IHE, allowing the products to interact, although possibly at a lower level of integration, with products that have been implemented in conformance with those standards, but not in full accordance with the IHE Technical Framework.

  1.
## Relationship to Real-world Architectures

The IHE actors, transactions and content modules described in the IHE Technical Framework are abstractions of the real-world healthcare information system environment. While some of the transactions are traditionally performed by specific product categories (e.g., HIS, Clinical Data Repository, Radiology Information Systems, Clinical Information Systems or Cardiology Information Systems), the IHE Technical Framework intentionally avoids associating functions or actors with such product categories. For each actor, the IHE Technical Framework defines only those functions associated with integrating information systems. The IHE definition of an actor should therefore not be taken as the complete definition of any product that might implement it, nor should the framework itself be taken to comprehensively describe the architecture of a healthcare information system.

The reason for defining actors, transactions and content modules is to provide a basis for defining the interactions among functional components of the healthcare information system environment. In situations where a single physical product implements multiple functions, only the interfaces between the product and external functions in the environment are considered to be significant by the IHE initiative. Therefore, the IHE initiative takes no position as to the relative merits of an integrated environment based on a single, all-encompassing information system versus one based on multiple systems that together achieve the same end. To illustrate most dramatically the possibilities of the IHE Technical Framework, however, the IHE demonstrations emphasize the integration of multiple vendors' systems based on the IHE Technical Framework.

  1.
## Comments

IHE International welcomes comments on this document and the IHE initiative. They can be submitted using the Web-based comment form at [http://ihe.net/PCD\_Public\_Comments](http://ihe.net/PCD_Public_Comments/) or by sending an email to the co-chairs and secretary of the Patient Care Device domain committees at [pcd@ihe.net](mailto:pcd@ihe.net).

  1.
## Copyright Permission

Health Level Seven has granted permission to the IHE to reproduce tables from the HL7 standard. The HL7 tables in this document are copyrighted by Health Level Seven. All rights reserved.

Use of copyrighted IEEE material in this technical framework from the ISO/IEEE 11073 standards is covered by the IEEE-SA Royalty-free permission guidelines.

Material drawn from these documents is credited where used.

1.
# Conventions

This document has adopted the following conventions for representing the framework concepts and specifying how the standards upon which the IHE PCD Technical Framework is based should be applied.

  1.
## The Generic IHE Transaction Model

Transaction descriptions are provided in TF-2. In each transaction description, the actors, the roles they play, and the transactions between them are presented as use cases. These transaction descriptions do not typically identify specific semantic content that may be exchanged as a result of their use, beyond general constraints (e.g., an alarm message would identify where alarm-related content should be inserted into the message, but not specific alarm values).

The generic IHE transaction description includes the following components:

- Scope: a brief description of the transaction.
- Use case roles: textual definitions of the actors and their roles, with a simple diagram relating them, e.g.,:

![](IHE_PCD_TF_Rev8-0_Vol3_FT_2018-10-23_html_6658ba280f195065.gif)

- Referenced Standards: the standards (stating the specific parts, chapters or sections thereof) to be used for the transaction.
- Interaction Diagram: a graphical depiction of the actors and messages that support the transaction, with related processing within an actor shown as a rectangle and time progressing downward, similar to:

![](IHE_PCD_TF_Rev8-0_Vol3_FT_2018-10-23_html_b28d88ef7b2b035a.gif)

The interaction diagrams used in the IHE-PCD Technical Framework are modeled after those described in Grady Booch, James Rumbaugh, and Ivar Jacobson, The Unified Modeling Language User Guide, ISBN 0-201-57168-4. Simple acknowledgment messages are often omitted from the diagrams for brevity. One or more messages may be required to satisfy a transaction. Each message is represented as an arrow starting from the actor initiating the message.

- Message definitions: descriptions of each message involved in the transaction, the events that trigger the message, its semantics, and the actions that the message triggers in the receiver.

Semantic content modules may be "bound" to profiles and transactions in order to facilitate semantic interoperability between systems. For example, by constraining the base terminologies and information models that are used, as well as the value sets that may be employed, profile implementation and processing of the resulting content is greatly simplified.

  1.
## Security considerations

During the profile development there were no unique security/privacy concerns identified. There are no mandatory security controls but the implementer is encouraged to use the underlying security and privacy profiles from ITI that are appropriate to the transports such as the Audit Trail and Node Authentication (ATNA) Profile. The operational environment risk assessment, following ISO 80001, will determine the actual security and safety controls employed.

1.
# Overview of device semantic content profiling

Though the transactions and messages defined in TF-2 provide for syntactic interoperability, in order to achieve semantic interoperability, each class of device must use the same terminology and data organization or modeling for common information. This TF-3 defines common abstract semantics or content profiles for patient care devices that fall within this domain. The semantics are based on the ISO/IEEE 11073-10101 nomenclature/terminology and the ISO/IEEE 11073-10201 domain information model, with additional semantics systems specified as appropriate (e.g., LOINC or SNOMED-CT), either as mappings to ISO/IEEE concepts or independently for non-mappable concepts. Other sections of the PCD Technical Framework define the mapping of these semantics to the information technologies defined for each transaction (for example, the TF-2 (Appendix A) _Mapping ISO/IEEE 11073 Domain Information Model to HL7_).

_ **Note that this content specification is not intended to be exhaustive – the referenced standards should be consulted for more complete information.** _

In general, if a concept is not specified in this volume nor in the base standards (e.g., IEEE 11073-10101), a request should be made to the appropriate standards development organization ("SDOs") to consider the additional concepts. Typically, this may be accomplished without significant delays, and if necessary, temporary term codes provided. See discussions below for additional information.

  1.
## General device content considerations

This section addresses those issues that are transitive across all device types. Subsequent sections integrate these considerations as applicable to specific device specializations.

    1.
### Hierarchical containment tree information

Each data item associated with a device specialization is specified within the context of its "containment tree" – all parameters are formalized either as attributes of a given object, or as instances of data objects that are contained within other objects in accordance to the following basic hierarchy

# 3
:

![](IHE_PCD_TF_Rev8-0_Vol3_FT_2018-10-23_html_b18027da53bfe6f8.gif)

Figure 3.1.1-1: Basic ISO/IEEE 11073 Containment Tree

There are many additional objects defined in the ISO/IEEE 11073 information model (e.g., waveform and alarm / alert monitoring objects); however, for the purposes of this technical framework, only the above objects are utilized. Each object provides the following:

**Medical Device System** Top level object that establishes the overall context for all device data. In addition to a basic device name (e.g., Ventilator), this object includes attributes for a unique identifier (e.g., EUI-64), manufacturer and model, subcomponent serial numbers, device date and time, A/C power status, battery charge level, locale, etc. Note that an MDS may contain additional MDS objects. This would be the case when, for example, a physiological monitor integrates additional devices such as external infusion pumps and ventilators.

# 4

**Virtual Medical Device** Supports a particular device specialization that may contain multiple channels and reflects a basic device building block. For example, an airway VMD may contain channels for pressure, flow, volume, and breath metrics. For devices with plug-in modules, each component is typically formalized by a VMD instance.

**Channel** Provides for the aggregation of closely related data objects. For example, an infusion pump VMD may contain multiple fluid source channels, each with its own parameters for delivery rate, volume to be infused ("VTBI"), volume infused, drug label, etc.

**Metric** This abstract class (it is only inherited by the specialization objects and may not be instantiated alone) provides a basic set of attributes for all the specialization objects. For example, status (e.g., available, disabled, etc.), body site list, measurement start/stop time, label, etc.

**Numeric** Supports values that are represented as a numeric quantity (e.g., a set breath rate). Attributes include value, units, time stamp, ranges, resolution, etc. Compound values are supported where multiple values are realized in a single numeric (e.g., diastolic and systolic blood pressure is typically represented as a compound numeric value).

**Enumeration** Supports parameters that are typically represented by a set of specified values. For example, a device's operational mode may be represented by one of a finite set (e.g., for a ventilator the mode may be CPAP, SIMV, assist, etc.).

Though the sequential ordering of objects and attributes are typically not important (e.g., information from multiple VMDs in an MDS may be communicated in any order), the containment associations must be maintained. For example, multiple channels may have the same "infusion rate" parameter – if they are not properly associated to the right channel, then the information will not be correctly interpreted. Additionally, containment is strictly enforced (e.g., an Enumeration instance may not be contained directly under a VMD or MDS without a Channel).

For each of the device specializations specified below, the containment tree associated with each device and parameter is specified sufficiently to ensure proper communication when the information is exchanged in a transaction (MDS  VMD  Channel  Parameter); however, for some devices, though the containment relationships are fully specified, they may not be necessary (save the top level MDS that identifies the device source) – there is a single instance of the parameter for the entire device. In these cases, the actual information communicated by a given transaction may be limited to the individual parameters grouped together within a single medical device system containment.

    1.
### Device semantics & controlled terminologies

Specific device semantics are formalized as a combination of terminology / vocabulary codes organized according to a common information model. The containment tree discussion above presented the basic ISO/IEEE 11073 information model used to organize and associate various device parameters. Terminologies are required, though, to represent each concept that is communicated. For example, an infusion rate may be communicated as "100 mL/Hr". At least two terms are required, one for the parameter name ("infusion rate") and one for the units of measurement ("mL/Hr"). In the device specialization sections below, all of the required semantics are specified, so as to ensure that the same term set is used for a given class of device.

    1.
### Overview of the ISO/IEEE 11073 nomenclature/terminology

The ISO/IEEE 11073-10101 (and related) nomenclature is optimized for medical device (esp. acute care) semantics, containing an extensive set of term codes supporting the information model, device parameters, units of measurement, body sites, alert events, etc. Each term in this system is formalized as a text-based Reference Identifier and a 16-bit or 32-bit numeric code. The 16-bit code is "context sensitive" in that it may be used when you know the class of information that it represents. For example, if in a message a field is being processed that represents Units of Measurement, then the 16-bit numeric code may be used, given that the semantic context has been established. The 32-bit code is "context free" in that it is guaranteed to be unique across the entire terminology.

All text-based Reference ID's are formalized as a contiguous string of either capitalized letters or underscores ("\_"). For example, MDC\_RESP\_RATE or MDC\_PULS\_RATE. Note that the prefix "MDC" stands for medical device communication, and is often used to identify this nomenclature (e.g., "MDC" is used in HL7 to identify terms from this standard).

By convention, this Technical Framework will specify 11073 terms using the following format:

\<Ref ID\> (\<partition

# 5
 or code block\>::\<16-bit term code\>)

For example, the two terms above would be specified as follows:

MDC\_RESP\_RATE (2::20490)

MDC\_PULS\_RATE (2::18442)

To determine the 32-bit value: \<partition\> \* 2^16 + \<16-bit term code\>. So the pulse rate code above would have a 32-bit representation of 18444 (or hex 0x0002480A). The mapping rules for a given transaction technology shall indicate whether the textual Reference ID, 32-bit, or 16-bit codes may be used and how to properly encoded the terms (e.g., whether the numeric codes are formatted as text or binary values).

If additional or alternative terms are needed from other systems, such as LOINC or SNOMED-CT, they will be specified as well.

    1.
### Private terms and scope

Some devices communicate concepts that are either not standardized (in any terminology system) or are private and should only be recognized by applications that are aware of this device's specific semantics. In this case, the 11073 terminology provides for "private" sections of the terminology where manufacturers may define these semantics without worry of overlapping other terms already assigned. The 16-bit range from 0xF000 to 0xFFFF (hex) for each code block is reserved for private terms. If an entire private block of terms (65536 items) is required, the partition 1024 may be used.

In complex environments, though, where multiple devices are connected to a single patient and where two or more vendors may define terms with the same private codes (i.e., even the 32-bit identifier may not be unique), it is necessary to ensure proper scoping of these terms to ensure there are no collisions. To accomplish this, the scope associated with any private codes is defined by the containing VMD. This allows for modular systems where different plug-in components may be from different manufacturers.

    1.
### New or non-specified terms

Additional terminology not contained in the device specializations below may:

- Exist in a terminology and simply hasn't been included in this version of the Framework, **or**
- Be a new concept that should be standardized (e.g., resulting from a new device modality),

**or**

- Is a private or custom term that is particular to a single manufacturer's device and should not necessarily be standardized.

In the first case, change requests may be submitted to this Technical Framework to have the needed semantics added. In general, if the semantics exist (either as terms and/or attributes in the Domain Information Model, they may be used in transactions without being added to this content specification; however, in order to achieve semantic interoperability and heterogeneity with a class of device, there must be agreement regarding the way a given concept is represented.

In the second case, new terms may be submitted to the relevant standard group for consideration. For these, either a pre-assigned term may be used or a private term until standardization is complete.

# 6

In the third case, a private code should be used and is out-of-scope for inclusion in this content specification.

    1.
### Episodic vs. periodic data updates

Device information is typically reported in a manner appropriate for the given parameter and consuming application. Data reporting modes include:

- Periodically – for parameters that change or are updated regularly. For example, the volume delivered on an infusion pump changes regularly based on the fluid delivery rate.
- Periodically High-Frequency – for data that is reported periodically but at high data rates. For example, physiological waveforms.
- Episodically – for parameters that change infrequently or based on an external event. For example, an operational setting is modified by the clinician or a breath or heart beat has been detected.
- Snap-shot – for those applications that only request the current value of a device's information at infrequent intervals. For example, once every 10 minutes or an hour.

Where appropriate, the device parameter specifications below shall indicate whether a particular item is updated periodically or episodically. In the ISO/IEEE 11073 information model, the Metric::MetricRelevance and Metric::MetricAccess provide this information.

In the ISO/IEEE 11073 information model, provision for creating data updates or "event reports" for these various methods fall to a number of "extended services" objects such as an episodic scanner, periodic scanner, or fast periodic scanner. Each instance of these objects "scans" a configured list of data items and when changes are detected, generates an update including those parameters. For example, a "breath" episodic scanner instance would report all breath-to-breath related parameters (e.g., I:E ratio, inspiratory time, peak inspiratory pressure, etc.) whenever a breath completion has been detected.

Depending on the transaction profile conveying the device data, identification of these update classes may be supported. If so, the following terms should be used to differentiate the update type being reported:

Table 3.1.6-1: Update Report Type Identification

| Update Report Type Identification |
| --- |
| Update Type | Term Code |
| Episodic Update | MDC\_NOTI\_UNBUF\_SCAN\_RPT (1:: 3350) |
| Periodic Update | MDC\_NOTI\_BUF\_SCAN\_RPT (1:: 3331) |

    1.
### Alternative units of measurement mapping

Though the basic units of measurement specified in this technical framework are from the ISO/IEEE 11073-10101 Units of Measurement partition, mappings to alternative terminology systems may be required for some implementations of this technical framework. For each parameter in the device specializations that includes a unit of measurement specification, the ISO/IEEE term is called out. The following table provides a summary of all the units of measurement terms utilized by this framework and provides for their mapping to alternative systems

Table 3.1.7-1: ISO/IEEE 11073 Alternative Units Mapping

| ISO/IEEE 11073 Alternative Units Mapping |
| --- |
| ISO/IEEE 11073 | UCUM | LOINC | SNOMED-CT | Discussion |
| MDC\_DIM\_CM\_H2O (4::3904) |
 |
 |
 | cmH2O |
| MDC\_DIM\_MICRO\_G\_PER\_HR (3379) |
 |
 |
 | µG/hr |
| MDC\_DIM\_MICRO\_G\_PER\_MIN (3347) |
 |
 |
 | µG/min |
| MDC\_DIM\_MILLI\_G\_PER\_HR (3378) |
 |
 |
 | mG/hr |
| MDC\_DIM\_MILLI\_G\_PER\_MIN (3346) |
 |
 |
 | mG/min |
| MDC\_DIM\_MILLI\_L (4::1618) |
 |
 |
 | mL |
| MDC\_DIM\_MIN (4:2208) |
 |
 |
 | minutes |
| MDC\_DIM\_PERCENT (4::544) |
 |
 |
 | % |
| MDC\_DIM\_RESP\_PER\_MIN (4::2784) |
 |
 |
 | rpm |
| MDC\_DIM\_SEC (4::2176) |
 |
 |
 | seconds |
| MDC\_DIM\_X\_INTL\_UNIT\_PER\_HR (5696) |
 |
 |
 | i.u./hr |
| MDC\_DIM\_X\_L\_PER\_MIN (4::3072) |
 |
 |
 | L/min |

  1.
## Alert and event semantics

Most medical devices provide indications of event or alert conditions. These are typically technical (e.g., a sensor needs to be calibrated or has been detached from the device), or physiological (e.g., a patient's spontaneous breath rate is too high). There is also a prioritization associated with alert conditions (low, medium and high), and each device specifies the prioritization within a given class (e.g., if a device has 10 high priority alerts, and three are active, which is the highest priority of the three?).

Additionally, an alert condition may be associated with the entire device (e.g., low battery), a particular channel (e.g., occlusion on infusion channel #2), or a specific parameter (e.g., heart rate too high). When communicated, the alert conditions should be associated with the appropriate device scope or entity within the device's information containment tree or hierarchy. When associated with a given parameter (e.g., a monitored temperature or pressure reading), generic event codes are preferred over more specific terms. For example, "low" or "high" or "irregular" as associated with a monitored heart rate parameter vs." high beat rate" and "low beat rate", etc. In most cases, though, specific codes must be used, such as "gas contaminated" or "asystole".

Though some of these semantics are particular to a specific device, most are general and may be applied to multiple devices. The following table provides examples of common alert semantics that may be used in this TF
# 7
:

Table 3.2-1: Device Alert Event Semantics

| Device Alert Event Semantics |
| --- |
| Description | Term Code |
| _General Events_ |
| Alarm | MDC\_EVT\_ALARM (3::8) |
| --- | --- |
| Disconnected | MDC\_EVT\_DISCONN (3:22) |
| Empty | MDC\_EVT\_EMPTY (3::26) |
| Error | MDC\_EVT\_ERR (3::30) |
| Failure | MDC\_EVT\_FAIL (3::38) |
| High | MDC\_EVT\_HI (3::40) |
| High – Greater than set limit | MDC\_EVT\_HI\_GT\_LIM (3::42) |
| INOP (device is inoperable) | MDC\_EVT\_INOP (3::52) |
| Low | MDC\_EVT\_LO (3::62) |
| Low – Less than set limit | MDC\_EVT\_LO\_LT\_LIM (3::64) |
| Occlusion | MDC\_EVT\_OCCL (3::80) |
| Range Error | MDC\_EVT\_RANGE\_ERR (3::164) |
| Door / Handle Position Problem | MDC\_EVT\_DOOR\_OR\_HANDLE\_POSN\_PROB (3::234) |
| Fluid Line Problem | MDC\_EVT\_FLUID\_LINE\_PROB (3::252) |
| Gas is contaminated | MDC\_EVT\_GAS\_CONTAM (3::256) |
| Lead is off / disconnected | MDC\_EVT\_LEAD\_OFF (3::272) |
| Sensor problem | MDC\_EVT\_SENSOR\_PROB (3::312) |
| Low signal level | MDC\_EVT\_SIG\_LO (3::380) |
| Timeout | MDC\_EVT\_TIMEOUT (3::584) |
| _Physiological/Medical Events_ |
| Apnea | MDC\_EVT\_APNEA (3::3072) |
| Asystole | MDC\_EVT\_ECG\_ASYSTOLE (3::3076) |
| Sustained Bradycardia | MDC\_EVT\_ECG\_BRADY\_SUST (3::3088) |
| Tachycardia | MDC\_EVT\_ECG\_TACHY (3::3120) |
| Arrhythmia | MDC\_EVT\_ECG\_ARRHY (3::3266) |
| _Technical Events_ |
| Battery failed | MDC\_EVT\_BATT\_FAIL (3::192) |
| Low Battery | MDC\_EVT\_BATT\_LO (3::194) |
| Battery Malfunction | MDC\_EVT\_BATT\_MALF (3::196) |
| Pressure cuff leak | MDC\_EVT\_CUFF\_LEAK (3::228) |
| Pressure cuff position error | MDC\_EVT\_CUFF\_POSN\_ERR (3::430) |
| Pump in Free Flow | MDC\_EVT\_PUMP\_FLOW\_FREE (3::598) |
| _General Status Events_ |
| Alarming Turned Off | MDC\_EVT\_STAT\_AL\_OFF (3::6144) |
| Alarming Turned On | MDC\_EVT\_STAT\_AL\_ON (3::6146) |
| Battery Charging | MDC\_EVT\_STAT\_BATT\_CHARGING (3::6150) |
| Standby Mode | MDC\_EVT\_STAT\_STANDBY\_MODE (3::6166) |
| Alarm Silence | MDC\_EVT\_STAT\_AL\_SILENCE (3::6214) |
| Door Open | MDC\_EVT\_STAT\_DOOR\_OPEN (3::6220) |
| Door Closed | MDC\_EVT\_STAT\_DOOR\_CLOS (3::6244) |
| _Advisory Events_ |
| Check Device | MDC\_EVT\_ADVIS\_CHK (3::6658) |
| Check Settings | MDC\_EVT\_ADVIS\_SETTINGS\_CHK (3::6668) |
| Replace Battery | MDC\_EVT\_ADVIS\_BATT\_REPLACE (3::6678) |
| Replace Syringe Warning | MDC\_EVT\_ADVIS\_PUMP\_SYRINGE\_REPLACE\_WARN (3::6712) |
| Check Ventilator Air Supply | MDC\_EVT\_ADVIS\_VENT\_AIR\_SUPP\_CHK (3::6728) |

Note: Private event codes may be used to define non-standardized events that are not contained in the table above or in the base ISO/IEEE 11073-10101 standard. Any use of private event codes should be clearly described in the device's documentation.

  1.
## Body site semantics

One or more body sites may be associated with a given device parameter. For example, a temperature may have the same term codes, but are differentiated by the location of the where the temperature is taken. Other parameters (especially EEG and BIS measurements) are derived from signals from multiple sites. The ISO/IEEE 11073 Metric object includes an attribute listing body sites, either from the base 11073-10101 terminology or from other vocabularies. The following table provides some examples of body sites that may be associated with a device parameter:

Table 3.3-1: Body Site Terms

| Body Site Terms |
| --- |
| Description
# 8
 | Term Code |
| Left ear (theta 120, phi 180) | MDC\_HEAD\_EAR\_L (7::1289) |
| Right ear (theta 120, phi 0) | MDC\_HEAD\_EAR\_R (7::1290) |
| Electrode 1 cm above the right eye on the eyebrow, in the middle between the center point of the eye and the lateral canthus. | MDC\_EYE\_CANTH\_LAT\_ABOVE\_R (7::1362) |
| Subarachnoid, Left [T-X1502-LFT] (for neurological measurements and drainage) | MDC\_BRAIN\_SUBARACHNOIDAL (7::1412) |
| Left Atrium [T-32300] | MDC\_HEART\_ATR\_L (7::1429) |
| Right Ventricle [T-32500] | MDC\_HEART\_VENT\_R (7::1442) |
| Umbilical Artery [T-88810] | MDC\_ART\_UMBILICAL (7::1480) |
| Lower extremity, Great toe [T-Y9810] | MDC\_LOEXT\_TOE\_GREAT (7::1620) |
| Upper extremity, Ring finger, NOS [T-Y8840] | MDC\_UPEXT\_FINGER\_RING (7::1764) |
| Vena umbilicalis [T-49062] (child) (e.g., for fluid therapy) | MDC\_VEIN\_UMBILICAL\_CHILD (7::1808) |

  1.
## Basic data type specifications

All communicated information must conform to common abstract data type specifications. The ISO/IEEE 11073-10201 standard defines data types for each object attribute using ASN.1 specification. The following listing identifies the data types used in this Technical Framework. When appropriate, the definition includes the analogous C/C++ constructs:

**AbsoluteTime** Date / Time specification as follows (BCD digits):

struct AbsoluteTime {

UInt8 century;

UInt8 year;

UInt8 month;

UInt8 day;

UInt8 hour;

UInt8 minute;

UInt8 second;

UInt8 sec-fractions;

}

**BatMeasure** Battery-related measurement:

struct BatMeasure {

FLOAT-Type value;

OID-Type units;

}

**FLOAT-Type** Basic numerical representation floating point representation, made up of a 24-bit signed magnitude and an 8-bit signed exponent, where:

value = (magnitude) \* (10^exponent)

Special values are provided as follows:

Not a Number (NaN) +(2^23-1)

Not at this Resolution (NRes) -(2^23)

+INFINITY +(2^23-2)

-INFINITY -(2^23-2)

**Int16** 16-bit signed integer (_short int_)

**Locale** Specification of localization information for the device, including language and max string lengths

# 9
:

struct Locale {

UInt32 language; // From ISO 639-1 / 629-2

UInt32 country; // From ISO 3166-1, -2, -3

UInt16 char-set; // IANA MIBenum values

StringSpec str-spec;// Max length + null term.

}

**OID-Type** 16-bit term code (context-sensitive portion)

**ProdSpecEntry** A specification of a production serial number or other configuration identifier:

struct ProdSpecEntry {

TEXT
# 10
 spec\_type;

UInt16 component\_id; // Mfgr's ID

TEXT prod-spec;

}

**TEXT** A printable text string (_char []_); either counted or null terminated.

**TYPE** 32-bit context-free term code:

struct TYPE {

UInt16 Partition;

UInt16 Code;

}

**UInt8** 8-bit unsigned integer (_unsigned char_)

**UInt16** 16-bit unsigned integer (_unsigned short int_)

**UInt32** 32-bit unsigned integer (_unsigned long int_)

  1.
## MDS semantics

Parameters for each device specialization are contained within an MDS containment hierarchy. The following table describes some of those attributes defined by an MDS which may be applicable for any of the devices specified below:

Table 3.5-1: Medical Device System (MDS) Attributes

| Medical Device System (MDS) Attributes |
| --- |
| Attribute | Description | Term Code | Data Type
# 11
 | Values |
| System-Type | General category of the device (e.g., infusion pump) | MDC\_ATTR\_SYS\_TYPE (1::2438) | TYPE | For example, MDC\_DEV\_PUMP\_INFUS\_MDS (1::4449) |
| --- | --- | --- | --- | --- |
| Mds-Status | Device's connection state (based on FSM) | MDC\_ATTR\_VMS\_MDS\_STAT (1::2471) | TEXT
# 12
 | "disconnected", "associated", "configuring", "configured", "operating", "re-configuring", "disassociating", "terminating" |
| System-Model | Manufacturer & Model label strings | MDC\_ATTR\_ID\_MODEL (1::2344) | SystemModel | manufacturer="Philips"model="IntelliVue MP70" |
| System-Id | Device unique identifier – typically EUI-64; top 24 bits = unique company ID; lower 40 bits = serialization code; related to MAC addresses. | MDC\_ATTR\_SYS\_ID (1::2436) | TEXT | For example, "00-00-00-00-00-00-00-00", where each "00" represents a hexadecimal representation of a byte. |
| Soft-Id | Locally (non-manufacturer) ID (e.g., hospital inventory number) | MDC\_ATTR\_ID\_SOFT (1::2350) | TEXT | "TMC Vent 42" |
| Production-Specification | List of serial numbers and other items such as GMDN code | MDC\_ATTR\_ID\_PROD\_SPECN (1::2349) | List of ProdSpecEntry | serial-number="XYZ12345"sw-revision="03.02.01" |
| Bed-Label | String identifying the bed to which the device has been assigned | MDC\_ATTR\_ID\_BED\_LABEL (1::2334) | TEXT | For example, "PICU 13" |
| Date-and-Time | Device's current date / time setting | MDC\_ATTR\_TIME\_ABS (1::2439) | AbsoluteTime | 20, 06, 08, 14, 23, 43, 12, 34 |
| Power-Status
# 13
 | A/C or D/C | MDC\_ATTR\_POWER\_STAT (1::2389) | TEXT
# 14
 | "onMains", "onBattery", "chargingFull", "chargingTrickle", "chargingOff" |
| Battery-Level | _ **Percentage** _ of battery capacity remaining | MDC\_ATTR\_VAL\_BATT\_CHARGE (1::2460) | UInt16 | 50 % |
| Remaining-Battery-Time | Estimated battery run-time remaining (typically in minutes) | MDC\_ATTR\_VAL\_BATT\_REMAIN (1::2440) | BatMeasure | 120.5 MDC\_DIM\_MIN (4:2208) |
| Altitude | In meters above / below sea level | MDC\_ATTR\_ALTITUDE (1::2316) | Int16 | 120 |
| Locale | Structure defining the device's country, language and character setting | MDC\_ATTR\_LOCALE (1::2600) | Locale | language = 0x656E0000 ("en"),country = 0x55530000 ("US"),charset = charset-iso-10646-ucs-2(1000),str-spec { str-max-len = 0x0040, str-flags = str-flag-nt(0) [0x8000] } |

  1.
## VMD semantics

Each MDS contains one or more Virtual Medical Devices (VMD). As stated above, a VMD may be used to represent either a major functional unit within a device (e.g., a ventilator may have one VMD to contain settings and general operational parameters and another as an Airway monitor or Airway Gas Analyzer). Additionally, VMDs typically represent units that may be plugged into other devices such as physiological monitors. The attributes in the following table apply to all VMD instances in the device specializations defined below:

Table 3.6-1: Virtual Medical Device (VMD) Attributes

| Virtual Medical Device (VMD) Attributes |
| --- |
| Attribute | Description | Term Code | Data Type
# 15
 | Values |
| Type | General category of the VMD (e.g., infusion pump) | MDC\_ATTR\_ID\_TYPE (1::2351) | TYPE | For example, MDC\_DEV\_SYS\_PT\_VENT\_VMD (1::4466) |
| VMD-Status | VMD's basic operational status | MDC\_ATTR\_VMD\_STAT (1::2466) | TEXT
# 16
 | "vmd-off", "vmd-not-ready", "vmd-standby", "vmd-transduc-discon", "vmd-hw-discon" |
| VMD-Model | Manufacturer & Model label strings | MDC\_ATTR\_ID\_MODEL (1::2344) | SystemModel | manufacturer="Philips"model="IntelliVue MP70" |
| Production-Specification | List of serial numbers and other items such as GMDN code | MDC\_ATTR\_ID\_PROD\_SPECN (1::2349) | List of ProdSpecEntry | serial-number="XYZ12345"sw-revision="03.02.01" |
| Position | Physical "slot" that the VMD is plugged into | MDC\_ATTR\_ID\_POSN (1::2348) | UInt16 | 3 |
| Locale | Structure defining the device's country, language and character setting. | MDC\_ATTR\_LOCALE (1::2600) | Locale | Same as MDS above. |

  1.
## Channel semantics

Channels provide aggregation for closely related parameters. For devices that contain "channels" (e.g., ECG channels or infusion pump fluid channels), these definitions provide a means for differentiating parameters with identical term codes (e.g., fluid source channel rate or volume infused) but contained in different channels. The attributes in the following table apply to all Channel instances in the device specializations defined below:

Table 3.7-1: Channel Attributes

| Channel Attributes |
| --- |
| Attribute | Description | Term Code | Data Type
# 17
 | Values |
| Type
# 18
 | General category of the VMD (e.g., infusion pump) | MDC\_ATTR\_ID\_TYPE (1::2351) | TYPE | For example, MDC\_DEV\_SYS\_PT\_VENT\_VMD (1::4466) |
| Channel-Status | Channel's operational status | MDC\_ATTR\_CHAN\_STAT (1::2320) | TEXT
# 19
 | "chan-off", "chan-not-ready", "chan-standby", "chan-transduc-discon", "chan-hw-discon" |
| Physical-Channel-No | Numeric ID of a hardware channel | MDC\_ATTR\_CHAN\_NUM\_PHYS (1::2319) | UInt16 | 12 |
| Logical-Channel-No | Dynamically assigned channel number; for channels that may have an assignment that changes due to reconfiguration. | MDC\_ATTR\_CHAN\_NUM\_LOGICAL (1::2606) | UInt16 | 3 |

1.
# Reserved

Section reserved for future updates.

**Editor's Note** : This section is reserved for the Rosetta Terminology Mapping data set specifications. Implementation details such as file specification and design may be captured in an appendix.

1.
# Reserved

This section is reserved for future updates.

**Editor's Note** : This section is reserved for non-profile specific content modules (e.g., value set specifications) such as for Device Specialization – General.

1.
# Reserved

This section is reserved for future updates.

**Editor's Note** : This section is reserved for profile specific content modules such as for ACM or MEM/CMMS. Note that Device Specialization profiles have their own section.

1.
# Device specialization content modules

The content module specifications in this section focus on typical device classes or "modalities" that are often found in healthcare delivery and that directly support device specialization integration profiles.

  1.
## Device: Infusion Pump

**Editor's Note** : This section will be updated with the content from the Device Specialization – Infusion Pump Profile that is currently under development.

    1.
### Containment tree

Infusion pumps organize their information as follows:

Table 7.1.1-1: Infusion Pump Containment Tree

| Infusion Pump Containment Tree |
| --- |
| MDS: Infusion Pump | MDC\_DEV\_PUMP\_INFUS\_MDS (1::4449) |
|
 | VMD: Infusion Pump | MDC\_DEV\_PUMP\_INFUS\_VMD (1::4450) |
|
 | Channel: Source | MDC\_DEV\_PUMP\_INFUS\_CHAN\_SOURCE (1::61441) |
| Channel: Delivery | MDC\_DEV\_PUMP\_INFUS\_CHAN\_DELIVERY (1::61442) |

For devices that support a secondary or "piggy-back" channel, two Source channels should be defined, one as the primary channel, and one as the secondary. In other words, source channels are defined for each fluid that is routed to a given delivery or distal path. An infusor VMD shall have one and only one delivery channel. Devices that contain multiple delivery channels shall define multiple infusor VMD instances.

    1.
### Channel: Source

Fluid source infusion channels may contain the following parameters:

Table 7.1.2-1: Infusor Source Channel Parameters

| Infusor Source Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Set Fluid Delivery Rate | MDC\_FLOW\_FLUID\_PUMP (2::26712) | Numeric::FLOAT | MDC\_DIM\_MILLI\_L\_PER\_HR (4::3122) |
 |
| --- | --- | --- | --- | --- |
| Remaining VTBI | MDC\_VOL\_FLUID\_TBI\_REMAIN (2::26800) | Numeric::FLOAT | MDC\_DIM\_MILLI\_L (4::1618) |
 |
| Duration | MDC\_TIME\_PD\_REMAIN (2::26844) | Numeric::FLOAT | MDC\_DIM\_MIN (4::2208) |
 |
| Drug Dose Rate | MDC\_FLOW\_DRUG\_DELIV (2::26732) | Numeric::FLOAT | MDC\_DIM\_MILLI\_G\_PER\_HR 4:: (3378) / MDC\_DIM\_MILLI\_G\_PER\_MIN (4::3346) / MDC\_DIM\_MICRO\_G\_PER\_HR (4::3379) / MDC\_DIM\_MICRO\_G\_PER\_MIN (4::3347) / MDC\_DIM\_X\_INTL\_UNIT\_PER\_HR (4::5696) |
 |
| Volume Infused | MDC\_VOL\_FLUID\_DELIV (2::26792) | Numeric::FLOAT-Type | MDC\_DIM\_MILLI\_L (4::1618) |
 |
| Drug Label | MDC\_DRUG\_NAME\_TYPE (2::53258) | Enumeration::TEXT | N/A |
 |

    1.
### Channel: Delivery

Fluid delivery infusion channels may contain the following parameters:

Table 7.1.3-1: Infusor Delivery Channel Parameters

| Infusor Delivery Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Total Current Rate | MDC\_FLOW\_FLUID\_PUMP (2::26712) | Numeric::FLOAT-Type | MDC\_DIM\_MILLI\_L\_PER\_HR (4::3122) |
 |
| --- | --- | --- | --- | --- |
| Total Volume Infused | MDC\_VOL\_INFUS\_ACTUAL\_TOTAL (2::26876) | Numeric::FLOAT-Type | MDC\_DIM\_MILLI\_L (4::1618) |
 |
| Operational Status | MDC\_PUMP\_STAT (2::53436) | Enumeration::TEXT
# 20
 | N/A | "pump-status-infusing" + "pump-status-kvo" + "pump-status-ready" +" pump-status-standby" + "pump-status-paused" |
| Operational Mode | MDC\_PUMP\_MODE (2::53432) | Enumeration::TEXT18 | N/A | "pump-mode-nominal" + "pump-mode-secondary" + "pump-mode-drug-dosing" |

  1.
## Device: Ventilator

**Editor's Note** : This section will be updated with the results of the on-going ventilator working group efforts (in conjunction with ISO TC121 and ISO/IEEE 11073); this effort should also ultimately result in a Device Specialization – Ventilator Integration Profile that will then totally replace the content in this section. The information that is currently here tracks the results of the IEEE 11073 ventilator specialization group that was working on the ISO/IEEE 11073-10303 standard.

    1.
### Containment tree

Ventilators organization their information according to the following containment tree:

Table 7.2.1-1: Ventilator Containment Tree

| Ventilator Containment Tree |
| --- |
| MDS: Ventilator | MDC\_DEV\_SYS\_PT\_VENT\_MDS (1::4465) |
|
 | VMD: Ventilator | MDC\_DEV\_SYS\_PT\_VENT\_VMD (1::4466) |
|
 | Channel: Ventilator | MDC\_DEV\_SYS\_PT\_VENT\_CHAN (4467) |
| Channel: Nebulizer |
 |
| VMD: Airway Multi-Parameter | MDC\_DEV\_ANALY\_AWAY\_MULTI\_PARAM\_VMD (1::4146) |
|
 | Channel: Pressure | MDC\_DEV\_ANALY\_PRESS\_AWAY\_CHAN (1::4171) |
| Channel: Flow | MDC\_DEV\_ANALY\_FLOW\_AWAY\_CHAN (1::4131) |
| Channel: Volume | MDC\_DEV\_ANALY\_VOL\_AWAY\_CHAN (1::61452) |
| Channel: Breath Pattern | MDC\_DEV\_ANALY\_BREATH\_PATTERN\_CHAN (1::61456) |
| VMD: Pulse-Oximeter |
 |
|
 | Channel: Pulse-Ox |
 |
| Channel: Pulse Rate |
 |
| VMD: Airway Gas Analyzer |
 |
|
 | Channel: Oxygenation |
 |
| Channel: NO/NO2 |
 |
| Channel: CO2 |
 |
| Channel: Resp CO2 |
 |
| Channel: Anesthesia Agent |
 |

    1.
### Channel: Ventilator

The ventilator channel contains the following semantics:

Table 7.2.2-1: Ventilator Channel Parameters

| Ventilator Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Operational Mode | MDC\_VENT\_MODE (2::53280) | Enumeration::TEXT18 | N/A | "vent-mode-cpap" + "vent-mode-simv" + "vent-mode-insp-assist" |
| --- | --- | --- | --- | --- |
| Set Breath Rate | MDC\_RESP\_RATE (2::20490) | Numeric::FLOAT-Type | MDC\_DIM\_RESP\_PER\_MIN (4::2784) |
 |
| Set Tidal Volume | MDC\_VOL\_AWAY\_TIDAL\_EXP (2::61454) | Numeric::FLOAT-Type | MDC\_DIM\_MILLI\_L (4::1618) |
 |
| Set Peak Inspiratory Flow | MDC\_VENT\_FLOW\_INSP (2::61440) | Numeric::FLOAT-Type | MDC\_DIM\_X\_L\_PER\_MIN (4::3072) |
 |
| Set PEEP | MDC\_PRESS\_AWAY\_END\_EXP\_POS (2::20732) | Numeric::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |
| Set Inspiratory Time | MDC\_TIME\_PD\_INSP (2::61458) | Numeric::FLOAT-Type | MDC\_DIM\_SEC (4::2176) |
 |
| Set Inspiratory Pause | MDC\_VENT\_TIME\_PD\_PAUSE\_INSP (2::61443) | Numeric::FLOAT-Type | MDC\_DIM\_SEC (4::2176) |
 |
| Set Flow Shape | MDC\_VENT\_FLOW\_SHAPE (2::61449) | Enumeration::TEXT | N/A | "waveform-shape-square"; "waveform-shape-decelerating" |
| Set FiO2 | MDC\_VENT\_CONC\_AWAY\_O2 (2::20648) | Numeric::FLOAT-Type | MDC\_DIM\_PERCENT (4::544) |
 |

    1.
### Channel: Airway Pressure

The airway pressure channel includes the following parameters:

Table 7.2.3-1: Airway Pressure Channel Parameters

| Airway Pressure Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Peak Inspiratory Pressure (PIP) | MDC\_PRESS\_AWAY\_INSP\_PEAK (2::20745) | Numeric::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |
| --- | --- | --- | --- | --- |
| Mean Airway Pressure (MAP) | MDC\_PRESS\_AWAY\_MEAN (2::61451) | Numeric::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |
| PEEP | MDC\_PRESS\_AWAY\_END\_EXP\_POS (2::20732) | Numeric::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |

    1.
### Channel: Airway Volume

The airway volume channel includes the following parameters:

Table 7.2.4-1: Airway Volume Channel Parameters

| Airway Volume Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Exhaled Tidal Volume | MDC\_VOL\_AWAY\_TIDAL\_EXP (2::61454) | Numeric::FLOAT-Type | MDC\_DIM\_MILLI\_L (4::1618) |
 |
| Exhaled Minute Volume | MDC\_VOL\_AWAY\_MINUTE\_EXP (2::61455) | Numeric::FLOAT-Type | MDC\_DIM\_X\_L (4::1600) |
 |

    1.
### Channel: Airway Breath Pattern

The airway breath pattern channel includes the following parameters:

Table 7.2.5-1: Airway Breath Pattern Channel Parameters

| Airway Breath Pattern Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| I:E Ratio | MDC\_RATIO\_IE (2::20760) | Numeric::Compound::FLOAT-Type | MDC\_DIM\_DIMLESS (4::512) |
 |
| MDC\_RATIO\_INSP (2::61461) |
 |
| MDC\_RATIO\_EXP (2::61462) |
 |
| Breath Rate | MDC\_RESP\_RATE (2::20490) | Numeric::FLOAT-Type | MDC\_DIM\_RESP\_PER\_MIN (4::2784) |
 |
| Inspiratory Time | MDC\_TIME\_PD\_INSP (2::61458) | Numeric::FLOAT-Type | MDC\_DIM\_SEC (4::2176) |
 |

  1.
## Device: Physiologic Monitor

**Editor's Note** : The information that is in this section tracks the results of the IEEE 11073 physiological monitor specialization group that was working on the ISO/IEEE 11073-10302 standard. It is anticipated that ultimately this section shall be replaced by a Device Specialization – Physiological Monitor Integration Profile. Note that many of the Channel sections below contain empty tables. The content is exactly as it has been published previously within the PCD TF-2 Appendix D. The original intent was to add exemplar parameters into these tables; however, that activity was never undertaken. It could be the subject of a fairly simple CP to TF-3 though.

    1.
### Containment tree

Physiological monitors are comprised of a number of different VMDs as indicated in the following containment tree:

Table 7.3-1: Physiological Monitor Containment Tree

| Physiological Monitor Containment Tree |
| --- |
| MDS: Physiological Monitor | MDC\_DEV\_METER\_PHYSIO\_MULTI\_PARAM\_MDS (1::4301) |
|
 | VMD: Blood Pressure | MDC\_DEV\_METER\_PRESS\_BLD\_VMD (1::4318) |
|
 | Channel: Invasive BP | MDC\_DEV\_METER\_PRESS\_BLD\_CHAN (1::4319) |
| Channel: Non-Invasive BP | MDC\_DEV\_PRESS\_BLD\_NONINV\_CHAN (1::5151) |
| Channel: Pulse Rate BP |
 |
| VMD: Temperature | MDC\_DEV\_METER\_TEMP\_VMD (1::4366) |
|
 | Channel: Temperature | MDC\_DEV\_METER\_TEMP\_CHAN (1::4367) |
| VMD: Pulse-Oximeter | MDC\_DEV\_ANALY\_SAT\_O2\_VMD (1::4106) |
|
 | Channel: Pulse-Ox | MDC\_DEV\_ANALY\_SAT\_O2\_CHAN (1::4107) |
| Channel: Pulse Rate Ox |
 |
| VMD: ECG Monitor | MDC\_DEV\_ECG\_VMD (1::4262) |
|
 | Channel: ECG | MDC\_DEV\_ECG\_CHAN (1::4263) |
| Channel: ECG Resp | MDC\_DEV\_ECG\_RESP\_CHAN (1::5131) |
| Channel: Heart Rate | MDC\_DEV\_GEN\_RATE\_HEART\_CHAN (1::4251) |
| Channel: Arrhythmia | MDC\_DEV\_ARRHY\_CHAN (1::5135) |
| Channel: Ischemia |
 |
| Channel: ECG Measurements |
 |
| VMD: Cardiac Output | MDC\_DEV\_ANALY\_CARD\_OUTPUT\_VMD (1::4134) |
|
 | Channel: Continuous CO |
 |
| Channel: Intermittent CO |
 |
| VMD: Hemodynamics Calculator | MDC\_DEV\_CALC\_HEMO\_VMD (1::4210) |
|
 | Channel: Hemodynamics Calc. | MDC\_DEV\_CALC\_HEMO\_CHAN (1::4211) |

    1.
### Channel: Invasive Blood Pressure

Invasive blood pressure channels may contain the following parameters:

Table 7.3.2-1: Invasive Blood Pressure Channel Parameters

| Invasive Blood Pressure Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Arterial Blood Pressure | MDC\_PRESS\_BLD\_ART\_ABP (2::18964) | Numeric::Compound::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |
| MDC\_PRESS\_BLD\_ART\_ABP\_SYS (2::18965) |
 |
| MDC\_PRESS\_BLD\_ART\_ABP\_DIA (2::18966) |
 |
| MDC\_PRESS\_BLD\_ART\_ABP\_MEAN (2::18967) |
 |
| Wedge Pressure | MDC\_PRESS\_BLD\_ART\_PULM\_WEDGE (2::18980) | Numeric::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |

    1.
### Channel: Blood Pressure – Non-Invasive

Non-invasive blood pressure channels may contain the following parameters:

Table 7.3.3-1: Non-Invasive Blood Pressure Channel Parameters

| Non-Invasive Blood Pressure Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Non-Invasive Blood Pressure | MDC\_PRESS\_BLD\_NONINV (2::18948) | Numeric::Compound::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |
| MDC\_PRESS\_BLD\_NONINV\_SYS (2::18949) |
 |
| MDC\_PRESS\_BLD\_NONINV\_DIA (2::18950) |
 |
| MDC\_PRESS\_BLD\_NONINV\_MEAN (2::18951) |
 |
| Cuff Pressure | MDC\_PRESS\_CUFF (2::19228) | Numeric::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |
| MDC\_PRESS\_CUFF\_SYS (2::19229) |
 |
| MDC\_PRESS\_CUFF\_DIA (2::19230) |
 |
| MDC\_PRESS\_CUFF\_MEAN (2::19231) |
 |

    1.
### Channel: Blood Pressure – Pulse Rate

Pulse rate blood pressure channels may contain the following parameters:

Table 7.3.4-1: Pulse Rate (Blood Pressure) Channel Parameters

| Pulse Rate (Blood Pressure) Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Pulse Rate | MDC\_PRESS\_RATE (2:: 18442) | Numeric::Compound::FLOAT-Type | MDC\_DIM\_CM\_H2O (4::3904) |
 |

    1.
### Channel: Temperature

Temperature channels may contain the following parameters:

Table 7.3.5-1: Temperature Channel Parameters

| Temperature Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| Body Temp | MDC\_TEMP\_BODY (2::19292) | Numeric::FLOAT-Type | NOM\_DIM\_DEGC (4:: 6048) |
 |
| Skin Temp | MDC\_TEMP\_SKIN (2::19316) | Numeric::FLOAT-Type | NOM\_DIM\_DEGC (4:: 6048) |
 |
| Core Temp | MDC\_TEMP\_CORE (2::19296) | Numeric::FLOAT-Type | NOM\_DIM\_DEGC (4:: 6048) |
 |

    1.
### Channel: Pulse Ox

Pulse oximeter channels may contain the following parameters:

Table 7.3.6-1: Pulse Ox Channel Parameters

| Pulse Ox Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: Pulse Rate Ox

Pulse rate oximeter channels may contain the following parameters:

Table 7.3.7-1: Pulse Rate Ox Channel Parameters

| Pulse Rate Ox Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
| --- | --- | --- | --- | --- |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: ECG Monitoring

ECG monitoring channels may contain the following parameters:

Table 7.3.8-1: ECG Monitoring Channel Parameters

| ECG Monitoring Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
| --- | --- | --- | --- | --- |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: ECG Resp

ECG respiration channels may contain the following parameters:

Table 7.3.9-1: ECG Respiration Channel Parameters

| ECG Respiration Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: Heart Rate

ECG heart rate channels may contain the following parameters:

Table 7.3.10-1: Heart Rate Channel Parameters

| Heart Rate Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: Arrhythmia

ECG arrhythmia channels may contain the following parameters:

Table 7.3.11-1: Arrhythmia Channel Parameters

| Arrhythmia Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: Ischemia

ECG ischemia channels may contain the following parameters:

Table 7.3.12-1: Ischemia Channel Parameters

| Ischemia Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: ECG Measurements

ECG measurement channels may contain the following parameters:

Table 7.3.13-1: ECG Measurements Channel Parameters

| ECG Measurements Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
| --- | --- | --- | --- | --- |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: Cardiac Output – Continuous

Continuous cardiac output channels may contain the following parameters:

Table 7.3.14-1: Continuous Cardiac Output Channel Parameters

| Continuous Cardiac Output Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: Cardiac Output – Intermittent

Intermittent cardiac output channels may contain the following parameters:

Table 7.3.15-1: Intermittent Cardiac Output Channel Parameters

| Intermittent Cardiac Output Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

    1.
### Channel: Hemodynamics Calculator

Hemodynamics calculator channels may contain the following parameters:

Table 7.3.16-1: Hemodynamics Calculator Channel Parameterst

| Hemodynamics Calculator Channel Parameters |
| --- |
| Name | Term Code | Data Type | Units | Values |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |
|
 |
 |
 |
 |
 |

# Appendix A Reserved

**Editor's Note** : Examples of potential Volume 3 appendices include:

OID assignments specifically for content modules and even term codes

Detailed data type mappings

RTM design specifications

1

HL7 is the registered trademark of Health Level Seven International.

2

DICOM is the registered trademark of the National Electrical Manufacturers Association for its standards publications relating to digital communications of medical information.

3

See ISO/IEEE 11073-10201 Domain Information Model for complete details on these and other objects.

4

Not shown here are the 4 MDS specializations: Simple MDS (contains a single VMD instance), Hydra MDS (contains multiple VMD instances); Composite Single Bed MDS (contains embedded MDSs for a single patient); and Composite Multi Bed MDS (multiple MDSs for multiple patients), identified in the ISO/IEEE 11073-10201 standard. None of these specialization objects add any attribution – they only reflect the relationships between the MDS and other objects (namely, other MDSs, VMDs, and Patient Demographics).

5

Note: Partition numbers are defined in ISO/IEEE 11073-10101, Section B.1.2, or in ISO/IEEE 11073-10201, type _NomPartition_ definition.

6

Note: The ISO/IEEE 11073 group has indicated that it will make a best effort to address all new term requests as quickly as possible and where appropriate to provide rapid assignment of Reference IDs and term codes.

7

For a more complete listing of device alert semantics, see ISO/IEEE 11073-10101 Section A.9 _Nomenclature, data dictionary, and codes for alerts (Block E)_, or Annex B.4 in the same standard.

8

Bracketed identifiers in Descriptions indicate the analogous SNOMED code.

9

For more complete details on the Locale data type, see the specification in ISO/IEEE 11073-10201.

10

In the 11073-10201 standard, this is defined as an enumeration of UInt16 values, but for this framework it is specified as an identifying text string.

11

Data types are further defined in Section _3.4Basic data type specifications_.

12

For the purposes of this technical framework, this data type which is MDSStatus, an enumerated set of UInt16 values, is defined as a set of string values.

13

A separate battery object is defined in the 11073-10201 standard for systems that report more advanced battery information.

14

This attribute is defined as a PowerStatus enumeration; however, for this Technical Framework, the value strings are defined.

15

Data types are further defined in Section _3.4Basic data type specifications._

16

For the purposes of this technical framework, this data type which is VMDStatus, an enumerated set of bit flags, is defined as a set of string values; multiple of these may be active at the same time.

17

Data types are further defined in Section _3.4Basic data type specifications_.

18

Note: A Channel-Type attribute has been proposed, which would allow for parameters such as "secondary infusion channel".

19

For the purposes of this technical framework, this data type which is ChannelStatus, an enumerated set of bit flags, is defined as a set of string values. Multiple flags can be asserted at the same time.

20

This parameter is specified as a set of bit flags, but for this technical framework, the enumerated text strings shall be used.

Copyright © 2018: IHE International, Inc.
