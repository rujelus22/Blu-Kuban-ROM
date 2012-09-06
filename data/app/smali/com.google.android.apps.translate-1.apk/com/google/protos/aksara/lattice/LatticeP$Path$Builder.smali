.class public final Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$PathOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
        "Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$PathOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cost_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;"
        }
    .end annotation
.end field

.field private description_:Ljava/lang/Object;

.field private edgeIndex_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private label_:Lcom/google/protobuf/LazyStringList;

.field private text_:Ljava/lang/Object;

.field private weightedCost_:D


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2938
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3095
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3148
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 3213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    .line 3258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    .line 3368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 2939
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->maybeForceBuilderInitialization()V

    .line 2940
    return-void
.end method

.method static synthetic access$3100()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 1

    .prologue
    .line 2933
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 1

    .prologue
    .line 2945
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCostIsMutable()V
    .registers 3

    .prologue
    .line 3261
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 3262
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    .line 3263
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3265
    :cond_17
    return-void
.end method

.method private ensureEdgeIndexIsMutable()V
    .registers 3

    .prologue
    .line 3215
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 3216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    .line 3217
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3219
    :cond_16
    return-void
.end method

.method private ensureLabelIsMutable()V
    .registers 3

    .prologue
    .line 3150
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 3151
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 3152
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3154
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2943
    return-void
.end method


# virtual methods
.method public addAllCost(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;"
        }
    .end annotation

    .prologue
    .line 3328
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$Cost;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3329
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3331
    return-object p0
.end method

.method public addAllEdgeIndex(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;"
        }
    .end annotation

    .prologue
    .line 3245
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureEdgeIndexIsMutable()V

    .line 3246
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3248
    return-object p0
.end method

.method public addAllLabel(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;"
        }
    .end annotation

    .prologue
    .line 3190
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureLabelIsMutable()V

    .line 3191
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3193
    return-object p0
.end method

.method public addCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3321
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3322
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3324
    return-object p0
.end method

.method public addCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3304
    if-nez p2, :cond_8

    .line 3305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3307
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3308
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3310
    return-object p0
.end method

.method public addCost(Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3314
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3315
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3317
    return-object p0
.end method

.method public addCost(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3294
    if-nez p1, :cond_8

    .line 3295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3297
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3298
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3300
    return-object p0
.end method

.method public addEdgeIndex(I)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3238
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureEdgeIndexIsMutable()V

    .line 3239
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3241
    return-object p0
.end method

.method public addLabel(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3180
    if-nez p1, :cond_8

    .line 3181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3183
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureLabelIsMutable()V

    .line 3184
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3186
    return-object p0
.end method

.method public addLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3203
    if-nez p1, :cond_8

    .line 3204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3206
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureLabelIsMutable()V

    .line 3207
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3209
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    .line 2975
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$Path;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2976
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2978
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 6

    .prologue
    .line 2982
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Path;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 2983
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$Path;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2984
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2985
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2986
    or-int/lit8 v2, v2, 0x1

    .line 2988
    :cond_10
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3302(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 2990
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 2992
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2994
    :cond_2b
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3402(Lcom/google/protos/aksara/lattice/LatticeP$Path;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2995
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_45

    .line 2996
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    .line 2997
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2999
    :cond_45
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3502(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/util/List;)Ljava/util/List;

    .line 3000
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_60

    .line 3001
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    .line 3002
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3004
    :cond_60
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3602(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/util/List;)Ljava/util/List;

    .line 3005
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6d

    .line 3006
    or-int/lit8 v2, v2, 0x2

    .line 3008
    :cond_6d
    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->weightedCost_:D

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->weightedCost_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3702(Lcom/google/protos/aksara/lattice/LatticeP$Path;D)D

    .line 3009
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7a

    .line 3010
    or-int/lit8 v2, v2, 0x4

    .line 3012
    :cond_7a
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3802(Lcom/google/protos/aksara/lattice/LatticeP$Path;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3902(Lcom/google/protos/aksara/lattice/LatticeP$Path;I)I

    .line 3014
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3

    .prologue
    .line 2949
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 2951
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2952
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 2953
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2954
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    .line 2955
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2956
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    .line 2957
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2958
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->weightedCost_:D

    .line 2959
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2960
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 2961
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 2962
    return-object p0
.end method

.method public clearCost()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2

    .prologue
    .line 3334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    .line 3335
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3337
    return-object p0
.end method

.method public clearDescription()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2

    .prologue
    .line 3404
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3405
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 3407
    return-object p0
.end method

.method public clearEdgeIndex()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2

    .prologue
    .line 3251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    .line 3252
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3254
    return-object p0
.end method

.method public clearLabel()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2

    .prologue
    .line 3196
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 3197
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3199
    return-object p0
.end method

.method public clearText()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 2

    .prologue
    .line 3131
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3132
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3134
    return-object p0
.end method

.method public clearWeightedCost()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3

    .prologue
    .line 3361
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->weightedCost_:D

    .line 3364
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3

    .prologue
    .line 2966
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

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
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "index"

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public getCostCount()I
    .registers 2

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCostList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2933
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 2

    .prologue
    .line 2970
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 3374
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3375
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3376
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 3379
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

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3384
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 3385
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3386
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3388
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 3391
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getEdgeIndex(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEdgeIndexCount()I
    .registers 2

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEdgeIndexList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 3160
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
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
    .line 3157
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3101
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3102
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3103
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3106
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

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3111
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3112
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3113
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3115
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3118
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getWeightedCost()D
    .registers 3

    .prologue
    .line 3352
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->weightedCost_:D

    return-wide v0
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 3370
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3097
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasWeightedCost()Z
    .registers 3

    .prologue
    .line 3349
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 3066
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->getCostCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 3067
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3069
    const/4 v1, 0x0

    .line 3072
    :goto_12
    return v1

    .line 3066
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3072
    :cond_16
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
    .line 2933
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2933
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

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
    .line 2933
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3079
    const/4 v2, 0x0

    .line 3081
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$Path;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$Path;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 3086
    if-eqz v2, :cond_10

    .line 3087
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    .line 3090
    :cond_10
    return-object p0

    .line 3082
    :catch_11
    move-exception v1

    .line 3083
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-object v2, v0

    .line 3084
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 3086
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 3087
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3018
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3062
    :cond_6
    :goto_6
    return-object p0

    .line 3019
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->hasText()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3020
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3021
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->text_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3300(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3024
    :cond_19
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3400(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 3025
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 3026
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3400(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 3027
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3034
    :cond_37
    :goto_37
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3500(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 3035
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 3036
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3500(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    .line 3037
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3044
    :cond_55
    :goto_55
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3600(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 3045
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 3046
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3600(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    .line 3047
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3054
    :cond_73
    :goto_73
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->hasWeightedCost()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3055
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->getWeightedCost()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->setWeightedCost(D)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;

    .line 3057
    :cond_80
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3058
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3059
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->description_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3800(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    goto/16 :goto_6

    .line 3029
    :cond_94
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureLabelIsMutable()V

    .line 3030
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3400(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 3039
    :cond_a1
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureEdgeIndexIsMutable()V

    .line 3040
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->edgeIndex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3500(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_55

    .line 3049
    :cond_ae
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3050
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Path;->cost_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->access$3600(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_73
.end method

.method public removeCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3340
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3341
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3343
    return-object p0
.end method

.method public setCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3288
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3289
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3291
    return-object p0
.end method

.method public setCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3278
    if-nez p2, :cond_8

    .line 3279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3281
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureCostIsMutable()V

    .line 3282
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3284
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3395
    if-nez p1, :cond_8

    .line 3396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3398
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3399
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 3401
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3411
    if-nez p1, :cond_8

    .line 3412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3414
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3415
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->description_:Ljava/lang/Object;

    .line 3417
    return-object p0
.end method

.method public setEdgeIndex(II)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3232
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureEdgeIndexIsMutable()V

    .line 3233
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->edgeIndex_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3235
    return-object p0
.end method

.method public setLabel(ILjava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3171
    if-nez p2, :cond_8

    .line 3172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3174
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->ensureLabelIsMutable()V

    .line 3175
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3177
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3122
    if-nez p1, :cond_8

    .line 3123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3125
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3126
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3128
    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3138
    if-nez p1, :cond_8

    .line 3139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3141
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3142
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->text_:Ljava/lang/Object;

    .line 3144
    return-object p0
.end method

.method public setWeightedCost(D)Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3355
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->bitField0_:I

    .line 3356
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->weightedCost_:D

    .line 3358
    return-object p0
.end method
