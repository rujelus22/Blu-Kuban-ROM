.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$4;
.super Ljava/lang/Object;
.source "FTSListForDownloading.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 359
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$4;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$4;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$202(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$4;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 365
    return-void
.end method
