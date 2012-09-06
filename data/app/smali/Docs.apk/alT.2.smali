.class LalT;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LalS;

.field final synthetic a:LalU;


# direct methods
.method constructor <init>(LalS;LalU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, LalT;->a:LalS;

    iput-object p2, p0, LalT;->a:LalU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 749
    :try_start_1
    iget-object v0, p0, LalT;->a:LalS;

    iget-object v1, p0, LalT;->a:LalU;

    invoke-static {v1}, Lamc;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LalS;->a(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_c} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_c} :catch_1f

    .line 761
    iget-object v0, p0, LalT;->a:LalS;

    invoke-static {v0, v2}, LalS;->a(LalS;LalU;)LalU;

    .line 763
    :goto_11
    return-void

    .line 750
    :catch_12
    move-exception v0

    .line 754
    :try_start_13
    iget-object v0, p0, LalT;->a:LalS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LalS;->cancel(Z)Z
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2f

    .line 761
    iget-object v0, p0, LalT;->a:LalS;

    invoke-static {v0, v2}, LalS;->a(LalS;LalU;)LalU;

    goto :goto_11

    .line 756
    :catch_1f
    move-exception v0

    .line 758
    :try_start_20
    iget-object v1, p0, LalT;->a:LalS;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, LalS;->a(Ljava/lang/Throwable;)Z
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2f

    .line 761
    iget-object v0, p0, LalT;->a:LalS;

    invoke-static {v0, v2}, LalS;->a(LalS;LalU;)LalU;

    goto :goto_11

    :catchall_2f
    move-exception v0

    iget-object v1, p0, LalT;->a:LalS;

    invoke-static {v1, v2}, LalS;->a(LalS;LalU;)LalU;

    throw v0
.end method
