.class public final Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$LatticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Lattice;",
        "Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$LatticeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private costType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;"
        }
    .end annotation
.end field

.field private maxEdgeFactor_:D

.field private node_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;"
        }
    .end annotation
.end field

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;"
        }
    .end annotation
.end field

.field private stateType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4873
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 5035
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    .line 5124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    .line 5213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    .line 5302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    .line 4874
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->maybeForceBuilderInitialization()V

    .line 4875
    return-void
.end method

.method static synthetic access$5400()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 1

    .prologue
    .line 4869
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 1

    .prologue
    .line 4880
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCostTypeIsMutable()V
    .registers 3

    .prologue
    .line 5127
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 5128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    .line 5129
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5131
    :cond_16
    return-void
.end method

.method private ensureNodeIsMutable()V
    .registers 3

    .prologue
    .line 5038
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 5039
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    .line 5040
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5042
    :cond_16
    return-void
.end method

.method private ensurePathIsMutable()V
    .registers 3

    .prologue
    .line 5216
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 5217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    .line 5218
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5220
    :cond_16
    return-void
.end method

.method private ensureStateTypeIsMutable()V
    .registers 3

    .prologue
    .line 5305
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 5306
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    .line 5307
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5309
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4878
    return-void
.end method


# virtual methods
.method public addAllCostType(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;"
        }
    .end annotation

    .prologue
    .line 5194
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$CostType;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5195
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5197
    return-object p0
.end method

.method public addAllNode(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;"
        }
    .end annotation

    .prologue
    .line 5105
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$Node;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5106
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5108
    return-object p0
.end method

.method public addAllPath(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;"
        }
    .end annotation

    .prologue
    .line 5283
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$Path;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5284
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5286
    return-object p0
.end method

.method public addAllStateType(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;"
        }
    .end annotation

    .prologue
    .line 5372
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$StateType;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5373
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5375
    return-object p0
.end method

.method public addCostType(ILcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5187
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5188
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5190
    return-object p0
.end method

.method public addCostType(ILcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5170
    if-nez p2, :cond_8

    .line 5171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5173
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5174
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5176
    return-object p0
.end method

.method public addCostType(Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5180
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5181
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5183
    return-object p0
.end method

.method public addCostType(Lcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5160
    if-nez p1, :cond_8

    .line 5161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5163
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5164
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5166
    return-object p0
.end method

.method public addNode(ILcom/google/protos/aksara/lattice/LatticeP$Node$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5098
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5099
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5101
    return-object p0
.end method

.method public addNode(ILcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5081
    if-nez p2, :cond_8

    .line 5082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5084
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5085
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5087
    return-object p0
.end method

.method public addNode(Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5091
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5092
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5094
    return-object p0
.end method

.method public addNode(Lcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5071
    if-nez p1, :cond_8

    .line 5072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5074
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5075
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5077
    return-object p0
.end method

.method public addPath(ILcom/google/protos/aksara/lattice/LatticeP$Path$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5276
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5277
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5279
    return-object p0
.end method

.method public addPath(ILcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5259
    if-nez p2, :cond_8

    .line 5260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5262
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5263
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5265
    return-object p0
.end method

.method public addPath(Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5269
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5270
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5272
    return-object p0
.end method

.method public addPath(Lcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5249
    if-nez p1, :cond_8

    .line 5250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5252
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5253
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5255
    return-object p0
.end method

.method public addStateType(ILcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5365
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5366
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5368
    return-object p0
.end method

.method public addStateType(ILcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5348
    if-nez p2, :cond_8

    .line 5349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5351
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5352
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5354
    return-object p0
.end method

.method public addStateType(Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5358
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5359
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5361
    return-object p0
.end method

.method public addStateType(Lcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5338
    if-nez p1, :cond_8

    .line 5339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5341
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5342
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5344
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 3

    .prologue
    .line 4907
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    .line 4908
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4909
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4911
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 6

    .prologue
    .line 4915
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 4916
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4917
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4918
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 4919
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    .line 4920
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4922
    :cond_1e
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5602(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;

    .line 4923
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 4924
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    .line 4925
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4927
    :cond_38
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5702(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;

    .line 4928
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_52

    .line 4929
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    .line 4930
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4932
    :cond_52
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5802(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;

    .line 4933
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6d

    .line 4934
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    .line 4935
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4937
    :cond_6d
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5902(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;Ljava/util/List;)Ljava/util/List;

    .line 4938
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7a

    .line 4939
    or-int/lit8 v2, v2, 0x1

    .line 4941
    :cond_7a
    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->maxEdgeFactor_:D

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->maxEdgeFactor_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$6002(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;D)D

    .line 4942
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$6102(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;I)I

    .line 4943
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3

    .prologue
    .line 4884
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 4885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    .line 4886
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4887
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    .line 4888
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4889
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    .line 4890
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    .line 4892
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4893
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->maxEdgeFactor_:D

    .line 4894
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4895
    return-object p0
.end method

.method public clearCostType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 2

    .prologue
    .line 5200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    .line 5201
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5203
    return-object p0
.end method

.method public clearMaxEdgeFactor()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3

    .prologue
    .line 5405
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5406
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->maxEdgeFactor_:D

    .line 5408
    return-object p0
.end method

.method public clearNode()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 2

    .prologue
    .line 5111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    .line 5112
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5114
    return-object p0
.end method

.method public clearPath()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 2

    .prologue
    .line 5289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    .line 5290
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5292
    return-object p0
.end method

.method public clearStateType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 2

    .prologue
    .line 5378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    .line 5379
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5381
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3

    .prologue
    .line 4899
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

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
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCostType(I)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
    .registers 3
    .parameter "index"

    .prologue
    .line 5140
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    return-object v0
.end method

.method public getCostTypeCount()I
    .registers 2

    .prologue
    .line 5137
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCostTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5134
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4869
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    .registers 2

    .prologue
    .line 4903
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    return-object v0
.end method

.method public getMaxEdgeFactor()D
    .registers 3

    .prologue
    .line 5396
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->maxEdgeFactor_:D

    return-wide v0
.end method

.method public getNode(I)Lcom/google/protos/aksara/lattice/LatticeP$Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Node;

    return-object v0
.end method

.method public getNodeCount()I
    .registers 2

    .prologue
    .line 5048
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5045
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPath(I)Lcom/google/protos/aksara/lattice/LatticeP$Path;
    .registers 3
    .parameter "index"

    .prologue
    .line 5229
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Path;

    return-object v0
.end method

.method public getPathCount()I
    .registers 2

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5223
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStateType(I)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
    .registers 3
    .parameter "index"

    .prologue
    .line 5318
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    return-object v0
.end method

.method public getStateTypeCount()I
    .registers 2

    .prologue
    .line 5315
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStateTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5312
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMaxEdgeFactor()Z
    .registers 3

    .prologue
    .line 5393
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4996
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->getNodeCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 4997
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->getNode(I)Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/aksara/lattice/LatticeP$Node;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 5012
    :cond_12
    :goto_12
    return v1

    .line 4996
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5002
    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->getPathCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 5003
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->getPath(I)Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/aksara/lattice/LatticeP$Path;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5002
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 5008
    :cond_2a
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5012
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
    .line 4869
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4869
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

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
    .line 4869
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5019
    const/4 v2, 0x0

    .line 5021
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$Lattice;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 5026
    if-eqz v2, :cond_10

    .line 5027
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    .line 5030
    :cond_10
    return-object p0

    .line 5022
    :catch_11
    move-exception v1

    .line 5023
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-object v2, v0

    .line 5024
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 5026
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 5027
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4947
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Lattice;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4992
    :goto_6
    return-object p0

    .line 4948
    :cond_7
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5600(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4949
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 4950
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5600(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    .line 4951
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4958
    :cond_25
    :goto_25
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5700(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 4959
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 4960
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5700(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    .line 4961
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4968
    :cond_43
    :goto_43
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5800(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 4969
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 4970
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5800(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    .line 4971
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4978
    :cond_61
    :goto_61
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5900(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 4979
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 4980
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5900(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    .line 4981
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 4988
    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->hasMaxEdgeFactor()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 4989
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->getMaxEdgeFactor()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->setMaxEdgeFactor(D)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;

    .line 4991
    :cond_8c
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto/16 :goto_6

    .line 4953
    :cond_91
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 4954
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->node_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5600(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 4963
    :cond_9e
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 4964
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->costType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5700(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 4973
    :cond_ab
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 4974
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->path_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5800(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_61

    .line 4983
    :cond_b8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 4984
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->stateType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice;->access$5900(Lcom/google/protos/aksara/lattice/LatticeP$Lattice;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7f
.end method

.method public removeCostType(I)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5206
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5207
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5209
    return-object p0
.end method

.method public removeNode(I)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5117
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5118
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5120
    return-object p0
.end method

.method public removePath(I)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5295
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5296
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5298
    return-object p0
.end method

.method public removeStateType(I)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5384
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5385
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5387
    return-object p0
.end method

.method public setCostType(ILcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5154
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5155
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$CostType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$CostType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5157
    return-object p0
.end method

.method public setCostType(ILcom/google/protos/aksara/lattice/LatticeP$CostType;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5144
    if-nez p2, :cond_8

    .line 5145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5147
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureCostTypeIsMutable()V

    .line 5148
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->costType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5150
    return-object p0
.end method

.method public setMaxEdgeFactor(D)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5399
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->bitField0_:I

    .line 5400
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->maxEdgeFactor_:D

    .line 5402
    return-object p0
.end method

.method public setNode(ILcom/google/protos/aksara/lattice/LatticeP$Node$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5065
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5066
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Node$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Node;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5068
    return-object p0
.end method

.method public setNode(ILcom/google/protos/aksara/lattice/LatticeP$Node;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5055
    if-nez p2, :cond_8

    .line 5056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5058
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureNodeIsMutable()V

    .line 5059
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->node_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5061
    return-object p0
.end method

.method public setPath(ILcom/google/protos/aksara/lattice/LatticeP$Path$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5243
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5244
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Path$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Path;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5246
    return-object p0
.end method

.method public setPath(ILcom/google/protos/aksara/lattice/LatticeP$Path;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5233
    if-nez p2, :cond_8

    .line 5234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5236
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensurePathIsMutable()V

    .line 5237
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->path_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5239
    return-object p0
.end method

.method public setStateType(ILcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5332
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5333
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$StateType$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$StateType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5335
    return-object p0
.end method

.method public setStateType(ILcom/google/protos/aksara/lattice/LatticeP$StateType;)Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5322
    if-nez p2, :cond_8

    .line 5323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5325
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->ensureStateTypeIsMutable()V

    .line 5326
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Lattice$Builder;->stateType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5328
    return-object p0
.end method
