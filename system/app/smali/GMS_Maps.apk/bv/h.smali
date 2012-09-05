.class final Lbv/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbv/g;


# direct methods
.method constructor <init>(Lbv/g;)V
    .registers 2

    iput-object p1, p0, Lbv/h;->a:Lbv/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lbv/h;->a:Lbv/g;

    invoke-static {v0}, Lbv/g;->a(Lbv/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lbv/g;->j()Lcom/google/gmm/debug/c;

    move-result-object v0

    const-string v2, "Running flush"

    invoke-virtual {v0, v2}, Lcom/google/gmm/debug/c;->b(Ljava/lang/Object;)V

    invoke-static {}, LP/b;->a()LP/b;

    move-result-object v0

    invoke-virtual {v0}, LP/b;->i()LP/a;

    move-result-object v0

    invoke-interface {v0}, LP/a;->a()J

    move-result-wide v2

    iget-object v0, p0, Lbv/h;->a:Lbv/g;

    iget-wide v4, v0, Lbv/g;->j:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_38

    iget-object v0, p0, Lbv/h;->a:Lbv/g;

    iget-object v0, v0, Lbv/g;->k:LY/d;

    iget-object v2, p0, Lbv/h;->a:Lbv/g;

    iget-wide v2, v2, Lbv/g;->j:J

    invoke-virtual {v0, v2, v3}, LY/d;->b(J)V

    iget-object v0, p0, Lbv/h;->a:Lbv/g;

    iget-object v0, v0, Lbv/g;->k:LY/d;

    invoke-virtual {v0}, LY/d;->f()V

    monitor-exit v1

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lbv/h;->a:Lbv/g;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lbv/g;->j:J

    iget-object v0, p0, Lbv/h;->a:Lbv/g;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lbv/g;->i:J

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_4b

    iget-object v0, p0, Lbv/h;->a:Lbv/g;

    invoke-virtual {v0}, Lbv/g;->h()V

    goto :goto_37

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method
