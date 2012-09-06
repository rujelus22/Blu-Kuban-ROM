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


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .registers 5
    .parameter "clientAlias"
    .parameter "certificateChain"
    .parameter "privateKey"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;-><init>(Lcom/android/emailcommon/utility/SSLUtils$1;)V

    .line 242
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mClientAlias:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 244
    iput-object p3, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 245
    return-void
.end method

.method public static fromAlias(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;
    .registers 7
    .parameter "context"
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_3} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_20

    move-result-object v0

    .line 215
    .local v0, certificateChain:[Ljava/security/cert/X509Certificate;
    :try_start_4
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_7
    .catch Landroid/security/KeyChainException; {:try_start_4 .. :try_end_7} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_38

    move-result-object v2

    .line 224
    .local v2, privateKey:Ljava/security/PrivateKey;
    if-eqz v0, :cond_c

    if-nez v2, :cond_44

    .line 225
    :cond_c
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Can\'t access certificate from keystore"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    .end local v0           #certificateChain:[Ljava/security/cert/X509Certificate;
    .end local v2           #privateKey:Ljava/security/PrivateKey;
    :catch_14
    move-exception v1

    .line 206
    .local v1, e:Landroid/security/KeyChainException;
    const-string v3, "certificate chain"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 207
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 208
    .end local v1           #e:Landroid/security/KeyChainException;
    :catch_20
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "certificate chain"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 210
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 216
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #certificateChain:[Ljava/security/cert/X509Certificate;
    :catch_2c
    move-exception v1

    .line 217
    .local v1, e:Landroid/security/KeyChainException;
    const-string v3, "private key"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 218
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 219
    .end local v1           #e:Landroid/security/KeyChainException;
    :catch_38
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "private key"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 221
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 228
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v2       #privateKey:Ljava/security/PrivateKey;
    :cond_44
    new-instance v3, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;

    invoke-direct {v3, p1, v0, v2}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method private static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .parameter "alias"
    .parameter "type"
    .parameter "ex"

    .prologue
    .line 236
    const-string v0, "Email.Ssl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method


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
