CP-PCD-146-MWP\_PCDTF\_ACM\_Alert\_Fatigue\_04.doc

_Adding information regarding alert fatigue_

# **IHE Change Proposal**

Tracking information:

| IHE Domain | Patient Care Device (PCD) |
| --- | --- |
| Change Proposal ID: | CP-PCD-146 |
| Change Proposal Status: | Submitted |
| Date of last update: | 2019-09-08 |
| Person assigned: | Monroe Pattillo |

Change Proposal Summary information:

| Adding information regarding alert fatigue |
| --- |
| Submitter's Name(s) and e-mail address(es): | Monroe Pattillo, monroe.pattillo@gmail.com |
| Submission Date: | 2019-09-05 |
| Integration Profile(s) affected: | Alert Communication Management (ACM) |
| Actor(s) affected: | Alert Reporter (AR) and Alert Manager (AM) |
| IHE Technical Framework or Supplement modified: | ACM profile in PCD TF revision 8.0, dated Oct 23, 2018 |
| Volume(s) and Section(s) affected: | IHE PCD TF Vol 2, new Appendix L |
| Rationale for Change:Alert (alarm) fatigue is a sigificant issue. Those not familiar with deployments of ACM and those not familiar with ways in which ACM can be combined with other IHE profiles, such as MEMLS, can lead to the misunderstanding that ACM as it is curently defined is not up to the task of mitigating alert fatigue. Adding this information to the ACM profile will hopefully mitigate such misunderstandings.The IHE PCD TF volume 2 makes numerous references to implementation options and is the appropriate TF volume in which to include this information. As the information is specific to the ACM profile it is appropriate to add it to the end of that area of the PCD TF volume 2. As the individual sections of the volume 2 document is structured around transactions and their content it is appropriate to add this content as a new appendix as it covers multiple ACM actors, transactions, and content.The information does not provide information on a national variation nor is it a device specific containment model and is therefore not appropriate for PCD TF volume 3. |

**Appendix L** **Alert (Alarm) Fatigue**, add the following as a new appendix after the last paragraph staring at line 5280, starting a new page after page 206:

**Appendix L - Alert (Alarm) Fatigue**

Root causes of alert (alarm) fatigue are numerous. Many can be mitigated without automation, such as ECG lead placement and maintenance management.

Even when ACM based automated alert notifications are deployed there can even be increased alert fatigue due to the dissemination of alerts to too many individuals or too many different types of alerts to individuals. Assessment and reduction of over alerting typically requires a hospital or care unit focused investigative team to gather evidentiary information to specifically identify which alerts are to be disseminated and specifically to which job roles or individuals as these change quite often with staff shift changes and dynamically with staff member breaks, tasking availability and communication accessibility.

Alert Source devices and gateways as ACM Alert Reporter (AR) actors can utilize the ACM Report Alert (PCD-04) transaction that it sends to the Alert Manager (AM) actor as a means of reducing alert audio in care units and across hospitals. The AR actor can maintain awareness of AR-AM infrasture usability by sending short duration periodic PCD-04 messages with minimal content which the AM actor can minimally process and acknowledge as successfully received back to the AR actor. This forms an Alert Reporter to Alert Manager application level keep-alive mechanism. This provides the AR actor with a degree of confidence that the AM actor can receive and can request dissemination of alert notifications. This confidence can form the basis of temporarily holding off on activating the Alert Source local alarm audio if the AM has received and acknowledged the Report Alert (PCD-04) transaction. The holdoff delay period would be Alert Source managed and would likely be alert type specific. If there is no active keep-alive or if the AM responds with negative acknowledgement or if the AM doesn't respond within a small single digit number of seconds the alert source would activate its local alarm audio. Even if the AM acknowledges receipt of the PCD-04 transaction the Alert Source can still maintain an expectation of timeliness of alert resolution at the source and if not resolved within the expected period of time could activate its local alarm audio.

If the Alert Reporter (AR) and Alert Manager (AM) implement the optional Report Alert Dissemination Status (PCD-05) transaction then additional information is available for the AR to mitigate alert fatigue. When the AM actor sends the Disseminate Alert (PCD-06) transaction to the Alert Communicator (AC) actor there is a short turnaround acknowledgement by the AC actor back to the AM actor that the alert dissemination request has been successfully received. A PCD-05 message indicating this could be used, with appropriate watchdog timer, to hold off activation of source local alert audio as confirmation that the alert has been forwarded to a dissemination solution. This holdoff can be further extended if the AC implementation includes support for delivery confirmation, read receipt, and operator accept/reject signalling. If an alert notification successfully makes it all the way to an assigned clinician and that clinician read the alert notification and responds to it with accept that can further hold off activation of the local alarm audio.

When ACM actors are used in conjunction with actors from other IHE profiles, such as Medical Equipment Management Location Services (MEMLS) alert dissemination can be further managed in an automated manner. If the AM actor additionally implements a Location Observation Consumer (LOC) actor then when location observations are reported for staff and equipment the AM actor becomes aware of them. As alert dissemination destinations (clinicians) move out of and into range of known wireless communication attenuation zones the AM actor could automatically adjust alert dissemination destinations.Through the above deployment efforts alert (alarm) audio and its associated fatigue can be significantly mitigated without new communication protocols or profiles.

These are the key points.

1. The Alert Source always controls its own local alarm audio state, pause, end or extension of a pause.

2. The Alert Source and the Alert Reporter (AR) actor can use the available context and received triggers to make decisions regarding the audio state.

3. In this scenario a local alarm is not cleared by a remote actor.

4. Only local resolution of the alerting condition can locally clear the alert.

5. This scenario does not comment regarding the state of other cues (visual, haptic).

[Editor's note: A timing diagram is contained in a separate CP. Once that CP is approved it should be referenced by this new appendix.]

Page 3 of 3
