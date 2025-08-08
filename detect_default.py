from scapy.all import *

def detect_deauth(iface="wlan0"):
    print("🚨 Detector de ataques Deauth activado...")
    def packet_handler(pkt):
        if pkt.haslayer(Dot11Deauth):
            print(f"⚠️ ¡Ataque Deauth detectado! MAC: {pkt.addr2}")
    sniff(iface=iface, prn=packet_handler, store=0)

if __name__ == "__main__":
    detect_deauth()
