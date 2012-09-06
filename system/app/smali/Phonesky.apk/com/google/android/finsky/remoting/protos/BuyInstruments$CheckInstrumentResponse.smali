.class public final Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckInstrumentResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutTokenRequired_:Z

.field private eligibleInstrument_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private hasCheckoutTokenRequired:Z

.field private hasUserHasValidInstrument:Z

.field private instrument_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private userHasValidInstrument_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 425
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->userHasValidInstrument_:Z

    .line 442
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->checkoutTokenRequired_:Z

    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->instrument_:Ljava/util/List;

    .line 491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->eligibleInstrument_:Ljava/util/List;

    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->cachedSize:I

    .line 420
    return-void
.end method


# virtual methods
.method public addEligibleInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 508
    if-nez p1, :cond_8

    .line 509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 511
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->eligibleInstrument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->eligibleInstrument_:Ljava/util/List;

    .line 514
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->eligibleInstrument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    return-object p0
.end method

.method public addInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 475
    if-nez p1, :cond_8

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->instrument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->instrument_:Ljava/util/List;

    .line 481
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->instrument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 561
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 563
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getSerializedSize()I

    .line 565
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutTokenRequired()Z
    .registers 2

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getEligibleInstrumentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->eligibleInstrument_:Ljava/util/List;

    return-object v0
.end method

.method public getInstrumentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->instrument_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 570
    const/4 v2, 0x0

    .line 571
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasUserHasValidInstrument()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 572
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getUserHasValidInstrument()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 575
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasCheckoutTokenRequired()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 576
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 579
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getInstrumentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 580
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_29

    .line 583
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getEligibleInstrumentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 584
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_44

    .line 587
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_57
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->cachedSize:I

    .line 588
    return v2
.end method

.method public getUserHasValidInstrument()Z
    .registers 2

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->userHasValidInstrument_:Z

    return v0
.end method

.method public hasCheckoutTokenRequired()Z
    .registers 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasUserHasValidInstrument()Z
    .registers 2

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasUserHasValidInstrument:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 597
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 601
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    :sswitch_d
    return-object p0

    .line 607
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->setUserHasValidInstrument(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    goto :goto_0

    .line 611
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    goto :goto_0

    .line 615
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 616
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 617
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->addInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    goto :goto_0

    .line 621
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :sswitch_2a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 622
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 623
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->addEligibleInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    goto :goto_0

    .line 597
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x22 -> :sswitch_1e
        0x2a -> :sswitch_2a
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
    .line 417
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasCheckoutTokenRequired:Z

    .line 447
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->checkoutTokenRequired_:Z

    .line 448
    return-object p0
.end method

.method public setUserHasValidInstrument(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasUserHasValidInstrument:Z

    .line 430
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->userHasValidInstrument_:Z

    .line 431
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
    .line 544
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasUserHasValidInstrument()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 545
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getUserHasValidInstrument()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 547
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->hasCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 548
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 550
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getInstrumentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 551
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_24

    .line 553
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getEligibleInstrumentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 554
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3d

    .line 556
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_4e
    return-void
.end method
