.class public final Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$SearchQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;",
        "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$SearchQueryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private filter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private queryText_:Ljava/lang/Object;

.field private searchRadiusMeters_:I

.field private sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37552
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37742
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 37778
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 37829
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 37853
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 37896
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 37553
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->maybeForceBuilderInitialization()V

    .line 37554
    return-void
.end method

.method static synthetic access$50400()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 37547
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 37559
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFilterIsMutable()V
    .registers 3

    .prologue
    .line 37781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 37782
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 37783
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37785
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37557
    return-void
.end method


# virtual methods
.method public addAllFilter(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;"
        }
    .end annotation

    .prologue
    .line 37816
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 37817
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 37819
    return-object p0
.end method

.method public addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37806
    if-nez p1, :cond_8

    .line 37807
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37809
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 37810
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37812
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 3

    .prologue
    .line 37586
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    .line 37587
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37588
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37590
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 6

    .prologue
    .line 37604
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;-><init>(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 37605
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37606
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37607
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37608
    or-int/lit8 v2, v2, 0x1

    .line 37610
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$50602(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37611
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 37612
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 37613
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37615
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$50702(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Ljava/util/List;)Ljava/util/List;

    .line 37616
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 37617
    or-int/lit8 v2, v2, 0x2

    .line 37619
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$50802(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 37620
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 37621
    or-int/lit8 v2, v2, 0x4

    .line 37623
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$50902(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 37624
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 37625
    or-int/lit8 v2, v2, 0x8

    .line 37627
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->searchRadiusMeters_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$51002(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;I)I

    .line 37628
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$51102(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;I)I

    .line 37629
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 37563
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 37565
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37566
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 37567
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37568
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 37569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37570
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 37571
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37572
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 37573
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37574
    return-object p0
.end method

.method public clearFilter()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 37822
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 37823
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37825
    return-object p0
.end method

.method public clearPosition()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 37889
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 37891
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37892
    return-object p0
.end method

.method public clearQueryText()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 37766
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37767
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 37769
    return-object p0
.end method

.method public clearSearchRadiusMeters()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 37910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37911
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 37913
    return-object p0
.end method

.method public clearSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 37846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37847
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 37849
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3

    .prologue
    .line 37578
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

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
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 2

    .prologue
    .line 37582
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getFilter(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    .registers 3
    .parameter "index"

    .prologue
    .line 37793
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    return-object v0
.end method

.method public getFilterCount()I
    .registers 2

    .prologue
    .line 37790
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37787
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 37858
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 37748
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37749
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37750
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 37753
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

.method public getSearchRadiusMeters()I
    .registers 2

    .prologue
    .line 37901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    return v0
.end method

.method public getSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    .registers 2

    .prologue
    .line 37834
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    return-object v0
.end method

.method public hasPosition()Z
    .registers 3

    .prologue
    .line 37855
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

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

.method public hasQueryText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37744
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSearchRadiusMeters()Z
    .registers 3

    .prologue
    .line 37898
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

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

.method public hasSort()Z
    .registers 3

    .prologue
    .line 37831
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

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
    .line 37547
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

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
    .line 37547
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37674
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 37675
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_86

    .line 37680
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 37682
    :sswitch_d
    return-object p0

    .line 37687
    :sswitch_e
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37688
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    goto :goto_0

    .line 37692
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 37693
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    move-result-object v5

    .line 37694
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    if-eqz v5, :cond_0

    .line 37695
    invoke-virtual {p0, v5}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_0

    .line 37700
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 37701
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 37702
    .local v1, oldLimit:I
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_45

    .line 37703
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 37704
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    move-result-object v5

    .line 37705
    .restart local v5       #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    if-eqz v5, :cond_31

    .line 37706
    invoke-virtual {p0, v5}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_31

    .line 37709
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    :cond_45
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 37713
    .end local v0           #length:I
    .end local v1           #oldLimit:I
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 37714
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    move-result-object v5

    .line 37715
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    if-eqz v5, :cond_0

    .line 37716
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37717
    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    goto :goto_0

    .line 37722
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    :sswitch_5c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v3

    .line 37723
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->hasPosition()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 37724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 37726
    :cond_6d
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37727
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_0

    .line 37731
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    :sswitch_78
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37732
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    goto/16 :goto_0

    .line 37675
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x12 -> :sswitch_29
        0x18 -> :sswitch_49
        0x22 -> :sswitch_5c
        0x28 -> :sswitch_78
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 37633
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37656
    :cond_6
    :goto_6
    return-object p0

    .line 37634
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasQueryText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37635
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 37637
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$50700(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 37638
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 37639
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$50700(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 37640
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37647
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasSort()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 37648
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 37650
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 37651
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 37653
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasSearchRadiusMeters()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37654
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getSearchRadiusMeters()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSearchRadiusMeters(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_6

    .line 37642
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 37643
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$50700(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37877
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 37879
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 37885
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37886
    return-object p0

    .line 37882
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    goto :goto_20
.end method

.method public setFilter(ILcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37797
    if-nez p2, :cond_8

    .line 37798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37800
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 37801
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37803
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 37871
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 37873
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37874
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37861
    if-nez p1, :cond_8

    .line 37862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37864
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 37866
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37867
    return-object p0
.end method

.method public setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37757
    if-nez p1, :cond_8

    .line 37758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37760
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37761
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 37763
    return-object p0
.end method

.method public setSearchRadiusMeters(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37904
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37905
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 37907
    return-object p0
.end method

.method public setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37837
    if-nez p1, :cond_8

    .line 37838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37840
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 37841
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 37843
    return-object p0
.end method
