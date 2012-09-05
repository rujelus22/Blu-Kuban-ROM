.class final Landroid/net/fourG/wimax/DeviceVersion$1;
.super Ljava/lang/Object;
.source "DeviceVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/DeviceVersion;
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
        "Landroid/net/fourG/wimax/DeviceVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/DeviceVersion;
    .registers 4
    .parameter "in"

    .prologue
    .line 62
    new-instance v0, Landroid/net/fourG/wimax/DeviceVersion;

    invoke-direct {v0}, Landroid/net/fourG/wimax/DeviceVersion;-><init>()V

    .line 63
    .local v0, deviceVersion:Landroid/net/fourG/wimax/DeviceVersion;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/DeviceVersion;->strName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/DeviceVersion;->strVersion:Ljava/lang/String;

    .line 66
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/DeviceVersion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/DeviceVersion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/DeviceVersion;
    .registers 3
    .parameter "size"

    .prologue
    .line 70
    new-array v0, p1, [Landroid/net/fourG/wimax/DeviceVersion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/DeviceVersion$1;->newArray(I)[Landroid/net/fourG/wimax/DeviceVersion;

    move-result-object v0

    return-object v0
.end method
