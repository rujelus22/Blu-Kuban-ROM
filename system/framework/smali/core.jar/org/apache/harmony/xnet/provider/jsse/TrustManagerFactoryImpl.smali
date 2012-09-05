.class public Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 5

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_c

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .registers 6
    .parameter "ks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 45
    if-eqz p1, :cond_5

    .line 46
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 59
    :goto_4
    return-void

    .line 48
    :cond_5
    const-string v1, "AndroidCAStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 50
    :try_start_d
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_15
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_14} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_14} :catch_23

    goto :goto_4

    .line 51
    :catch_15
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 53
    .end local v0           #e:Ljava/io/IOException;
    :catch_1c
    move-exception v0

    .line 54
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_23
    move-exception v0

    .line 56
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
