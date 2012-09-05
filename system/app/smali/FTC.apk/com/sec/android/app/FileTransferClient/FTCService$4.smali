.class Lcom/sec/android/app/FileTransferClient/FTCService$4;
.super Lcom/sec/android/app/FileTransferClient/Data/IRemoteService$Stub;
.source "FTCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/FTCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCService;)V
    .registers 2
    .parameter

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Data/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1755
    if-eqz p1, :cond_10

    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1758
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :callback Registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
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
    .line 1776
    const/4 v0, 0x0

    return-object v0
.end method

.method public unregisterCallback(Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1764
    if-eqz p1, :cond_10

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1768
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :callback UnRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_10
    return-void
.end method
