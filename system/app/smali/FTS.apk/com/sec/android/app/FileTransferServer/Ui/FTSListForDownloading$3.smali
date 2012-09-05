.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;
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
    .line 348
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #calls: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->cancelDownload()V
    invoke-static {v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$000(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$202(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 356
    return-void
.end method
