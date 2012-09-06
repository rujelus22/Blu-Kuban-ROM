.class public final Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TrendsDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$TrendsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$TrendsData;",
        "Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$TrendsDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chartHeight_:I

.field private chartJsonUrl_:Ljava/lang/Object;

.field private chartUrl_:Ljava/lang/Object;

.field private chartValues_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;",
            ">;"
        }
    .end annotation
.end field

.field private chartWidth_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25586
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    .line 25858
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    .line 25894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    .line 25587
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->maybeForceBuilderInitialization()V

    .line 25588
    return-void
.end method

.method static synthetic access$31500(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25581
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31600()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 1

    .prologue
    .line 25581
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->create()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25629
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    .line 25630
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 25631
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 25634
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 1

    .prologue
    .line 25593
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureChartValuesIsMutable()V
    .registers 3

    .prologue
    .line 25772
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 25773
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    .line 25774
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25776
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25591
    return-void
.end method


# virtual methods
.method public addAllChartValues(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;"
        }
    .end annotation

    .prologue
    .line 25839
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25840
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 25842
    return-object p0
.end method

.method public addChartValues(ILcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 25832
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25833
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->build()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25835
    return-object p0
.end method

.method public addChartValues(ILcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 25815
    if-nez p2, :cond_8

    .line 25816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25818
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25819
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25821
    return-object p0
.end method

.method public addChartValues(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 25825
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25826
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->build()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25828
    return-object p0
.end method

.method public addChartValues(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 25805
    if-nez p1, :cond_8

    .line 25806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25808
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25809
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25811
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 3

    .prologue
    .line 25620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    .line 25621
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TrendsData;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25622
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25624
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->build()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 6

    .prologue
    .line 25638
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TrendsData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData;-><init>(Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 25639
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25640
    const/4 v2, 0x0

    .line 25641
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 25642
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    .line 25643
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25645
    :cond_1e
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$31802(Lcom/google/feedreader/extrpc/Client$TrendsData;Ljava/util/List;)Ljava/util/List;

    .line 25646
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 25647
    or-int/lit8 v2, v2, 0x1

    .line 25649
    :cond_2a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartUrl_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$31902(Lcom/google/feedreader/extrpc/Client$TrendsData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25650
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 25651
    or-int/lit8 v2, v2, 0x2

    .line 25653
    :cond_36
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartJsonUrl_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$32002(Lcom/google/feedreader/extrpc/Client$TrendsData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25654
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 25655
    or-int/lit8 v2, v2, 0x4

    .line 25657
    :cond_43
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartWidth_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartWidth_:I
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$32102(Lcom/google/feedreader/extrpc/Client$TrendsData;I)I

    .line 25658
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_59

    .line 25659
    or-int/lit8 v1, v2, 0x8

    .line 25661
    :goto_50
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartHeight_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartHeight_:I
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$32202(Lcom/google/feedreader/extrpc/Client$TrendsData;I)I

    .line 25662
    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$32302(Lcom/google/feedreader/extrpc/Client$TrendsData;I)I

    .line 25663
    return-object v0

    :cond_59
    move v1, v2

    goto :goto_50
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25597
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25598
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    .line 25599
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    .line 25601
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    .line 25603
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25604
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartWidth_:I

    .line 25605
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25606
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartHeight_:I

    .line 25607
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25608
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearChartHeight()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2

    .prologue
    .line 25965
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25966
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartHeight_:I

    .line 25968
    return-object p0
.end method

.method public clearChartJsonUrl()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2

    .prologue
    .line 25918
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25919
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartJsonUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    .line 25921
    return-object p0
.end method

.method public clearChartUrl()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2

    .prologue
    .line 25882
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25883
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    .line 25885
    return-object p0
.end method

.method public clearChartValues()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2

    .prologue
    .line 25845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    .line 25846
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25848
    return-object p0
.end method

.method public clearChartWidth()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 2

    .prologue
    .line 25944
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25945
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartWidth_:I

    .line 25947
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3

    .prologue
    .line 25612
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->create()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

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
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChartHeight()I
    .registers 2

    .prologue
    .line 25956
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartHeight_:I

    return v0
.end method

.method public getChartJsonUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25899
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    .line 25900
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 25901
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25902
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 25905
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

.method public getChartUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25863
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    .line 25864
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 25865
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25866
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 25869
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

.method public getChartValues(I)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 25785
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    return-object p0
.end method

.method public getChartValuesCount()I
    .registers 2

    .prologue
    .line 25782
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChartValuesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25779
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChartWidth()I
    .registers 2

    .prologue
    .line 25935
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartWidth_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2

    .prologue
    .line 25616
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25581
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    return-object v0
.end method

.method public hasChartHeight()Z
    .registers 3

    .prologue
    .line 25953
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

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

.method public hasChartJsonUrl()Z
    .registers 3

    .prologue
    .line 25896
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

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

.method public hasChartUrl()Z
    .registers 3

    .prologue
    .line 25860
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

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

.method public hasChartWidth()Z
    .registers 3

    .prologue
    .line 25932
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 25694
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->hasChartUrl()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 25716
    :goto_8
    return v1

    .line 25698
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->hasChartJsonUrl()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 25700
    goto :goto_8

    .line 25702
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->hasChartWidth()Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v2

    .line 25704
    goto :goto_8

    .line 25706
    :cond_19
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->hasChartHeight()Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v2

    .line 25708
    goto :goto_8

    .line 25710
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->getChartValuesCount()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 25711
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->getChartValues(I)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_34

    move v1, v2

    .line 25713
    goto :goto_8

    .line 25710
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 25716
    :cond_37
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 25667
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 25690
    :goto_7
    return-object v0

    .line 25668
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$31800(Lcom/google/feedreader/extrpc/Client$TrendsData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 25669
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 25670
    #getter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$31800(Lcom/google/feedreader/extrpc/Client$TrendsData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    .line 25671
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25678
    :cond_26
    :goto_26
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartUrl()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 25679
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->setChartUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    .line 25681
    :cond_33
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartJsonUrl()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 25682
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartJsonUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->setChartJsonUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    .line 25684
    :cond_40
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartWidth()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 25685
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->setChartWidth(I)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    .line 25687
    :cond_4d
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->hasChartHeight()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 25688
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->setChartHeight(I)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    :cond_5a
    move-object v0, p0

    .line 25690
    goto :goto_7

    .line 25673
    :cond_5c
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25674
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$TrendsData;->chartValues_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->access$31800(Lcom/google/feedreader/extrpc/Client$TrendsData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25724
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 25725
    sparse-switch v0, :sswitch_data_54

    .line 25730
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 25732
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 25728
    goto :goto_e

    .line 25737
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    .line 25738
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 25739
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->addChartValues(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    goto :goto_0

    .line 25743
    :sswitch_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25744
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 25748
    :sswitch_2d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25749
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 25753
    :sswitch_3a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25754
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartWidth_:I

    goto :goto_0

    .line 25758
    :sswitch_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25759
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartHeight_:I

    goto :goto_0

    .line 25725
    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_20
        0x1a -> :sswitch_2d
        0x20 -> :sswitch_3a
        0x28 -> :sswitch_47
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
    .line 25581
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 25581
    check-cast p1, Lcom/google/feedreader/extrpc/Client$TrendsData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

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
    .line 25581
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeChartValues(I)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 25851
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25852
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25854
    return-object p0
.end method

.method public setChartHeight(I)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25959
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25960
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartHeight_:I

    .line 25962
    return-object p0
.end method

.method public setChartJsonUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25909
    if-nez p1, :cond_8

    .line 25910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25912
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25913
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    .line 25915
    return-object p0
.end method

.method setChartJsonUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 25924
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25925
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartJsonUrl_:Ljava/lang/Object;

    .line 25927
    return-void
.end method

.method public setChartUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25873
    if-nez p1, :cond_8

    .line 25874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25876
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25877
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    .line 25879
    return-object p0
.end method

.method setChartUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 25888
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25889
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartUrl_:Ljava/lang/Object;

    .line 25891
    return-void
.end method

.method public setChartValues(ILcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 25799
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25800
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->build()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25802
    return-object p0
.end method

.method public setChartValues(ILcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25789
    if-nez p2, :cond_8

    .line 25790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25792
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->ensureChartValuesIsMutable()V

    .line 25793
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartValues_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25795
    return-object p0
.end method

.method public setChartWidth(I)Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25938
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->bitField0_:I

    .line 25939
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$Builder;->chartWidth_:I

    .line 25941
    return-object p0
.end method
