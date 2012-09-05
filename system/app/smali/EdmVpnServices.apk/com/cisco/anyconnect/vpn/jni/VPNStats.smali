.class public Lcom/cisco/anyconnect/vpn/jni/VPNStats;
.super Ljava/lang/Object;
.source "VPNStats.java"


# instance fields
.field public bytesReceived:Ljava/lang/String;

.field public bytesSent:Ljava/lang/String;

.field public clientAddress:Ljava/lang/String;

.field public clientAddressV6:Ljava/lang/String;

.field public compressedBytesReceived:Ljava/lang/String;

.field public compressedBytesSent:Ljava/lang/String;

.field public compressedPacketsReceived:Ljava/lang/String;

.field public compressedPacketsSent:Ljava/lang/String;

.field public controlBytesReceived:Ljava/lang/String;

.field public controlBytesSent:Ljava/lang/String;

.field public controlPacketsReceived:Ljava/lang/String;

.field public controlPacketsSent:Ljava/lang/String;

.field public encryptedBytesReceived:Ljava/lang/String;

.field public encryptedBytesSent:Ljava/lang/String;

.field public encryptedPacketsReceived:Ljava/lang/String;

.field public encryptedPacketsSent:Ljava/lang/String;

.field public fipsMode:Ljava/lang/String;

.field public inboundBypassed:Ljava/lang/String;

.field public inboundDiscarded:Ljava/lang/String;

.field public nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

.field public outboundBypassed:Ljava/lang/String;

.field public outboundDiscarded:Ljava/lang/String;

.field public packetsReceived:Ljava/lang/String;

.field public packetsSent:Ljava/lang/String;

.field public protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

.field public proxyAddress:Ljava/lang/String;

.field public proxyHostName:Ljava/lang/String;

.field public proxyPort:Ljava/lang/String;

.field public secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

.field public serverAddress:Ljava/lang/String;

.field public serverAddressV6:Ljava/lang/String;

.field public serverHostName:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public timeConnected:Ljava/lang/String;

.field public trustedNetworkDetectionMode:Ljava/lang/String;

.field public tunnelingMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
