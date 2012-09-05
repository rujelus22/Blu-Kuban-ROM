.class final Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;
.super Ljava/lang/Object;
.source "OperatingModeParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
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
        "Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
    .registers 5
    .parameter "in"

    .prologue
    .line 51
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->values()[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
    .registers 3
    .parameter "size"

    .prologue
    .line 56
    new-array v0, p1, [Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    move-result-object v0

    return-object v0
.end method
