.class public final Lcom/google/goggles/FactsProtos$Fact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FactsProtos.java"

# interfaces
.implements Lcom/google/goggles/FactsProtos$FactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FactsProtos$Fact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/FactsProtos$Fact;",
        "Lcom/google/goggles/FactsProtos$Fact$Builder;",
        ">;",
        "Lcom/google/goggles/FactsProtos$FactOrBuilder;"
    }
.end annotation


# instance fields
.field private attribute_:Ljava/lang/Object;

.field private bitField0_:I

.field private confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

.field private urls_:Lcom/google/protobuf/LazyStringList;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    .line 518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 578
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 332
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->maybeForceBuilderInitialization()V

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 1

    .prologue
    .line 326
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact$Builder;->create()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Fact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 374
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 377
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 1

    .prologue
    .line 338
    new-instance v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    invoke-direct {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUrlsIsMutable()V
    .registers 3

    .prologue
    .line 580
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 581
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 582
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 584
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 336
    return-void
.end method


# virtual methods
.method public addAllUrls(Ljava/lang/Iterable;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/goggles/FactsProtos$Fact$Builder;"
        }
    .end annotation

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->ensureUrlsIsMutable()V

    .line 617
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 619
    return-object p0
.end method

.method public addUrls(Ljava/lang/String;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 3
    .parameter

    .prologue
    .line 606
    if-nez p1, :cond_8

    .line 607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 609
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->ensureUrlsIsMutable()V

    .line 610
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 612
    return-object p0
.end method

.method addUrls(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->ensureUrlsIsMutable()V

    .line 629
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 631
    return-void
.end method

.method public build()Lcom/google/goggles/FactsProtos$Fact;
    .registers 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Fact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 365
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 367
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->build()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/FactsProtos$Fact;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 381
    new-instance v2, Lcom/google/goggles/FactsProtos$Fact;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/FactsProtos$Fact;-><init>(Lcom/google/goggles/FactsProtos$Fact$Builder;Lcom/google/goggles/FactsProtos$1;)V

    .line 382
    iget v3, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 383
    const/4 v1, 0x0

    .line 384
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4b

    .line 387
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/FactsProtos$Fact;->attribute_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/FactsProtos$Fact;->access$302(Lcom/google/goggles/FactsProtos$Fact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 389
    or-int/lit8 v0, v0, 0x2

    .line 391
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/FactsProtos$Fact;->value_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/FactsProtos$Fact;->access$402(Lcom/google/goggles/FactsProtos$Fact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 393
    or-int/lit8 v0, v0, 0x4

    .line 395
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    #setter for: Lcom/google/goggles/FactsProtos$Fact;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    invoke-static {v2, v1}, Lcom/google/goggles/FactsProtos$Fact;->access$502(Lcom/google/goggles/FactsProtos$Fact;Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;)Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 396
    iget v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_42

    .line 397
    new-instance v1, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v1, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 399
    iget v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 401
    :cond_42
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v2, v1}, Lcom/google/goggles/FactsProtos$Fact;->access$602(Lcom/google/goggles/FactsProtos$Fact;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 402
    #setter for: Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/FactsProtos$Fact;->access$702(Lcom/google/goggles/FactsProtos$Fact;I)I

    .line 403
    return-object v2

    :cond_4b
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    .line 344
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 345
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    .line 346
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 347
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 348
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 349
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 350
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 351
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->clear()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->clear()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttribute()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 507
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Fact;->getAttribute()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    .line 509
    return-object p0
.end method

.method public clearConfidenceLevel()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2

    .prologue
    .line 571
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 572
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 574
    return-object p0
.end method

.method public clearUrls()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2

    .prologue
    .line 622
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 623
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 625
    return-object p0
.end method

.method public clearValue()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2

    .prologue
    .line 542
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 543
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Fact;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    .line 545
    return-object p0
.end method

.method public clone()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 3

    .prologue
    .line 355
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact$Builder;->create()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->clone()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->clone()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->clone()Lcom/google/goggles/FactsProtos$Fact$Builder;

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
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->clone()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    .line 488
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 489
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 490
    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    .line 493
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getConfidenceLevel()Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Fact;
    .registers 2

    .prologue
    .line 359
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public getUrls(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlsCount()I
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUrlsList()Ljava/util/List;
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
    .line 587
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    .line 524
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 525
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 526
    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    .line 529
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasAttribute()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 484
    iget v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasConfidenceLevel()Z
    .registers 3

    .prologue
    .line 556
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    .line 520
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

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
    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 4
    .parameter

    .prologue
    .line 407
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 427
    :cond_6
    :goto_6
    return-object p0

    .line 408
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact;->hasAttribute()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 409
    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact;->getAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->setAttribute(Ljava/lang/String;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    .line 411
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 412
    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->setValue(Ljava/lang/String;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    .line 414
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact;->hasConfidenceLevel()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 415
    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Fact;->getConfidenceLevel()Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->setConfidenceLevel(Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    .line 417
    :cond_2e
    #getter for: Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Fact;->access$600(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 418
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 419
    #getter for: Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Fact;->access$600(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 420
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    goto :goto_6

    .line 422
    :cond_4d
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->ensureUrlsIsMutable()V

    .line 423
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/FactsProtos$Fact;->access$600(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 440
    sparse-switch v0, :sswitch_data_48

    .line 445
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    :sswitch_d
    return-object p0

    .line 452
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 453
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    goto :goto_0

    .line 457
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 458
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 462
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 463
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->valueOf(I)Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_0

    .line 465
    iget v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 466
    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    goto :goto_0

    .line 471
    :sswitch_3b
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->ensureUrlsIsMutable()V

    .line 472
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 440
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_3b
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
    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 326
    check-cast p1, Lcom/google/goggles/FactsProtos$Fact;

    invoke-virtual {p0, p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Fact$Builder;

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
    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 3
    .parameter

    .prologue
    .line 497
    if-nez p1, :cond_8

    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 500
    :cond_8
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 501
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    .line 503
    return-object p0
.end method

.method setAttribute(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 512
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 513
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->attribute_:Ljava/lang/Object;

    .line 515
    return-void
.end method

.method public setConfidenceLevel(Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 3
    .parameter

    .prologue
    .line 562
    if-nez p1, :cond_8

    .line 563
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 565
    :cond_8
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 566
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 568
    return-object p0
.end method

.method public setUrls(ILjava/lang/String;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 597
    if-nez p2, :cond_8

    .line 598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 600
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->ensureUrlsIsMutable()V

    .line 601
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 3
    .parameter

    .prologue
    .line 533
    if-nez p1, :cond_8

    .line 534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 536
    :cond_8
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 537
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    .line 539
    return-object p0
.end method

.method setValue(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->bitField0_:I

    .line 549
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact$Builder;->value_:Ljava/lang/Object;

    .line 551
    return-void
.end method
