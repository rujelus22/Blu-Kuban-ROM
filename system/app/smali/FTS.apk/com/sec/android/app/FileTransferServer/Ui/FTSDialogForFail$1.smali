.class Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$1;
.super Ljava/lang/Object;
.source "FTSDialogForFail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->resultDialog(Lcom/sec/android/app/FileTransferServer/Data/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->finish()V

    .line 79
    return-void
.end method
