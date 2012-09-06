.class public final Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$RecommendationListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$RecommendationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$RecommendationList;",
        "Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$RecommendationListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private recs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    .line 22924
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->maybeForceBuilderInitialization()V

    .line 22925
    return-void
.end method

.method static synthetic access$28300(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22918
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28400()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 1

    .prologue
    .line 22918
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22958
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    .line 22959
    .local v0, result:Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 22960
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 22963
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 1

    .prologue
    .line 22930
    new-instance v0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecsIsMutable()V
    .registers 3

    .prologue
    .line 23035
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 23036
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    .line 23037
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    .line 23039
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22928
    return-void
.end method


# virtual methods
.method public addAllRecs(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;"
        }
    .end annotation

    .prologue
    .line 23102
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23103
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23105
    return-object p0
.end method

.method public addRecs(ILcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 23095
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23096
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->build()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23098
    return-object p0
.end method

.method public addRecs(ILcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23078
    if-nez p2, :cond_8

    .line 23079
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23081
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23082
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23084
    return-object p0
.end method

.method public addRecs(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 23088
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23089
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->build()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23091
    return-object p0
.end method

.method public addRecs(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 23068
    if-nez p1, :cond_8

    .line 23069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23071
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23072
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23074
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 3

    .prologue
    .line 22949
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    .line 22950
    .local v0, result:Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22951
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22953
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->build()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 4

    .prologue
    .line 22967
    new-instance v0, Lcom/google/feedreader/extrpc/Client$RecommendationList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;-><init>(Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 22968
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 22970
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    .line 22971
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    .line 22973
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->access$28602(Lcom/google/feedreader/extrpc/Client$RecommendationList;Ljava/util/List;)Ljava/util/List;

    .line 22974
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 2

    .prologue
    .line 22934
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    .line 22936
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    .line 22937
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearRecs()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 2

    .prologue
    .line 23108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    .line 23109
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    .line 23111
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 3

    .prologue
    .line 22941
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->create()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

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
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList;
    .registers 2

    .prologue
    .line 22945
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22918
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public getRecs(I)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    .registers 3
    .parameter "index"

    .prologue
    .line 23048
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    return-object p0
.end method

.method public getRecsCount()I
    .registers 2

    .prologue
    .line 23045
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23042
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 22993
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->getRecsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 22994
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->getRecs(I)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 22996
    const/4 v1, 0x0

    .line 22999
    :goto_12
    return v1

    .line 22993
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22999
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 22978
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$RecommendationList;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 22989
    :goto_7
    return-object v0

    .line 22979
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->access$28600(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 22980
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 22981
    #getter for: Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->access$28600(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    .line 22982
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 22989
    goto :goto_7

    .line 22984
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 22985
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$RecommendationList;->recs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->access$28600(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23007
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 23008
    sparse-switch v0, :sswitch_data_20

    .line 23013
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 23015
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 23011
    goto :goto_e

    .line 23020
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->newBuilder()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;

    move-result-object v0

    .line 23021
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 23022
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->addRecs(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    goto :goto_0

    .line 23008
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
    .line 22918
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22918
    check-cast p1, Lcom/google/feedreader/extrpc/Client$RecommendationList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$RecommendationList;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

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
    .line 22918
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeRecs(I)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 23114
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23115
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23117
    return-object p0
.end method

.method public setRecs(ILcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 23062
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23063
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation$Builder;->build()Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23065
    return-object p0
.end method

.method public setRecs(ILcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23052
    if-nez p2, :cond_8

    .line 23053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23055
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->ensureRecsIsMutable()V

    .line 23056
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$RecommendationList$Builder;->recs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23058
    return-object p0
.end method
