.class final Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;
.super Ljava/lang/Object;
.source "VpnCertificate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
    .registers 4
    .parameter "in"

    .prologue
    .line 61
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
    .registers 3
    .parameter "size"

    .prologue
    .line 66
    new-array v0, p1, [Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    move-result-object v0

    return-object v0
.end method
