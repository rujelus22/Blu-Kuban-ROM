.class public final Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CheckPromoOffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CheckPromoOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedeemedPromoOffer"
.end annotation


# instance fields
.field private cachedSize:I

.field private descriptionHtml_:Ljava/lang/String;

.field private hasDescriptionHtml:Z

.field private hasHeaderText:Z

.field private hasImage:Z

.field private headerText_:Ljava/lang/String;

.field private image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->headerText_:Ljava/lang/String;

    .line 495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->descriptionHtml_:Ljava/lang/String;

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->cachedSize:I

    .line 473
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 561
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->cachedSize:I

    if-gez v0, :cond_7

    .line 563
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getSerializedSize()I

    .line 565
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->cachedSize:I

    return v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->headerText_:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasHeaderText()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 572
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 576
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 579
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 580
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->cachedSize:I

    .line 584
    return v0
.end method

.method public hasDescriptionHtml()Z
    .registers 2

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasHeaderText()Z
    .registers 2

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasHeaderText:Z

    return v0
.end method

.method public hasImage()Z
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasImage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 593
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2a

    .line 597
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    :sswitch_d
    return-object p0

    .line 603
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->setHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    goto :goto_0

    .line 607
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    goto :goto_0

    .line 611
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 612
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 613
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    goto :goto_0

    .line 593
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    .line 470
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    move-result-object v0

    return-object v0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasDescriptionHtml:Z

    .line 500
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->descriptionHtml_:Ljava/lang/String;

    .line 501
    return-object p0
.end method

.method public setHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasHeaderText:Z

    .line 483
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->headerText_:Ljava/lang/String;

    .line 484
    return-object p0
.end method

.method public setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 516
    if-nez p1, :cond_8

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 519
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasImage:Z

    .line 520
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 521
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
    .line 547
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasHeaderText()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 550
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 551
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 553
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 554
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 556
    :cond_2a
    return-void
.end method
