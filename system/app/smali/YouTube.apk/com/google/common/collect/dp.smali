.class final Lcom/google/common/collect/dp;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/dn;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dn;)V
    .registers 2
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/google/common/collect/dp;->a:Lcom/google/common/collect/dn;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 678
    new-instance v0, Lcom/google/common/collect/dm;

    iget-object v1, p0, Lcom/google/common/collect/dp;->a:Lcom/google/common/collect/dn;

    iget-object v1, v1, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/dm;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .line 679
    new-instance v1, Lcom/google/common/collect/dq;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dq;-><init>(Lcom/google/common/collect/dp;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/common/collect/dp;->a:Lcom/google/common/collect/dn;

    iget-object v0, v0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/fj;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
