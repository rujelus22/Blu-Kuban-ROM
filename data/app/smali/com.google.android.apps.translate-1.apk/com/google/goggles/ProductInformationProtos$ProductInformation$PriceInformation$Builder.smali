.class public final Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;",
        ">;",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

.field private highPrice_:D

.field private lowPrice_:D

.field private priceSummary_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 389
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->maybeForceBuilderInitialization()V

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 1

    .prologue
    .line 383
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 431
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 434
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 1

    .prologue
    .line 395
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 393
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 422
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 424
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 438
    new-instance v2, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;-><init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;Lcom/google/goggles/ProductInformationProtos$1;)V

    .line 439
    iget v3, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 440
    const/4 v1, 0x0

    .line 441
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 444
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->priceSummary_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->access$302(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 446
    or-int/lit8 v0, v0, 0x2

    .line 448
    :cond_1a
    iget-wide v4, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->lowPrice_:D

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->lowPrice_:D
    invoke-static {v2, v4, v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->access$402(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;D)D

    .line 449
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 450
    or-int/lit8 v0, v0, 0x4

    .line 452
    :cond_26
    iget-wide v4, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->highPrice_:D

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->highPrice_:D
    invoke-static {v2, v4, v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->access$502(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;D)D

    .line 453
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 454
    or-int/lit8 v0, v0, 0x8

    .line 456
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->access$602(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 457
    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->access$702(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;I)I

    .line 458
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 399
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    .line 401
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 402
    iput-wide v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->lowPrice_:D

    .line 403
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 404
    iput-wide v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->highPrice_:D

    .line 405
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 406
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 407
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 408
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCondition()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 2

    .prologue
    .line 625
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 626
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 628
    return-object p0
.end method

.method public clearHighPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 3

    .prologue
    .line 601
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 602
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->highPrice_:D

    .line 604
    return-object p0
.end method

.method public clearLowPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 3

    .prologue
    .line 580
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->lowPrice_:D

    .line 583
    return-object p0
.end method

.method public clearPriceSummary()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 555
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getPriceSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    .line 557
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 3

    .prologue
    .line 412
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

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
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2

    .prologue
    .line 416
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public getHighPrice()D
    .registers 3

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->highPrice_:D

    return-wide v0
.end method

.method public getLowPrice()D
    .registers 3

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->lowPrice_:D

    return-wide v0
.end method

.method public getPriceSummary()Ljava/lang/String;
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    .line 536
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 537
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 538
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    .line 541
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasCondition()Z
    .registers 3

    .prologue
    .line 610
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHighPrice()Z
    .registers 3

    .prologue
    .line 589
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLowPrice()Z
    .registers 3

    .prologue
    .line 568
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

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

.method public hasPriceSummary()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 532
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 462
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 475
    :cond_6
    :goto_6
    return-object p0

    .line 463
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->hasPriceSummary()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 464
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getPriceSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->setPriceSummary(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    .line 466
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->hasLowPrice()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 467
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getLowPrice()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->setLowPrice(D)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    .line 469
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->hasHighPrice()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 470
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getHighPrice()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->setHighPrice(D)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    .line 472
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->hasCondition()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 473
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getCondition()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->setCondition(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 488
    sparse-switch v0, :sswitch_data_48

    .line 493
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :sswitch_d
    return-object p0

    .line 500
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 501
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    goto :goto_0

    .line 505
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 506
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->lowPrice_:D

    goto :goto_0

    .line 510
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->highPrice_:D

    goto :goto_0

    .line 515
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 516
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->valueOf(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_0

    .line 518
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 519
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    goto :goto_0

    .line 488
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x11 -> :sswitch_1b
        0x19 -> :sswitch_28
        0x20 -> :sswitch_35
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
    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 383
    check-cast p1, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

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
    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCondition(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 616
    if-nez p1, :cond_8

    .line 617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 620
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 622
    return-object p0
.end method

.method public setHighPrice(D)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 595
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 596
    iput-wide p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->highPrice_:D

    .line 598
    return-object p0
.end method

.method public setLowPrice(D)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 574
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 575
    iput-wide p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->lowPrice_:D

    .line 577
    return-object p0
.end method

.method public setPriceSummary(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 545
    if-nez p1, :cond_8

    .line 546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 548
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 549
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    .line 551
    return-object p0
.end method

.method setPriceSummary(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 560
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->bitField0_:I

    .line 561
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->priceSummary_:Ljava/lang/Object;

    .line 563
    return-void
.end method
