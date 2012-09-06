.class LBB;
.super Ljava/lang/Object;
.source "XmlHttpRequestRelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LBw;


# direct methods
.method constructor <init>(LBw;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, LBB;->a:LBw;

    iput p2, p0, LBB;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 661
    iget-object v1, p0, LBB;->a:LBw;

    monitor-enter v1

    .line 662
    :try_start_3
    iget-object v0, p0, LBB;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LBC;

    move-result-object v0

    if-nez v0, :cond_d

    .line 664
    monitor-exit v1

    .line 673
    :goto_c
    return-void

    .line 667
    :cond_d
    iget v0, p0, LBB;->a:I

    invoke-static {v0}, LBw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 668
    iget-object v0, p0, LBB;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LBC;

    move-result-object v0

    iget-object v2, p0, LBB;->a:LBw;

    invoke-static {v2}, LBw;->a(LBw;)LBE;

    move-result-object v2

    invoke-virtual {v2}, LBE;->a()I

    move-result v2

    iget v3, p0, LBB;->a:I

    invoke-interface {v0, v2, v3}, LBC;->onRequestFailed(II)V

    .line 672
    :goto_2a
    monitor-exit v1

    goto :goto_c

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    .line 670
    :cond_2f
    :try_start_2f
    iget-object v0, p0, LBB;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LBC;

    move-result-object v0

    iget-object v2, p0, LBB;->a:LBw;

    invoke-static {v2}, LBw;->a(LBw;)LBE;

    move-result-object v2

    invoke-virtual {v2}, LBE;->a()I

    move-result v2

    invoke-interface {v0, v2}, LBC;->onRequestCompleted(I)V
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_2c

    goto :goto_2a
.end method
