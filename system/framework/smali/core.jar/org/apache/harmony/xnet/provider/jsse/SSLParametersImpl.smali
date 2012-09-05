.class public Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static volatile defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultTrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

.field private client_mode:Z

.field private enable_session_creation:Z

.field private enabledCipherSuiteNames:[Ljava/lang/String;

.field private enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field private enabledProtocols:[Ljava/lang/String;

.field private keyManager:Ljavax/net/ssl/X509KeyManager;

.field private need_client_auth:Z

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;

.field private want_client_auth:Z


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V
    .registers 9
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .parameter "clientSessionContext"
    .parameter "serverSessionContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 72
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 79
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 81
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    .line 102
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    .line 103
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 110
    if-eqz p1, :cond_1d

    array-length v0, p1

    if-nez v0, :cond_2f

    .line 111
    :cond_1d
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    .line 115
    :goto_23
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v0, :cond_36

    .line 116
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "No X509KeyManager found"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2f
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    goto :goto_23

    .line 120
    :cond_36
    if-eqz p2, :cond_3b

    array-length v0, p2

    if-nez v0, :cond_4d

    .line 121
    :cond_3b
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 125
    :goto_41
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_54

    .line 126
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "No X509TrustManager found"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_4d
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_41

    .line 144
    :cond_54
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 146
    return-void
.end method

.method private static createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 367
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, algorithm:Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 369
    .local v2, kmf:Ljavax/net/ssl/KeyManagerFactory;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 370
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 371
    .local v3, kms:[Ljavax/net/ssl/KeyManager;
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_15} :catch_19
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_15} :catch_1b

    move-result-object v4

    .line 377
    .end local v2           #kmf:Ljavax/net/ssl/KeyManagerFactory;
    .end local v3           #kms:[Ljavax/net/ssl/KeyManager;
    :goto_16
    return-object v4

    .line 372
    :catch_17
    move-exception v1

    .line 373
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_16

    .line 374
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_19
    move-exception v1

    .line 375
    .local v1, e:Ljava/security/KeyStoreException;
    goto :goto_16

    .line 376
    .end local v1           #e:Ljava/security/KeyStoreException;
    :catch_1b
    move-exception v1

    .line 377
    .local v1, e:Ljava/security/UnrecoverableKeyException;
    goto :goto_16
.end method

.method private static createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 404
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, algorithm:Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 406
    .local v2, tmf:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v5, 0x0

    check-cast v5, Ljava/security/KeyStore;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 407
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 408
    .local v3, tms:[Ljavax/net/ssl/TrustManager;
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_16} :catch_18
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_16} :catch_1a

    move-result-object v4

    .line 413
    .end local v2           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v3           #tms:[Ljavax/net/ssl/TrustManager;
    :goto_17
    return-object v4

    .line 410
    :catch_18
    move-exception v1

    .line 411
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_17

    .line 412
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1a
    move-exception v1

    .line 413
    .local v1, e:Ljava/security/KeyStoreException;
    goto :goto_17
.end method

.method private static findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .registers 6
    .parameter "kms"

    .prologue
    .line 381
    move-object v0, p0

    .local v0, arr$:[Ljavax/net/ssl/KeyManager;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_11

    aget-object v2, v0, v1

    .line 382
    .local v2, km:Ljavax/net/ssl/KeyManager;
    instance-of v4, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_e

    .line 383
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    .line 386
    .end local v2           #km:Ljavax/net/ssl/KeyManager;
    :goto_d
    return-object v2

    .line 381
    .restart local v2       #km:Ljavax/net/ssl/KeyManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 386
    .end local v2           #km:Ljavax/net/ssl/KeyManager;
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private static findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 6
    .parameter "tms"

    .prologue
    .line 417
    move-object v0, p0

    .local v0, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 418
    .local v3, tm:Ljavax/net/ssl/TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_e

    .line 419
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .line 422
    .end local v3           #tm:Ljavax/net/ssl/TrustManager;
    :goto_d
    return-object v3

    .line 417
    .restart local v3       #tm:Ljavax/net/ssl/TrustManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 422
    .end local v3           #tm:Ljavax/net/ssl/TrustManager;
    :cond_11
    const/4 v3, 0x0

    goto :goto_d
.end method

.method protected static getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 150
    .local v0, result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    if-nez v0, :cond_18

    .line 152
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .end local v0           #result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    .restart local v0       #result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 158
    :cond_18
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-object v1
.end method

.method private static getDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 1

    .prologue
    .line 358
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 359
    .local v0, result:Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_a

    .line 361
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 363
    :cond_a
    return-object v0
.end method

.method public static getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .prologue
    .line 395
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 396
    .local v0, result:Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_a

    .line 398
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 400
    :cond_a
    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 351
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 352
    :catch_5
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 216
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 217
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .line 218
    .local v0, enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 220
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 223
    .end local v0           #enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v1           #i:I
    :cond_1e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method protected getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    if-nez v0, :cond_8

    .line 85
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->DEFAULT_CIPHER_SUITES:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 87
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .registers 3

    .prologue
    .line 193
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_7

    .line 194
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 202
    :goto_6
    return-object v1

    .line 196
    :cond_7
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 197
    .local v0, result:Ljava/security/SecureRandom;
    if-nez v0, :cond_12

    .line 199
    new-instance v0, Ljava/security/SecureRandom;

    .end local v0           #result:Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .restart local v0       #result:Ljava/security/SecureRandom;
    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 201
    :cond_12
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 202
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_6
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-object v0
.end method

.method protected getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method protected getUseClientMode()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method protected getWantClientAuth()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method protected setEnableSessionCreation(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 333
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    .line 334
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 8
    .parameter "suites"

    .prologue
    .line 232
    if-nez p1, :cond_a

    .line 233
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "suites == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_a
    array-length v3, p1

    new-array v0, v3, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 236
    .local v0, cipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v3, p1

    if-ge v1, v3, :cond_60

    .line 237
    aget-object v2, p1, v1

    .line 238
    .local v2, suite:Ljava/lang/String;
    if-nez v2, :cond_34

    .line 239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "suites["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_34
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v3

    aput-object v3, v0, v1

    .line 242
    aget-object v3, v0, v1

    if-eqz v3, :cond_44

    aget-object v3, v0, v1

    iget-boolean v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v3, :cond_5d

    .line 243
    :cond_44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 246
    .end local v2           #suite:Ljava/lang/String;
    :cond_60
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 247
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 248
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .registers 7
    .parameter "protocols"

    .prologue
    .line 262
    if-nez p1, :cond_a

    .line 263
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "protocols == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_59

    .line 266
    aget-object v1, p1, v0

    .line 267
    .local v1, protocol:Ljava/lang/String;
    if-nez v1, :cond_31

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocols["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_31
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 274
    .end local v1           #protocol:Ljava/lang/String;
    :cond_59
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 275
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 297
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 300
    return-void
.end method

.method protected setUseClientMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 282
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    .line 283
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 314
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 317
    return-void
.end method
