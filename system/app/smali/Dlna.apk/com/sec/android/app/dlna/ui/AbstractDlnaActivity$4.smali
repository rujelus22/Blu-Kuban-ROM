.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$4;
.super Ljava/lang/Object;
.source "AbstractDlnaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->uploadHandler:Landroid/os/Handler;

    const/16 v1, 0x1a2d

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput-boolean v4, v0, Lcom/sec/android/app/dlna/DLNAManager;->isUpload:Z

    .line 314
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput-boolean v4, v0, Lcom/sec/android/app/dlna/DLNAManager;->isWaiting:Z

    .line 315
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    const/16 v1, 0x439

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 316
    return-void
.end method