.class public final Lcom/google/common/collect/dz;
.super Lcom/google/common/collect/ds;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter

    .prologue
    .line 474
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ds;-><init>(Lcom/google/common/collect/iq;)V

    .line 475
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/dz;->b:Ljava/util/Comparator;

    .line 476
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/common/collect/ImmutableMultiset;
    .registers 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/common/collect/dz;->b()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .registers 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/google/common/collect/ds;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ds;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/google/common/collect/ds;->b(Ljava/lang/Object;)Lcom/google/common/collect/ds;

    return-object p0
.end method

.method public final synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/google/common/collect/ds;->b([Ljava/lang/Object;)Lcom/google/common/collect/ds;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;I)Lcom/google/common/collect/ds;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dz;->b(Ljava/lang/Object;I)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/common/collect/dz;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/dz;->a:Lcom/google/common/collect/iq;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/ds;
    .registers 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/google/common/collect/ds;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ds;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/ds;
    .registers 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/google/common/collect/ds;->b(Ljava/lang/Object;)Lcom/google/common/collect/ds;

    return-object p0
.end method

.method public final bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/ds;
    .registers 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/google/common/collect/ds;->b([Ljava/lang/Object;)Lcom/google/common/collect/ds;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;I)Lcom/google/common/collect/dz;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ds;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ds;

    .line 505
    return-object p0
.end method
