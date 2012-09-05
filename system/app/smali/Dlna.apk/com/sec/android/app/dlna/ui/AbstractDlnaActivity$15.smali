.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$15;
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
    .line 437
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    .line 440
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    .line 443
    :try_start_16
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 444
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 445
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_32} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_32} :catch_52

    .line 452
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->startActivity(Landroid/content/Intent;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isCall_DBUpdated:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->access$202(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;Z)Z

    .line 455
    return-void

    .line 447
    :catch_4d
    move-exception v0

    .line 448
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32

    .line 449
    :catch_52
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_32
.end method
