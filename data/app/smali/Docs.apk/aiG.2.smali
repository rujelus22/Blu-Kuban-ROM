.class public LaiG;
.super Laix;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Laix",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 559
    invoke-direct {p0}, Laix;-><init>()V

    .line 553
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaiG;->a:Ljava/util/ArrayList;

    .line 559
    return-void
.end method


# virtual methods
.method public a()LaiE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, LaiG;->a:Ljava/util/ArrayList;

    invoke-static {v0}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)LaiG;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "LaiG",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 600
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 601
    check-cast v0, Ljava/util/Collection;

    .line 602
    iget-object v1, p0, LaiG;->a:Ljava/util/ArrayList;

    iget-object v2, p0, LaiG;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 604
    :cond_17
    invoke-super {p0, p1}, Laix;->a(Ljava/lang/Iterable;)Laix;

    .line 605
    return-object p0
.end method

.method public a(Ljava/lang/Object;)LaiG;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LaiG",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, LaiG;->a:Ljava/util/ArrayList;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)LaiG;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "LaiG",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, LaiG;->a:Ljava/util/ArrayList;

    iget-object v1, p0, LaiG;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 586
    invoke-super {p0, p1}, Laix;->a([Ljava/lang/Object;)Laix;

    .line 587
    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Iterable;)Laix;
    .registers 3
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0, p1}, LaiG;->a(Ljava/lang/Iterable;)LaiG;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Laix;
    .registers 3
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0, p1}, LaiG;->a(Ljava/lang/Object;)LaiG;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a([Ljava/lang/Object;)Laix;
    .registers 3
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0, p1}, LaiG;->a([Ljava/lang/Object;)LaiG;

    move-result-object v0

    return-object v0
.end method
