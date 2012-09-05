.class public final Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppNotificationData"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutOrderId_:Ljava/lang/String;

.field private hasCheckoutOrderId:Z

.field private hasInAppNotificationId:Z

.field private inAppNotificationId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->checkoutOrderId_:Ljava/lang/String;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->inAppNotificationId_:Ljava/lang/String;

    .line 616
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    .line 558
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    if-gez v0, :cond_7

    .line 620
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getSerializedSize()I

    .line 622
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    return v0
.end method

.method public getCheckoutOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->checkoutOrderId_:Ljava/lang/String;

    return-object v0
.end method

.method public getInAppNotificationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->inAppNotificationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 628
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getCheckoutOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 631
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 632
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getInAppNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    .line 636
    return v0
.end method

.method public hasCheckoutOrderId()Z
    .registers 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId:Z

    return v0
.end method

.method public hasInAppNotificationId()Z
    .registers 2

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 644
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 648
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    :sswitch_d
    return-object p0

    .line 654
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->setCheckoutOrderId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    goto :goto_0

    .line 658
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->setInAppNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    goto :goto_0

    .line 644
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
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
    .line 556
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutOrderId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId:Z

    .line 568
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->checkoutOrderId_:Ljava/lang/String;

    .line 569
    return-object p0
.end method

.method public setInAppNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId:Z

    .line 585
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->inAppNotificationId_:Ljava/lang/String;

    .line 586
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
    .line 608
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 609
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getCheckoutOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 611
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 612
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getInAppNotificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 614
    :cond_1c
    return-void
.end method
