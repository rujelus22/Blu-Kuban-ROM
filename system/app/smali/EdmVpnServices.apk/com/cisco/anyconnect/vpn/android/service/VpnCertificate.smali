.class public Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
.super Ljava/lang/Object;
.source "VpnCertificate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private static ENTITY_NAME:Ljava/lang/String;


# instance fields
.field private mCertDER:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "VpnCertificate"

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v0, v1, [B

    .line 52
    .local v0, der:[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 53
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    .line 54
    return-void
.end method


# virtual methods
.method public GetX509()Ljava/security/cert/X509Certificate;
    .registers 9

    .prologue
    .line 86
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    if-nez v5, :cond_f

    .line 88
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string v7, "unexpected null DER in GetX509"

    invoke-static {v5, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    .line 109
    :goto_e
    return-object v1

    .line 92
    :cond_f
    const/4 v1, 0x0

    .line 95
    .local v1, cert:Ljava/security/cert/X509Certificate;
    :try_start_10
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 96
    .local v2, cf:Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0

    .line 98
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_28} :catch_29
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_28} :catch_34

    goto :goto_e

    .line 100
    .end local v2           #cf:Ljava/security/cert/CertificateFactory;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_29
    move-exception v3

    .line 102
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string v7, "IOException in GetX509"

    invoke-static {v5, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 104
    .end local v3           #e:Ljava/io/IOException;
    :catch_34
    move-exception v3

    .line 106
    .local v3, e:Ljava/security/cert/CertificateException;
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string v7, "CertificateException in GetX509"

    invoke-static {v5, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 177
    .local v0, cert:Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_9

    .line 179
    const-string v1, "Empty certificate"

    .line 182
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 193
    return-void
.end method
