.class Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$6;
.super Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback$Stub;
.source "FTCUploadSessionList.java"


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
    .line 512
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$6;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public MessageCallback(IILjava/util/List;)V
    .registers 5
    .parameter "msg"
    .parameter "arg1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    .local p3, session:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$6;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$500(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    return-void
.end method
