.class public interface abstract Lcom/samsung/swift/security/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field public static final LEVEL_HIGH:I = 0x2

.field public static final LEVEL_LOW:I = 0x0

.field public static final LEVEL_MEDIUM:I = 0x1

.field public static final SECURITY_PROFILE_DENY_CONNECTION:I = 0x2

.field public static final SECURITY_PROFILE_IGNORE_CONNECTION:I = 0x5

.field public static final SECURITY_PROFILE_PERSONAL:I = 0x0

.field public static final SECURITY_PROFILE_PERSONAL_REMEBERED:I = 0x3

.field public static final SECURITY_PROFILE_PUBLIC:I = 0x1

.field public static final SECURITY_PROFILE_PUBLIC_REMEBERED:I = 0x4


# virtual methods
.method public abstract expiresOnStop()Z
.end method

.method public abstract getExpirationTimestamp()J
.end method

.method public abstract getIpAddress()Ljava/lang/String;
.end method

.method public abstract getLastAccessTime()J
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNetwork()Lcom/samsung/swift/security/Network;
.end method

.method public abstract getSecurityLevel()I
.end method

.method public abstract isBlackListed()Z
.end method

.method public abstract isWhiteListed()Z
.end method

.method public abstract setBlackListed(Z)V
.end method

.method public abstract setConnectionProfile(Z)V
.end method

.method public abstract setExpiresOnStop(Z)V
.end method

.method public abstract setInfiniteExpiration()V
.end method

.method public abstract setLongExpiration()V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSecurityProfile(I)V
.end method

.method public abstract setShortExpiration()V
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
.end method

.method public abstract setWhiteListed(Z)V
.end method

.method public abstract userAgent()Ljava/lang/String;
.end method
