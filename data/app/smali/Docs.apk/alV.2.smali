.class public final LalV;
.super Ljava/util/concurrent/FutureTask;
.source "ListenableFutureTask.java"

# interfaces
.implements LalU;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "LalU",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:LalL;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 38
    new-instance v0, LalL;

    invoke-direct {v0}, LalL;-><init>()V

    iput-object v0, p0, LalV;->a:LalL;

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 38
    new-instance v0, LalL;

    invoke-direct {v0}, LalL;-><init>()V

    iput-object v0, p0, LalV;->a:LalL;

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)LalV;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "LalV",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, LalV;

    invoke-direct {v0, p0, p1}, LalV;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)LalV;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "LalV",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, LalV;

    invoke-direct {v0, p0}, LalV;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LalV;->a:LalL;

    invoke-virtual {v0, p1, p2}, LalL;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 79
    return-void
.end method

.method protected done()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, LalV;->a:LalL;

    invoke-virtual {v0}, LalL;->a()V

    .line 87
    return-void
.end method
