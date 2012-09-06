.class public final Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$BundleList;",
        "Lcom/google/feedreader/extrpc/Client$BundleList$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$BundleListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bundles_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21952
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22061
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    .line 21953
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->maybeForceBuilderInitialization()V

    .line 21954
    return-void
.end method

.method static synthetic access$27100(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21947
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27200()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 1

    .prologue
    .line 21947
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21987
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    .line 21988
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 21989
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 21992
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 1

    .prologue
    .line 21959
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBundlesIsMutable()V
    .registers 3

    .prologue
    .line 22064
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 22065
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    .line 22066
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    .line 22068
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21957
    return-void
.end method


# virtual methods
.method public addAllBundles(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Builder;"
        }
    .end annotation

    .prologue
    .line 22131
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22132
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 22134
    return-object p0
.end method

.method public addBundles(ILcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 22124
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22125
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22127
    return-object p0
.end method

.method public addBundles(ILcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 22107
    if-nez p2, :cond_8

    .line 22108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22110
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22111
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22113
    return-object p0
.end method

.method public addBundles(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 22117
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22118
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22120
    return-object p0
.end method

.method public addBundles(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 22097
    if-nez p1, :cond_8

    .line 22098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22100
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22101
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22103
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 3

    .prologue
    .line 21978
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    .line 21979
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21980
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21982
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 4

    .prologue
    .line 21996
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 21997
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 21999
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    .line 22000
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    .line 22002
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList;->access$27402(Lcom/google/feedreader/extrpc/Client$BundleList;Ljava/util/List;)Ljava/util/List;

    .line 22003
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 2

    .prologue
    .line 21963
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    .line 21965
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    .line 21966
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBundles()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 2

    .prologue
    .line 22137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    .line 22138
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    .line 22140
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 3

    .prologue
    .line 21970
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

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
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBundles(I)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 22077
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    return-object p0
.end method

.method public getBundlesCount()I
    .registers 2

    .prologue
    .line 22074
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBundlesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22071
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList;
    .registers 2

    .prologue
    .line 21974
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21947
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 22022
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->getBundlesCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 22023
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->getBundles(I)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 22025
    const/4 v1, 0x0

    .line 22028
    :goto_12
    return v1

    .line 22022
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22028
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 22007
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 22018
    :goto_7
    return-object v0

    .line 22008
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$BundleList;->access$27400(Lcom/google/feedreader/extrpc/Client$BundleList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 22009
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 22010
    #getter for: Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$BundleList;->access$27400(Lcom/google/feedreader/extrpc/Client$BundleList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    .line 22011
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 22018
    goto :goto_7

    .line 22013
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22014
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$BundleList;->bundles_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$BundleList;->access$27400(Lcom/google/feedreader/extrpc/Client$BundleList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22036
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22037
    sparse-switch v0, :sswitch_data_20

    .line 22042
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 22044
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 22040
    goto :goto_e

    .line 22049
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    .line 22050
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 22051
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->addBundles(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    goto :goto_0

    .line 22037
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
    .line 21947
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21947
    check-cast p1, Lcom/google/feedreader/extrpc/Client$BundleList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

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
    .line 21947
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeBundles(I)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 22143
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22144
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22146
    return-object p0
.end method

.method public setBundles(ILcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 22091
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22092
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22094
    return-object p0
.end method

.method public setBundles(ILcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 22081
    if-nez p2, :cond_8

    .line 22082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22084
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->ensureBundlesIsMutable()V

    .line 22085
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22087
    return-object p0
.end method
