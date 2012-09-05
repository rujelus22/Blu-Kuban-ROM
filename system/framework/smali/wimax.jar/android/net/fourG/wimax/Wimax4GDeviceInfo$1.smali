.class final Landroid/net/fourG/wimax/Wimax4GDeviceInfo$1;
.super Ljava/lang/Object;
.source "Wimax4GDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
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
        "Landroid/net/fourG/wimax/Wimax4GDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 96
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;-><init>()V

    .line 98
    .local v0, info:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strAsicVersion:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strHwVersion:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strMacAddress:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strRfVersion:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strSwVersion:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strVendorName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strVendorSpecificInfo:Ljava/lang/String;

    .line 109
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 113
    new-array v0, p1, [Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo$1;->newArray(I)[Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v0

    return-object v0
.end method
