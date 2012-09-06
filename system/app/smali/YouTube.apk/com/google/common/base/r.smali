.class final Lcom/google/common/base/r;
.super Lcom/google/common/base/d;
.source "SourceFile"


# instance fields
.field o:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/google/common/base/d;-><init>()V

    .line 622
    iput-object p1, p0, Lcom/google/common/base/r;->o:Ljava/util/List;

    .line 623
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .registers 4
    .parameter

    .prologue
    .line 635
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/base/r;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 636
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v1, Lcom/google/common/base/r;

    invoke-direct {v1, v0}, Lcom/google/common/base/r;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method final a(Lcom/google/common/base/q;)V
    .registers 4
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/common/base/r;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/d;

    .line 642
    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/q;)V

    goto :goto_6

    .line 644
    :cond_16
    return-void
.end method

.method public final synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 618
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/d;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .registers 4
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/common/base/r;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/d;

    .line 627
    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->b(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 628
    const/4 v0, 0x1

    .line 631
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
