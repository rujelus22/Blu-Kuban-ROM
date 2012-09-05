.class public Lcom/android/exchange/cba/SSLCBAClient;
.super Ljava/lang/Object;
.source "SSLCBAClient.java"


# static fields
.field private static final INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private keyStoreMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field mAlias:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mInsecure:Z

.field mKeyStorePassword:Ljava/lang/String;

.field mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field mTempKeyStorePassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/exchange/cba/SSLCBAClient$1;

    invoke-direct {v2}, Lcom/android/exchange/cba/SSLCBAClient$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/cba/SSLCBAClient;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/exchange/cba/SSLCBAClient;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private chooseAlias()Ljava/lang/String;
    .registers 4

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 204
    .local v0, alias:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->getAliasFromMap(J)Ljava/lang/String;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method public static getSSLSocketFactory(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/net/ssl/SSLSocketFactory;
    .registers 5
    .parameter "ctx"
    .parameter "alias"
    .parameter "insecure"

    .prologue
    .line 229
    new-instance v0, Lcom/android/exchange/cba/SSLCBAClient;

    invoke-direct {v0, p0}, Lcom/android/exchange/cba/SSLCBAClient;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, client:Lcom/android/exchange/cba/SSLCBAClient;
    invoke-virtual {v0, p1, p2}, Lcom/android/exchange/cba/SSLCBAClient;->init(Ljava/lang/String;Z)V

    .line 231
    iget-object v1, v0, Lcom/android/exchange/cba/SSLCBAClient;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v1
.end method

.method private setupKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 11
    .parameter "alias"
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 99
    if-eqz p1, :cond_43

    .line 101
    :try_start_3
    const-string v6, "PKCS12"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 102
    .local v4, keyStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 105
    iget-object v6, p0, Lcom/android/exchange/cba/SSLCBAClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exchange/cba/SSLCBAClient;->mKeyStorePassword:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/android/exchange/cba/CertificateMgr;

    iget-object v6, p0, Lcom/android/exchange/cba/SSLCBAClient;->mKeyStorePassword:Ljava/lang/String;

    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/exchange/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    .local v0, certMgr:Lcom/android/exchange/cba/CertificateMgr;
    invoke-virtual {v0, p1}, Lcom/android/exchange/cba/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v3

    .line 111
    .local v3, key:Ljava/security/Key;
    invoke-virtual {v0, p1}, Lcom/android/exchange/cba/CertificateMgr;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 112
    .local v1, chain:[Ljava/security/cert/Certificate;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, p1, v3, v6, v1}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_34

    .line 120
    .end local v0           #certMgr:Lcom/android/exchange/cba/CertificateMgr;
    .end local v1           #chain:[Ljava/security/cert/Certificate;
    .end local v3           #key:Ljava/security/Key;
    .end local v4           #keyStore:Ljava/security/KeyStore;
    :goto_33
    return-object v4

    .line 114
    :catch_34
    move-exception v2

    .line 115
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v6, "SSL"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 117
    goto :goto_33

    .end local v2           #e:Ljava/lang/Exception;
    :cond_43
    move-object v4, v5

    .line 120
    goto :goto_33
.end method

.method private setupSSLContext(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)Ljavax/net/ssl/SSLContext;
    .registers 11
    .parameter "keyStore"
    .parameter "keyStorePassword"
    .parameter "trustStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 129
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 131
    .local v3, trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, p3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 133
    const/4 v0, 0x0

    .line 137
    .local v0, keyManager:[Ljavax/net/ssl/KeyManager;
    if-nez p1, :cond_2c

    .line 138
    const/4 v4, 0x1

    new-array v0, v4, [Ljavax/net/ssl/KeyManager;

    .end local v0           #keyManager:[Ljavax/net/ssl/KeyManager;
    const/4 v4, 0x0

    new-instance v5, Lcom/android/exchange/CBAEmailKeyManager;

    invoke-direct {v5, p0}, Lcom/android/exchange/CBAEmailKeyManager;-><init>(Lcom/android/exchange/cba/SSLCBAClient;)V

    aput-object v5, v0, v4

    .line 147
    .restart local v0       #keyManager:[Ljavax/net/ssl/KeyManager;
    :goto_1a
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 149
    .local v2, sslCtx:Ljavax/net/ssl/SSLContext;
    iget-boolean v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mInsecure:Z

    if-nez v4, :cond_40

    .line 150
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 156
    :goto_2b
    return-object v2

    .line 140
    .end local v2           #sslCtx:Ljavax/net/ssl/SSLContext;
    :cond_2c
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 142
    .local v1, keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 143
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    goto :goto_1a

    .line 153
    .end local v1           #keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;
    .restart local v2       #sslCtx:Ljavax/net/ssl/SSLContext;
    :cond_40
    sget-object v4, Lcom/android/exchange/cba/SSLCBAClient;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {v2, v0, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_2b
.end method

.method private declared-synchronized setupTrustStore()Ljava/security/KeyStore;
    .registers 2

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .registers 8

    .prologue
    .line 161
    iget-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->keyStoreMap:Ljava/util/Hashtable;

    if-nez v4, :cond_b

    .line 162
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->keyStoreMap:Ljava/util/Hashtable;

    .line 163
    :cond_b
    invoke-direct {p0}, Lcom/android/exchange/cba/SSLCBAClient;->chooseAlias()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, alias:Ljava/lang/String;
    if-eqz v1, :cond_57

    .line 165
    const-string v4, "SSLCBAClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "in getKeyStore()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v3, 0x0

    .line 168
    .local v3, keyStore:Ljava/security/KeyStore;
    :try_start_30
    iget-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->keyStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/KeyStore;

    move-object v3, v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_4a

    .line 173
    :goto_3a
    if-nez v3, :cond_49

    .line 179
    iget-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mKeyStorePassword:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/exchange/cba/SSLCBAClient;->setupKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 180
    if-eqz v1, :cond_4f

    .line 181
    iget-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->keyStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v3           #keyStore:Ljava/security/KeyStore;
    :cond_49
    :goto_49
    return-object v3

    .line 170
    .restart local v3       #keyStore:Ljava/security/KeyStore;
    :catch_4a
    move-exception v2

    .line 171
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    .line 183
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4f
    const-string v4, "SSLCBAClient"

    const-string v5, "Alias is NULL! in getKeyStore()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 189
    .end local v3           #keyStore:Ljava/security/KeyStore;
    :cond_57
    const/4 v3, 0x0

    goto :goto_49
.end method

.method public init(Ljava/lang/String;Z)V
    .registers 9
    .parameter "alias"
    .parameter "insecure"

    .prologue
    .line 64
    :try_start_0
    iput-object p1, p0, Lcom/android/exchange/cba/SSLCBAClient;->mAlias:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mKeyStorePassword:Ljava/lang/String;

    .line 69
    iput-boolean p2, p0, Lcom/android/exchange/cba/SSLCBAClient;->mInsecure:Z

    .line 70
    iput-object p1, p0, Lcom/android/exchange/cba/SSLCBAClient;->mTempKeyStorePassword:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mAlias:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/cba/SSLCBAClient;->mTempKeyStorePassword:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/exchange/cba/SSLCBAClient;->setupKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 73
    .local v1, keyStore:Ljava/security/KeyStore;
    invoke-direct {p0}, Lcom/android/exchange/cba/SSLCBAClient;->setupTrustStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 74
    .local v3, trustStore:Ljava/security/KeyStore;
    iget-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mTempKeyStorePassword:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v3}, Lcom/android/exchange/cba/SSLCBAClient;->setupSSLContext(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 77
    .local v2, sslCtx:Ljavax/net/ssl/SSLContext;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 83
    .end local v1           #keyStore:Ljava/security/KeyStore;
    .end local v2           #sslCtx:Ljavax/net/ssl/SSLContext;
    .end local v3           #trustStore:Ljava/security/KeyStore;
    :goto_26
    return-void

    .line 78
    :catch_27
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const-string v4, "SSL"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v4, p0, Lcom/android/exchange/cba/SSLCBAClient;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_26
.end method
