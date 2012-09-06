.class LaiO;
.super LaiE;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LaiE",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:LaiK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LaiK;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaiK",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0}, LaiE;-><init>()V

    .line 480
    iput-object p1, p0, LaiO;->a:LaiK;

    .line 481
    return-void
.end method


# virtual methods
.method public a()Lalu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, LaiO;->a:LaiK;

    iget-object v0, v0, LaiK;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, LaiO;->a:LaiK;

    invoke-virtual {v0}, LaiK;->a()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 497
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1e

    .line 498
    check-cast p1, Ljava/util/Map$Entry;

    .line 499
    iget-object v1, p0, LaiO;->a:LaiK;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, LaiK;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 502
    :cond_1e
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 475
    invoke-virtual {p0}, LaiO;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, LaiO;->a:LaiK;

    invoke-virtual {v0}, LaiK;->size()I

    move-result v0

    return v0
.end method
