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

.field private mDescriptionUrl:Ljava/lang/String;

.field private mDeviceIP:Ljava/lang/String;

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

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    .line 85
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 87
    iput-object v1, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/samsung/upnp/Device;)V
    .registers 15
    .parameter "dev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v9, 0x5

    iput v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    .line 85
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    .line 86
    iput-boolean v11, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 87
    iput-object v10, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 138
    if-nez p1, :cond_19

    .line 186
    :cond_18
    :goto_18
    return-void

    .line 140
    :cond_19
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mFriendlyName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    .line 143
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelName:Ljava/lang/String;

    const-string v10, "Windows Media Player"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 144
    iput-boolean v12, p0, Lcom/samsung/api/DeviceItem;->mIgnoreNotification:Z

    .line 145
    :cond_37
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mCompany:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getModelNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mModelNo:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/api/DeviceItem;->setDeviceType(Ljava/lang/String;)V

    .line 151
    :try_start_4a
    new-instance v7, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 152
    .local v7, uri:Ljava/net/URI;
    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_a9

    .line 158
    .end local v7           #uri:Ljava/net/URI;
    :goto_59
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, location:Ljava/lang/String;
    iput-object v5, p0, Lcom/samsung/api/DeviceItem;->mDescriptionUrl:Ljava/lang/String;

    .line 161
    const-string v8, ""

    .line 162
    .local v8, urlBase:Ljava/lang/String;
    if-eqz v5, :cond_8a

    .line 163
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

    .line 166
    :cond_8a
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getIconList()Lcom/samsung/upnp/IconList;

    move-result-object v4

    .line 167
    .local v4, icons:Lcom/samsung/upnp/IconList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8f
    invoke-virtual {v4}, Lcom/samsung/upnp/IconList;->size()I

    move-result v9

    if-lt v1, v9, :cond_af

    .line 183
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_18

    .line 184
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mFirstIcon:Ljava/lang/String;

    goto/16 :goto_18

    .line 153
    .end local v1           #i:I
    .end local v4           #icons:Lcom/samsung/upnp/IconList;
    .end local v5           #location:Ljava/lang/String;
    .end local v8           #urlBase:Ljava/lang/String;
    :catch_a9
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const-string v9, ""

    iput-object v9, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    goto :goto_59

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v4       #icons:Lcom/samsung/upnp/IconList;
    .restart local v5       #location:Ljava/lang/String;
    .restart local v8       #urlBase:Ljava/lang/String;
    :cond_af
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/IconList;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v2

    .line 169
    .local v2, icon:Lcom/samsung/upnp/Icon;
    if-nez v2, :cond_b8

    .line 167
    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 171
    :cond_b8
    invoke-virtual {v2}, Lcom/samsung/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, iconUrl:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_df

    .line 175
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

    .line 180
    .local v6, tempStr:Ljava/lang/String;
    :goto_d9
    iget-object v9, p0, Lcom/samsung/api/DeviceItem;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 177
    .end local v6           #tempStr:Ljava/lang/String;
    :cond_df
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #tempStr:Ljava/lang/String;
    goto :goto_d9
.end method


# virtual methods
.method public compareTo(Lcom/samsung/api/DeviceItem;)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 368
    const/4 v0, -0x1

    .line 369
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
    .line 378
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_8

    .line 379
    :cond_6
    const/4 v0, 0x0

    .line 380
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

.method public getDeviceIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getUdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/api/DeviceItem;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalDevice()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceIP:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 343
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

    .line 272
    if-lez p1, :cond_5

    if-le p1, v0, :cond_8

    .line 273
    :cond_5
    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 276
    :goto_7
    return-void

    .line 275
    :cond_8
    iput p1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_7
.end method

.method setDeviceType(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceType"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 279
    if-nez p1, :cond_7

    .line 280
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    .line 293
    :goto_6
    return-void

    .line 281
    :cond_7
    const-string v0, "MediaRenderer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 282
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 283
    :cond_13
    const-string v0, "MediaServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 284
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 285
    :cond_1f
    const-string v0, "MediaPrinter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 286
    iput v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 287
    :cond_2a
    const-string v0, "Personal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 288
    iput v1, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 289
    :cond_35
    const-string v0, "TVServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 290
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6

    .line 292
    :cond_41
    iput v2, p0, Lcom/samsung/api/DeviceItem;->mDeviceType:I

    goto :goto_6
.end method
