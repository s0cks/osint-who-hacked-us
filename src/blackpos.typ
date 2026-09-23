#import "@preview/in-dexter:0.7.2": index
#import "./util.typ": *

== BlackPOS

Let's break for a moment to glaze the highly sophisticated and specialized software that is BlackPOS.

#link("https://www.huntress.com/threat-library/malware/blackpos")[BlackPOS]
@huntress-blackpos
(also known as Kaptoxa) is a strain of @POS:a spyware initially authored in 2013 by
#index[BlackPOS]
Russian-speaking cybercriminals and famously deployed in high-profile retail data breaches like the 2013 Target hack.
#index[2013 Target Hack]

It operated primarily on Windows-based machines and delivered via exploited remote access vulnerabilities,
brute-forced administrative credentials or lateral network movements - in which a hacker penetrates a
vulnerable device and proceeds to jump from that device to another device deeper in the network laterally.
@huntress-blackpos

Once inside the @POS:a, it registers as a system service and utilizes RAM scraping techniques to
bypass standard encryption protocols and intercept un-encrypted Track 1 and Track 2 credit card data directly
from the system's memory at the precise millisecond a card gets swiped.
@huntress-blackpos

To ensure the malware remains cloaked it relies on custom routines to bypass standard system processes and stores
harvested cardholder information locally. It then schedules exfiltration of the data to attacker C2 servers strictly during business hours to avoid
triggering suspicious network anomalies.
@huntress-blackpos

Before we move on, I think it is important to note that while BlackPOS is named in a subsequent lawsuit of the Hyatt hack.
The #link("https://newsroom.hyatt.com/news-releases?item=123450")[Hyatt themselves neglected to articulate a formal attribution to anything] - include BlackPOS.
The #link("https://www.legalnewsline.com/archives/legal-newsline/florida-woman-blames-hyatt-for-data-breach/article_503a9a6d-7990-509a-896d-02e33e6924b8.html#main-page-container")[court case in question] relies purely on temporal proximity -
BlackPOS being the active boogeyman for the hospitality industry at the time.
