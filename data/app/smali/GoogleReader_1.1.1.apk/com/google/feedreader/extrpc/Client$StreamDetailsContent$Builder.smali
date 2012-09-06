.class public final Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamDetailsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;",
        "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$StreamDetailsContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private failedCrawlTimeUsec_:J

.field private feedUrl_:Ljava/lang/Object;

.field private lastFailureWasParseFailure_:Z

.field private streamDetailsError_:Z

.field private subscribers_:Ljava/lang/Object;

.field private successfulCrawlTimeUsec_:J

.field private trendsCharts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;",
            ">;"
        }
    .end annotation
.end field

.field private velocity_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    .line 27070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    .line 27169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    .line 27258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    .line 26805
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->maybeForceBuilderInitialization()V

    .line 26806
    return-void
.end method

.method static synthetic access$33000(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26799
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33100()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 1

    .prologue
    .line 26799
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26853
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    .line 26854
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 26855
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 26858
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 1

    .prologue
    .line 26811
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTrendsChartsIsMutable()V
    .registers 3

    .prologue
    .line 27172
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 27173
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    .line 27174
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27176
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26809
    return-void
.end method


# virtual methods
.method public addAllTrendsCharts(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;"
        }
    .end annotation

    .prologue
    .line 27239
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27240
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 27242
    return-object p0
.end method

.method public addTrendsCharts(ILcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 27232
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27233
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27235
    return-object p0
.end method

.method public addTrendsCharts(ILcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27215
    if-nez p2, :cond_8

    .line 27216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27218
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27219
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27221
    return-object p0
.end method

.method public addTrendsCharts(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 27225
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27226
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27228
    return-object p0
.end method

.method public addTrendsCharts(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 27205
    if-nez p1, :cond_8

    .line 27206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27208
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27209
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27211
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 3

    .prologue
    .line 26844
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    .line 26845
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26846
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26848
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 6

    .prologue
    .line 26862
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 26863
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26864
    const/4 v2, 0x0

    .line 26865
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26866
    or-int/lit8 v2, v2, 0x1

    .line 26868
    :cond_10
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->streamDetailsError_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->streamDetailsError_:Z
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33302(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Z)Z

    .line 26869
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 26870
    or-int/lit8 v2, v2, 0x2

    .line 26872
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->subscribers_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33402(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26873
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 26874
    or-int/lit8 v2, v2, 0x4

    .line 26876
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->velocity_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33502(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26877
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 26878
    or-int/lit8 v2, v2, 0x8

    .line 26880
    :cond_35
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->successfulCrawlTimeUsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->successfulCrawlTimeUsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33602(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;J)J

    .line 26881
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 26882
    or-int/lit8 v2, v2, 0x10

    .line 26884
    :cond_42
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->failedCrawlTimeUsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->failedCrawlTimeUsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33702(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;J)J

    .line 26885
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 26886
    or-int/lit8 v2, v2, 0x20

    .line 26888
    :cond_4f
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->lastFailureWasParseFailure_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->lastFailureWasParseFailure_:Z
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33802(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Z)Z

    .line 26889
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 26890
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    .line 26891
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26893
    :cond_6a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33902(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/util/List;)Ljava/util/List;

    .line 26894
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_80

    .line 26895
    or-int/lit8 v1, v2, 0x40

    .line 26897
    :goto_77
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->feedUrl_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$34002(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26898
    #setter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$34102(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;I)I

    .line 26899
    return-object v0

    :cond_80
    move v1, v2

    goto :goto_77
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 26815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26816
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->streamDetailsError_:Z

    .line 26817
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26818
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    .line 26819
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26820
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    .line 26821
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26822
    iput-wide v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->successfulCrawlTimeUsec_:J

    .line 26823
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26824
    iput-wide v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->failedCrawlTimeUsec_:J

    .line 26825
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26826
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->lastFailureWasParseFailure_:Z

    .line 26827
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26828
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    .line 26829
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26830
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    .line 26831
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26832
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFailedCrawlTimeUsec()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3

    .prologue
    .line 27141
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->failedCrawlTimeUsec_:J

    .line 27144
    return-object p0
.end method

.method public clearFeedUrl()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 27282
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27283
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    .line 27285
    return-object p0
.end method

.method public clearLastFailureWasParseFailure()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 27162
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->lastFailureWasParseFailure_:Z

    .line 27165
    return-object p0
.end method

.method public clearStreamDetailsError()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 27027
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->streamDetailsError_:Z

    .line 27030
    return-object p0
.end method

.method public clearSubscribers()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 27058
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27059
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSubscribers()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    .line 27061
    return-object p0
.end method

.method public clearSuccessfulCrawlTimeUsec()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3

    .prologue
    .line 27120
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->successfulCrawlTimeUsec_:J

    .line 27123
    return-object p0
.end method

.method public clearTrendsCharts()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 27245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    .line 27246
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27248
    return-object p0
.end method

.method public clearVelocity()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 2

    .prologue
    .line 27094
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27095
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getVelocity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    .line 27097
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3

    .prologue
    .line 26836
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

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
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    .registers 2

    .prologue
    .line 26840
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26799
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    return-object v0
.end method

.method public getFailedCrawlTimeUsec()J
    .registers 3

    .prologue
    .line 27132
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->failedCrawlTimeUsec_:J

    return-wide v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27263
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    .line 27264
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 27265
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27266
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 27269
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

.method public getLastFailureWasParseFailure()Z
    .registers 2

    .prologue
    .line 27153
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->lastFailureWasParseFailure_:Z

    return v0
.end method

.method public getStreamDetailsError()Z
    .registers 2

    .prologue
    .line 27018
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->streamDetailsError_:Z

    return v0
.end method

.method public getSubscribers()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27039
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    .line 27040
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 27041
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27042
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    move-object v2, v1

    .line 27045
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

.method public getSuccessfulCrawlTimeUsec()J
    .registers 3

    .prologue
    .line 27111
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->successfulCrawlTimeUsec_:J

    return-wide v0
.end method

.method public getTrendsCharts(I)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .parameter "index"

    .prologue
    .line 27185
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    return-object p0
.end method

.method public getTrendsChartsCount()I
    .registers 2

    .prologue
    .line 27182
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrendsChartsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27179
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVelocity()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27075
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    .line 27076
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 27077
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27078
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    move-object v2, v1

    .line 27081
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

.method public hasFailedCrawlTimeUsec()Z
    .registers 3

    .prologue
    .line 27129
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFeedUrl()Z
    .registers 3

    .prologue
    .line 27260
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLastFailureWasParseFailure()Z
    .registers 3

    .prologue
    .line 27150
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStreamDetailsError()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 27015
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSubscribers()Z
    .registers 3

    .prologue
    .line 27036
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

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

.method public hasSuccessfulCrawlTimeUsec()Z
    .registers 3

    .prologue
    .line 27108
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

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

.method public hasVelocity()Z
    .registers 3

    .prologue
    .line 27072
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 26939
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->getTrendsChartsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 26940
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->getTrendsCharts(I)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 26942
    const/4 v1, 0x0

    .line 26945
    :goto_12
    return v1

    .line 26939
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26945
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 26903
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 26935
    :goto_7
    return-object v0

    .line 26904
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasStreamDetailsError()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26905
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getStreamDetailsError()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->setStreamDetailsError(Z)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    .line 26907
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasSubscribers()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 26908
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSubscribers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->setSubscribers(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    .line 26910
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasVelocity()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 26911
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getVelocity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->setVelocity(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    .line 26913
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasSuccessfulCrawlTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 26914
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSuccessfulCrawlTimeUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->setSuccessfulCrawlTimeUsec(J)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    .line 26916
    :cond_3c
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasFailedCrawlTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 26917
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getFailedCrawlTimeUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->setFailedCrawlTimeUsec(J)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    .line 26919
    :cond_49
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasLastFailureWasParseFailure()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 26920
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getLastFailureWasParseFailure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->setLastFailureWasParseFailure(Z)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    .line 26922
    :cond_56
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33900(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 26923
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 26924
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33900(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    .line 26925
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26932
    :cond_74
    :goto_74
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasFeedUrl()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 26933
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->setFeedUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    :cond_81
    move-object v0, p0

    .line 26935
    goto :goto_7

    .line 26927
    :cond_83
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 26928
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->trendsCharts_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->access$33900(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_74
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 26954
    sparse-switch v0, :sswitch_data_7c

    .line 26959
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 26961
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 26957
    goto :goto_e

    .line 26966
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26967
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->streamDetailsError_:Z

    goto :goto_0

    .line 26971
    :sswitch_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26972
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    goto :goto_0

    .line 26976
    :sswitch_2b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26977
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    goto :goto_0

    .line 26981
    :sswitch_38
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26982
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->successfulCrawlTimeUsec_:J

    goto :goto_0

    .line 26986
    :sswitch_45
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26987
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->failedCrawlTimeUsec_:J

    goto :goto_0

    .line 26991
    :sswitch_52
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 26992
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->lastFailureWasParseFailure_:Z

    goto :goto_0

    .line 26996
    :sswitch_5f
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    .line 26997
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26998
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->addTrendsCharts(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    goto :goto_0

    .line 27002
    :sswitch_6e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27003
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 26954
    nop

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_11
        0x12 -> :sswitch_1e
        0x1a -> :sswitch_2b
        0x20 -> :sswitch_38
        0x28 -> :sswitch_45
        0x30 -> :sswitch_52
        0x3a -> :sswitch_5f
        0x42 -> :sswitch_6e
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
    .line 26799
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26799
    check-cast p1, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

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
    .line 26799
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeTrendsCharts(I)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 27251
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27252
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27254
    return-object p0
.end method

.method public setFailedCrawlTimeUsec(J)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27135
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27136
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->failedCrawlTimeUsec_:J

    .line 27138
    return-object p0
.end method

.method public setFeedUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27273
    if-nez p1, :cond_8

    .line 27274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27276
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27277
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    .line 27279
    return-object p0
.end method

.method setFeedUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 27288
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27289
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->feedUrl_:Ljava/lang/Object;

    .line 27291
    return-void
.end method

.method public setLastFailureWasParseFailure(Z)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27156
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27157
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->lastFailureWasParseFailure_:Z

    .line 27159
    return-object p0
.end method

.method public setStreamDetailsError(Z)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27021
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27022
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->streamDetailsError_:Z

    .line 27024
    return-object p0
.end method

.method public setSubscribers(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27049
    if-nez p1, :cond_8

    .line 27050
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27052
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27053
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    .line 27055
    return-object p0
.end method

.method setSubscribers(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 27064
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27065
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->subscribers_:Ljava/lang/Object;

    .line 27067
    return-void
.end method

.method public setSuccessfulCrawlTimeUsec(J)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27114
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27115
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->successfulCrawlTimeUsec_:J

    .line 27117
    return-object p0
.end method

.method public setTrendsCharts(ILcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27199
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27200
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27202
    return-object p0
.end method

.method public setTrendsCharts(ILcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27189
    if-nez p2, :cond_8

    .line 27190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27192
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->ensureTrendsChartsIsMutable()V

    .line 27193
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->trendsCharts_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27195
    return-object p0
.end method

.method public setVelocity(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27085
    if-nez p1, :cond_8

    .line 27086
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27088
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27089
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    .line 27091
    return-object p0
.end method

.method setVelocity(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 27100
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->bitField0_:I

    .line 27101
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$Builder;->velocity_:Ljava/lang/Object;

    .line 27103
    return-void
.end method
