.class final Lcom/google/common/collect/fh;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ff;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ff;)V
    .registers 2
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/ff;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 789
    new-instance v0, Lcom/google/common/collect/fe;

    iget-object v1, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/ff;

    iget-object v1, v1, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/fe;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    .line 790
    new-instance v1, Lcom/google/common/collect/fi;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/fi;-><init>(Lcom/google/common/collect/fh;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/ff;

    iget-object v0, v0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
