.class Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$1;
.super Ljava/lang/Object;
.source "FTCResultSessionList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->onCreateDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->removeListActivity()V

    .line 157
    return-void
.end method
