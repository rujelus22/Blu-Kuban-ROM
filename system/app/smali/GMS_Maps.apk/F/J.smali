.class LF/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/L;

.field final synthetic b:LF/I;


# direct methods
.method constructor <init>(LF/I;LF/L;)V
    .registers 3

    iput-object p1, p0, LF/J;->b:LF/I;

    iput-object p2, p0, LF/J;->a:LF/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->a(LF/I;)Ljava/lang/Runnable;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->b(LF/I;)Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x0

    sget-object v2, LF/K;->a:[I

    iget-object v3, p0, LF/J;->a:LF/L;

    invoke-virtual {v3}, LF/L;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    :goto_1f
    iget-object v2, p0, LF/J;->b:LF/I;

    invoke-static {v2, v0}, LF/I;->a(LF/I;LF/C;)V

    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->g(LF/I;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, LF/J;->b:LF/I;

    invoke-static {v2}, LF/I;->a(LF/I;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    goto :goto_10

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v0

    :pswitch_3a
    :try_start_3a
    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->c(LF/I;)LF/C;

    move-result-object v0

    goto :goto_1f

    :pswitch_41
    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->d(LF/I;)V

    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->e(LF/I;)LF/C;

    move-result-object v0

    goto :goto_1f

    :pswitch_4d
    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->f(LF/I;)V

    iget-object v0, p0, LF/J;->b:LF/I;

    invoke-static {v0}, LF/I;->e(LF/I;)LF/C;
    :try_end_57
    .catchall {:try_start_3a .. :try_end_57} :catchall_37

    move-result-object v0

    goto :goto_1f

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_41
        :pswitch_4d
    .end packed-switch
.end method
