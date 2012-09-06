.class public abstract LaoI;
.super Ljava/lang/Object;
.source "FailableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lajl;

    invoke-direct {v0}, Lajl;-><init>()V

    new-instance v1, LaoJ;

    invoke-direct {v1, p0}, LaoJ;-><init>(LaoI;)V

    invoke-virtual {v0, v1}, Lajl;->a(LafH;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, LaoI;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Laoy;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Laoy;",
            ")TV;"
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, LaoI;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(Ljava/lang/Object;Laoy;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Laoy;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, LaoI;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    instance-of v1, v0, Laoy;

    if-eqz v1, :cond_14

    .line 51
    check-cast v0, Laoy;

    invoke-virtual {p2, v0}, Laoy;->a(Laoy;)Laoy;

    .line 52
    invoke-virtual {p2}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 56
    :cond_14
    return-object v0
.end method
