.class public Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;
.super Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainKeyManager"
.end annotation


# instance fields
.field private final mCertificateChain:[Ljava/security/cert/X509Certificate;

.field private final mClientAlias:Ljava/lang/String;

.field private final mPrivateKey:Ljava/security/PrivateKey;


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 5
    .parameter "keyTypes"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mClientAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 3
    .parameter "alias"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 3
    .parameter "alias"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
