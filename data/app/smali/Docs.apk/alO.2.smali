.class public final LalO;
.super Ljava/lang/Object;
.source "Futures.java"


# static fields
.field private static final a:LakG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakG",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1236
    invoke-static {}, LakG;->b()LakG;

    move-result-object v0

    new-instance v1, LalR;

    invoke-direct {v1}, LalR;-><init>()V

    invoke-virtual {v0, v1}, LakG;->a(LafH;)LakG;

    move-result-object v0

    invoke-virtual {v0}, LakG;->a()LakG;

    move-result-object v0

    sput-object v0, LalO;->a:LakG;

    return-void
.end method

.method public static a(LalU;LalJ;)LalU;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "LalU",
            "<TI;>;",
            "LalJ",
            "<-TI;+TO;>;)",
            "LalU",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, LalX;->a()LalW;

    move-result-object v0

    invoke-static {p0, p1, v0}, LalO;->a(LalU;LalJ;Ljava/util/concurrent/Executor;)LalU;

    move-result-object v0

    return-object v0
.end method

.method public static a(LalU;LalJ;Ljava/util/concurrent/Executor;)LalU;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "LalU",
            "<TI;>;",
            "LalJ",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LalU",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, LalS;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LalS;-><init>(LalJ;LalU;LalP;)V

    .line 393
    invoke-interface {p0, v0, p2}, LalU;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 394
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)LalU;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "LalU",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lama;->a(Ljava/lang/Object;)Z

    .line 93
    return-object v0
.end method

.method public static a(LalU;LalN;Ljava/util/concurrent/Executor;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LalU",
            "<TV;>;",
            "LalN",
            "<-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 967
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    new-instance v0, LalQ;

    invoke-direct {v0, p0, p1}, LalQ;-><init>(LalU;LalN;)V

    .line 985
    invoke-interface {p0, v0, p2}, LalU;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 986
    return-void
.end method
