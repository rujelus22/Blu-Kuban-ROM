.class final Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;
.super Ljava/lang/Object;
.source "VpnServiceResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
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
        "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .registers 3
    .parameter "in"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .registers 3
    .parameter "size"

    .prologue
    .line 49
    new-array v0, p1, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    return-object v0
.end method
