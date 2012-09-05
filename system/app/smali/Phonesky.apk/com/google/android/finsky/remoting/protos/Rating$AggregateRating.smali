.class public final Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregateRating"
.end annotation


# instance fields
.field private bayesianMeanRating_:D

.field private cachedSize:I

.field private commentCount_:J

.field private fiveStarRatings_:J

.field private fourStarRatings_:J

.field private hasBayesianMeanRating:Z

.field private hasCommentCount:Z

.field private hasFiveStarRatings:Z

.field private hasFourStarRatings:Z

.field private hasOneStarRatings:Z

.field private hasRatingsCount:Z

.field private hasStarRating:Z

.field private hasThreeStarRatings:Z

.field private hasThumbsDownCount:Z

.field private hasThumbsUpCount:Z

.field private hasTwoStarRatings:Z

.field private hasType:Z

.field private oneStarRatings_:J

.field private ratingsCount_:J

.field private starRating_:F

.field private threeStarRatings_:J

.field private thumbsDownCount_:J

.field private thumbsUpCount_:J

.field private twoStarRatings_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    .line 150
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    .line 167
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->commentCount_:J

    .line 184
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    .line 201
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    .line 218
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    .line 235
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    .line 252
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    .line 269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->bayesianMeanRating_:D

    .line 286
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    .line 303
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    .line 106
    return-void
.end method


# virtual methods
.method public getBayesianMeanRating()D
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->bayesianMeanRating_:D

    return-wide v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    if-gez v0, :cond_7

    .line 383
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getSerializedSize()I

    .line 385
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    return v0
.end method

.method public getCommentCount()J
    .registers 3

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->commentCount_:J

    return-wide v0
.end method

.method public getFiveStarRatings()J
    .registers 3

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    return-wide v0
.end method

.method public getFourStarRatings()J
    .registers 3

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    return-wide v0
.end method

.method public getOneStarRatings()J
    .registers 3

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    return-wide v0
.end method

.method public getRatingsCount()J
    .registers 3

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 391
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 395
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 399
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 403
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getOneStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 407
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getTwoStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 411
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThreeStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 415
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFourStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 419
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFiveStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 423
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsUpCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 427
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsDownCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 431
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getCommentCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 435
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getBayesianMeanRating()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_c6
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    .line 439
    return v0
.end method

.method public getStarRating()F
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    return v0
.end method

.method public getThreeStarRatings()J
    .registers 3

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    return-wide v0
.end method

.method public getThumbsDownCount()J
    .registers 3

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    return-wide v0
.end method

.method public getThumbsUpCount()J
    .registers 3

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    return-wide v0
.end method

.method public getTwoStarRatings()J
    .registers 3

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    return v0
.end method

.method public hasBayesianMeanRating()Z
    .registers 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    return v0
.end method

.method public hasCommentCount()Z
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount:Z

    return v0
.end method

.method public hasFiveStarRatings()Z
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    return v0
.end method

.method public hasFourStarRatings()Z
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    return v0
.end method

.method public hasOneStarRatings()Z
    .registers 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    return v0
.end method

.method public hasRatingsCount()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount:Z

    return v0
.end method

.method public hasStarRating()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating:Z

    return v0
.end method

.method public hasThreeStarRatings()Z
    .registers 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    return v0
.end method

.method public hasThumbsDownCount()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    return v0
.end method

.method public hasThumbsUpCount()Z
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    return v0
.end method

.method public hasTwoStarRatings()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 447
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6e

    .line 451
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    :sswitch_d
    return-object p0

    .line 457
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setType(I)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 461
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setStarRating(F)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 465
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setRatingsCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 469
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setOneStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 473
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setTwoStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 477
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThreeStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 481
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setFourStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 485
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setFiveStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 489
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThumbsUpCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 493
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThumbsDownCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 497
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setCommentCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 501
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setBayesianMeanRating(D)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 447
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x15 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x30 -> :sswitch_36
        0x38 -> :sswitch_3e
        0x40 -> :sswitch_46
        0x48 -> :sswitch_4e
        0x50 -> :sswitch_56
        0x58 -> :sswitch_5e
        0x61 -> :sswitch_66
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
    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    return-object v0
.end method

.method public setBayesianMeanRating(D)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    .line 274
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->bayesianMeanRating_:D

    .line 275
    return-object p0
.end method

.method public setCommentCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount:Z

    .line 172
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->commentCount_:J

    .line 173
    return-object p0
.end method

.method public setFiveStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    .line 257
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    .line 258
    return-object p0
.end method

.method public setFourStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    .line 240
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    .line 241
    return-object p0
.end method

.method public setOneStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    .line 189
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    .line 190
    return-object p0
.end method

.method public setRatingsCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount:Z

    .line 155
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    .line 156
    return-object p0
.end method

.method public setStarRating(F)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 3
    .parameter "value"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating:Z

    .line 138
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    .line 139
    return-object p0
.end method

.method public setThreeStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    .line 223
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    .line 224
    return-object p0
.end method

.method public setThumbsDownCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    .line 308
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    .line 309
    return-object p0
.end method

.method public setThumbsUpCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    .line 291
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    .line 292
    return-object p0
.end method

.method public setTwoStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 4
    .parameter "value"

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    .line 206
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    .line 207
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 3
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType:Z

    .line 121
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    .line 122
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
    .line 341
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 344
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 345
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 347
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 348
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 350
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 351
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getOneStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 353
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 354
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getTwoStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 356
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 357
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThreeStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 359
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 360
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFourStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 362
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 363
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFiveStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 365
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 366
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsUpCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 368
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 369
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsDownCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 371
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 372
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getCommentCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 374
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 375
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getBayesianMeanRating()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 377
    :cond_ad
    return-void
.end method
