.class public Lcom/samsung/swift/security/ConnectionImpl;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/samsung/swift/security/Connection;


# instance fields
.field private peer:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/samsung/swift/service/NativeComponents;->instance()Lcom/samsung/swift/service/NativeComponents;

    .line 98
    invoke-direct {p0}, Lcom/samsung/swift/security/ConnectionImpl;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/security/ConnectionImpl;->peer:J

    .line 99
    return-void
.end method

.method private constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/samsung/swift/security/ConnectionImpl;->peer:J

    .line 93
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native expiresOnStop()Z
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/samsung/swift/security/ConnectionImpl;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/security/ConnectionImpl;->destroy(J)V

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 112
    return-void
.end method

.method public native getExpirationTimestamp()J
.end method

.method public native getIpAddress()Ljava/lang/String;
.end method

.method public native getLastAccessTime()J
.end method

.method public native getMacAddress()Ljava/lang/String;
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getNetwork()Lcom/samsung/swift/security/Network;
.end method

.method public native getSecurityLevel()I
.end method

.method public native isBlackListed()Z
.end method

.method public native isWhiteListed()Z
.end method

.method public native setBlackListed(Z)V
.end method

.method public native setConnectionProfile(Z)V
.end method

.method public native setExpiresOnStop(Z)V
.end method

.method public native setInfiniteExpiration()V
.end method

.method public native setLongExpiration()V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setSecurityProfile(I)V
.end method

.method public native setShortExpiration()V
.end method

.method public native setUserAgent(Ljava/lang/String;)V
.end method

.method public native setWhiteListed(Z)V
.end method

.method public native userAgent()Ljava/lang/String;
.end method
