.class LZQ;
.super Ljava/lang/Object;
.source "RateLimitedExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LZP;


# direct methods
.method constructor <init>(LZP;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, LZQ;->a:LZP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 18
    iget-object v0, p0, LZQ;->a:LZP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LZP;->a(LZP;Z)Z

    .line 19
    iget-object v0, p0, LZQ;->a:LZP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LZP;->a(LZP;J)J

    .line 20
    const-string v0, "RateLimitedExecutor_updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching suppliedRunnable, for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LZQ;->a:LZP;

    invoke-virtual {v2}, LZP;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, LZQ;->a:LZP;

    invoke-static {v0}, LZP;->a(LZP;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 23
    return-void
.end method
