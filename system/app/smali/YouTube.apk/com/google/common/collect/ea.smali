.class public final Lcom/google/common/collect/ea;
.super Lcom/google/common/collect/dt;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/google/common/collect/dt;-><init>()V

    .line 484
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ea;->b:Ljava/util/Comparator;

    .line 485
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/common/collect/ea;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ea;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    #calls: Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->access$000(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .registers 2
    .parameter

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 2
    .parameter

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Object;)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method public final synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 2
    .parameter

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b([Ljava/lang/Object;)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;
    .registers 2
    .parameter

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .registers 2
    .parameter

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Object;)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method public final bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .registers 2
    .parameter

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b([Ljava/lang/Object;)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/google/common/collect/ea;
    .registers 2
    .parameter

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b([Ljava/lang/Object;)Lcom/google/common/collect/dt;

    .line 512
    return-object p0
.end method
