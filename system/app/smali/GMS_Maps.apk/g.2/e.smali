.class Lg/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lg/c;

.field private final b:I


# direct methods
.method constructor <init>(Lg/c;Landroid/os/Looper;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lg/e;->a:Lg/c;

    .line 414
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 415
    iput p3, p0, Lg/e;->b:I

    .line 416
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    .line 420
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e2

    .line 502
    :cond_5
    :goto_5
    return-void

    .line 422
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/f;

    .line 425
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->b(Lg/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 426
    :try_start_11
    iget-object v2, p0, Lg/e;->a:Lg/c;

    invoke-static {v2}, Lg/c;->g(Lg/c;)I

    move-result v2

    .line 427
    invoke-static {v0}, Lg/f;->a(Lg/f;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v0

    .line 428
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_2c

    .line 429
    if-eqz v0, :cond_5

    .line 431
    :try_start_1e
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->h(Lg/c;)Lcom/google/android/location/internal/a;

    move-result-object v1

    iget v3, p0, Lg/e;->b:I

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/location/internal/INetworkLocationInternal;->a(ILcom/google/android/location/internal/ILocationListener;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_5

    .line 432
    :catch_2a
    move-exception v0

    goto :goto_5

    .line 428
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 439
    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/f;

    .line 441
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->b(Lg/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 442
    :try_start_3a
    invoke-static {v0}, Lg/f;->a(Lg/f;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v2

    .line 443
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_54

    .line 444
    if-eqz v2, :cond_4a

    .line 446
    :try_start_41
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->h(Lg/c;)Lcom/google/android/location/internal/a;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/location/internal/INetworkLocationInternal;->a(Lcom/google/android/location/internal/ILocationListener;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_de

    .line 451
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->i(Lg/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_5

    .line 443
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    .line 455
    :pswitch_57
    iget-object v0, p0, Lg/e;->a:Lg/c;

    invoke-static {v0}, Lg/c;->j(Lg/c;)Lcom/google/android/location/internal/d;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->b(Lg/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 457
    :try_start_64
    iget-object v2, v0, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/e;

    iget-object v3, p0, Lg/e;->a:Lg/c;

    invoke-static {v3}, Lg/c;->k(Lg/c;)Lcom/google/android/location/internal/d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/e;

    if-eq v2, v3, :cond_8c

    iget-object v2, p0, Lg/e;->a:Lg/c;

    invoke-static {v2}, Lg/c;->c(Lg/c;)Lg/f;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 458
    iget-object v2, p0, Lg/e;->a:Lg/c;

    invoke-static {v2}, Lg/c;->d(Lg/c;)Lg/e;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lg/e;->a:Lg/c;

    invoke-static {v4}, Lg/c;->c(Lg/c;)Lg/f;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 463
    :cond_8c
    iget-object v2, p0, Lg/e;->a:Lg/c;

    invoke-static {v2, v0}, Lg/c;->a(Lg/c;Lcom/google/android/location/internal/d;)V

    .line 464
    monitor-exit v1

    goto/16 :goto_5

    :catchall_94
    move-exception v0

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_64 .. :try_end_96} :catchall_94

    throw v0

    .line 468
    :pswitch_97
    iget-object v0, p0, Lg/e;->a:Lg/c;

    invoke-static {v0}, Lg/c;->l(Lg/c;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_5

    .line 472
    :pswitch_a2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/f;

    .line 474
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->b(Lg/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 475
    :try_start_ad
    invoke-static {v0}, Lg/f;->a(Lg/f;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v0

    .line 476
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_bd

    .line 477
    if-eqz v0, :cond_5

    .line 479
    const/4 v1, 0x1

    :try_start_b5
    invoke-interface {v0, v1}, Lcom/google/android/location/internal/INetworkLocationInternal;->a(Z)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_5

    .line 480
    :catch_ba
    move-exception v0

    goto/16 :goto_5

    .line 476
    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v0

    .line 487
    :pswitch_c0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/f;

    .line 489
    iget-object v1, p0, Lg/e;->a:Lg/c;

    invoke-static {v1}, Lg/c;->b(Lg/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 490
    :try_start_cb
    invoke-static {v0}, Lg/f;->a(Lg/f;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v0

    .line 491
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_db

    .line 492
    if-eqz v0, :cond_5

    .line 494
    const/4 v1, 0x0

    :try_start_d3
    invoke-interface {v0, v1}, Lcom/google/android/location/internal/INetworkLocationInternal;->a(Z)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_d6} :catch_d8

    goto/16 :goto_5

    .line 495
    :catch_d8
    move-exception v0

    goto/16 :goto_5

    .line 491
    :catchall_db
    move-exception v0

    :try_start_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v0

    .line 447
    :catch_de
    move-exception v1

    goto/16 :goto_4a

    .line 420
    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2f
        :pswitch_57
        :pswitch_97
        :pswitch_a2
        :pswitch_c0
    .end packed-switch
.end method
