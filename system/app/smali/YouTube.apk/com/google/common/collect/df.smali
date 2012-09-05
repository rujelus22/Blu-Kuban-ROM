.class final Lcom/google/common/collect/df;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/google/common/collect/df;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 775
    new-instance v0, Lcom/google/common/collect/dt;

    iget-object v1, p0, Lcom/google/common/collect/df;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/dt;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .line 776
    new-instance v1, Lcom/google/common/collect/dg;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dg;-><init>(Lcom/google/common/collect/df;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/common/collect/df;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/fj;->size()I

    move-result v0

    return v0
.end method
