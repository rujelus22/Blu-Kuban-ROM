.class public final Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlusOneDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private countData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;"
        }
    .end annotation
.end field

.field private plusoneId_:Ljava/lang/Object;

.field private plusonedByViewer_:Z

.field private totalPlusoneCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10335
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 10613
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 10336
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->maybeForceBuilderInitialization()V

    .line 10337
    return-void
.end method

.method static synthetic access$13100(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10330
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13200()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 1

    .prologue
    .line 10330
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10376
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 10377
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10378
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10381
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 1

    .prologue
    .line 10342
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCountDataIsMutable()V
    .registers 3

    .prologue
    .line 10527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 10528
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 10529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10531
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10340
    return-void
.end method


# virtual methods
.method public addAllCountData(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;"
        }
    .end annotation

    .prologue
    .line 10594
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10595
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10597
    return-object p0
.end method

.method public addCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10587
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10588
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10590
    return-object p0
.end method

.method public addCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10570
    if-nez p2, :cond_8

    .line 10571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10573
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10574
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10576
    return-object p0
.end method

.method public addCountData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 10580
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10581
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10583
    return-object p0
.end method

.method public addCountData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10560
    if-nez p1, :cond_8

    .line 10561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10563
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10564
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10566
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 3

    .prologue
    .line 10367
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 10368
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10369
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10371
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 6

    .prologue
    .line 10385
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 10386
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10387
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10388
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10389
    or-int/lit8 v2, v2, 0x1

    .line 10391
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusonedByViewer_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13402(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Z

    .line 10392
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10393
    or-int/lit8 v2, v2, 0x2

    .line 10395
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->totalPlusoneCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13502(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)I

    .line 10396
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 10397
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 10398
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10400
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13602(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/util/List;)Ljava/util/List;

    .line 10401
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 10402
    or-int/lit8 v2, v2, 0x4

    .line 10404
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13702(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10405
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13802(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)I

    .line 10406
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10346
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10347
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    .line 10348
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10349
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    .line 10350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 10352
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10353
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 10354
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10355
    return-object p0
.end method

.method public clearCountData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 10600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 10601
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10603
    return-object p0
.end method

.method public clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 10637
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10638
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 10640
    return-object p0
.end method

.method public clearPlusonedByViewer()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 10496
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    .line 10499
    return-object p0
.end method

.method public clearTotalPlusoneCount()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 10517
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10518
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    .line 10520
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3

    .prologue
    .line 10359
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

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
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCountData(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 3
    .parameter "index"

    .prologue
    .line 10540
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    return-object v0
.end method

.method public getCountDataCount()I
    .registers 2

    .prologue
    .line 10537
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10534
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 10363
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10618
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 10619
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 10620
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10621
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 10624
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPlusonedByViewer()Z
    .registers 2

    .prologue
    .line 10487
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    return v0
.end method

.method public getTotalPlusoneCount()I
    .registers 2

    .prologue
    .line 10508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    return v0
.end method

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    .line 10615
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

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

.method public hasPlusonedByViewer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10484
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTotalPlusoneCount()Z
    .registers 3

    .prologue
    .line 10505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

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
    .line 10434
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10330
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10330
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10330
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10442
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10443
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 10448
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10450
    :sswitch_d
    return-object p0

    .line 10455
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10456
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    goto :goto_0

    .line 10460
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10461
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    goto :goto_0

    .line 10465
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    .line 10466
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10467
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->addCountData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_0

    .line 10471
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10472
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    goto :goto_0

    .line 10443
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10410
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10430
    :cond_6
    :goto_6
    return-object p0

    .line 10411
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusonedByViewer()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10412
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 10414
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasTotalPlusoneCount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 10415
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 10417
    :cond_21
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 10418
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 10419
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 10420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10427
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10428
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_6

    .line 10422
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10423
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public setCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10554
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10555
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10557
    return-object p0
.end method

.method public setCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10544
    if-nez p2, :cond_8

    .line 10545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10547
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 10548
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10550
    return-object p0
.end method

.method public setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10628
    if-nez p1, :cond_8

    .line 10629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10631
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10632
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 10634
    return-object p0
.end method

.method public setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10491
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    .line 10493
    return-object p0
.end method

.method public setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10511
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 10512
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    .line 10514
    return-object p0
.end method
