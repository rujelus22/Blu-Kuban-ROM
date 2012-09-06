.class final LaiJ;
.super LaiA;
.source "ImmutableSortedAsList.java"

# interfaces
.implements Lald;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LaiA",
        "<TE;>;",
        "Lald",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient a:LaiR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiR",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LaiR;LaiA;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaiR",
            "<TE;>;",
            "LaiA",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, LaiA;-><init>()V

    .line 36
    iput-object p1, p0, LaiJ;->a:LaiR;

    .line 37
    iput-object p2, p0, LaiJ;->a:LaiA;

    .line 38
    return-void
.end method


# virtual methods
.method public a(II)LaiA;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, LaiJ;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, LafQ;->a(III)V

    .line 63
    if-ne p1, p2, :cond_e

    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, LakT;

    iget-object v1, p0, LaiJ;->a:LaiA;

    invoke-virtual {v1, p1, p2}, LaiA;->a(II)LaiA;

    move-result-object v1

    iget-object v2, p0, LaiJ;->a:LaiR;

    invoke-virtual {v2}, LaiR;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LakT;-><init>(LaiA;Ljava/util/Comparator;)V

    invoke-virtual {v0}, LakT;->a()LaiA;

    move-result-object v0

    goto :goto_d
.end method

.method public a()Lalu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public a()Lalv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Lalv;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lalv;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lalv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0, p1}, LaiA;->a(I)Lalv;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Z

    move-result v0

    return v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, LaiJ;->a:LaiR;

    invoke-virtual {v0}, LaiR;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, LaiJ;->a:LaiR;

    invoke-virtual {v0, p1}, LaiR;->a(Ljava/lang/Object;)I

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
    .line 95
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0, p1}, LaiA;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0, p1}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0}, LaiA;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, LaiJ;->a:LaiR;

    invoke-virtual {v0, p1}, LaiR;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, LaiJ;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, LaiJ;->a:LaiR;

    invoke-virtual {v0, p1}, LaiR;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, LaiJ;->a()Lalv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, LaiJ;->a(I)Lalv;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, LaiJ;->a:LaiA;

    invoke-virtual {v0}, LaiA;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, LaiJ;->a(II)LaiA;

    move-result-object v0

    return-object v0
.end method
