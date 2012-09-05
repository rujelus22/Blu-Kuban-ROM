.class public Lcom/android/emailcommon/smime/CertificateMgr;
.super Ljava/lang/Object;
.source "CertificateMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 11
    .parameter "password"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_4
    iput-object p2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    .line 132
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    .line 133
    iput-object p1, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    .line 138
    const-string v5, "keystore"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 139
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v6, "keystore"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 148
    :cond_24
    :goto_24
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v6, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_87

    .line 158
    if-eqz v2, :cond_34

    .line 159
    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_a0

    .line 166
    :cond_34
    :goto_34
    :try_start_34
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 167
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_47

    .line 168
    sget-object v5, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, "Empty Keystore!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 171
    sget-object v6, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

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
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_6b} :catch_6c

    goto :goto_47

    .line 173
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_6c
    move-exception v5

    .line 175
    :cond_6d
    return-void

    .line 141
    :cond_6e
    :try_start_6e
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "READ"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 143
    .local v4, parcel:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_24

    .line 144
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_85
    .catchall {:try_start_6e .. :try_end_85} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_85} :catch_87

    .end local v2           #is:Ljava/io/FileInputStream;
    .local v3, is:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_24

    .line 153
    .end local v4           #parcel:Landroid/os/ParcelFileDescriptor;
    :catch_87
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    :try_start_88
    sget-object v5, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, " error while loading certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v5, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_99

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_99
    move-exception v5

    .line 158
    if-eqz v2, :cond_9f

    .line 159
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a2

    .line 162
    :cond_9f
    :goto_9f
    throw v5

    .line 161
    :catch_a0
    move-exception v5

    goto :goto_34

    :catch_a2
    move-exception v6

    goto :goto_9f
.end method


# virtual methods
.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 6
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, cert:Ljava/security/cert/X509Certificate;
    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    .line 442
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    return-object v0

    .line 439
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    :catch_a
    move-exception v1

    .line 440
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 6
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, key:Ljava/security/Key;
    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v2, :cond_16

    .line 353
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 354
    instance-of v2, v1, Ljava/security/PrivateKey;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17

    if-nez v2, :cond_16

    .line 355
    const/4 v1, 0x0

    .line 361
    :cond_16
    return-object v1

    .line 358
    :catch_17
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
