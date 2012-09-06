.class final Lcom/google/common/collect/bJ;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field private final transient a:Lcom/google/common/collect/bR;

.field private final transient b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bR;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/common/collect/bJ;->a:Lcom/google/common/collect/bR;

    .line 38
    iput-object p2, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    .line 39
    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/common/collect/bJ;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/P;->a(III)V

    .line 60
    if-ne p1, p2, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/common/collect/dk;

    iget-object v1, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/bJ;->a:Lcom/google/common/collect/bR;

    invoke-virtual {v2}, Lcom/google/common/collect/bR;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/dk;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/google/common/collect/dk;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_d
.end method

.method public a(I)Lcom/google/common/collect/dF;
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/dF;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/common/collect/bJ;->a:Lcom/google/common/collect/bR;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bR;->c(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/bJ;->a:Lcom/google/common/collect/bR;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bR;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/bJ;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/collect/bJ;->a:Lcom/google/common/collect/bR;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bR;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/bJ;->c()Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bJ;->a(I)Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/collect/bJ;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/bJ;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
