.class Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;
.super Ljava/lang/Object;
.source "PresetModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PresetModeActivity;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioShared()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_85

    move-result v0

    if-eqz v0, :cond_1b

    .line 495
    :cond_16
    :goto_16
    return-void

    .line 474
    :catch_17
    move-exception v0

    .line 475
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 480
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    #setter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->device:Lcom/samsung/api/DeviceItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1402(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Lcom/samsung/api/DeviceItem;)Lcom/samsung/api/DeviceItem;

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->device:Lcom/samsung/api/DeviceItem;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 484
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->device:Lcom/samsung/api/DeviceItem;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "position"

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7f
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1b .. :try_end_7f} :catch_80

    goto :goto_16

    .line 492
    :catch_80
    move-exception v0

    .line 493
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_16

    .line 476
    :catch_85
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1b
.end method
