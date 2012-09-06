.class public final Lcom/google/goggles/GogglesProtos$Audio$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$AudioOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/GogglesProtos$Audio;",
        "Lcom/google/goggles/GogglesProtos$Audio$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$AudioOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private sampleRateHz_:F


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2491
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2601
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 2492
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->maybeForceBuilderInitialization()V

    .line 2493
    return-void
.end method

.method static synthetic access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2486
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 1

    .prologue
    .line 2486
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->create()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    .line 2529
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Audio;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2530
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2533
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 1

    .prologue
    .line 2498
    new-instance v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2496
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 3

    .prologue
    .line 2519
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    .line 2520
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Audio;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2521
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2523
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->build()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2537
    new-instance v2, Lcom/google/goggles/GogglesProtos$Audio;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesProtos$Audio;-><init>(Lcom/google/goggles/GogglesProtos$Audio$Builder;Lcom/google/goggles/GogglesProtos$1;)V

    .line 2538
    iget v3, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2539
    const/4 v1, 0x0

    .line 2540
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 2543
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->data_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/goggles/GogglesProtos$Audio;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$Audio;->access$3602(Lcom/google/goggles/GogglesProtos$Audio;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2544
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 2545
    or-int/lit8 v0, v0, 0x2

    .line 2547
    :cond_1a
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->sampleRateHz_:F

    #setter for: Lcom/google/goggles/GogglesProtos$Audio;->sampleRateHz_:F
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$Audio;->access$3702(Lcom/google/goggles/GogglesProtos$Audio;F)F

    .line 2548
    #setter for: Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesProtos$Audio;->access$3802(Lcom/google/goggles/GogglesProtos$Audio;I)I

    .line 2549
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 2

    .prologue
    .line 2502
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2503
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 2504
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2505
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->sampleRateHz_:F

    .line 2506
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2507
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->clear()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->clear()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 2

    .prologue
    .line 2618
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2619
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Audio;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 2621
    return-object p0
.end method

.method public clearSampleRateHz()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 2

    .prologue
    .line 2639
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2640
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->sampleRateHz_:F

    .line 2642
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 3

    .prologue
    .line 2511
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->create()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->clone()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->clone()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->clone()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->clone()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2

    .prologue
    .line 2515
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateHz()F
    .registers 2

    .prologue
    .line 2630
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->sampleRateHz_:F

    return v0
.end method

.method public hasData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2603
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSampleRateHz()Z
    .registers 3

    .prologue
    .line 2627
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2564
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2553
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2560
    :cond_6
    :goto_6
    return-object p0

    .line 2554
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Audio;->hasData()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2555
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Audio;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    .line 2557
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Audio;->hasSampleRateHz()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2558
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Audio;->getSampleRateHz()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->setSampleRateHz(F)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2573
    sparse-switch v0, :sswitch_data_28

    .line 2578
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2580
    :sswitch_d
    return-object p0

    .line 2585
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2586
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->data_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2590
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2591
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->sampleRateHz_:F

    goto :goto_0

    .line 2573
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x1d -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2486
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2486
    check-cast p1, Lcom/google/goggles/GogglesProtos$Audio;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2486
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2609
    if-nez p1, :cond_8

    .line 2610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2612
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2613
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 2615
    return-object p0
.end method

.method public setSampleRateHz(F)Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2633
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->bitField0_:I

    .line 2634
    iput p1, p0, Lcom/google/goggles/GogglesProtos$Audio$Builder;->sampleRateHz_:F

    .line 2636
    return-object p0
.end method
