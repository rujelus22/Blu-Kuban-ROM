.class Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;
.super Ljava/lang/Object;
.source "FTCUploadSessionList.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V
    .registers 2
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 539
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-static {p2}, Lcom/sec/android/app/FileTransferClient/Data/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$702(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    .line 542
    :try_start_9
    const-string v1, "[FT]-Client"

    const-string v2, "FTCUploadSessionList : register callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$700(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCallback:Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$600(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;->registerCallback(Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;)V

    .line 544
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$802(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_25} :catch_26

    .line 550
    :goto_25
    return-void

    .line 546
    :catch_26
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCUploadSessionList : (for debug) fail - register callback :"

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
    .line 525
    :try_start_0
    const-string v1, "[FT]-Client"

    const-string v2, "FTCUploadSessionList : unregister callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$700(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCallback:Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$600(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;->unregisterCallback(Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;)V

    .line 527
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$802(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_23

    .line 534
    :goto_1c
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$702(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    .line 535
    return-void

    .line 529
    :catch_23
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCUploadSessionList : (for debug) fail - unregister callback :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c
.end method
