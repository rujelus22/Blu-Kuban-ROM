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
.field private authorName_:Ljava/lang/String;

.field private cachedSize:I

.field private commentId_:Ljava/lang/String;

.field private comment_:Ljava/lang/String;

.field private deviceName_:Ljava/lang/String;

.field private documentVersion_:Ljava/lang/String;

.field private hasAuthorName:Z

.field private hasComment:Z

.field private hasCommentId:Z

.field private hasDeviceName:Z

.field private hasDocumentVersion:Z

.field private hasReplyText:Z

.field private hasReplyTimestampMsec:Z

.field private hasSource:Z

.field private hasStarRating:Z

.field private hasTimestampMsec:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private replyText_:Ljava/lang/String;

.field private replyTimestampMsec_:J

.field private source_:Ljava/lang/String;

.field private starRating_:I

.field private timestampMsec_:J

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 83
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    .line 202
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    if-gez v0, :cond_7

    .line 283
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSerializedSize()I

    .line 285
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTimestampMsec()J
    .registers 3

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 292
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 296
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 300
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 304
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 308
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 312
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 316
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 320
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 324
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 328
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 332
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 336
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_c6
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 340
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    return v0
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorName()Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    return v0
.end method

.method public hasComment()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    return v0
.end method

.method public hasCommentId()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    return v0
.end method

.method public hasDeviceName()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName:Z

    return v0
.end method

.method public hasDocumentVersion()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    return v0
.end method

.method public hasReplyText()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText:Z

    return v0
.end method

.method public hasReplyTimestampMsec()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec:Z

    return v0
.end method

.method public hasSource()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    return v0
.end method

.method public hasStarRating()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    return v0
.end method

.method public hasTimestampMsec()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 349
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6e

    .line 353
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :sswitch_d
    return-object p0

    .line 359
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 363
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 367
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 371
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 375
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 379
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 383
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 387
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 391
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 395
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDeviceName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 399
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setReplyText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 403
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setReplyTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 349
    :sswitch_data_6e
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
        0x9a -> :sswitch_56
        0xea -> :sswitch_5e
        0xf0 -> :sswitch_66
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

.method public setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    .line 139
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    .line 156
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName:Z

    .line 173
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setReplyText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText:Z

    .line 190
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setReplyTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 4
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec:Z

    .line 207
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    .line 208
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    .line 105
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 106
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 4
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    .line 88
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 89
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    .line 122
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 243
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 244
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 246
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 247
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 249
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 250
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 252
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 253
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 255
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 256
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 258
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 259
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 261
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 262
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 264
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 265
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 267
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 268
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 270
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 271
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 273
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 274
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 276
    :cond_ad
    return-void
.end method
