.class public Lcom/samsung/api/DeviceItem;
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
        "Lcom/samsung/api/DeviceItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private mCompany:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDescriptionUrl:Ljava/lang/String;

.field private mDeviceID:Ljava/lang/String;

.field private mDeviceIP:Ljava/lang/String;

.field private mDeviceStringType:Ljava/lang/String;

.field private mDeviceType:I

.field private mFirstIcon:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreNotification:Z

.field private mModelName:Ljava/lang/String;

.field private mModelNo:Ljava/lang/String;

.field private mUdn:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 89
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDescription:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceID:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/samsung/upnp/Device;)V
    .registers 15
    .parameter "dev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v9, 0x5

    iput v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    .line 87
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    .line 88
    iput-boolean v11, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 89
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 90
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mDescription:Ljava/lang/String;

    .line 91
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mDeviceID:Ljava/lang/String;

    .line 142
    if-nez p1, :cond_1d

    .line 192
    :cond_1c
    :goto_1c
    return-void

    .line 144
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mFriendlyName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    .line 147
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    if-eqz v9, :cond_3f

    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    const-string v10, "Windows Media Player"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 148
    iput-boolean v12, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 149
    :cond_3f
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mCompany:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelNo:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceID:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/api/DeviceItem;->setDeviceType(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceStringType:Ljava/lang/String;

    .line 156
    :try_start_5e
    new-instance v7, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, uri:Ljava/net/URI;
    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6d} :catch_bd

    .line 163
    .end local v7           #uri:Ljava/net/URI;
    :goto_6d
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, location:Ljava/lang/String;
    iput-object v5, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 167
    const-string v8, ""

    .line 168
    .local v8, urlBase:Ljava/lang/String;
    if-eqz v5, :cond_9e

    .line 169
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/samsung/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    :cond_9e
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getIconList()Lcom/samsung/upnp/IconList;

    move-result-object v4

    .line 173
    .local v4, icons:Lcom/samsung/upnp/IconList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a3
    invoke-virtual {v4}, Lcom/samsung/upnp/IconList;->size()I

    move-result v9

    if-lt v1, v9, :cond_c3

    .line 189
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1c

    .line 190
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    goto/16 :goto_1c

    .line 158
    .end local v1           #i:I
    .end local v4           #icons:Lcom/samsung/upnp/IconList;
    .end local v5           #location:Ljava/lang/String;
    .end local v8           #urlBase:Ljava/lang/String;
    :catch_bd
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v9, ""

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    goto :goto_6d

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v4       #icons:Lcom/samsung/upnp/IconList;
    .restart local v5       #location:Ljava/lang/String;
    .restart local v8       #urlBase:Ljava/lang/String;
    :cond_c3
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/IconList;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v2

    .line 175
    .local v2, icon:Lcom/samsung/upnp/Icon;
    if-nez v2, :cond_cc

    .line 173
    :goto_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 177
    :cond_cc
    invoke-virtual {v2}, Lcom/samsung/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, iconUrl:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, tempStr:Ljava/lang/String;
    :goto_ed
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 183
    .end local v6           #tempStr:Ljava/lang/String;
    :cond_f3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #tempStr:Ljava/lang/String;
    goto :goto_ed
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "friendlyName"
    .parameter "udn"
    .parameter "modelName"
    .parameter "company"
    .parameter "modelNo"
    .parameter "deviceIP"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 89
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDescription:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceID:Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/samsung/api/DeviceItem;->mFriendlyName:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    .line 208
    if-eqz p3, :cond_2c

    const-string v0, "Windows Media Player"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 210
    :cond_2c
    iput-object p4, p0, Lcom/samsung/api/DeviceItem;->mCompany:Ljava/lang/String;

    .line 211
    iput-object p5, p0, Lcom/samsung/api/DeviceItem;->mModelNo:Ljava/lang/String;

    .line 212
    iput-object p6, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    .line 213
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 214
    return-void
.end method

.method public static getLodcalDeviceItem()Lcom/samsung/api/DeviceItem;
    .registers 2

    .prologue
    .line 223
    new-instance v0, Lcom/samsung/api/DeviceItem;

    invoke-direct {v0}, Lcom/samsung/api/DeviceItem;-><init>()V

    .line 224
    .local v0, deviceItem:Lcom/samsung/api/DeviceItem;
    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    .line 225
    const-string v1, "Local Device"

    iput-object v1, v0, Lcom/samsung/api/DeviceItem;->mFriendlyName:Ljava/lang/String;

    .line 226
    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    .line 227
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/api/DeviceItem;)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    const/4 v0, -0x1

    .line 382
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
    check-cast p1, Lcom/samsung/api/DeviceItem;

    invoke-virtual {p0, p1}, Lcom/samsung/api/DeviceItem;->compareTo(Lcom/samsung/api/DeviceItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 391
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_8

    .line 392
    :cond_6
    const/4 v0, 0x0

    .line 393
    .end local p1
    :goto_7
    return v0

    .restart local p1
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/api/DeviceItem;

    .end local p1
    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public getCompany()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    return v0
.end method

.method public getFirstIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mModelNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalDevice()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 354
    iget-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 356
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    const-string v2, "127.0.0.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    const-string v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_26
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setDeviceType(I)V
    .registers 3
    .parameter "deviceType"

    .prologue
    const/4 v0, 0x5

    .line 282
    if-lez p1, :cond_5

    if-le p1, v0, :cond_8

    .line 283
    :cond_5
    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 286
    :goto_7
    return-void

    .line 285
    :cond_8
    iput p1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_7
.end method

.method setDeviceType(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 289
    if-nez p1, :cond_7

    .line 290
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 303
    :goto_6
    return-void

    .line 291
    :cond_7
    const-string v0, "MediaRenderer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 293
    :cond_13
    const-string v0, "MediaServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 294
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 295
    :cond_1f
    const-string v0, "MediaPrinter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 296
    iput v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 297
    :cond_2a
    const-string v0, "Personal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 298
    iput v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 299
    :cond_35
    const-string v0, "TVServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 300
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 302
    :cond_41
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6
.end method
