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

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    .line 86
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 88
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDescription:Ljava/lang/String;

    .line 132
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

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v9, 0x5

    iput v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    .line 86
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    .line 87
    iput-boolean v11, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 88
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 89
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mDescription:Ljava/lang/String;

    .line 140
    if-nez p1, :cond_1b

    .line 190
    :cond_1a
    :goto_1a
    return-void

    .line 142
    :cond_1b
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mFriendlyName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    .line 145
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    const-string v10, "Windows Media Player"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 146
    iput-boolean v12, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 147
    :cond_39
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mCompany:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelNo:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/api/DeviceItem;->setDeviceType(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceStringType:Ljava/lang/String;

    .line 154
    :try_start_52
    new-instance v7, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 155
    .local v7, uri:Ljava/net/URI;
    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_61} :catch_b1

    .line 161
    .end local v7           #uri:Ljava/net/URI;
    :goto_61
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, location:Ljava/lang/String;
    iput-object v5, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 165
    const-string v8, ""

    .line 166
    .local v8, urlBase:Ljava/lang/String;
    if-eqz v5, :cond_92

    .line 167
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

    .line 170
    :cond_92
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getIconList()Lcom/samsung/upnp/IconList;

    move-result-object v4

    .line 171
    .local v4, icons:Lcom/samsung/upnp/IconList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_97
    invoke-virtual {v4}, Lcom/samsung/upnp/IconList;->size()I

    move-result v9

    if-lt v1, v9, :cond_b7

    .line 187
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1a

    .line 188
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    goto/16 :goto_1a

    .line 156
    .end local v1           #i:I
    .end local v4           #icons:Lcom/samsung/upnp/IconList;
    .end local v5           #location:Ljava/lang/String;
    .end local v8           #urlBase:Ljava/lang/String;
    :catch_b1
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v9, ""

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    goto :goto_61

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v4       #icons:Lcom/samsung/upnp/IconList;
    .restart local v5       #location:Ljava/lang/String;
    .restart local v8       #urlBase:Ljava/lang/String;
    :cond_b7
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/IconList;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v2

    .line 173
    .local v2, icon:Lcom/samsung/upnp/Icon;
    if-nez v2, :cond_c0

    .line 171
    :goto_bd
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 175
    :cond_c0
    invoke-virtual {v2}, Lcom/samsung/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, iconUrl:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e7

    .line 179
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

    .line 184
    .local v6, tempStr:Ljava/lang/String;
    :goto_e1
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 181
    .end local v6           #tempStr:Ljava/lang/String;
    :cond_e7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #tempStr:Ljava/lang/String;
    goto :goto_e1
.end method


# virtual methods
.method public compareTo(Lcom/samsung/api/DeviceItem;)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 376
    const/4 v0, -0x1

    .line 377
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
    .line 386
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_8

    .line 387
    :cond_6
    const/4 v0, 0x0

    .line 388
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

.method public getUdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalDevice()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 351
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

.method setDeviceType(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 287
    if-nez p1, :cond_7

    .line 288
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 301
    :goto_6
    return-void

    .line 289
    :cond_7
    const-string v0, "MediaRenderer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 290
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 291
    :cond_13
    const-string v0, "MediaServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 293
    :cond_1f
    const-string v0, "MediaPrinter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 294
    iput v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 295
    :cond_2a
    const-string v0, "Personal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 296
    iput v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 297
    :cond_35
    const-string v0, "TVServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 298
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 300
    :cond_41
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6
.end method
