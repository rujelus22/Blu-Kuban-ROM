.class public Lcom/android/exchange/cba/CertificateMgr;
.super Ljava/lang/Object;
.source "CertificateMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSelf:Lcom/android/exchange/cba/CertificateMgr;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const-class v0, Lcom/android/exchange/cba/CertificateMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/cba/CertificateMgr;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/cba/CertificateMgr;->mSelf:Lcom/android/exchange/cba/CertificateMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 11
    .parameter "password"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v3, 0x0

    .line 237
    .local v3, is:Ljava/io/FileInputStream;
    :try_start_4
    iput-object p2, p0, Lcom/android/exchange/cba/CertificateMgr;->mContext:Landroid/content/Context;

    .line 238
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    .line 239
    iput-object p1, p0, Lcom/android/exchange/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    .line 241
    new-instance v2, Ljava/io/File;

    const-string v5, "data/data/com.android.email/files/keystore"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v2, f:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_66

    .line 244
    .end local v3           #is:Ljava/io/FileInputStream;
    .local v4, is:Ljava/io/FileInputStream;
    :try_start_1c
    iget-object v5, p0, Lcom/android/exchange/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v6, p0, Lcom/android/exchange/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_83
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_86

    .line 251
    if-eqz v4, :cond_2c

    .line 252
    :try_start_29
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_81

    .line 258
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v5, p0, Lcom/android/exchange/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 259
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 260
    sget-object v5, Lcom/android/exchange/cba/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, "Empty Keystore!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 263
    sget-object v6, Lcom/android/exchange/cba/CertificateMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alias: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_63} :catch_64

    goto :goto_3f

    .line 265
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_64
    move-exception v5

    .line 267
    :cond_65
    return-void

    .line 246
    .end local v2           #f:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_66
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    :goto_67
    :try_start_67
    sget-object v5, Lcom/android/exchange/cba/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, " error while loading certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v5, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_78

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_78
    move-exception v5

    .line 251
    :goto_79
    if-eqz v3, :cond_7e

    .line 252
    :try_start_7b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 250
    :cond_7e
    :goto_7e
    throw v5

    .line 254
    :catch_7f
    move-exception v6

    goto :goto_7e

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_81
    move-exception v5

    goto :goto_2c

    .line 250
    :catchall_83
    move-exception v5

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_79

    .line 246
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_86
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_67
.end method


# virtual methods
.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 6
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 355
    .local v0, chain:[Ljava/security/cert/Certificate;
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 363
    return-object v0

    .line 357
    :catch_8
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 6
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 293
    .local v1, key:Ljava/security/Key;
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v2, :cond_16

    .line 295
    iget-object v2, p0, Lcom/android/exchange/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/exchange/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 297
    instance-of v2, v1, Ljava/security/PrivateKey;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17

    if-nez v2, :cond_16

    .line 299
    const/4 v1, 0x0

    .line 311
    :cond_16
    return-object v1

    .line 305
    :catch_17
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
