.class Lcom/android/internal/policy/impl/GlobalActions$6;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .parameter "name"
    .parameter "service"

    .prologue
    .line 280
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v5, v4, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 281
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v4, v4, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v4, p0, :cond_d

    .line 282
    monitor-exit v5

    .line 321
    :goto_c
    return-void

    .line 284
    :cond_d
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 285
    .local v1, messenger:Landroid/os/Messenger;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 286
    .local v2, msg:Landroid/os/Message;
    move-object v3, p0

    .line 287
    .local v3, myConn:Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$6$1;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/internal/policy/impl/GlobalActions$6$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$6;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 299
    .local v0, h:Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 300
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_3e

    .line 311
    const-wide/16 v6, 0x3e8

    :try_start_36
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_41

    .line 317
    :goto_39
    :try_start_39
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_43

    .line 320
    :goto_3c
    :try_start_3c
    monitor-exit v5

    goto :goto_c

    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #messenger:Landroid/os/Messenger;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #myConn:Landroid/content/ServiceConnection;
    :catchall_3e
    move-exception v4

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v4

    .line 312
    .restart local v0       #h:Landroid/os/Handler;
    .restart local v1       #messenger:Landroid/os/Messenger;
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #myConn:Landroid/content/ServiceConnection;
    :catch_41
    move-exception v4

    goto :goto_39

    .line 318
    :catch_43
    move-exception v4

    goto :goto_3c
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 323
    return-void
.end method
