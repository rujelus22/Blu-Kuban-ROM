.class final Lcom/google/common/collect/dj;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 808
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/dj;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 817
    new-instance v0, Lcom/google/common/collect/dm;

    iget-object v1, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/dm;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .line 818
    new-instance v1, Lcom/google/common/collect/dk;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dk;-><init>(Lcom/google/common/collect/dj;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/fj;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
