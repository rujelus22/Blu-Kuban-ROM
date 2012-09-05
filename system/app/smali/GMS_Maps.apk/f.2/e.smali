.class Lf/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lf/c;

.field private final b:I


# direct methods
.method constructor <init>(Lf/c;Landroid/os/Looper;I)V
    .registers 4

    iput-object p1, p0, Lf/e;->a:Lf/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput p3, p0, Lf/e;->b:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a4

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lf/f;

    iget-object v1, p0, Lf/e;->a:Lf/c;

    invoke-static {v1}, Lf/c;->b(Lf/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lf/e;->a:Lf/c;

    invoke-static {v2}, Lf/c;->f(Lf/c;)I

    move-result v2

    invoke-static {v0}, Lf/f;->a(Lf/f;)Lcom/google/android/location/internal/d;

    move-result-object v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_2c

    if-eqz v0, :cond_5

    :try_start_1e
    iget-object v1, p0, Lf/e;->a:Lf/c;

    invoke-static {v1}, Lf/c;->g(Lf/c;)Lcom/google/android/location/internal/b;

    move-result-object v1

    iget v3, p0, Lf/e;->b:I

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/location/internal/d;->a(ILcom/google/android/location/internal/a;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_5

    :catch_2a
    move-exception v0

    goto :goto_5

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lf/f;

    iget-object v1, p0, Lf/e;->a:Lf/c;

    invoke-static {v1}, Lf/c;->b(Lf/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3a
    invoke-static {v0}, Lf/f;->a(Lf/f;)Lcom/google/android/location/internal/d;

    move-result-object v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_54

    if-eqz v2, :cond_4a

    :try_start_41
    iget-object v1, p0, Lf/e;->a:Lf/c;

    invoke-static {v1}, Lf/c;->g(Lf/c;)Lcom/google/android/location/internal/b;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/a;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_a2

    :cond_4a
    :goto_4a
    iget-object v1, p0, Lf/e;->a:Lf/c;

    invoke-static {v1}, Lf/c;->h(Lf/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_5

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    :pswitch_57
    iget-object v0, p0, Lf/e;->a:Lf/c;

    invoke-static {v0}, Lf/c;->i(Lf/c;)Lcom/google/android/location/internal/h;

    move-result-object v0

    iget-object v1, p0, Lf/e;->a:Lf/c;

    invoke-static {v1}, Lf/c;->b(Lf/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_64
    iget-object v2, v0, Lcom/google/android/location/internal/h;->a:Lcom/google/android/location/internal/i;

    iget-object v3, p0, Lf/e;->a:Lf/c;

    invoke-static {v3}, Lf/c;->j(Lf/c;)Lcom/google/android/location/internal/h;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/location/internal/h;->a:Lcom/google/android/location/internal/i;

    if-eq v2, v3, :cond_8c

    iget-object v2, p0, Lf/e;->a:Lf/c;

    invoke-static {v2}, Lf/c;->c(Lf/c;)Lf/f;

    move-result-object v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lf/e;->a:Lf/c;

    invoke-static {v2}, Lf/c;->d(Lf/c;)Lf/e;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lf/e;->a:Lf/c;

    invoke-static {v4}, Lf/c;->c(Lf/c;)Lf/f;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_8c
    iget-object v2, p0, Lf/e;->a:Lf/c;

    invoke-static {v2, v0}, Lf/c;->a(Lf/c;Lcom/google/android/location/internal/h;)V

    monitor-exit v1

    goto/16 :goto_5

    :catchall_94
    move-exception v0

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_64 .. :try_end_96} :catchall_94

    throw v0

    :pswitch_97
    iget-object v0, p0, Lf/e;->a:Lf/c;

    invoke-static {v0}, Lf/c;->k(Lf/c;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_5

    :catch_a2
    move-exception v1

    goto :goto_4a

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2f
        :pswitch_57
        :pswitch_97
    .end packed-switch
.end method
