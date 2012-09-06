.class public Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;
.super Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingKeyManager"
.end annotation


# instance fields
.field private volatile mLastTimeCertRequested:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;-><init>(Lcom/android/emailcommon/utility/SSLUtils$1;)V

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->mLastTimeCertRequested:J

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 6
    .parameter "keyTypes"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->mLastTimeCertRequested:J

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 3
    .parameter "alias"

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 3
    .parameter "alias"

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method
