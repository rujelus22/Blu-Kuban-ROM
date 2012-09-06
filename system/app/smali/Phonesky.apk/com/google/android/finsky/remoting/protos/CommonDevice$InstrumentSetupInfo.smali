.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrumentSetupInfo"
.end annotation


# instance fields
.field private addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

.field private balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

.field private cachedSize:I

.field private footerHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasAddressChallenge:Z

.field private hasBalance:Z

.field private hasInstrumentFamily:Z

.field private hasSupported:Z

.field private instrumentFamily_:I

.field private supported_:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2284
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2289
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->instrumentFamily_:I

    .line 2306
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->supported_:Z

    .line 2323
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 2343
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    .line 2362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    .line 2433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    .line 2284
    return-void
.end method


# virtual methods
.method public addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2379
    if-nez p1, :cond_8

    .line 2380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2382
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    .line 2385
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    return-object p0
.end method

.method public getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .registers 2

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    return-object v0
.end method

.method public getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    .registers 2

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2436
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 2438
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getSerializedSize()I

    .line 2440
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    return v0
.end method

.method public getFooterHtmlList()Ljava/util/List;
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
    .line 2365
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    return-object v0
.end method

.method public getInstrumentFamily()I
    .registers 2

    .prologue
    .line 2291
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->instrumentFamily_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 2445
    const/4 v3, 0x0

    .line 2446
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2447
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getInstrumentFamily()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2450
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2451
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getSupported()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2454
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2455
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2458
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2459
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2463
    :cond_41
    const/4 v0, 0x0

    .line 2464
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2465
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4a

    .line 2468
    .end local v1           #element:Ljava/lang/String;
    :cond_5c
    add-int/2addr v3, v0

    .line 2469
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2471
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    .line 2472
    return v3
.end method

.method public getSupported()Z
    .registers 2

    .prologue
    .line 2307
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->supported_:Z

    return v0
.end method

.method public hasAddressChallenge()Z
    .registers 2

    .prologue
    .line 2324
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge:Z

    return v0
.end method

.method public hasBalance()Z
    .registers 2

    .prologue
    .line 2344
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance:Z

    return v0
.end method

.method public hasInstrumentFamily()Z
    .registers 2

    .prologue
    .line 2290
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily:Z

    return v0
.end method

.method public hasSupported()Z
    .registers 2

    .prologue
    .line 2308
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2480
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2481
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 2485
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2486
    :sswitch_d
    return-object p0

    .line 2491
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2495
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setSupported(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2499
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;-><init>()V

    .line 2500
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2501
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2505
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    :sswitch_2a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;-><init>()V

    .line 2506
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2507
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setBalance(Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2511
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2481
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_36
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
    .line 2281
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2327
    if-nez p1, :cond_8

    .line 2328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2330
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge:Z

    .line 2331
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 2332
    return-object p0
.end method

.method public setBalance(Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2347
    if-nez p1, :cond_8

    .line 2348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2350
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance:Z

    .line 2351
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    .line 2352
    return-object p0
.end method

.method public setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily:Z

    .line 2294
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->instrumentFamily_:I

    .line 2295
    return-object p0
.end method

.method public setSupported(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported:Z

    .line 2311
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->supported_:Z

    .line 2312
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
    .line 2416
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2417
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getInstrumentFamily()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2419
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2420
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getSupported()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2422
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2423
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2425
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2426
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2428
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2429
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_40

    .line 2431
    .end local v0           #element:Ljava/lang/String;
    :cond_51
    return-void
.end method
