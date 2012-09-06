.class LahW;
.super LahR;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahI",
        "<TK;TV;>.ahR;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LahI;


# direct methods
.method constructor <init>(LahI;Ljava/lang/Object;Ljava/util/SortedSet;LahR;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet",
            "<TV;>;",
            "LahI",
            "<TK;TV;>.ahR;)V"
        }
    .end annotation

    .prologue
    .line 658
    iput-object p1, p0, LahW;->a:LahI;

    .line 659
    invoke-direct {p0, p1, p2, p3, p4}, LahR;-><init>(LahI;Ljava/lang/Object;Ljava/util/Collection;LahR;)V

    .line 660
    return-void
.end method


# virtual methods
.method a()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 663
    invoke-virtual {p0}, LahW;->a()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0}, LahW;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0}, LahW;->a()V

    .line 674
    invoke-virtual {p0}, LahW;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, LahW;->a()V

    .line 686
    new-instance v0, LahW;

    iget-object v1, p0, LahW;->a:LahI;

    invoke-virtual {p0}, LahW;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, LahW;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, LahW;->a()LahR;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, LahW;-><init>(LahI;Ljava/lang/Object;Ljava/util/SortedSet;LahR;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, LahW;->a()LahR;

    move-result-object p0

    goto :goto_19
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p0}, LahW;->a()V

    .line 680
    invoke-virtual {p0}, LahW;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 693
    invoke-virtual {p0}, LahW;->a()V

    .line 694
    new-instance v0, LahW;

    iget-object v1, p0, LahW;->a:LahI;

    invoke-virtual {p0}, LahW;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, LahW;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, LahW;->a()LahR;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, LahW;-><init>(LahI;Ljava/lang/Object;Ljava/util/SortedSet;LahR;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, LahW;->a()LahR;

    move-result-object p0

    goto :goto_19
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0}, LahW;->a()V

    .line 702
    new-instance v0, LahW;

    iget-object v1, p0, LahW;->a:LahI;

    invoke-virtual {p0}, LahW;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, LahW;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, LahW;->a()LahR;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, LahW;-><init>(LahI;Ljava/lang/Object;Ljava/util/SortedSet;LahR;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, LahW;->a()LahR;

    move-result-object p0

    goto :goto_19
.end method
