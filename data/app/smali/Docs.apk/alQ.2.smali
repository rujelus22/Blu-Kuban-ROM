.class final LalQ;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LalN;

.field final synthetic a:LalU;


# direct methods
.method constructor <init>(LalU;LalN;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, LalQ;->a:LalU;

    iput-object p2, p0, LalQ;->a:LalN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 974
    :try_start_0
    iget-object v0, p0, LalQ;->a:LalU;

    invoke-static {v0}, Lamc;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 975
    iget-object v1, p0, LalQ;->a:LalN;

    invoke-interface {v1, v0}, LalN;->a(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_17
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_b} :catch_1e

    .line 983
    :goto_b
    return-void

    .line 976
    :catch_c
    move-exception v0

    .line 977
    iget-object v1, p0, LalQ;->a:LalN;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, LalN;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 978
    :catch_17
    move-exception v0

    .line 979
    iget-object v1, p0, LalQ;->a:LalN;

    invoke-interface {v1, v0}, LalN;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 980
    :catch_1e
    move-exception v0

    .line 981
    iget-object v1, p0, LalQ;->a:LalN;

    invoke-interface {v1, v0}, LalN;->a(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
