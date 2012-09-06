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
    .line 40333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 40559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 40610
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40634
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40677
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 40334
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->maybeForceBuilderInitialization()V

    .line 40335
    return-void
.end method

.method static synthetic access$53900()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 40328
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 40340
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFilterIsMutable()V
    .registers 3

    .prologue
    .line 40562
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 40563
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 40564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40566
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40338
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
    .line 40597
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 40598
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40600
    return-object p0
.end method

.method public addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40587
    if-nez p1, :cond_8

    .line 40588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40590
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 40591
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40593
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 3

    .prologue
    .line 40367
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    .line 40368
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40369
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40371
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 6

    .prologue
    .line 40385
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;-><init>(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 40386
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40387
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40388
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40389
    or-int/lit8 v2, v2, 0x1

    .line 40391
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54102(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40392
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 40393
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 40394
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40396
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54202(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Ljava/util/List;)Ljava/util/List;

    .line 40397
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 40398
    or-int/lit8 v2, v2, 0x2

    .line 40400
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54302(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40401
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 40402
    or-int/lit8 v2, v2, 0x4

    .line 40404
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54402(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40405
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 40406
    or-int/lit8 v2, v2, 0x8

    .line 40408
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->searchRadiusMeters_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54502(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;I)I

    .line 40409
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54602(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;I)I

    .line 40410
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40344
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40345
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 40346
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 40348
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40349
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40351
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40352
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40353
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 40354
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40355
    return-object p0
.end method

.method public clearFilter()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 40604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40606
    return-object p0
.end method

.method public clearPosition()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40670
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40672
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40673
    return-object p0
.end method

.method public clearQueryText()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40547
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40548
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 40550
    return-object p0
.end method

.method public clearSearchRadiusMeters()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40692
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 40694
    return-object p0
.end method

.method public clearSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40627
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40628
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40630
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3

    .prologue
    .line 40359
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
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40328
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 2

    .prologue
    .line 40363
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getFilter(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    .registers 3
    .parameter "index"

    .prologue
    .line 40574
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    return-object v0
.end method

.method public getFilterCount()I
    .registers 2

    .prologue
    .line 40571
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
    .line 40568
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 40639
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40528
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 40529
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40530
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40531
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 40534
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
    .line 40682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    return v0
.end method

.method public getSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    .registers 2

    .prologue
    .line 40615
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    return-object v0
.end method

.method public hasPosition()Z
    .registers 3

    .prologue
    .line 40636
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

    .line 40525
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
    .line 40679
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
    .line 40612
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 40441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40442
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 40444
    const/4 v0, 0x0

    .line 40447
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 40328
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40328
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

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
    .line 40328
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
    .line 40455
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 40456
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_86

    .line 40461
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 40463
    :sswitch_d
    return-object p0

    .line 40468
    :sswitch_e
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40469
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    goto :goto_0

    .line 40473
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 40474
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    move-result-object v5

    .line 40475
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    if-eqz v5, :cond_0

    .line 40476
    invoke-virtual {p0, v5}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_0

    .line 40481
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 40482
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 40483
    .local v1, oldLimit:I
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_45

    .line 40484
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 40485
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    move-result-object v5

    .line 40486
    .restart local v5       #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    if-eqz v5, :cond_31

    .line 40487
    invoke-virtual {p0, v5}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_31

    .line 40490
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    :cond_45
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 40494
    .end local v0           #length:I
    .end local v1           #oldLimit:I
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 40495
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    move-result-object v5

    .line 40496
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    if-eqz v5, :cond_0

    .line 40497
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40498
    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    goto :goto_0

    .line 40503
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    :sswitch_5c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v3

    .line 40504
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->hasPosition()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 40505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 40507
    :cond_6d
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40508
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_0

    .line 40512
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    :sswitch_78
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40513
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    goto/16 :goto_0

    .line 40456
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
    .line 40414
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40437
    :cond_6
    :goto_6
    return-object p0

    .line 40415
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasQueryText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40416
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 40418
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54200(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 40419
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 40420
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54200(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    .line 40421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40428
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasSort()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 40429
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 40431
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 40432
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 40434
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasSearchRadiusMeters()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40435
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getSearchRadiusMeters()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSearchRadiusMeters(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    goto :goto_6

    .line 40423
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 40424
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->access$54200(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 40660
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40666
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40667
    return-object p0

    .line 40663
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    goto :goto_20
.end method

.method public setFilter(ILcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40578
    if-nez p2, :cond_8

    .line 40579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40581
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->ensureFilterIsMutable()V

    .line 40582
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->filter_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40584
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 40652
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40655
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40642
    if-nez p1, :cond_8

    .line 40643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40645
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40648
    return-object p0
.end method

.method public setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40538
    if-nez p1, :cond_8

    .line 40539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40541
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40542
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->queryText_:Ljava/lang/Object;

    .line 40544
    return-object p0
.end method

.method public setSearchRadiusMeters(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40685
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40686
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->searchRadiusMeters_:I

    .line 40688
    return-object p0
.end method

.method public setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40618
    if-nez p1, :cond_8

    .line 40619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40621
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->bitField0_:I

    .line 40622
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40624
    return-object p0
.end method
