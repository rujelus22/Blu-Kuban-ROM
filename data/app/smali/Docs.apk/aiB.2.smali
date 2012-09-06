.class public final LaiB;
.super Laix;
.source "ImmutableList.java"


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
.field private final a:Ljava/util/ArrayList;
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
    .line 561
    invoke-direct {p0}, Laix;-><init>()V

    .line 555
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaiB;->a:Ljava/util/ArrayList;

    .line 561
    return-void
.end method


# virtual methods
.method public a()LaiA;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, LaiB;->a:Ljava/util/ArrayList;

    invoke-static {v0}, LaiA;->a(Ljava/util/Collection;)LaiA;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)LaiB;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "LaiB",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 584
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 585
    check-cast v0, Ljava/util/Collection;

    .line 586
    iget-object v1, p0, LaiB;->a:Ljava/util/ArrayList;

    iget-object v2, p0, LaiB;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 588
    :cond_17
    invoke-super {p0, p1}, Laix;->a(Ljava/lang/Iterable;)Laix;

    .line 589
    return-object p0
.end method

.method public a(Ljava/lang/Object;)LaiB;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LaiB",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, LaiB;->a:Ljava/util/ArrayList;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)LaiB;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "LaiB",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, LaiB;->a:Ljava/util/ArrayList;

    iget-object v1, p0, LaiB;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 602
    invoke-super {p0, p1}, Laix;->a([Ljava/lang/Object;)Laix;

    .line 603
    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Iterable;)Laix;
    .registers 3
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0, p1}, LaiB;->a(Ljava/lang/Iterable;)LaiB;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Laix;
    .registers 3
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0, p1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a([Ljava/lang/Object;)Laix;
    .registers 3
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0, p1}, LaiB;->a([Ljava/lang/Object;)LaiB;

    move-result-object v0

    return-object v0
.end method
