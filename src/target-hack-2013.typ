== Target

The #link("https://www.huntress.com/threat-library/data-breach/target-data-breach")[2013 Target data breach]
@huntress-target-2013
was a watershed cybersecurity disaster that began during the peak holiday shopping season when
hackers stole network credentials from Fazio Mechanical Services, a third-party HVAC contractor, via a phishing email.

Once inside Target’s internal network, the attackers exploited poor network segmentation to move laterally to the retailer's
@POS:a, where they deployed sophisticated RAM-scraping malware
#link("https://krebsonsecurity.com/2014/01/a-first-look-at-the-target-intrusion-malware/")[dubbed BlackPOS]
@krebs-blackpos to capture unencrypted payment card details
at the moment of swipe.
Despite Target’s automated security systems triggering critical intrusion alerts, internal IT teams failed to react promptly,
allowing the malware to freely exfiltrate data to external servers for weeks.

The fallout was catastrophic, the cybercriminals compromised the credit and debit card information of approximately 40 million
customers, alongside the @PII:a of up to 70 million individuals.
This massive exposure fueled widespread identity theft on the digital black market, forced the dramatic resignations of
#link("https://slate.com/technology/2022/04/breached-excerpt-hartzog-solove-target.html")[Target's CEO and CIO]
@slate-target-2013, and ultimately cost the corporation hundreds of millions of dollars in legal settlements, fines, and
forensic cleanups.
