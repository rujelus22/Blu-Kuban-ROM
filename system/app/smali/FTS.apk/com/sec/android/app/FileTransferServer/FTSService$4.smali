.class Lcom/sec/android/app/FileTransferServer/FTSService$4;
.super Lcom/sec/android/app/FileTransferServer/Data/IRemoteService$Stub;
.source "FTSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/FTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/FTSService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/FTSService;)V
    .registers 2
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService$4;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Data/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1733
    if-eqz p1, :cond_10

    .line 1735
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService$4;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1736
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService :callback Registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_10
    return-void
.end method

.method public sendMessage(II)Ljava/lang/String;
    .registers 4
    .parameter "msg"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1753
    .line 1757
    const/4 v0, 0x0

    return-object v0
.end method

.method public unregisterCallback(Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1742
    if-eqz p1, :cond_16

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService$4;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$2102(Lcom/sec/android/app/FileTransferServer/FTSService;Z)Z

    .line 1745
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService$4;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1746
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService :callback UnRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_16
    return-void
.end method
