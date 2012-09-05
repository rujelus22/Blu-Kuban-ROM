.class public final Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserNotificationData"
.end annotation


# instance fields
.field private cachedSize:I

.field private dialogText_:Ljava/lang/String;

.field private dialogTitle_:Ljava/lang/String;

.field private hasDialogText:Z

.field private hasDialogTitle:Z

.field private hasNotificationText:Z

.field private hasNotificationTitle:Z

.field private hasTickerText:Z

.field private notificationText_:Ljava/lang/String;

.field private notificationTitle_:Ljava/lang/String;

.field private tickerText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationTitle_:Ljava/lang/String;

    .line 372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationText_:Ljava/lang/String;

    .line 389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->tickerText_:Ljava/lang/String;

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogTitle_:Ljava/lang/String;

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogText_:Ljava/lang/String;

    .line 470
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    .line 350
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 472
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    if-gez v0, :cond_7

    .line 474
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getSerializedSize()I

    .line 476
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    return v0
.end method

.method public getDialogText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationText_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 482
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 486
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 490
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getTickerText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 494
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 498
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    .line 502
    return v0
.end method

.method public getTickerText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->tickerText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDialogText()Z
    .registers 2

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText:Z

    return v0
.end method

.method public hasDialogTitle()Z
    .registers 2

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle:Z

    return v0
.end method

.method public hasNotificationText()Z
    .registers 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText:Z

    return v0
.end method

.method public hasNotificationTitle()Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle:Z

    return v0
.end method

.method public hasTickerText()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 510
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 514
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    :sswitch_d
    return-object p0

    .line 520
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setNotificationTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 524
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setNotificationText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 528
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setTickerText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 532
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setDialogTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 536
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setDialogText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 510
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
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
    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    move-result-object v0

    return-object v0
.end method

.method public setDialogText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText:Z

    .line 428
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogText_:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public setDialogTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle:Z

    .line 411
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogTitle_:Ljava/lang/String;

    .line 412
    return-object p0
.end method

.method public setNotificationText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText:Z

    .line 377
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationText_:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle:Z

    .line 360
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationTitle_:Ljava/lang/String;

    .line 361
    return-object p0
.end method

.method public setTickerText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText:Z

    .line 394
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->tickerText_:Ljava/lang/String;

    .line 395
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
    .line 453
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 456
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 457
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 459
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 460
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getTickerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 462
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 463
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 465
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 466
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 468
    :cond_46
    return-void
.end method
