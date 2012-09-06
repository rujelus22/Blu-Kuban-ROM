.class public final Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$RecommendationList$RecommendationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;",
        "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$RecommendationList$RecommendationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private impressionTime_:J

.field private snippet_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22487
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    .line 22673
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    .line 22709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    .line 22488
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->maybeForceBuilderInitialization()V

    .line 22489
    return-void
.end method

.method static synthetic access$27500(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22482
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27600()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 1

    .prologue
    .line 22482
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22528
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    .line 22529
    .local v0, result:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 22530
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 22533
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 1

    .prologue
    .line 22494
    new-instance v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22492
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3

    .prologue
    .line 22519
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    .line 22520
    .local v0, result:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22521
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22523
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->build()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 6

    .prologue
    .line 22537
    new-instance v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;-><init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 22538
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22539
    const/4 v2, 0x0

    .line 22540
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22541
    or-int/lit8 v2, v2, 0x1

    .line 22543
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->access$27802(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22544
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22545
    or-int/lit8 v2, v2, 0x2

    .line 22547
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->snippet_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->access$27902(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22548
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 22549
    or-int/lit8 v2, v2, 0x4

    .line 22551
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->streamId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->access$28002(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22552
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3e

    .line 22553
    or-int/lit8 v1, v2, 0x8

    .line 22555
    :goto_35
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->impressionTime_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->impressionTime_:J
    invoke-static {v0, v2, v3}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->access$28102(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;J)J

    .line 22556
    #setter for: Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->access$28202(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;I)I

    .line 22557
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_35
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 3

    .prologue
    .line 22498
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    .line 22500
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    .line 22502
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    .line 22504
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22505
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->impressionTime_:J

    .line 22506
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22507
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->clear()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->clear()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearImpressionTime()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 3

    .prologue
    .line 22759
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->impressionTime_:J

    .line 22762
    return-object p0
.end method

.method public clearSnippet()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 2

    .prologue
    .line 22697
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22698
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    .line 22700
    return-object p0
.end method

.method public clearStreamId()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 2

    .prologue
    .line 22733
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22734
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    .line 22736
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 2

    .prologue
    .line 22661
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22662
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    .line 22664
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 3

    .prologue
    .line 22511
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

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
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 2

    .prologue
    .line 22515
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22482
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionTime()J
    .registers 3

    .prologue
    .line 22750
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->impressionTime_:J

    return-wide v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22678
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    .line 22679
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 22680
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22681
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    move-object v2, v1

    .line 22684
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22714
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    .line 22715
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 22716
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22717
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 22720
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22642
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    .line 22643
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 22644
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22645
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 22648
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasImpressionTime()Z
    .registers 3

    .prologue
    .line 22747
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

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

.method public hasSnippet()Z
    .registers 3

    .prologue
    .line 22675
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 22711
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 22639
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22578
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 22590
    :goto_8
    return v0

    .line 22582
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->hasStreamId()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 22584
    goto :goto_8

    .line 22586
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->hasImpressionTime()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    .line 22588
    goto :goto_8

    .line 22590
    :cond_19
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 22561
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 22574
    :goto_7
    return-object v0

    .line 22562
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 22563
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    .line 22565
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasSnippet()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 22566
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->setSnippet(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    .line 22568
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 22569
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    .line 22571
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasImpressionTime()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 22572
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getImpressionTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->setImpressionTime(J)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    :cond_3c
    move-object v0, p0

    .line 22574
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22599
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 22604
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22606
    :sswitch_d
    return-object p0

    .line 22611
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22612
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 22616
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    goto :goto_0

    .line 22621
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22622
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 22626
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22627
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->impressionTime_:J

    goto :goto_0

    .line 22599
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x28 -> :sswitch_35
    .end sparse-switch
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
    .line 22482
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22482
    check-cast p1, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

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
    .line 22482
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImpressionTime(J)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22753
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22754
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->impressionTime_:J

    .line 22756
    return-object p0
.end method

.method public setSnippet(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22688
    if-nez p1, :cond_8

    .line 22689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22691
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22692
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    .line 22694
    return-object p0
.end method

.method setSnippet(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 22703
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22704
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->snippet_:Ljava/lang/Object;

    .line 22706
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22724
    if-nez p1, :cond_8

    .line 22725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22727
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22728
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    .line 22730
    return-object p0
.end method

.method setStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 22739
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22740
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->streamId_:Ljava/lang/Object;

    .line 22742
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22652
    if-nez p1, :cond_8

    .line 22653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22655
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22656
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    .line 22658
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 22667
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->bitField0_:I

    .line 22668
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->title_:Ljava/lang/Object;

    .line 22670
    return-void
.end method
