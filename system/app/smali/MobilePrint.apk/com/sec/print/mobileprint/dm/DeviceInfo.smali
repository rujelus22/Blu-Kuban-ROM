.class public Lcom/sec/print/mobileprint/dm/DeviceInfo;
.super Lcom/sec/print/mobileprint/df/MFPDevice;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_DEVICE:I = 0x1

.field public static final USB_DEVICE:I = 0x2


# instance fields
.field private connectionType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/sec/print/mobileprint/dm/DeviceInfo$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/dm/DeviceInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionType()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    return v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->isNetworkDevice()Z

    move-result v2

    if-nez v2, :cond_8

    .line 46
    const/4 v2, 0x0

    .line 61
    :goto_7
    return-object v2

    .line 51
    :cond_8
    :try_start_8
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 54
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_21} :catch_23

    move-result-object v2

    goto :goto_7

    .line 56
    .end local v1           #url:Ljava/net/URL;
    :catch_23
    move-exception v0

    .line 58
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 61
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_27
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public isIPPNetworkDevice()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->isNetworkDevice()Z

    move-result v4

    if-nez v4, :cond_9

    .line 82
    :cond_8
    :goto_8
    return v2

    .line 72
    :cond_9
    :try_start_9
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_1b} :catch_20

    move-result v4

    if-ne v4, v3, :cond_8

    move v2, v3

    .line 75
    goto :goto_8

    .line 77
    .end local v1           #url:Ljava/net/URL;
    :catch_20
    move-exception v0

    .line 79
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_8
.end method

.method public isNetworkDevice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 86
    iget v1, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    if-ne v1, v0, :cond_6

    .line 90
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUSBDevice()Z
    .registers 3

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/sec/print/mobileprint/df/MFPDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    .line 120
    return-void
.end method

.method public setConnectionType(I)V
    .registers 2
    .parameter "connectionType"

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    .line 107
    return-void
.end method

.method public setNetworkDevice()V
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    .line 111
    return-void
.end method

.method public setUSBDevice()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sec/print/mobileprint/df/MFPDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sec/print/mobileprint/df/MFPDevice;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Note:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sec/print/mobileprint/df/MFPDevice;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/sec/print/mobileprint/df/MFPDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget v0, p0, Lcom/sec/print/mobileprint/dm/DeviceInfo;->connectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void
.end method
