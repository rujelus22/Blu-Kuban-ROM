.class public Lcom/android/exchange/CBAEmailKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "CBAEmailKeyManager.java"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mCertificatePwd:Ljava/lang/String;

.field private mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

.field private mSslClient:Lcom/android/exchange/cba/SSLCBAClient;


# direct methods
.method public constructor <init>(Lcom/android/exchange/cba/SSLCBAClient;)V
    .registers 3
    .parameter "sslClient"

    .prologue
    .line 37
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/CBAEmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    .line 38
    iput-object p1, p0, Lcom/android/exchange/CBAEmailKeyManager;->mSslClient:Lcom/android/exchange/cba/SSLCBAClient;

    .line 40
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 10
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-object v3, p0, Lcom/android/exchange/CBAEmailKeyManager;->mSslClient:Lcom/android/exchange/cba/SSLCBAClient;

    invoke-virtual {v3}, Lcom/android/exchange/cba/SSLCBAClient;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 46
    .local v0, KeyStore:Ljava/security/KeyStore;
    if-eqz v0, :cond_39

    .line 49
    const/4 v3, 0x0

    :try_start_a
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/CBAEmailKeyManager;->mCertificatePwd:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/CBAEmailKeyManager;->mAlias:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/android/exchange/CBAEmailKeyManager;->mAlias:Ljava/lang/String;

    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    iget-object v5, p0, Lcom/android/exchange/CBAEmailKeyManager;->mCertificatePwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    iput-object v3, p0, Lcom/android/exchange/CBAEmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_31} :catch_34

    .line 65
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_31
    iget-object v3, p0, Lcom/android/exchange/CBAEmailKeyManager;->mAlias:Ljava/lang/String;

    return-object v3

    .line 54
    :catch_34
    move-exception v2

    .line 56
    .local v2, e1:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 60
    .end local v2           #e1:Ljava/lang/Exception;
    :cond_39
    iput-object v4, p0, Lcom/android/exchange/CBAEmailKeyManager;->mCertificatePwd:Ljava/lang/String;

    .line 61
    iput-object v4, p0, Lcom/android/exchange/CBAEmailKeyManager;->mAlias:Ljava/lang/String;

    .line 62
    iput-object v4, p0, Lcom/android/exchange/CBAEmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    goto :goto_31
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 3
    .parameter "alias"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/exchange/CBAEmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_f

    .line 75
    iget-object v0, p0, Lcom/android/exchange/CBAEmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 77
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 6
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/CBAEmailKeyManager;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/CBAEmailKeyManager;->mAlias:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 84
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 3
    .parameter "alias"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exchange/CBAEmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_b

    .line 89
    iget-object v0, p0, Lcom/android/exchange/CBAEmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 91
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 4
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method
