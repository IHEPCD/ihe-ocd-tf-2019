CP143.docx

_Use Optional OBX Instance for Display Text Print Text_

# **IHE Change Proposal**

Tracking information:

| IHE Domain | Patient Care Device (PCD) |
| --- | --- |
| Change Proposal ID: | CP-PCD-143 |
| Change Proposal Status: | Submitted |
| Date of last update: | 2019-07-25 |
| Person assigned: | Monroe Pattillo |

Change Proposal Summary information:

| Use Optional OBX Instance for Display Text Print Text |
| --- |
| Submitter's Name(s) and e-mail address(es): | Monroe Pattillo, monroe.pattillo@gmail.com |
| Submission Date: | 2019-07-31 |
| Integration Profile(s) affected: | Alert Communication Management (ACM) |
| Actor(s) affected: | Alert Reporter (AR) and Alert Manager (AM) |
| IHE Technical Framework or Supplement modified: | ACM profile in PCD TF revision 8.0, dated Oct 23, 2018 |
| Volume(s) and Section(s) affected: | IHE PCD TF Vol 2, Appendix B.8.5, Alert Communication Management transaction (PCD-04) |
| Rationale for Change:HL7 2.8.2 didn't include CWE data type component 23 (CWE-23) Display Text/Print Text as was on an early ballot. ACM had been modified to utilized this component. By this component not appearing in a normalized version of the standard the ACM profile must take an alternate approach to providing this capability.ACM requires the optional ability to include Alert Reporter (AR) originated annotation text to the Alert Manager (AM) synthesized alert text for the text of the alert notification message.This text can be utilized by the Alert Reporter (AR) actor for a variety of purposes. It is therefore not tied to a singular function. It can potentially be utilized for simple annotation text, additional details of the alert, or foreign language text equivalents of the Alert Reporter (AR) indicated alert. |

Appendix B.8.5 **OBX-4 Sub-id in Alert Communication Management transactions ([PCD-04],** 2720 **[PCD-06], [PCD-07])**, replace the 2 paragraphs starting after line 2790 through line 2804, starting on page 117 with the following:

For the ACM Profile in the PCD-04 message, the OBX instance associated with the Event Identification Facet (where OBX-5 is equal to 196616^MDC\_EVT\_ALARM^MDC or the identification of the physiologic limit exceed for physiologic alarms), can be followed by an optional OBX instance to communicate Alert Reporter actor originated display text/print text. The MDC and REFID are defined in IEEE 11073-10101B [Editor's note: preliminary MDC is 0, preliminary REFID is MDCX\_ATTR\_ALERT\_ANNOTATION]. The data type for the OBX-5 value shall be either string (ST) or formatted text (FT). The permits inclusion of text formatting indications or the inclusion of characters from international character sets. The Alert Manager actor will optionally use the Alert Reporter provided text as a suffix to the Alert Manager synthesized alert text to be included in the alert text to be communicated to the Alert Communicator alert notification recipients. The Alert Manager (AM) shall include a separator character (commonly space) or character sequence (commonly space dash space) between the Alert Manager (AM) synthesized text and the Alert Reporter (AR) actor provided annotation text.

This capability permits the Alert Reporter to contribute text specifically for inclusion into the Alert Manager synthesized alert notification text. This can be useful in the case of textual information not well integrated into an HL7 standard data item. It can also be used as a foreign language mapping of the alert reason for which the Alert Manager requires abstraction. This abstration is meaningful in scenarios where the Alert Reporter, the alerting medical device, and the alert notification recipients are in one country, and the Alert Manager is centralized in a different country.

The alert notification text is expected to be rapidly actionable. To that end the additional text supplied by the AR actor should be relatively short.

The AR provided additional text is not expected to be utilized for communicating alert remedies. Remedies would be expected to utilize a distincly different MDC and REFID.

Page 1 of 1
