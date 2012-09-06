.class public Lcom/google/common/collect/ds;
.super Lcom/google/common/collect/di;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/iq;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 525
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ds;-><init>(Lcom/google/common/collect/iq;)V

    .line 526
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/iq;)V
    .registers 2
    .parameter

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/google/common/collect/di;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/google/common/collect/ds;->a:Lcom/google/common/collect/iq;

    .line 530
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableMultiset;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/common/collect/ds;->a:Lcom/google/common/collect/iq;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ds;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ds;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ds;->b(Ljava/lang/Object;)Lcom/google/common/collect/ds;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ds;->b([Ljava/lang/Object;)Lcom/google/common/collect/ds;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;I)Lcom/google/common/collect/ds;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/common/collect/ds;->a:Lcom/google/common/collect/iq;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;I)I

    .line 559
    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/ds;
    .registers 5
    .parameter

    .prologue
    .line 600
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_28

    .line 601
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/iq;

    move-result-object v0

    .line 602
    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 603
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ds;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ds;

    goto :goto_10

    .line 606
    :cond_28
    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;

    .line 608
    :cond_2b
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/ds;
    .registers 4
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/ds;->a:Lcom/google/common/collect/iq;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;)Z

    .line 541
    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ds;
    .registers 2
    .parameter

    .prologue
    .line 586
    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a([Ljava/lang/Object;)Lcom/google/common/collect/di;

    .line 587
    return-object p0
.end method
