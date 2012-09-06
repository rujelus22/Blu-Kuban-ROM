.class final Lcom/google/common/collect/ja;
.super Lcom/google/common/collect/iy;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/common/collect/ja;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/iy;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/common/collect/ja;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/common/collect/ja;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/jb;

    invoke-direct {v1, p0}, Lcom/google/common/collect/jb;-><init>(Lcom/google/common/collect/ja;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/common/collect/ja;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
