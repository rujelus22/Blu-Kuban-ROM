.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicDetails"
.end annotation


# instance fields
.field private artist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private censoring_:I

.field private durationSec_:I

.field private genre_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasCensoring:Z

.field private hasDurationSec:Z

.field private hasLabel:Z

.field private hasOriginalReleaseDate:Z

.field private hasReleaseDate:Z

.field private label_:Ljava/lang/String;

.field private originalReleaseDate_:Ljava/lang/String;

.field private releaseDate_:Ljava/lang/String;

.field private releaseType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1239
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1244
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->censoring_:I

    .line 1260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    .line 1288
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->durationSec_:I

    .line 1305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->originalReleaseDate_:Ljava/lang/String;

    .line 1322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseDate_:Ljava/lang/String;

    .line 1339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->label_:Ljava/lang/String;

    .line 1355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    .line 1388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    .line 1465
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    .line 1239
    return-void
.end method


# virtual methods
.method public addArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1372
    if-nez p1, :cond_8

    .line 1373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1375
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    .line 1378
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1405
    if-nez p1, :cond_8

    .line 1406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1408
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    .line 1411
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    return-object p0
.end method

.method public addReleaseType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    .line 1277
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    return-object p0
.end method

.method public getArtistList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1468
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 1470
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getSerializedSize()I

    .line 1472
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    return v0
.end method

.method public getCensoring()I
    .registers 2

    .prologue
    .line 1246
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->censoring_:I

    return v0
.end method

.method public getDurationSec()I
    .registers 2

    .prologue
    .line 1289
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->durationSec_:I

    return v0
.end method

.method public getGenreCount()I
    .registers 2

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGenreList()Ljava/util/List;
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
    .line 1391
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->originalReleaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseType(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReleaseTypeCount()I
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReleaseTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1477
    const/4 v3, 0x0

    .line 1478
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1479
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getCensoring()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1482
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1483
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getDurationSec()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1486
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1487
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1490
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1491
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1494
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getArtistList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1495
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_49

    .line 1499
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :cond_5c
    const/4 v0, 0x0

    .line 1500
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1501
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_65

    .line 1504
    .end local v1           #element:Ljava/lang/String;
    :cond_77
    add-int/2addr v3, v0

    .line 1505
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1507
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1508
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1512
    :cond_93
    const/4 v0, 0x0

    .line 1513
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1514
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_9c

    .line 1517
    .end local v1           #element:Ljava/lang/Integer;
    :cond_b2
    add-int/2addr v3, v0

    .line 1518
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1520
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    .line 1521
    return v3
.end method

.method public hasCensoring()Z
    .registers 2

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring:Z

    return v0
.end method

.method public hasDurationSec()Z
    .registers 2

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    return v0
.end method

.method public hasLabel()Z
    .registers 2

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel:Z

    return v0
.end method

.method public hasOriginalReleaseDate()Z
    .registers 2

    .prologue
    .line 1307
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .registers 2

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1529
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1530
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_52

    .line 1534
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1535
    :sswitch_d
    return-object p0

    .line 1540
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setCensoring(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1544
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setDurationSec(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1548
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setOriginalReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1552
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1556
    :sswitch_2e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 1557
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1558
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->addArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1562
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1566
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1570
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->addReleaseType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1530
    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_3a
        0x3a -> :sswitch_42
        0x40 -> :sswitch_4a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1236
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v0

    return-object v0
.end method

.method public setCensoring(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring:Z

    .line 1249
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->censoring_:I

    .line 1250
    return-object p0
.end method

.method public setDurationSec(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    .line 1293
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->durationSec_:I

    .line 1294
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel:Z

    .line 1344
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->label_:Ljava/lang/String;

    .line 1345
    return-object p0
.end method

.method public setOriginalReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    .line 1310
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->originalReleaseDate_:Ljava/lang/String;

    .line 1311
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    .line 1327
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseDate_:Ljava/lang/String;

    .line 1328
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1440
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getCensoring()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1442
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1443
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getDurationSec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1445
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1446
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1448
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1449
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1451
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1452
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_40

    .line 1454
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1455
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_59

    .line 1457
    .end local v0           #element:Ljava/lang/String;
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1458
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1460
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1461
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_80

    .line 1463
    .end local v0           #element:Ljava/lang/Integer;
    :cond_96
    return-void
.end method
