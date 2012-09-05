.class public Lcom/samsung/android/application/fileshare/api/DeviceItem;
.super Ljava/lang/Object;
.source "DeviceItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/application/fileshare/api/DeviceItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fc3c38c0312e73cL


# instance fields
.field private company:Ljava/lang/String;

.field private deviceIP:Ljava/lang/String;

.field private deviceType:I

.field private friendlyName:Ljava/lang/String;

.field private ignoreNotification:Z

.field private modelName:Ljava/lang/String;

.field private modelNo:Ljava/lang/String;

.field private udn:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->ignoreNotification:Z

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/samsung/upnp/Device;)V
    .registers 7
    .parameter "dev"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v2, 0x5

    iput v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    .line 83
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->ignoreNotification:Z

    .line 135
    if-eqz p1, :cond_69

    .line 136
    :try_start_b
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->friendlyName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->udn:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->modelName:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->modelName:Ljava/lang/String;

    const-string v3, "Windows Media Player"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 140
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->ignoreNotification:Z

    .line 141
    :cond_2a
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->company:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->modelNo:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->setDeviceType(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3d} :catch_53

    .line 147
    :try_start_3d
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceIP:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_4d

    .line 159
    .end local v1           #uri:Ljava/net/URI;
    :goto_4c
    return-void

    .line 150
    :catch_4d
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    :try_start_4e
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceIP:Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_53

    goto :goto_4c

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :catch_53
    move-exception v0

    .line 157
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeviceItem exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    :cond_69
    :try_start_69
    const-string v2, "[FT]-Stack"

    const-string v3, "DEV is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_53

    goto :goto_4c
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/application/fileshare/api/DeviceItem;)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    const/4 v0, -0x1

    .line 314
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->compareTo(Lcom/samsung/android/application/fileshare/api/DeviceItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 322
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    if-nez v0, :cond_8

    .line 323
    :cond_6
    const/4 v0, 0x0

    .line 324
    .end local p1
    :goto_7
    return v0

    .restart local p1
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .end local p1
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public getDeviceIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceIP:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getUdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->udn:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalDevice()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceIP:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 293
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceIP:Ljava/lang/String;

    const-string v2, "127.0.0.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceIP:Ljava/lang/String;

    const-string v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceIP:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_26
    const/4 v0, 0x1

    goto :goto_5
.end method

.method setDeviceType(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceType"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 236
    if-nez p1, :cond_7

    .line 237
    iput v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    .line 248
    :goto_6
    return-void

    .line 238
    :cond_7
    const-string v0, "MediaRenderer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 239
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    goto :goto_6

    .line 240
    :cond_13
    const-string v0, "MediaServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    goto :goto_6

    .line 242
    :cond_1f
    const-string v0, "MediaPrinter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 243
    iput v1, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    goto :goto_6

    .line 244
    :cond_2a
    const-string v0, "Personal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 245
    iput v1, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    goto :goto_6

    .line 247
    :cond_35
    iput v2, p0, Lcom/samsung/android/application/fileshare/api/DeviceItem;->deviceType:I

    goto :goto_6
.end method
