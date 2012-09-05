.class public Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientCertificate"
.end annotation


# instance fields
.field public mCertificate:Ljava/security/cert/X509Certificate;

.field public mEmailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 3
    .parameter "emailAddress"
    .parameter "certificate"

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mEmailAddress:Ljava/lang/String;

    .line 265
    iput-object p2, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    .line 266
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method
