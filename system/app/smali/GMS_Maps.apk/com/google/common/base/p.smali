.class Lcom/google/common/base/p;
.super Lcom/google/common/base/b;
.source "SourceFile"


# instance fields
.field p:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    .line 627
    iput-object p1, p0, Lcom/google/common/base/p;->p:Ljava/util/List;

    .line 628
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/base/b;)Lcom/google/common/base/b;
    .registers 4
    .parameter

    .prologue
    .line 640
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/base/p;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 641
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance v1, Lcom/google/common/base/p;

    invoke-direct {v1, v0}, Lcom/google/common/base/p;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method a(Lcom/google/common/base/o;)V
    .registers 4
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/common/base/p;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    .line 647
    invoke-virtual {v0, p1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/o;)V

    goto :goto_6

    .line 649
    :cond_16
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 623
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 4
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/common/base/p;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    .line 632
    invoke-virtual {v0, p1}, Lcom/google/common/base/b;->b(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 633
    const/4 v0, 0x1

    .line 636
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
