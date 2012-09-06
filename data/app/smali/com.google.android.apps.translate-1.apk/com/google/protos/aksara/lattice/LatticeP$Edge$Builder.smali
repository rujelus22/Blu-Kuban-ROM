.class public final Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$Edge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
        "Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

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

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private label_:Ljava/lang/Object;

.field private target_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 939
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 992
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    .line 1081
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 1124
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 776
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->maybeForceBuilderInitialization()V

    .line 777
    return-void
.end method

.method static synthetic access$700()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 1

    .prologue
    .line 771
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 1

    .prologue
    .line 782
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCostIsMutable()V
    .registers 3

    .prologue
    .line 995
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    .line 997
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 999
    :cond_16
    return-void
.end method

.method private ensureDescriptionIsMutable()V
    .registers 3

    .prologue
    .line 1126
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 1127
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1128
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 1130
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 780
    return-void
.end method


# virtual methods
.method public addAllCost(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/aksara/lattice/LatticeP$Cost;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1063
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1065
    return-object p0
.end method

.method public addAllDescription(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;"
        }
    .end annotation

    .prologue
    .line 1166
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureDescriptionIsMutable()V

    .line 1167
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1169
    return-object p0
.end method

.method public addCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1056
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1058
    return-object p0
.end method

.method public addCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1038
    if-nez p2, :cond_8

    .line 1039
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1041
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1042
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1044
    return-object p0
.end method

.method public addCost(Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1049
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    return-object p0
.end method

.method public addCost(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1028
    if-nez p1, :cond_8

    .line 1029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1031
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1032
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    return-object p0
.end method

.method public addDescription(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1156
    if-nez p1, :cond_8

    .line 1157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1159
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureDescriptionIsMutable()V

    .line 1160
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1162
    return-object p0
.end method

.method public addDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1179
    if-nez p1, :cond_8

    .line 1180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1182
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureDescriptionIsMutable()V

    .line 1183
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1185
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 3

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    .line 810
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 811
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 813
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 6

    .prologue
    .line 817
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 818
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 819
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 820
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 821
    or-int/lit8 v2, v2, 0x1

    .line 823
    :cond_10
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->target_:I

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->target_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$902(Lcom/google/protos/aksara/lattice/LatticeP$Edge;I)I

    .line 824
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 825
    or-int/lit8 v2, v2, 0x2

    .line 827
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1002(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 829
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    .line 830
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 832
    :cond_36
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1102(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Ljava/util/List;)Ljava/util/List;

    .line 833
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 834
    or-int/lit8 v2, v2, 0x4

    .line 836
    :cond_43
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1202(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 837
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5f

    .line 838
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 840
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 842
    :cond_5f
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1302(Lcom/google/protos/aksara/lattice/LatticeP$Edge;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 843
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1402(Lcom/google/protos/aksara/lattice/LatticeP$Edge;I)I

    .line 844
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 786
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->target_:I

    .line 788
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 790
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 791
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    .line 792
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 793
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 794
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 795
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 796
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 797
    return-object p0
.end method

.method public clearBounds()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 1117
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 1119
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 1120
    return-object p0
.end method

.method public clearCost()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 1068
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    .line 1069
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 1071
    return-object p0
.end method

.method public clearDescription()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 1172
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1173
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 1175
    return-object p0
.end method

.method public clearLabel()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 975
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 976
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 978
    return-object p0
.end method

.method public clearTarget()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 2

    .prologue
    .line 932
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 933
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->target_:I

    .line 935
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3

    .prologue
    .line 801
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

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
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    return-object v0
.end method

.method public getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3
    .parameter "index"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    return-object v0
.end method

.method public getCostCount()I
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

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
    .line 1002
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    .registers 2

    .prologue
    .line 805
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

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
    .line 1133
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 945
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 946
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 950
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

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 955
    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 956
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 957
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 959
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 962
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

.method public getTarget()I
    .registers 2

    .prologue
    .line 923
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->target_:I

    return v0
.end method

.method public hasBounds()Z
    .registers 3

    .prologue
    .line 1083
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 941
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

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

.method public hasTarget()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 920
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 885
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->getCostCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 886
    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 895
    :cond_12
    :goto_12
    return v1

    .line 885
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 891
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 895
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeBounds(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1105
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1107
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    invoke-static {v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->newBuilder(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->buildPartial()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 1113
    :goto_20
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 1114
    return-object p0

    .line 1110
    :cond_27
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    goto :goto_20
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
    .line 771
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 771
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

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
    .line 771
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    const/4 v2, 0x0

    .line 904
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$Edge;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 909
    if-eqz v2, :cond_10

    .line 910
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    .line 913
    :cond_10
    return-object p0

    .line 905
    :catch_11
    move-exception v1

    .line 906
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-object v2, v0

    .line 907
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 909
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 910
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 848
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Edge;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 881
    :goto_6
    return-object p0

    .line 849
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->hasTarget()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 850
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->setTarget(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    .line 852
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 853
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 854
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->label_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1000(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 857
    :cond_26
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1100(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 858
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 859
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1100(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    .line 860
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 867
    :cond_44
    :goto_44
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->hasBounds()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 868
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->getBounds()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeBounds(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;

    .line 870
    :cond_51
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1300(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 871
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 872
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1300(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 873
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 880
    :cond_6f
    :goto_6f
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6

    .line 862
    :cond_73
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 863
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->cost_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1100(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_44

    .line 875
    :cond_80
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureDescriptionIsMutable()V

    .line 876
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$Edge;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Edge;->access$1300(Lcom/google/protos/aksara/lattice/LatticeP$Edge;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6f
.end method

.method public removeCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1075
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1077
    return-object p0
.end method

.method public setBounds(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1099
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->build()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 1101
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 1102
    return-object p0
.end method

.method public setBounds(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1089
    if-nez p1, :cond_8

    .line 1090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1092
    :cond_8
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bounds_:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .line 1094
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 1095
    return-object p0
.end method

.method public setCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1023
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1025
    return-object p0
.end method

.method public setCost(ILcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1012
    if-nez p2, :cond_8

    .line 1013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1015
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureCostIsMutable()V

    .line 1016
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->cost_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1018
    return-object p0
.end method

.method public setDescription(ILjava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1147
    if-nez p2, :cond_8

    .line 1148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1150
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->ensureDescriptionIsMutable()V

    .line 1151
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1153
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 966
    if-nez p1, :cond_8

    .line 967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 969
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 970
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 972
    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 982
    if-nez p1, :cond_8

    .line 983
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 985
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 986
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->label_:Ljava/lang/Object;

    .line 988
    return-object p0
.end method

.method public setTarget(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 926
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->bitField0_:I

    .line 927
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Edge$Builder;->target_:I

    .line 929
    return-object p0
.end method
