.class public final Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamItemsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$StreamItemsContent;",
        "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$StreamItemsContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private itemRefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24734
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    .line 24626
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->maybeForceBuilderInitialization()V

    .line 24627
    return-void
.end method

.method static synthetic access$30500(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24620
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$30600()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 1

    .prologue
    .line 24620
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24660
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    .line 24661
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 24662
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 24665
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 1

    .prologue
    .line 24632
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureItemRefsIsMutable()V
    .registers 3

    .prologue
    .line 24737
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 24738
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    .line 24739
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    .line 24741
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24630
    return-void
.end method


# virtual methods
.method public addAllItemRefs(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;"
        }
    .end annotation

    .prologue
    .line 24804
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24805
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24807
    return-object p0
.end method

.method public addItemRefs(ILcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24797
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24798
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24800
    return-object p0
.end method

.method public addItemRefs(ILcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24780
    if-nez p2, :cond_8

    .line 24781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24783
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24784
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24786
    return-object p0
.end method

.method public addItemRefs(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 24790
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24791
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24793
    return-object p0
.end method

.method public addItemRefs(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 24770
    if-nez p1, :cond_8

    .line 24771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24773
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24774
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24776
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 3

    .prologue
    .line 24651
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    .line 24652
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24653
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24655
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 4

    .prologue
    .line 24669
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 24670
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 24672
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    .line 24673
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    .line 24675
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->access$30802(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;Ljava/util/List;)Ljava/util/List;

    .line 24676
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 2

    .prologue
    .line 24636
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24637
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    .line 24638
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    .line 24639
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearItemRefs()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 2

    .prologue
    .line 24810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    .line 24811
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    .line 24813
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 3

    .prologue
    .line 24643
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

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
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .registers 2

    .prologue
    .line 24647
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24620
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    return-object v0
.end method

.method public getItemRefs(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .parameter "index"

    .prologue
    .line 24750
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    return-object p0
.end method

.method public getItemRefsCount()I
    .registers 2

    .prologue
    .line 24747
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemRefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24744
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 24695
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->getItemRefsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 24696
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->getItemRefs(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 24698
    const/4 v1, 0x0

    .line 24701
    :goto_12
    return v1

    .line 24695
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24701
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 24680
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 24691
    :goto_7
    return-object v0

    .line 24681
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->access$30800(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 24682
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 24683
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->access$30800(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    .line 24684
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 24691
    goto :goto_7

    .line 24686
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24687
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->itemRefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->access$30800(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24709
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 24710
    sparse-switch v0, :sswitch_data_20

    .line 24715
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 24717
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 24713
    goto :goto_e

    .line 24722
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    .line 24723
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 24724
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->addItemRefs(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    goto :goto_0

    .line 24710
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
    .line 24620
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24620
    check-cast p1, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

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
    .line 24620
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeItemRefs(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 24816
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24817
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24819
    return-object p0
.end method

.method public setItemRefs(ILcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 24764
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24765
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24767
    return-object p0
.end method

.method public setItemRefs(ILcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24754
    if-nez p2, :cond_8

    .line 24755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24757
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->ensureItemRefsIsMutable()V

    .line 24758
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$Builder;->itemRefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24760
    return-object p0
.end method
