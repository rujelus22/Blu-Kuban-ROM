.class public final Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SearchItemsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$SearchItemsContent;",
        "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$SearchItemsContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23596
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    .line 23597
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->maybeForceBuilderInitialization()V

    .line 23598
    return-void
.end method

.method static synthetic access$29200(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23591
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29300()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 1

    .prologue
    .line 23591
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23631
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    .line 23632
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 23633
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 23636
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 1

    .prologue
    .line 23603
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResultsIsMutable()V
    .registers 3

    .prologue
    .line 23708
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 23709
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    .line 23710
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    .line 23712
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23601
    return-void
.end method


# virtual methods
.method public addAllResults(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;"
        }
    .end annotation

    .prologue
    .line 23775
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23776
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23778
    return-object p0
.end method

.method public addResults(ILcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 23768
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23769
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->build()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23771
    return-object p0
.end method

.method public addResults(ILcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23751
    if-nez p2, :cond_8

    .line 23752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23754
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23755
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23757
    return-object p0
.end method

.method public addResults(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 23761
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23762
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->build()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23764
    return-object p0
.end method

.method public addResults(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 23741
    if-nez p1, :cond_8

    .line 23742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23744
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23745
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23747
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 3

    .prologue
    .line 23622
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    .line 23623
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23624
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23626
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 4

    .prologue
    .line 23640
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;-><init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 23641
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 23643
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    .line 23644
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    .line 23646
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->access$29502(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;Ljava/util/List;)Ljava/util/List;

    .line 23647
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 2

    .prologue
    .line 23607
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    .line 23609
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    .line 23610
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResults()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 2

    .prologue
    .line 23781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    .line 23782
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    .line 23784
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 3

    .prologue
    .line 23614
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

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
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
    .registers 2

    .prologue
    .line 23618
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23591
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public getResults(I)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .parameter "index"

    .prologue
    .line 23721
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    return-object p0
.end method

.method public getResultsCount()I
    .registers 2

    .prologue
    .line 23718
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23715
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 23666
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->getResultsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 23667
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->getResults(I)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 23669
    const/4 v1, 0x0

    .line 23672
    :goto_12
    return v1

    .line 23666
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23672
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 23651
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 23662
    :goto_7
    return-object v0

    .line 23652
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->access$29500(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 23653
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 23654
    #getter for: Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->access$29500(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    .line 23655
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 23662
    goto :goto_7

    .line 23657
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23658
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;->access$29500(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23680
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 23681
    sparse-switch v0, :sswitch_data_20

    .line 23686
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 23688
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 23684
    goto :goto_e

    .line 23693
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    .line 23694
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 23695
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->addResults(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    goto :goto_0

    .line 23681
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
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
    .line 23591
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23591
    check-cast p1, Lcom/google/feedreader/extrpc/Client$SearchItemsContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

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
    .line 23591
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeResults(I)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 23787
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23788
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23790
    return-object p0
.end method

.method public setResults(ILcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 23735
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23736
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->build()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23738
    return-object p0
.end method

.method public setResults(ILcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23725
    if-nez p2, :cond_8

    .line 23726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23728
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->ensureResultsIsMutable()V

    .line 23729
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23731
    return-object p0
.end method
