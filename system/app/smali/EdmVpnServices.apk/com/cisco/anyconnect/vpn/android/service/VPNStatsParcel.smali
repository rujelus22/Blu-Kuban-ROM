.class public Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
.super Lcom/cisco/anyconnect/vpn/jni/VPNStats;
.source "VPNStatsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 187
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/VPNStats;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private parcelProtocolInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V
    .registers 8
    .parameter "out"
    .parameter "protocols"

    .prologue
    .line 126
    if-eqz p2, :cond_1e

    array-length v3, p2

    if-eqz v3, :cond_1e

    .line 128
    array-length v1, p2

    .line 129
    .local v1, nProtocols:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    new-array v2, v1, [Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;

    .line 131
    .local v2, protocolsParcel:[Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 133
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V

    aput-object v3, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 135
    :cond_1a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 141
    .end local v0           #i:I
    .end local v1           #nProtocols:I
    .end local v2           #protocolsParcel:[Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;
    :goto_1d
    return-void

    .line 139
    :cond_1e
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d
.end method

.method private parcelRouteInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V
    .registers 8
    .parameter "out"
    .parameter "routes"

    .prologue
    .line 107
    if-eqz p2, :cond_1e

    array-length v3, p2

    if-eqz v3, :cond_1e

    .line 109
    array-length v1, p2

    .line 110
    .local v1, nRoutes:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    new-array v2, v1, [Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;

    .line 112
    .local v2, routesParcel:[Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 114
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V

    aput-object v3, v2, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 116
    :cond_1a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 122
    .end local v0           #i:I
    .end local v1           #nRoutes:I
    .end local v2           #routesParcel:[Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;
    :goto_1d
    return-void

    .line 120
    :cond_1e
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->state:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->timeConnected:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesSent:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesReceived:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsSent:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsReceived:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlBytesSent:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlBytesReceived:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsSent:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsReceived:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedBytesSent:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedBytesReceived:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedPacketsSent:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedPacketsReceived:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedBytesSent:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedBytesReceived:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedPacketsSent:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedPacketsReceived:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->inboundDiscarded:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->outboundDiscarded:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->inboundBypassed:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->outboundBypassed:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddress:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverAddress:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddressV6:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverAddressV6:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverHostName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyAddress:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyHostName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyPort:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingMode:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->fipsMode:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->trustedNetworkDetectionMode:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->unparcelRouteInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 69
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->unparcelRouteInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 70
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->unparcelProtocolInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    .line 71
    return-void
.end method

.method private unparcelProtocolInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;
    .registers 6
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    new-array v2, v0, [Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    .line 93
    if-lez v0, :cond_21

    .line 95
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v3

    .line 96
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    array-length v0, v3

    if-ge v1, v0, :cond_21

    .line 98
    aget-object v0, v3, v1

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    aput-object v0, v2, v1

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 102
    :cond_21
    return-object v2
.end method

.method private unparcelRouteInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;
    .registers 6
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    new-array v2, v0, [Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 77
    if-lez v0, :cond_21

    .line 79
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v3

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    array-length v0, v3

    if-ge v1, v0, :cond_21

    .line 82
    aget-object v0, v3, v1

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    aput-object v0, v2, v1

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 86
    :cond_21
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->timeConnected:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlBytesSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlBytesReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedBytesSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedBytesReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedPacketsSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedPacketsReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedBytesSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedBytesReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedPacketsSent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedPacketsReceived:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->inboundDiscarded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->outboundDiscarded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->inboundBypassed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->outboundBypassed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddressV6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverAddressV6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->fipsMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->trustedNetworkDetectionMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->parcelRouteInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V

    .line 244
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->parcelRouteInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V

    .line 245
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->parcelProtocolInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V

    .line 246
    return-void
.end method
