.class public Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
.super Ljava/lang/Object;
.source "DOARecordedInfo.java"


# instance fields
.field private TYPE:Lcom/samsung/upnp/media/server/directory/doa/FileType;

.field private album:Ljava/lang/String;

.field private albumArtUri:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private audioAlbum_id:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private creator:Ljava/lang/String;

.field private date:J

.field private dateFormat:Ljava/text/DateFormat;

.field private description:Ljava/lang/String;

.field private durationTime:Ljava/lang/String;

.field private endTime:J

.field private height:I

.field private imageDB_id:I

.field private mimeType:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private recGroup:Ljava/lang/String;

.field private recordID:I

.field private resolution:Ljava/lang/String;

.field private size:J

.field private startTime:J

.field private subTitle:Ljava/lang/String;

.field private thumbmagic:I

.field private thumbnailHeight:J

.field private thumbnailSize:I

.field private thumbnailUri:Landroid/net/Uri;

.field private thumbnailWidth:J

.field private title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private videoDB_id:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/media/server/directory/doa/FileType;)V
    .registers 10
    .parameter "type"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->mimeType:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->durationTime:Ljava/lang/String;

    .line 51
    iput v5, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->width:I

    .line 52
    iput v5, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->height:I

    .line 53
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->resolution:Ljava/lang/String;

    .line 54
    iput-wide v3, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->size:J

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->path:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->imageDB_id:I

    .line 58
    iput v2, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->videoDB_id:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->audioAlbum_id:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbmagic:I

    .line 63
    iput-wide v3, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->date:J

    .line 142
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->category:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->description:Ljava/lang/String;

    .line 184
    iput-wide v3, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->endTime:J

    .line 198
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->recGroup:Ljava/lang/String;

    .line 212
    iput v2, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->recordID:I

    .line 226
    iput-wide v3, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->startTime:J

    .line 240
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->title:Ljava/lang/String;

    .line 254
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->creator:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->subTitle:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->artist:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->album:Ljava/lang/String;

    .line 306
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->albumArtUri:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailUri:Landroid/net/Uri;

    .line 324
    iput-wide v6, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailWidth:J

    .line 325
    iput-wide v6, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailHeight:J

    .line 326
    iput v5, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailSize:I

    .line 44
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->TYPE:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    .line 45
    return-void
.end method


# virtual methods
.method public getAlbumArtUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->albumArtUri:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioDB_ID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->audioAlbum_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->TYPE:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Audio:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/directory/doa/FileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 398
    iget-wide v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->date:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getDateTimeStr(JZ)Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_11
    return-object v0

    :cond_12
    iget-wide v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->date:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getDateTimeStr(JZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public getDateTimeStr(JZ)Ljava/lang/String;
    .registers 12
    .parameter "dateLong"
    .parameter "isAudio"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    .line 407
    const-wide/16 v4, 0xa

    cmp-long v4, p1, v4

    if-gez v4, :cond_c

    .line 408
    const-string v0, ""

    .line 433
    :cond_b
    :goto_b
    return-object v0

    .line 410
    :cond_c
    const/4 v0, 0x0

    .line 411
    .local v0, dateStr:Ljava/lang/String;
    if-eqz p3, :cond_8c

    .line 412
    :try_start_f
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, valueStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_31

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-01-01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_b1

    move-result-object v0

    .line 428
    .end local v3           #valueStr:Ljava/lang/String;
    :goto_2c
    if-nez v0, :cond_b

    .line 429
    const-string v0, ""

    goto :goto_b

    .line 415
    .restart local v3       #valueStr:Ljava/lang/String;
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_57

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_57

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-01-01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 418
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 421
    .end local v3           #valueStr:Ljava/lang/String;
    :cond_8c
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->dateFormat:Ljava/text/DateFormat;

    if-nez v4, :cond_a4

    .line 422
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->dateFormat:Ljava/text/DateFormat;

    .line 423
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->dateFormat:Ljava/text/DateFormat;

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 425
    :cond_a4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 426
    .local v2, tempDate:Ljava/util/Date;
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_ae} :catch_b1

    move-result-object v0

    goto/16 :goto_2c

    .line 432
    .end local v2           #tempDate:Ljava/util/Date;
    :catch_b1
    move-exception v1

    .line 433
    .local v1, e:Ljava/lang/Exception;
    const-string v0, ""

    goto/16 :goto_b
.end method

.method public getDurationTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->durationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->height:I

    return v0
.end method

.method public getImageDB_ID()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->imageDB_id:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->size:J

    return-wide v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTYPE()Lcom/samsung/upnp/media/server/directory/doa/FileType;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->TYPE:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    return-object v0
.end method

.method public getThumbmagic()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbmagic:I

    return v0
.end method

.method public getThumbnailsHeight()J
    .registers 3

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailHeight:J

    return-wide v0
.end method

.method public getThumbnailsSize()I
    .registers 2

    .prologue
    .line 357
    iget v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailSize:I

    return v0
.end method

.method public getThumbnailsUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailsWidth()J
    .registers 3

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbnailWidth:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoDB_ID()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->videoDB_id:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->width:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .registers 3
    .parameter "album"

    .prologue
    .line 300
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->album:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "artist"

    .prologue
    .line 288
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->artist:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setAudioAlbum_ID(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->audioAlbum_id:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 145
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->category:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 257
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->creator:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setDataPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->path:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDate(J)V
    .registers 3
    .parameter "date"

    .prologue
    .line 394
    iput-wide p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->date:J

    .line 395
    return-void
.end method

.method public setDurationTime(Ljava/lang/String;)V
    .registers 3
    .parameter "durationTime"

    .prologue
    .line 102
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->durationTime:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setImageDB_ID(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 365
    iput p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->imageDB_id:I

    .line 366
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 94
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->mimeType:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .registers 3
    .parameter "resolution"

    .prologue
    .line 126
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->resolution:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->size:J

    .line 71
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 272
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->subTitle:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setThumb_magic(I)V
    .registers 2
    .parameter "thumbMagic"

    .prologue
    .line 385
    iput p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->thumbmagic:I

    .line 386
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 243
    invoke-static {p1}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->title:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->uri:Landroid/net/Uri;

    .line 131
    return-void
.end method

.method public setVideoDB_ID(I)V
    .registers 2
    .parameter "dbId"

    .prologue
    .line 377
    iput p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->videoDB_id:I

    .line 378
    return-void
.end method
