.class Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$2;
.super Ljava/lang/Object;
.source "FTCResultSessionList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 160
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$2;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$2;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->removeListActivity()V

    .line 164
    return-void
.end method
