.class final Lcom/google/common/collect/jw;
.super Lcom/google/common/collect/jy;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/base/ah;

.field final synthetic c:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/base/ah;Ljava/util/Set;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/common/collect/jw;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/common/collect/jw;->b:Lcom/google/common/base/ah;

    iput-object p3, p0, Lcom/google/common/collect/jw;->c:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/jy;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/common/collect/jw;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/jw;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/common/collect/jw;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/jw;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/jw;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/common/collect/jw;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/jw;->b:Lcom/google/common/base/ah;

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Lcom/google/common/base/ah;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/google/common/collect/jw;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ee;->b(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
