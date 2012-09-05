.class Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$4;
.super Ljava/lang/Object;
.source "FTCUploadSessionList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 381
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$4;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$4;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$302(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$4;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$202(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Lcom/sec/android/app/FileTransferClient/Data/SessionData;)Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 390
    return-void
.end method
