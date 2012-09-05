.class public final Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$VideoDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$VideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoData;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private duration_:J

.field private status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

.field private stream_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15431
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15568
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 15432
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->maybeForceBuilderInitialization()V

    .line 15433
    return-void
.end method

.method static synthetic access$20500(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15426
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20600()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 1

    .prologue
    .line 15426
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    .line 15471
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 15472
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 15475
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 1

    .prologue
    .line 15438
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreamIsMutable()V
    .registers 3

    .prologue
    .line 15595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 15596
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 15597
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15599
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15436
    return-void
.end method


# virtual methods
.method public addAllStream(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;"
        }
    .end annotation

    .prologue
    .line 15662
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$VideoStream;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15663
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15665
    return-object p0
.end method

.method public addStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15655
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15656
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15658
    return-object p0
.end method

.method public addStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15638
    if-nez p2, :cond_8

    .line 15639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15641
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15642
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15644
    return-object p0
.end method

.method public addStream(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 15648
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15649
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15651
    return-object p0
.end method

.method public addStream(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15628
    if-nez p1, :cond_8

    .line 15629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15631
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15632
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15634
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 3

    .prologue
    .line 15461
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    .line 15462
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15463
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15465
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 6

    .prologue
    .line 15479
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 15480
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15481
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15482
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15483
    or-int/lit8 v2, v2, 0x1

    .line 15485
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$20802(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15486
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 15487
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 15488
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15490
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$20902(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Ljava/util/List;)Ljava/util/List;

    .line 15491
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 15492
    or-int/lit8 v2, v2, 0x2

    .line 15494
    :cond_36
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$21002(Lcom/google/wireless/tacotruck/proto/Data$VideoData;J)J

    .line 15495
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$21102(Lcom/google/wireless/tacotruck/proto/Data$VideoData;I)I

    .line 15496
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3

    .prologue
    .line 15442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15443
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15444
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 15446
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15447
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    .line 15448
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15449
    return-object p0
.end method

.method public clearDuration()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3

    .prologue
    .line 15695
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15696
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    .line 15698
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2

    .prologue
    .line 15585
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15586
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15588
    return-object p0
.end method

.method public clearStream()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2

    .prologue
    .line 15668
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 15669
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15671
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3

    .prologue
    .line 15453
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

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
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15426
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 15457
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 15686
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2

    .prologue
    .line 15573
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object v0
.end method

.method public getStream(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 3
    .parameter "index"

    .prologue
    .line 15608
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method public getStreamCount()I
    .registers 2

    .prologue
    .line 15605
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStreamList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15602
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 15683
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15570
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 15426
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

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
    .line 15426
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15529
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 15530
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_3e

    .line 15535
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15537
    :sswitch_d
    return-object p0

    .line 15542
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 15543
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v3

    .line 15544
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    if-eqz v3, :cond_0

    .line 15545
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15546
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    goto :goto_0

    .line 15551
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v1

    .line 15552
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15553
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->addStream(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    goto :goto_0

    .line 15557
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    :sswitch_30
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15558
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    goto :goto_0

    .line 15530
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_30
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 15500
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15517
    :cond_6
    :goto_6
    return-object p0

    .line 15501
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15502
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->setStatus(Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    .line 15504
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$20900(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 15505
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 15506
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$20900(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 15507
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15514
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15515
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    goto :goto_6

    .line 15509
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15510
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$20900(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15689
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15690
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    .line 15692
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15576
    if-nez p1, :cond_8

    .line 15577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15579
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 15580
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15582
    return-object p0
.end method

.method public setStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15622
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15623
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15625
    return-object p0
.end method

.method public setStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15612
    if-nez p2, :cond_8

    .line 15613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15615
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 15616
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15618
    return-object p0
.end method
