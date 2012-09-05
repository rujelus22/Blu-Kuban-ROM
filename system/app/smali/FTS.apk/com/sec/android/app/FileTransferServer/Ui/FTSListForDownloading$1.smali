.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;
.super Ljava/lang/Object;
.source "FTSListForDownloading.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 295
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #calls: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->cancelDownload()V
    invoke-static {v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$000(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$102(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/16 v1, 0x138a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 302
    return-void
.end method
