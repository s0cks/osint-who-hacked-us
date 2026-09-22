#import "@preview/in-dexter:0.7.2": index
#import "@preview/drafting:0.2.2": margin-note
#import "./util.typ": *

== DarkHotel
// https://www.kaspersky.com/resource-center/threats/darkhotel-malware-virus-threat-definition
//

Before we move on maybe we should talk about a known threat actor that has existed for some time that has
a uniquely intimate history with the global hospitality sector.
#link("https://attack.mitre.org/groups/G0012/")[DarkHotel] (also tracked as APT-C-06 and others) is a highly sophisticated,
long-standing cyber-espionage threat group believed to operate out of South Korea, with active intelligence operations
dating back to at least 2004 @mitre-darkhotel.
The group earned its distinct moniker by systematically compromising the in-house Wi-Fi and physical internet networks of
luxury hotels to conduct precise, task-based social engineering against high-profile individuals.
@mitre-darkhotel
@kaspersky-darkhotel

Rather than launching indiscriminate attacks, DarkHotel utilizes detailed booking data - such as a guest's full name,
arrival time, and room number - to target elite travelers, specifically corporate executives, government officials,
defense contractors, and researchers traveling throughout the Asia-Pacific region.
When a specific target attempts to connect to the compromised hotel network, they are presented with a seemingly valid, digitally
signed prompt to download a critical software update (such as Adobe Flash or Google Toolbar).
This payload installs a highly evasive backdoor Trojan, allowing the threat actors to quietly exfiltrate keystrokes, cached
credentials, and sensitive corporate files for months before going dark.
@mitre-darkhotel
@kaspersky-darkhotel

What makes DarkHotel uniquely paradoxical to threat analysts is the dual-layered and seemingly contradictory tactical playbook it employs.
While their primary focus relies on hyper-precise zero-day exploits and advanced cryptographic capabilities —
they concurrently operate massive, rudimentary surveillance botnets.
They have frequently spread malware indiscriminately via @P2P:a file-sharing networks and torrent sites, embedding
Trojans within large compressed archives to establish a broader strategic footprint.
Over the years, the group's tradecraft has expanded beyond physical hospitality networks.
In response to global security crackdowns and major corporate exposure by researchers like Kaspersky Lab, DarkHotel has
transitioned into executing highly sophisticated, cloud-based espionage operations, utilizing multi-stage malware strains like
Inexsmar via spear-phishing campaigns to infiltrate geopolitical and political entities worldwide.
@mitre-darkhotel
@kaspersky-darkhotel

#line(length: 100%)

I also think it's important to note that none of the stolen credit card data got liquidated on darkweb markets.

I think this is an important distinction from the direct comparison to the
#link(
  "https://www.commerce.senate.gov/wp-content/uploads/media/doc/2014%200325%20Target%20Kill%20Chain%20Analysis.pdf",
)[2013]
@target-2013-kill-chain
#link("https://redriver.com/security/target-data-breach")[Target]
@target-2013-breach
#link("https://www.sipa.columbia.edu/sites/default/files/2022-11/Target%20Final.pdf")[hack]
@target-2013-columbia
I have made.
#index[2013 Target Hack]

#aside[
  If you were cybercriminals looking for credit card information to steal, you most certainly would liquidate your spoils
  as fast as possible - _right_?

  Information like that is only valuable to financial criminals _right_?

  I say that in jest, but there's a bit of snark to it as well.
  That credit card information is most certainly valuable to a financial criminal but it is also valuable to another
  group of people.
]

#margin-note[
  Need to elaborate on the Target Hack more
]
