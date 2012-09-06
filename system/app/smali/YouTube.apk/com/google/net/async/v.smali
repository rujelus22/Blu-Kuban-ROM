.class public final Lcom/google/net/async/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/net/async/p;)V
    .registers 4
    .parameter

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/google/net/async/p;->e()Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Only the network thread of an EventDispatcher can dispatch events for it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static {p0, v0, v1}, Lcom/google/net/async/w;->a(Lcom/google/net/async/p;J)Lcom/google/net/async/w;

    invoke-virtual {p0}, Lcom/google/net/async/p;->a()V

    .line 107
    return-void
.end method
