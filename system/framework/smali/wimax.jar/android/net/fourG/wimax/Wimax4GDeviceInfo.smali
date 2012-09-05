.class public Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
.super Landroid/net/fourG/net4GDeviceInfo;
.source "Wimax4GDeviceInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field m_strDeviceName:Ljava/lang/String;

.field strAsicVersion:Ljava/lang/String;

.field strHwVersion:Ljava/lang/String;

.field strMacAddress:Ljava/lang/String;

.field strRfVersion:Ljava/lang/String;

.field strSwVersion:Ljava/lang/String;

.field strVendorName:Ljava/lang/String;

.field strVendorSpecificInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/net/fourG/net4GDeviceInfo;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strAsicVersion:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strHwVersion:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getAsicVersion()Landroid/net/fourG/wimax/DeviceVersion;
    .registers 3

    .prologue
    .line 37
    new-instance v0, Landroid/net/fourG/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strAsicVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/fourG/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, AsicVersion:Landroid/net/fourG/wimax/DeviceVersion;
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Landroid/net/fourG/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strHwVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/fourG/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, HwVersion:Landroid/net/fourG/wimax/DeviceVersion;
    invoke-virtual {v0}, Landroid/net/fourG/wimax/DeviceVersion;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRfVersion()Landroid/net/fourG/wimax/DeviceVersion;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Landroid/net/fourG/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strRfVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/fourG/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, RfVersion:Landroid/net/fourG/wimax/DeviceVersion;
    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Landroid/net/fourG/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strSwVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/fourG/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, SwVersion:Landroid/net/fourG/wimax/DeviceVersion;
    invoke-virtual {v0}, Landroid/net/fourG/wimax/DeviceVersion;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVendorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strVendorName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorSpecificInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strVendorSpecificInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Wimax4GDeviceInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 73
    .local v0, none:Ljava/lang/String;
    const-string v2, "DeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    if-nez v2, :cond_39

    move-object v2, v0

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", HwVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strHwVersion:Ljava/lang/String;

    if-nez v2, :cond_3c

    move-object v2, v0

    :goto_23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", SwVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strSwVersion:Ljava/lang/String;

    if-nez v3, :cond_3f

    .end local v0           #none:Ljava/lang/String;
    :goto_31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 73
    .restart local v0       #none:Ljava/lang/String;
    :cond_39
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    goto :goto_14

    :cond_3c
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strHwVersion:Ljava/lang/String;

    goto :goto_23

    :cond_3f
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strSwVersion:Ljava/lang/String;

    goto :goto_31
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strAsicVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strHwVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strRfVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strSwVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strVendorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->strVendorSpecificInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
