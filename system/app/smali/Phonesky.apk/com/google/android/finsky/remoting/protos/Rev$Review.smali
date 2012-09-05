.class public final Lcom/google/android/finsky/remoting/protos/Rev$Review;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Review"
.end annotation


# instance fields
.field private androidId_:J

.field private authorBadgeDocid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Docid;",
            ">;"
        }
    .end annotation
.end field

.field private authorGaiaId_:J

.field private authorName_:Ljava/lang/String;

.field private authorType_:I

.field private cachedSize:I

.field private commentId_:Ljava/lang/String;

.field private commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

.field private comment_:Ljava/lang/String;

.field private con_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceName_:Ljava/lang/String;

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private documentInternalVersion_:I

.field private documentUploadTimeMsec_:J

.field private documentVersion_:Ljava/lang/String;

.field private frontendSource_:I

.field private hasAndroidId:Z

.field private hasAuthorGaiaId:Z

.field private hasAuthorName:Z

.field private hasAuthorType:Z

.field private hasComment:Z

.field private hasCommentId:Z

.field private hasCommentRating:Z

.field private hasDeviceName:Z

.field private hasDocid:Z

.field private hasDocumentInternalVersion:Z

.field private hasDocumentUploadTimeMsec:Z

.field private hasDocumentVersion:Z

.field private hasFrontendSource:Z

.field private hasHeaderOrder:Z

.field private hasImageUrl:Z

.field private hasLocale:Z

.field private hasReplyText:Z

.field private hasReplyTimestampMsec:Z

.field private hasSource:Z

.field private hasSourceUrl:Z

.field private hasStarRating:Z

.field private hasTimestampMsec:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private hasUserAgent:Z

.field private hasUserIp:Z

.field private headerOrder_:Ljava/lang/String;

.field private imageUrl_:Ljava/lang/String;

.field private locale_:Lcom/google/android/finsky/remoting/protos/UserLocale;

.field private pro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replyText_:Ljava/lang/String;

.field private replyTimestampMsec_:J

.field private sourceUrl_:Ljava/lang/String;

.field private source_:Ljava/lang/String;

.field private starRating_:I

.field private timestampMsec_:J

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;

.field private userAgent_:Ljava/lang/String;

.field private userIp_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 55
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorGaiaId_:J

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorBadgeDocid_:Ljava/util/List;

    .line 105
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorType_:I

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->sourceUrl_:Ljava/lang/String;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->imageUrl_:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 207
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentInternalVersion_:I

    .line 224
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentUploadTimeMsec_:J

    .line 241
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 258
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 326
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    .line 412
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->locale_:Lcom/google/android/finsky/remoting/protos/UserLocale;

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    .line 449
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->androidId_:J

    .line 466
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->userIp_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->headerOrder_:Ljava/lang/String;

    .line 500
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->userAgent_:Ljava/lang/String;

    .line 517
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->frontendSource_:I

    .line 534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    .line 551
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    .line 703
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addAuthorBadgeDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 88
    if-nez p1, :cond_8

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorBadgeDocid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorBadgeDocid_:Ljava/util/List;

    .line 94
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorBadgeDocid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-object p0
.end method

.method public addCon(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 395
    if-nez p1, :cond_8

    .line 396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    .line 401
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    return-object p0
.end method

.method public addPro(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 362
    if-nez p1, :cond_8

    .line 363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 365
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    .line 368
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-object p0
.end method

.method public getAndroidId()J
    .registers 3

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->androidId_:J

    return-wide v0
.end method

.method public getAuthorBadgeDocidList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Docid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorBadgeDocid_:Ljava/util/List;

    return-object v0
.end method

.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorGaiaId_:J

    return-wide v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorType()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorType_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 705
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    if-gez v0, :cond_7

    .line 707
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSerializedSize()I

    .line 709
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    return-object v0
.end method

.method public getConList()Ljava/util/List;
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
    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getDocumentInternalVersion()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentInternalVersion_:I

    return v0
.end method

.method public getDocumentUploadTimeMsec()J
    .registers 3

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentUploadTimeMsec_:J

    return-wide v0
.end method

.method public getDocumentVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontendSource()I
    .registers 2

    .prologue
    .line 519
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->frontendSource_:I

    return v0
.end method

.method public getHeaderOrder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->headerOrder_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Lcom/google/android/finsky/remoting/protos/UserLocale;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->locale_:Lcom/google/android/finsky/remoting/protos/UserLocale;

    return-object v0
.end method

.method public getProList()Ljava/util/List;
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
    .line 348
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    return-object v0
.end method

.method public getReplyText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTimestampMsec()J
    .registers 3

    .prologue
    .line 552
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 713
    const/4 v3, 0x0

    .line 714
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 715
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 718
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 719
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 722
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 723
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 726
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 727
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 730
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 731
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 734
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 735
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 738
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 739
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 742
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 743
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 746
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 747
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 750
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 751
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 755
    :cond_a4
    const/4 v0, 0x0

    .line 756
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getProList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 757
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_ad

    .line 760
    .end local v1           #element:Ljava/lang/String;
    :cond_bf
    add-int/2addr v3, v0

    .line 761
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getProList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 764
    const/4 v0, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getConList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 766
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_d4

    .line 769
    .end local v1           #element:Ljava/lang/String;
    :cond_e6
    add-int/2addr v3, v0

    .line 770
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getConList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 772
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 773
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorGaiaId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 776
    :cond_103
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType()Z

    move-result v4

    if-eqz v4, :cond_114

    .line 777
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 780
    :cond_114
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl()Z

    move-result v4

    if-eqz v4, :cond_125

    .line 781
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 784
    :cond_125
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl()Z

    move-result v4

    if-eqz v4, :cond_136

    .line 785
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 788
    :cond_136
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 789
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 792
    :cond_147
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasLocale()Z

    move-result v4

    if-eqz v4, :cond_158

    .line 793
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getLocale()Lcom/google/android/finsky/remoting/protos/UserLocale;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 796
    :cond_158
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName()Z

    move-result v4

    if-eqz v4, :cond_169

    .line 797
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 800
    :cond_169
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAndroidId()Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 801
    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAndroidId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 804
    :cond_17a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserIp()Z

    move-result v4

    if-eqz v4, :cond_18b

    .line 805
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUserIp()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 808
    :cond_18b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasHeaderOrder()Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 809
    const/16 v4, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getHeaderOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 812
    :cond_19c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserAgent()Z

    move-result v4

    if-eqz v4, :cond_1ad

    .line 813
    const/16 v4, 0x17

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 816
    :cond_1ad
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasFrontendSource()Z

    move-result v4

    if-eqz v4, :cond_1be

    .line 817
    const/16 v4, 0x18

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getFrontendSource()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 820
    :cond_1be
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentInternalVersion()Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 821
    const/16 v4, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentInternalVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 824
    :cond_1cf
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorBadgeDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 825
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    const/16 v4, 0x1a

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1d7

    .line 828
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :cond_1eb
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentUploadTimeMsec()Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 829
    const/16 v4, 0x1c

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentUploadTimeMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 832
    :cond_1fc
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v4

    if-eqz v4, :cond_20d

    .line 833
    const/16 v4, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 836
    :cond_20d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v4

    if-eqz v4, :cond_21e

    .line 837
    const/16 v4, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 840
    :cond_21e
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 841
    return v3
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->sourceUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    return v0
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIp()Lcom/google/protobuf/micro/ByteStringMicro;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->userIp_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasAndroidId()Z
    .registers 2

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAndroidId:Z

    return v0
.end method

.method public hasAuthorGaiaId()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId:Z

    return v0
.end method

.method public hasAuthorName()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    return v0
.end method

.method public hasAuthorType()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType:Z

    return v0
.end method

.method public hasComment()Z
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    return v0
.end method

.method public hasCommentId()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    return v0
.end method

.method public hasCommentRating()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating:Z

    return v0
.end method

.method public hasDeviceName()Z
    .registers 2

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid:Z

    return v0
.end method

.method public hasDocumentInternalVersion()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentInternalVersion:Z

    return v0
.end method

.method public hasDocumentUploadTimeMsec()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentUploadTimeMsec:Z

    return v0
.end method

.method public hasDocumentVersion()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    return v0
.end method

.method public hasFrontendSource()Z
    .registers 2

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasFrontendSource:Z

    return v0
.end method

.method public hasHeaderOrder()Z
    .registers 2

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasHeaderOrder:Z

    return v0
.end method

.method public hasImageUrl()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl:Z

    return v0
.end method

.method public hasLocale()Z
    .registers 2

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasLocale:Z

    return v0
.end method

.method public hasReplyText()Z
    .registers 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText:Z

    return v0
.end method

.method public hasReplyTimestampMsec()Z
    .registers 2

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec:Z

    return v0
.end method

.method public hasSource()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    return v0
.end method

.method public hasSourceUrl()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl:Z

    return v0
.end method

.method public hasStarRating()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    return v0
.end method

.method public hasTimestampMsec()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    return v0
.end method

.method public hasUserAgent()Z
    .registers 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserAgent:Z

    return v0
.end method

.method public hasUserIp()Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserIp:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 849
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_116

    .line 853
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 854
    :sswitch_d
    return-object p0

    .line 859
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 863
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 867
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 871
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 875
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 879
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 883
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 887
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 891
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 895
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;-><init>()V

    .line 896
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 897
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setCommentRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 901
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->addPro(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 905
    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->addCon(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 909
    :sswitch_72
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorGaiaId(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 913
    :sswitch_7a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorType(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 917
    :sswitch_83
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 921
    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setSourceUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 925
    :sswitch_95
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 926
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 927
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 931
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_a2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/UserLocale;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/UserLocale;-><init>()V

    .line 932
    .local v1, value:Lcom/google/android/finsky/remoting/protos/UserLocale;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 933
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setLocale(Lcom/google/android/finsky/remoting/protos/UserLocale;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 937
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/UserLocale;
    :sswitch_af
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDeviceName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 941
    :sswitch_b8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAndroidId(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 945
    :sswitch_c1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setUserIp(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 949
    :sswitch_ca
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setHeaderOrder(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 953
    :sswitch_d3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setUserAgent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 957
    :sswitch_dc
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setFrontendSource(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 961
    :sswitch_e5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocumentInternalVersion(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 965
    :sswitch_ee
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 966
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 967
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->addAuthorBadgeDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 971
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_fb
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocumentUploadTimeMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 975
    :sswitch_104
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setReplyText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 979
    :sswitch_10d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setReplyTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 849
    :sswitch_data_116
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x30 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_46
        0x4a -> :sswitch_4e
        0x52 -> :sswitch_56
        0x5a -> :sswitch_62
        0x62 -> :sswitch_6a
        0x69 -> :sswitch_72
        0x70 -> :sswitch_7a
        0x7a -> :sswitch_83
        0x82 -> :sswitch_8c
        0x8a -> :sswitch_95
        0x92 -> :sswitch_a2
        0x9a -> :sswitch_af
        0xa0 -> :sswitch_b8
        0xaa -> :sswitch_c1
        0xb2 -> :sswitch_ca
        0xba -> :sswitch_d3
        0xc0 -> :sswitch_dc
        0xc8 -> :sswitch_e5
        0xd2 -> :sswitch_ee
        0xe0 -> :sswitch_fb
        0xea -> :sswitch_104
        0xf0 -> :sswitch_10d
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 4
    .parameter "value"

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAndroidId:Z

    .line 454
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->androidId_:J

    .line 455
    return-object p0
.end method

.method public setAuthorGaiaId(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 4
    .parameter "value"

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId:Z

    .line 60
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorGaiaId_:J

    .line 61
    return-object p0
.end method

.method public setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setAuthorType(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType:Z

    .line 110
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorType_:I

    .line 111
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    .line 297
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    .line 314
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setCommentRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 330
    if-nez p1, :cond_8

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 333
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating:Z

    .line 334
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 335
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName:Z

    .line 437
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    .line 438
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 22
    if-nez p1, :cond_8

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid:Z

    .line 26
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 27
    return-object p0
.end method

.method public setDocumentInternalVersion(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentInternalVersion:Z

    .line 212
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentInternalVersion_:I

    .line 213
    return-object p0
.end method

.method public setDocumentUploadTimeMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 4
    .parameter "value"

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentUploadTimeMsec:Z

    .line 229
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentUploadTimeMsec_:J

    .line 230
    return-object p0
.end method

.method public setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    .line 195
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public setFrontendSource(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasFrontendSource:Z

    .line 522
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->frontendSource_:I

    .line 523
    return-object p0
.end method

.method public setHeaderOrder(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasHeaderOrder:Z

    .line 488
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->headerOrder_:Ljava/lang/String;

    .line 489
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl:Z

    .line 178
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->imageUrl_:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setLocale(Lcom/google/android/finsky/remoting/protos/UserLocale;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 416
    if-nez p1, :cond_8

    .line 417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 419
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasLocale:Z

    .line 420
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->locale_:Lcom/google/android/finsky/remoting/protos/UserLocale;

    .line 421
    return-object p0
.end method

.method public setReplyText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText:Z

    .line 539
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    .line 540
    return-object p0
.end method

.method public setReplyTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 4
    .parameter "value"

    .prologue
    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec:Z

    .line 556
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    .line 557
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    .line 144
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl:Z

    .line 161
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->sourceUrl_:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    .line 263
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 264
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 4
    .parameter "value"

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    .line 246
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 247
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    .line 280
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    .line 127
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserAgent:Z

    .line 505
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->userAgent_:Ljava/lang/String;

    .line 506
    return-object p0
.end method

.method public setUserIp(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserIp:Z

    .line 471
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->userIp_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 472
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
    .line 614
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 615
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 617
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 618
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 620
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 621
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 623
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 624
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 626
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 627
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 629
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 630
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 632
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 633
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 635
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 636
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 638
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 639
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 641
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 642
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 644
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getProList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_97

    .line 647
    .end local v0           #element:Ljava/lang/String;
    :cond_a9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getConList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_b1

    .line 650
    .end local v0           #element:Ljava/lang/String;
    :cond_c3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 651
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorGaiaId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 653
    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 654
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 656
    :cond_e1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 657
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 659
    :cond_f0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 660
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 662
    :cond_ff
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 663
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 665
    :cond_10e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasLocale()Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 666
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getLocale()Lcom/google/android/finsky/remoting/protos/UserLocale;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 668
    :cond_11d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName()Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 669
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 671
    :cond_12c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAndroidId()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 672
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAndroidId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 674
    :cond_13b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserIp()Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 675
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUserIp()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 677
    :cond_14a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasHeaderOrder()Z

    move-result v2

    if-eqz v2, :cond_159

    .line 678
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getHeaderOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 680
    :cond_159
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUserAgent()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 681
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 683
    :cond_168
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasFrontendSource()Z

    move-result v2

    if-eqz v2, :cond_177

    .line 684
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getFrontendSource()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 686
    :cond_177
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentInternalVersion()Z

    move-result v2

    if-eqz v2, :cond_186

    .line 687
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentInternalVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 689
    :cond_186
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorBadgeDocidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 690
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    const/16 v2, 0x1a

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_18e

    .line 692
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :cond_1a0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentUploadTimeMsec()Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 693
    const/16 v2, 0x1c

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentUploadTimeMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 695
    :cond_1af
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v2

    if-eqz v2, :cond_1be

    .line 696
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 698
    :cond_1be
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 699
    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 701
    :cond_1cd
    return-void
.end method
