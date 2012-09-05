.class public Lcom/android/emailcommon/smime/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/smime/CertificateUtil$1;,
        Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;,
        Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;,
        Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    return-void
.end method

.method public static convertToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 8
    .parameter "certificateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, certificate:Ljava/security/cert/X509Certificate;
    :try_start_1
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 74
    .local v0, cert:Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n-----END CERTIFICATE-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .end local v1           #certificate:Ljava/security/cert/X509Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    .line 82
    .restart local v1       #certificate:Ljava/security/cert/X509Certificate;
    return-object v1

    .line 78
    .end local v0           #cert:Ljava/security/cert/CertificateFactory;
    .end local v1           #certificate:Ljava/security/cert/X509Certificate;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_30
    move-exception v2

    .line 79
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error while converting certificate. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;-><init>(Ljava/lang/String;)V

    throw v4
.end method
