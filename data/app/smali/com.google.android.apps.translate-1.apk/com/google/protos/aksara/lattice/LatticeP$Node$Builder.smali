.class public final Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
        "Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private edge_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;"
        }
    .end annotation
.end field

.field private pixel_:I

.field private posterior_:F

.field private state_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2033
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 2188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    .line 2298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    .line 2408
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 2034
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->maybeForceBuilderInitialization()V

    .line 2035
    return-void
.end method

.method static synthetic access$2200()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 1

    .prologue
    .line 2029
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 1

    .prologue
    .line 2040
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDescriptionIsMutable()V
    .registers 3

    .prologue
    .line 2410
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 2411
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 2412
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2414
    :cond_17
    return-void
.end method

.method private ensureEdgeIsMutable()V
    .registers 3

    .prologue
    .line 2191
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 2192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    .line 2193
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2195
    :cond_16
    return-void
.end method

.method private ensureStateIsMutable()V
    .registers 3

    .prologue
    .line 2301
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 2302
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    .line 2303
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2305
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2038
    return-void
.end method


# virtual methods
.method public addAllDescription(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;"
        }
    .end annotation

    .prologue
    .line 2450
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureDescriptionIsMutable()V

    .line 2451
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2453
    return-object p0
.end method

.method public addAllEdge(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;"
        }
    .end annotation

    .prologue
    .line 2258
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$Edge;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2259
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2261
    return-object p0
.end method

.method public addAllState(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;"
        }
    .end annotation

    .prologue
    .line 2368
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$State;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2369
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2371
    return-object p0
.end method

.method public addDescription(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2440
    if-nez p1, :cond_8

    .line 2441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2443
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureDescriptionIsMutable()V

    .line 2444
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2446
    return-object p0
.end method

.method public addDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2463
    if-nez p1, :cond_8

    .line 2464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2466
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureDescriptionIsMutable()V

    .line 2467
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 2469
    return-object p0
.end method

.method public addEdge(ILcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2251
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2252
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2254
    return-object p0
.end method

.method public addEdge(ILcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2234
    if-nez p2, :cond_8

    .line 2235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2237
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2238
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2240
    return-object p0
.end method

.method public addEdge(Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 2244
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2245
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2247
    return-object p0
.end method

.method public addEdge(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2224
    if-nez p1, :cond_8

    .line 2225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2227
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2228
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2230
    return-object p0
.end method

.method public addState(ILcom/google/protos/aksara/lattice/LatticeP$State$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2361
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2362
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2364
    return-object p0
.end method

.method public addState(ILcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2344
    if-nez p2, :cond_8

    .line 2345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2347
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2348
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2350
    return-object p0
.end method

.method public addState(Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 2354
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2355
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2357
    return-object p0
.end method

.method public addState(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2334
    if-nez p1, :cond_8

    .line 2335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2337
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2338
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2340
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3

    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    .line 2068
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$Node;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2069
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2071
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 6

    .prologue
    .line 2075
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Node;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 2076
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$Node;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2077
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2078
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 2079
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    .line 2080
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2082
    :cond_1e
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2402(Lcom/google/protos/aksara/lattice/LatticeP$Node;Ljava/util/List;)Ljava/util/List;

    .line 2083
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 2084
    or-int/lit8 v2, v2, 0x1

    .line 2086
    :cond_2a
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->pixel_:I

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->pixel_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2502(Lcom/google/protos/aksara/lattice/LatticeP$Node;I)I

    .line 2087
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 2088
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    .line 2089
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2091
    :cond_44
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2602(Lcom/google/protos/aksara/lattice/LatticeP$Node;Ljava/util/List;)Ljava/util/List;

    .line 2092
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_51

    .line 2093
    or-int/lit8 v2, v2, 0x2

    .line 2095
    :cond_51
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->posterior_:F

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->posterior_:F
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2702(Lcom/google/protos/aksara/lattice/LatticeP$Node;F)F

    .line 2096
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6d

    .line 2097
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 2099
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2101
    :cond_6d
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2802(Lcom/google/protos/aksara/lattice/LatticeP$Node;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2102
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2902(Lcom/google/protos/aksara/lattice/LatticeP$Node;I)I

    .line 2103
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2044
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 2045
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    .line 2046
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2047
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->pixel_:I

    .line 2048
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2049
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    .line 2050
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2051
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->posterior_:F

    .line 2052
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2053
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 2054
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2055
    return-object p0
.end method

.method public clearDescription()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2456
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 2457
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2459
    return-object p0
.end method

.method public clearEdge()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    .line 2265
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2267
    return-object p0
.end method

.method public clearPixel()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2291
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->pixel_:I

    .line 2294
    return-object p0
.end method

.method public clearPosterior()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2401
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2402
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->posterior_:F

    .line 2404
    return-object p0
.end method

.method public clearState()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 2

    .prologue
    .line 2374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    .line 2375
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2377
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3

    .prologue
    .line 2059
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

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
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 2

    .prologue
    .line 2063
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDescriptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEdge(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3
    .parameter "index"

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    return-object v0
.end method

.method public getEdgeCount()I
    .registers 2

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEdgeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPixel()I
    .registers 2

    .prologue
    .line 2282
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->pixel_:I

    return v0
.end method

.method public getPosterior()F
    .registers 2

    .prologue
    .line 2392
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->posterior_:F

    return v0
.end method

.method public getState(I)Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3
    .parameter "index"

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    return-object v0
.end method

.method public getStateCount()I
    .registers 2

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStateList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPixel()Z
    .registers 3

    .prologue
    .line 2279
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

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

.method public hasPosterior()Z
    .registers 3

    .prologue
    .line 2389
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

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
    const/4 v1, 0x0

    .line 2149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->getEdgeCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 2150
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->getEdge(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2165
    :cond_12
    :goto_12
    return v1

    .line 2149
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2155
    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->getStateCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 2156
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->getState(I)Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/aksara/lattice/LatticeP$State;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2155
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2161
    :cond_2a
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2165
    const/4 v1, 0x1

    goto :goto_12
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
    .line 2029
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2029
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

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
    .line 2029
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2172
    const/4 v2, 0x0

    .line 2174
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$Node;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$Node;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 2179
    if-eqz v2, :cond_10

    .line 2180
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    .line 2183
    :cond_10
    return-object p0

    .line 2175
    :catch_11
    move-exception v1

    .line 2176
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-object v2, v0

    .line 2177
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 2179
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 2180
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2107
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2145
    :goto_6
    return-object p0

    .line 2108
    :cond_7
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2400(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2109
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2110
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2400(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    .line 2111
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2118
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->hasPixel()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2119
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getPixel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->setPixel(I)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    .line 2121
    :cond_32
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2600(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 2122
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2123
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2600(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    .line 2124
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2131
    :cond_50
    :goto_50
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->hasPosterior()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2132
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->getPosterior()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->setPosterior(F)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;

    .line 2134
    :cond_5d
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2800(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 2135
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2136
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2800(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 2137
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2144
    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6

    .line 2113
    :cond_7f
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2114
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->edge_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2400(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 2126
    :cond_8c
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2127
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->state_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2600(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_50

    .line 2139
    :cond_99
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureDescriptionIsMutable()V

    .line 2140
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Node;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->access$2800(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7b
.end method

.method public removeEdge(I)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2270
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2271
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2273
    return-object p0
.end method

.method public removeState(I)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2380
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2381
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2383
    return-object p0
.end method

.method public setDescription(ILjava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2431
    if-nez p2, :cond_8

    .line 2432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2434
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureDescriptionIsMutable()V

    .line 2435
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2437
    return-object p0
.end method

.method public setEdge(ILcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2218
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2219
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2221
    return-object p0
.end method

.method public setEdge(ILcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2208
    if-nez p2, :cond_8

    .line 2209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2211
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureEdgeIsMutable()V

    .line 2212
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->edge_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2214
    return-object p0
.end method

.method public setPixel(I)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2285
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2286
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->pixel_:I

    .line 2288
    return-object p0
.end method

.method public setPosterior(F)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2395
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->bitField0_:I

    .line 2396
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->posterior_:F

    .line 2398
    return-object p0
.end method

.method public setState(ILcom/google/protos/aksara/lattice/LatticeP$State$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2328
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2329
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2331
    return-object p0
.end method

.method public setState(ILcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2318
    if-nez p2, :cond_8

    .line 2319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2321
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->ensureStateIsMutable()V

    .line 2322
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->state_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2324
    return-object p0
.end method
