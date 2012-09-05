.class public Lcom/samsung/upnp/media/server/object/item/ItemNode;
.super Lcom/samsung/upnp/media/server/object/ContentNode;
.source "ItemNode.java"


# instance fields
.field public audioAlbum_id:Ljava/lang/String;

.field public dataPath:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public imageDB_id:I

.field public thumbmagic:I

.field public videoDB_id:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 74
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;-><init>()V

    .line 61
    iput v1, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->imageDB_id:I

    .line 62
    iput v1, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->videoDB_id:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->audioAlbum_id:Ljava/lang/String;

    .line 64
    iput v1, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->thumbmagic:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->date:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->dataPath:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setID(I)V

    .line 77
    const-string v0, "item"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setName(Ljava/lang/String;)V

    .line 78
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setStorageMedium(Ljava/lang/String;)V

    .line 79
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setWriteStatus(Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addNode(Lcom/samsung/xml/Node;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    .line 121
    return-void
.end method

.method public addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V
    .registers 3
    .parameter "resProp"

    .prologue
    .line 255
    invoke-static {p1}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidContentProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 257
    :cond_9
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 92
    instance-of v4, p1, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    if-eqz v4, :cond_2b

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    .line 94
    .local v0, object:Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v1

    .line 96
    .local v1, resource:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    if-nez v1, :cond_f

    .line 109
    .end local v0           #object:Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .end local v1           #resource:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    :cond_e
    :goto_e
    return v3

    .line 99
    .restart local v0       #object:Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .restart local v1       #resource:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    :cond_f
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getInputstreamUriString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, resourceurl:Ljava/lang/String;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    .line 103
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 104
    const/4 v3, 0x1

    goto :goto_e

    .line 109
    .end local v0           #object:Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .end local v1           #resource:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    .end local v2           #resourceurl:Ljava/lang/String;
    :cond_2b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_e
.end method

.method public findResPropertyByURL(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ResourceProperty;
    .registers 7
    .parameter "url"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getNProperties()I

    move-result v2

    .line 261
    .local v2, nProp:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-lt v1, v2, :cond_9

    .line 266
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 262
    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 263
    .local v0, cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    instance-of v3, v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;

    if-eqz v3, :cond_2a

    .line 264
    check-cast v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;

    goto :goto_8

    .line 261
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public getAudioAlbum_id()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->audioAlbum_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPath()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->dataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, dateStr:Ljava/lang/String;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_11

    .line 174
    :cond_10
    :goto_10
    return-wide v4

    .line 166
    :cond_11
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, df:Ljava/text/DateFormat;
    :try_start_18
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 169
    .local v0, date:Ljava/util/Date;
    if-eqz v0, :cond_10

    .line 171
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_23

    move-result-wide v4

    goto :goto_10

    .line 173
    .end local v0           #date:Ljava/util/Date;
    :catch_23
    move-exception v3

    .line 174
    .local v3, e:Ljava/lang/Exception;
    goto :goto_10
.end method

.method public getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;
    .registers 6

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getNProperties()I

    move-result v2

    .line 272
    .local v2, nProp:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-lt v1, v2, :cond_9

    .line 277
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 273
    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 274
    .local v0, cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    instance-of v3, v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;

    if-eqz v3, :cond_20

    .line 275
    check-cast v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;

    goto :goto_8

    .line 272
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public getResources()Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    .registers 7

    .prologue
    .line 294
    new-instance v2, Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-direct {v2}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;-><init>()V

    .line 295
    .local v2, list:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getNProperties()I

    move-result v3

    .line 296
    .local v3, nProp:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-lt v1, v3, :cond_d

    .line 301
    return-object v2

    .line 297
    :cond_d
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 298
    .local v0, cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "res"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    instance-of v4, v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;

    if-eqz v4, :cond_24

    .line 299
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public getThumbnailResource()Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;
    .registers 6

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getNProperties()I

    move-result v2

    .line 282
    .local v2, nProp:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-lt v1, v2, :cond_9

    .line 289
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 283
    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 284
    .local v0, cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    instance-of v3, v0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;

    if-eqz v3, :cond_20

    .line 285
    check-cast v0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;

    goto :goto_8

    .line 282
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public removeContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->removeNode(Lcom/samsung/xml/Node;)Z

    move-result v0

    return v0
.end method

.method public setAudioAlbum_id(Ljava/lang/String;)V
    .registers 2
    .parameter "audioAlbumId"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->audioAlbum_id:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 184
    const-string v0, "dc:creator"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setStorageMedium(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 226
    const-string v0, "upnp:storageMedium"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public updateResourceUri(Ljava/lang/String;)V
    .registers 3
    .parameter "interfaceAddress"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v0

    .line 306
    .local v0, property:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    if-eqz v0, :cond_9

    .line 307
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->setUri(Ljava/lang/String;)V

    .line 308
    :cond_9
    return-void
.end method
