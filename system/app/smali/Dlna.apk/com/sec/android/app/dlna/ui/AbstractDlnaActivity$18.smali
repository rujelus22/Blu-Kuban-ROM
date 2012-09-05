.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$18;
.super Landroid/content/BroadcastReceiver;
.source "AbstractDlnaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
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
    .line 644
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 646
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 647
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 648
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_3d

    .line 650
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 653
    :try_start_1a
    const-string v2, "default_storage"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 655
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadPath(Ljava/lang/String;)Z

    .line 656
    const-string v0, "default_storage"

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3d} :catch_9e

    .line 665
    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 667
    const-string v0, "DLNA"

    const-string v1, "mReceiver :: return Preset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    .line 669
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    .line 670
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetServer()V

    .line 671
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->clearPlaylist()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->access$100(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->startActivity(Landroid/content/Intent;)V

    .line 688
    :cond_9d
    return-void

    .line 659
    :catch_9e
    move-exception v0

    .line 660
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method
