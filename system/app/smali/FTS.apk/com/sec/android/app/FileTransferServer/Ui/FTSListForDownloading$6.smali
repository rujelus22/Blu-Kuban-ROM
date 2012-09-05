.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$6;
.super Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback$Stub;
.source "FTSListForDownloading.java"


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
    .line 476
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$6;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public MessageCallback(ILjava/lang/String;)V
    .registers 5
    .parameter "msg"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$6;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$400(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 480
    .local v0, msgNew:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$6;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$400(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    return-void
.end method
