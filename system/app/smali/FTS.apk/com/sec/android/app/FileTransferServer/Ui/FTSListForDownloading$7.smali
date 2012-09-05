.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;
.super Ljava/lang/Object;
.source "FTSListForDownloading.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V
    .registers 2
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 503
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-static {p2}, Lcom/sec/android/app/FileTransferServer/Data/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$602(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    .line 506
    :try_start_9
    const-string v1, "[FT]-Server"

    const-string v2, "FTSListForDownloading : register callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$600(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCallback:Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$500(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;->registerCallback(Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;)V

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$702(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_25} :catch_26

    .line 514
    :goto_25
    return-void

    .line 510
    :catch_26
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading : (for debug) fail - register callback :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "className"

    .prologue
    .line 489
    :try_start_0
    const-string v1, "[FT]-Server"

    const-string v2, "FTSListForDownloading : unregister callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$600(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCallback:Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$500(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;->unregisterCallback(Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;)V

    .line 491
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$702(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_23

    .line 498
    :goto_1c
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$602(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    .line 499
    return-void

    .line 493
    :catch_23
    move-exception v0

    .line 495
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading : (for debug) fail - unregister callback :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c
.end method
