.class Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$3;
.super Ljava/lang/Object;
.source "FTCDialogForWait.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->onCreateDialog(I)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->popupDestroy()V

    .line 115
    return-void
.end method
