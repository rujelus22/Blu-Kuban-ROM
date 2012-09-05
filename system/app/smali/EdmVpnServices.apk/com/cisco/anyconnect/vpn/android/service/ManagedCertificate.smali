.class public Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;
.super Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;
.source "ManagedCertificate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCert:Ljava/security/cert/X509Certificate;

.field private mSubjectShortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 213
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;-><init>()V

    .line 77
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private derToX509Certificate([B)Ljava/security/cert/X509Certificate;
    .registers 10
    .parameter "derBlob"

    .prologue
    .line 110
    :try_start_0
    const-string v4, "X509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 111
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 112
    .local v3, inStream:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 113
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_32

    .line 125
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v3           #inStream:Ljava/io/ByteArrayInputStream;
    :goto_14
    return-object v0

    .line 116
    :catch_15
    move-exception v2

    .line 118
    .local v2, e:Ljava/security/cert/CertificateException;
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "ManagedCertificate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "derToX509Certificate: CertificateException while parsing certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :goto_30
    const/4 v0, 0x0

    goto :goto_14

    .line 120
    :catch_32
    move-exception v2

    .line 122
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "ManagedCertificate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "derToX509Certificate: IOException while parsing certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->derBlob:[B

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    .line 89
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1d

    .line 91
    new-instance v0, Lcom/cisco/anyconnect/common/X509NameParser;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    .line 92
    .local v0, parser:Lcom/cisco/anyconnect/common/X509NameParser;
    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/X509NameParser;->getShortName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mSubjectShortName:Ljava/lang/String;

    .line 94
    .end local v0           #parser:Lcom/cisco/anyconnect/common/X509NameParser;
    :cond_1d
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->derBlob:[B

    .line 182
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->derBlob:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->id:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->group:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->certType:I

    .line 187
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->initialize()V

    .line 188
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->derBlob:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->derBlob:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 207
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->certType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void
.end method
