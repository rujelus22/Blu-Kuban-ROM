.class LagR;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lagj;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lagj",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lagu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lagk;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagk",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4745
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LagR;-><init>(Lagk;Lagq;)V

    .line 4746
    return-void
.end method

.method protected constructor <init>(Lagk;Lagq;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagk",
            "<-TK;-TV;>;",
            "Lagq",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4750
    new-instance v0, Lagu;

    invoke-direct {v0, p1, p2}, Lagu;-><init>(Lagk;Lagq;)V

    iput-object v0, p0, LagR;->a:Lagu;

    .line 4751
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4841
    invoke-virtual {p0, p1}, LagR;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable",
            "<+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 4763
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4764
    iget-object v0, p0, LagR;->a:Lagu;

    new-instance v1, LagS;

    invoke-direct {v1, p0, p2}, LagS;-><init>(LagR;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lagu;->a(Ljava/lang/Object;Lagq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4829
    iget-object v0, p0, LagR;->a:Lagu;

    invoke-virtual {v0, p1}, Lagu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4834
    :try_start_0
    invoke-virtual {p0, p1}, LagR;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 4835
    :catch_5
    move-exception v0

    .line 4836
    new-instance v1, Lamb;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lamb;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
