.class public final Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bucket"
.end annotation


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private cachedSize:I

.field private document_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;",
            ">;"
        }
    .end annotation
.end field

.field private estimatedResults_:J

.field private fullContentsListUrl_:Ljava/lang/String;

.field private fullContentsUrl_:Ljava/lang/String;

.field private hasAnalyticsCookie:Z

.field private hasEstimatedResults:Z

.field private hasFullContentsListUrl:Z

.field private hasFullContentsUrl:Z

.field private hasIconUrl:Z

.field private hasMultiCorpus:Z

.field private hasNextPageUrl:Z

.field private hasOrdered:Z

.field private hasRelevance:Z

.field private hasTitle:Z

.field private iconUrl_:Ljava/lang/String;

.field private multiCorpus_:Z

.field private nextPageUrl_:Ljava/lang/String;

.field private ordered_:Z

.field private relevance_:D

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    .line 210
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsListUrl_:Ljava/lang/String;

    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->nextPageUrl_:Ljava/lang/String;

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    .line 363
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->ordered_:Z

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    .line 172
    return-void
.end method


# virtual methods
.method public addDocument(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 193
    if-nez p1, :cond_8

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    .line 199
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object p0
.end method

.method public getAnalyticsCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    if-gez v0, :cond_7

    .line 441
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getSerializedSize()I

    .line 443
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    return v0
.end method

.method public getDocumentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    return-object v0
.end method

.method public getEstimatedResults()J
    .registers 3

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    return-wide v0
.end method

.method public getFullContentsListUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullContentsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiCorpus()Z
    .registers 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    return v0
.end method

.method public getNextPageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->nextPageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdered()Z
    .registers 2

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->ordered_:Z

    return v0
.end method

.method public getRelevance()D
    .registers 3

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 449
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 452
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 453
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getMultiCorpus()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 456
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 457
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 460
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 461
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 464
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 465
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 468
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 469
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getRelevance()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 472
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 473
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getEstimatedResults()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 476
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 477
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 480
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 481
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsListUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 484
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 485
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getNextPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 488
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 489
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getOrdered()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 492
    :cond_c0
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    .line 493
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnalyticsCookie()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasEstimatedResults()Z
    .registers 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults:Z

    return v0
.end method

.method public hasFullContentsListUrl()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    return v0
.end method

.method public hasFullContentsUrl()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl:Z

    return v0
.end method

.method public hasIconUrl()Z
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl:Z

    return v0
.end method

.method public hasMultiCorpus()Z
    .registers 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus:Z

    return v0
.end method

.method public hasNextPageUrl()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl:Z

    return v0
.end method

.method public hasOrdered()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered:Z

    return v0
.end method

.method public hasRelevance()Z
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 501
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6a

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    :sswitch_d
    return-object p0

    .line 511
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;-><init>()V

    .line 512
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 513
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->addDocument(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 517
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setMultiCorpus(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 521
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 525
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 529
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setFullContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 533
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setRelevance(D)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 537
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 541
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 545
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setFullContentsListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 549
    :sswitch_5a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 553
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setOrdered(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 501
    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x31 -> :sswitch_3a
        0x38 -> :sswitch_42
        0x42 -> :sswitch_4a
        0x4a -> :sswitch_52
        0x52 -> :sswitch_5a
        0x58 -> :sswitch_62
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
    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    .line 351
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    .line 352
    return-object p0
.end method

.method public setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 4
    .parameter "value"

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults:Z

    .line 334
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    .line 335
    return-object p0
.end method

.method public setFullContentsListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    .line 283
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsListUrl_:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public setFullContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl:Z

    .line 266
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl:Z

    .line 249
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public setMultiCorpus(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus:Z

    .line 215
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    .line 216
    return-object p0
.end method

.method public setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl:Z

    .line 300
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->nextPageUrl_:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public setOrdered(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered:Z

    .line 368
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->ordered_:Z

    .line 369
    return-object p0
.end method

.method public setRelevance(D)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 4
    .parameter "value"

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance:Z

    .line 317
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    .line 318
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle:Z

    .line 232
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 403
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 405
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 406
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getMultiCorpus()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 408
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 409
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 411
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 412
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 414
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 415
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 417
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 418
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getRelevance()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 420
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 421
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getEstimatedResults()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 423
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 424
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 426
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 427
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 429
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 430
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getNextPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 432
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 433
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getOrdered()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 435
    :cond_a9
    return-void
.end method
