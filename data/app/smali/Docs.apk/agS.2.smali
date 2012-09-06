.class LagS;
.super Lagq;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagq",
        "<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LagR;

.field final synthetic a:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(LagR;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4764
    iput-object p1, p0, LagS;->a:LagR;

    iput-object p2, p0, LagS;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Lagq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4767
    iget-object v0, p0, LagS;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
