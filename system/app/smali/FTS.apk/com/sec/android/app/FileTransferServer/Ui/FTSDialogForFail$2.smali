.class Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$2;
.super Ljava/lang/Object;
.source "FTSDialogForFail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$2;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$2;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->finish()V

    .line 73
    return-void
.end method
