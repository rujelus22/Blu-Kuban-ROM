.class final Landroid/net/fourG/wimax/DeviceStatusInfo$1;
.super Ljava/lang/Object;
.source "DeviceStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/DeviceStatusInfo;
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
        "Landroid/net/fourG/wimax/DeviceStatusInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/DeviceStatusInfo;
    .registers 6
    .parameter "in"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, deviceStatus:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .local v3, statusReason:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, connectionProgressInfo:I
    new-instance v2, Landroid/net/fourG/wimax/DeviceStatusInfo;

    invoke-direct {v2, v1, v3, v0}, Landroid/net/fourG/wimax/DeviceStatusInfo;-><init>(III)V

    .line 203
    .local v2, deviceStatusInfo:Landroid/net/fourG/wimax/DeviceStatusInfo;
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/DeviceStatusInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/DeviceStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/DeviceStatusInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 207
    new-array v0, p1, [Landroid/net/fourG/wimax/DeviceStatusInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/DeviceStatusInfo$1;->newArray(I)[Landroid/net/fourG/wimax/DeviceStatusInfo;

    move-result-object v0

    return-object v0
.end method
