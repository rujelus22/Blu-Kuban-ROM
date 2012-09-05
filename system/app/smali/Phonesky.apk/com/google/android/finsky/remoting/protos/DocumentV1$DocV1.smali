.class public final Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocumentV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocumentV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocV1"
.end annotation


# instance fields
.field private cachedSize:I

.field private creator_:Ljava/lang/String;

.field private descriptionHtml_:Ljava/lang/String;

.field private detailsUrl_:Ljava/lang/String;

.field private details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

.field private docid_:Ljava/lang/String;

.field private finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

.field private hasCreator:Z

.field private hasDescriptionHtml:Z

.field private hasDetails:Z

.field private hasDetailsUrl:Z

.field private hasDocid:Z

.field private hasFinskyDoc:Z

.field private hasMoreByBrowseUrl:Z

.field private hasMoreByHeader:Z

.field private hasMoreByListUrl:Z

.field private hasPlusOneData:Z

.field private hasRelatedBrowseUrl:Z

.field private hasRelatedHeader:Z

.field private hasRelatedListUrl:Z

.field private hasReviewsUrl:Z

.field private hasShareUrl:Z

.field private hasTitle:Z

.field private hasWarningMessage:Z

.field private moreByBrowseUrl_:Ljava/lang/String;

.field private moreByHeader_:Ljava/lang/String;

.field private moreByListUrl_:Ljava/lang/String;

.field private plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

.field private relatedBrowseUrl_:Ljava/lang/String;

.field private relatedHeader_:Ljava/lang/String;

.field private relatedListUrl_:Ljava/lang/String;

.field private reviewsUrl_:Ljava/lang/String;

.field private shareUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private warningMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->docid_:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->detailsUrl_:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->reviewsUrl_:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedListUrl_:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedBrowseUrl_:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedHeader_:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByListUrl_:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByBrowseUrl_:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByHeader_:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->shareUrl_:Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->title_:Ljava/lang/String;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->creator_:Ljava/lang/String;

    .line 238
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->descriptionHtml_:Ljava/lang/String;

    .line 275
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->warningMessage_:Ljava/lang/String;

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    if-gez v0, :cond_7

    .line 400
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getSerializedSize()I

    .line 402
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    return v0
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->creator_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->docid_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    return-object v0
.end method

.method public getMoreByBrowseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByBrowseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreByHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreByListUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    return-object v0
.end method

.method public getRelatedBrowseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedBrowseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedListUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->reviewsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 408
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 412
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 416
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 420
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 424
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 428
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 432
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 436
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 440
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 444
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 448
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 452
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 456
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 460
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 464
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 468
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 472
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getWarningMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    :cond_11b
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    .line 476
    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->shareUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getWarningMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->warningMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCreator()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator:Z

    return v0
.end method

.method public hasDescriptionHtml()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasDetails()Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid:Z

    return v0
.end method

.method public hasFinskyDoc()Z
    .registers 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc:Z

    return v0
.end method

.method public hasMoreByBrowseUrl()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    return v0
.end method

.method public hasMoreByHeader()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    return v0
.end method

.method public hasMoreByListUrl()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    return v0
.end method

.method public hasPlusOneData()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData:Z

    return v0
.end method

.method public hasRelatedBrowseUrl()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    return v0
.end method

.method public hasRelatedHeader()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    return v0
.end method

.method public hasRelatedListUrl()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    return v0
.end method

.method public hasReviewsUrl()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    return v0
.end method

.method public hasShareUrl()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle:Z

    return v0
.end method

.method public hasWarningMessage()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 484
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_a6

    .line 488
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    :sswitch_d
    return-object p0

    .line 494
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 495
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setFinskyDoc(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 500
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 504
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 508
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 512
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setRelatedListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 516
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setMoreByListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 520
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 524
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 528
    :sswitch_52
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;-><init>()V

    .line 529
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 530
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 534
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 538
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setRelatedBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 542
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setMoreByBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 546
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setRelatedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 550
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setMoreByHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 554
    :sswitch_87
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 558
    :sswitch_90
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;-><init>()V

    .line 559
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 560
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 564
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    :sswitch_9d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setWarningMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 484
    :sswitch_data_a6
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3a
        0x3a -> :sswitch_42
        0x42 -> :sswitch_4a
        0x4a -> :sswitch_52
        0x52 -> :sswitch_5e
        0x5a -> :sswitch_66
        0x62 -> :sswitch_6e
        0x6a -> :sswitch_76
        0x72 -> :sswitch_7e
        0x7a -> :sswitch_87
        0x82 -> :sswitch_90
        0x8a -> :sswitch_9d
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    move-result-object v0

    return-object v0
.end method

.method public setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator:Z

    .line 226
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->creator_:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    .line 263
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->descriptionHtml_:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 242
    if-nez p1, :cond_8

    .line 243
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 245
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails:Z

    .line 246
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    .line 247
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->detailsUrl_:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid:Z

    .line 39
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->docid_:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public setFinskyDoc(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_8

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 23
    return-object p0
.end method

.method public setMoreByBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    .line 158
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByBrowseUrl_:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public setMoreByHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    .line 175
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByHeader_:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setMoreByListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    .line 141
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByListUrl_:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 279
    if-nez p1, :cond_8

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 282
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData:Z

    .line 283
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 284
    return-object p0
.end method

.method public setRelatedBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedBrowseUrl_:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setRelatedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    .line 124
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedHeader_:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setRelatedListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    .line 90
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedListUrl_:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    .line 73
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->reviewsUrl_:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl:Z

    .line 192
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->shareUrl_:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle:Z

    .line 209
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->title_:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setWarningMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 3
    .parameter "value"

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    .line 300
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->warningMessage_:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 346
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 347
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 349
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 350
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 352
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 353
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 355
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 356
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 358
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 359
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 361
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 362
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 364
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 365
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 367
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 368
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 370
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 371
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 373
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 374
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 376
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 377
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 379
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 380
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 382
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 383
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 385
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 386
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 388
    :cond_da
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 389
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 391
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 392
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getWarningMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 394
    :cond_f8
    return-void
.end method
