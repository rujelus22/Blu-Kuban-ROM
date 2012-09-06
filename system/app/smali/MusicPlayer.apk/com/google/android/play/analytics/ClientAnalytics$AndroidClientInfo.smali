.class public final Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidClientInfo"
.end annotation


# instance fields
.field private androidId_:J

.field private applicationBuild_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAndroidId:Z

.field private hasApplicationBuild:Z

.field private hasLoggingId:Z

.field private hasModel:Z

.field private hasOsBuild:Z

.field private hasProduct:Z

.field private hasSdkVersion:Z

.field private loggingId_:Ljava/lang/String;

.field private model_:Ljava/lang/String;

.field private osBuild_:Ljava/lang/String;

.field private product_:Ljava/lang/String;

.field private sdkVersion_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId_:J

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId_:Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion_:I

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model_:Ljava/lang/String;

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product_:Ljava/lang/String;

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild_:Ljava/lang/String;

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild_:Ljava/lang/String;

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    .line 298
    return-void
.end method


# virtual methods
.method public getAndroidId()J
    .registers 3

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId_:J

    return-wide v0
.end method

.method public getApplicationBuild()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 462
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 464
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getSerializedSize()I

    .line 466
    :cond_7
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    return v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId_:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild_:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasAndroidId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 472
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getAndroidId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasLoggingId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 476
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getLoggingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 480
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getSdkVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 484
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasProduct()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 488
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasOsBuild()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 492
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getOsBuild()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasApplicationBuild()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 496
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getApplicationBuild()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_71
    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    .line 500
    return v0
.end method

.method public hasAndroidId()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasAndroidId:Z

    return v0
.end method

.method public hasApplicationBuild()Z
    .registers 2

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasApplicationBuild:Z

    return v0
.end method

.method public hasLoggingId()Z
    .registers 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasLoggingId:Z

    return v0
.end method

.method public hasModel()Z
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasModel:Z

    return v0
.end method

.method public hasOsBuild()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasOsBuild:Z

    return v0
.end method

.method public hasProduct()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasProduct:Z

    return v0
.end method

.method public hasSdkVersion()Z
    .registers 2

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasSdkVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 508
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_46

    .line 512
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    :sswitch_d
    return-object p0

    .line 518
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setAndroidId(J)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    goto :goto_0

    .line 522
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    goto :goto_0

    .line 526
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setSdkVersion(I)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    goto :goto_0

    .line 530
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setModel(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    goto :goto_0

    .line 534
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setProduct(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    goto :goto_0

    .line 538
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setOsBuild(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    goto :goto_0

    .line 542
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setApplicationBuild(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    goto :goto_0

    .line 508
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
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
    .line 296
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasAndroidId:Z

    .line 308
    iput-wide p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId_:J

    .line 309
    return-object p0
.end method

.method public setApplicationBuild(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasApplicationBuild:Z

    .line 410
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild_:Ljava/lang/String;

    .line 411
    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasLoggingId:Z

    .line 325
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId_:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasModel:Z

    .line 359
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model_:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public setOsBuild(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasOsBuild:Z

    .line 393
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild_:Ljava/lang/String;

    .line 394
    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasProduct:Z

    .line 376
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product_:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setSdkVersion(I)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasSdkVersion:Z

    .line 342
    iput p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion_:I

    .line 343
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
    .line 437
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getAndroidId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 440
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasLoggingId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 441
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 443
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasSdkVersion()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 444
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getSdkVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 446
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 447
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 449
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasProduct()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 450
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 452
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasOsBuild()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 453
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getOsBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 455
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hasApplicationBuild()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 456
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getApplicationBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 458
    :cond_62
    return-void
.end method
