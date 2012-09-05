.class Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;
.super Landroid/os/Handler;
.source "NetworkLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/client/NetworkLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private final maxLastKnownLocationSecs:I

.field final synthetic this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/client/NetworkLocationClient;Landroid/os/Looper;I)V
    .registers 4
    .parameter
    .parameter "looper"
    .parameter "maxLastKnownLocationSecs"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    .line 370
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 371
    iput p3, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->maxLastKnownLocationSecs:I

    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 376
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_b0

    .line 428
    :cond_5
    :goto_5
    return-void

    .line 378
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    .line 379
    .local v1, connection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    const/4 v3, 0x0

    .line 381
    .local v3, nli:Lcom/google/android/location/internal/INetworkLocationInternal;
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 382
    :try_start_12
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->periodSecs:I
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$700(Lcom/google/android/location/internal/client/NetworkLocationClient;)I

    move-result v4

    .line 383
    .local v4, periodSecs:I
    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->service:Lcom/google/android/location/internal/INetworkLocationInternal;
    invoke-static {v1}, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->access$200(Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v3

    .line 384
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_36

    .line 385
    if-eqz v3, :cond_5

    .line 387
    :try_start_1f
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->listenServer:Lcom/google/android/location/internal/ILocationListener$Stub;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$800(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/ILocationListener$Stub;

    move-result-object v5

    iget v6, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->maxLastKnownLocationSecs:I

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/location/internal/INetworkLocationInternal;->requestLocationUpdates(ILcom/google/android/location/internal/ILocationListener;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_5

    .line 388
    :catch_2b
    move-exception v2

    .line 389
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "NetworkLocationClient"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 384
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #periodSecs:I
    :catchall_36
    move-exception v5

    :try_start_37
    monitor-exit v6
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v5

    .line 395
    .end local v1           #connection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    .end local v3           #nli:Lcom/google/android/location/internal/INetworkLocationInternal;
    :pswitch_39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    .line 396
    .restart local v1       #connection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    const/4 v3, 0x0

    .line 397
    .restart local v3       #nli:Lcom/google/android/location/internal/INetworkLocationInternal;
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 398
    :try_start_45
    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->service:Lcom/google/android/location/internal/INetworkLocationInternal;
    invoke-static {v1}, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->access$200(Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v3

    .line 399
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_5f

    .line 400
    if-eqz v3, :cond_55

    .line 402
    :try_start_4c
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->listenServer:Lcom/google/android/location/internal/ILocationListener$Stub;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$800(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/ILocationListener$Stub;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/android/location/internal/INetworkLocationInternal;->cancelLocationUpdates(Lcom/google/android/location/internal/ILocationListener;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_62

    .line 407
    :cond_55
    :goto_55
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$900(Lcom/google/android/location/internal/client/NetworkLocationClient;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_5

    .line 399
    :catchall_5f
    move-exception v5

    :try_start_60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v5

    .line 403
    :catch_62
    move-exception v2

    .line 404
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v5, "NetworkLocationClient"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 411
    .end local v1           #connection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #nli:Lcom/google/android/location/internal/INetworkLocationInternal;
    :pswitch_6d
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #calls: Lcom/google/android/location/internal/client/NetworkLocationClient;->chooseNlpVersion()Lcom/google/android/location/internal/NlpVersionInfo;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$1000(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v0

    .line 412
    .local v0, best:Lcom/google/android/location/internal/NlpVersionInfo;
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 413
    :try_start_7a
    iget-object v5, v0, Lcom/google/android/location/internal/NlpVersionInfo;->apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    iget-object v7, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->nlpVersionInfo:Lcom/google/android/location/internal/NlpVersionInfo;
    invoke-static {v7}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$1100(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/location/internal/NlpVersionInfo;->apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    if-eq v5, v7, :cond_9a

    .line 414
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->handler:Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$500(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

    move-result-object v5

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    invoke-static {v8}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$400(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 419
    :cond_9a
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #calls: Lcom/google/android/location/internal/client/NetworkLocationClient;->bindToNlpLocked(Lcom/google/android/location/internal/NlpVersionInfo;)V
    invoke-static {v5, v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$1200(Lcom/google/android/location/internal/client/NetworkLocationClient;Lcom/google/android/location/internal/NlpVersionInfo;)V

    .line 420
    monitor-exit v6

    goto/16 :goto_5

    :catchall_a2
    move-exception v5

    monitor-exit v6
    :try_end_a4
    .catchall {:try_start_7a .. :try_end_a4} :catchall_a2

    throw v5

    .line 424
    .end local v0           #best:Lcom/google/android/location/internal/NlpVersionInfo;
    :pswitch_a5
    iget-object v5, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->handlerThread:Landroid/os/HandlerThread;
    invoke-static {v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$1300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_5

    .line 376
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_39
        :pswitch_6d
        :pswitch_a5
    .end packed-switch
.end method
