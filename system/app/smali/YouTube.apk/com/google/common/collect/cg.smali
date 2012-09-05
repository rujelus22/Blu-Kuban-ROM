.class public final Lcom/google/common/collect/cg;
.super Lcom/google/common/collect/bx;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/fj;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/common/collect/bx;-><init>()V

    .line 396
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cg;->a:Lcom/google/common/collect/fj;

    .line 402
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableMultiset;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/common/collect/cg;->a:Lcom/google/common/collect/fj;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/bx;
    .registers 5
    .parameter

    .prologue
    .line 395
    instance-of v0, p1, Lcom/google/common/collect/fj;

    if-eqz v0, :cond_26

    check-cast p1, Lcom/google/common/collect/fj;

    invoke-interface {p1}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/cg;->a(Ljava/lang/Object;I)Lcom/google/common/collect/cg;

    goto :goto_e

    :cond_26
    invoke-super {p0, p1}, Lcom/google/common/collect/bx;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/bx;

    :cond_29
    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 4
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/common/collect/cg;->a:Lcom/google/common/collect/fj;

    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/fj;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 2
    .parameter

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/google/common/collect/bx;->a([Ljava/lang/Object;)Lcom/google/common/collect/bx;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;I)Lcom/google/common/collect/cg;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/common/collect/cg;->a:Lcom/google/common/collect/fj;

    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/common/collect/fj;->add(Ljava/lang/Object;I)I

    .line 431
    return-object p0
.end method
