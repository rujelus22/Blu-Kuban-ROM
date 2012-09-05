.class public abstract Lcom/samsung/swift/security/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = null

.field public static final MAX_SIGNAL_STRENGTH:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const-class v0, Lcom/samsung/swift/security/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/Network;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/samsung/swift/service/NativeComponents;->instance()Lcom/samsung/swift/service/NativeComponents;

    .line 103
    return-void
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .registers 9
    .parameter "in"

    .prologue
    const/4 v7, 0x4

    .line 162
    new-array v0, v7, [B

    .line 164
    .local v0, digits:[B
    int-to-long v3, p0

    .line 165
    .local v3, lin:J
    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 167
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v7, :cond_1a

    .line 169
    const-wide/16 v5, 0xff

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 170
    const/16 v5, 0x8

    shr-long/2addr v3, v5

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 174
    :cond_1a
    :try_start_1a
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result-object v5

    .line 179
    :goto_1e
    return-object v5

    .line 176
    :catch_1f
    move-exception v1

    .line 178
    .local v1, e:Ljava/net/UnknownHostException;
    sget-object v5, Lcom/samsung/swift/security/Network;->LOGTAG:Ljava/lang/String;

    const-string v6, "intToInetAddress: UnknownHostException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v5, 0x0

    goto :goto_1e
.end method

.method public static make()Lcom/samsung/swift/security/Network;
    .registers 1

    .prologue
    .line 155
    new-instance v0, Lcom/samsung/swift/security/NetworkImpl;

    invoke-direct {v0}, Lcom/samsung/swift/security/NetworkImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getBssid()Ljava/lang/String;
.end method

.method public abstract getExpirationTimestamp()J
.end method

.method public abstract getInterfaceId()Ljava/lang/String;
.end method

.method public abstract getIpAddress()I
.end method

.method public abstract getLastAccessTime()J
.end method

.method public abstract getMacAddress()[B
.end method

.method public abstract getSsid()Ljava/lang/String;
.end method

.method public abstract getWiFiSignalStrength()F
.end method

.method public abstract isBlackListed()Z
.end method

.method public abstract isDeletable()Z
.end method

.method public abstract isInsecureWifi()Z
.end method

.method public abstract isLoopback()Z
.end method

.method public abstract isPointToPoint()Z
.end method

.method public abstract isUp()Z
.end method

.method public abstract isWhiteListed()Z
.end method

.method public abstract isWiFi()Z
.end method

.method public abstract isWiFiAssociated()Z
.end method

.method public abstract loadIpAddressMacAddress()Z
.end method

.method public abstract refreshState()I
.end method

.method public abstract setBlackListed(Z)V
.end method

.method public abstract setBssid(Ljava/lang/String;)V
.end method

.method public abstract setInfiniteExpiration()V
.end method

.method public abstract setInsecureWifi(Z)V
.end method

.method public abstract setInterfaceId(Ljava/lang/String;)V
.end method

.method public abstract setIpAddress(I)V
.end method

.method public abstract setLongExpiration()V
.end method

.method public abstract setLoopback(Z)V
.end method

.method public abstract setMacAddress([B)V
.end method

.method public abstract setPointToPoint(Z)V
.end method

.method public abstract setShortExpiration()V
.end method

.method public abstract setSsid(Ljava/lang/String;)V
.end method

.method public abstract setUp(Z)V
.end method

.method public abstract setWhiteListed(Z)V
.end method

.method public abstract setWiFi(Z)V
.end method

.method public abstract setWiFiAssociated(Z)V
.end method

.method public abstract setWiFiSignalStrength(F)V
.end method
