.class Lcom/sec/android/app/dlna/ui/DLNASettings$5;
.super Landroid/content/BroadcastReceiver;
.source "DLNASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 554
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 555
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "default_storage"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 558
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadPath(Ljava/lang/String;)Z

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "default_storage"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_10f

    .line 563
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_4b .. :try_end_58} :catch_109
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_58} :catch_10f

    .line 568
    :cond_58
    :goto_58
    :try_start_58
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 572
    :cond_6a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_storage"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 574
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 576
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 577
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v2

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_114

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 582
    const-string v0, "DLNA"

    const-string v1, "mReceiver :: return Preset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    .line 584
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    .line 585
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetServer()V

    .line 586
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #calls: Lcom/sec/android/app/dlna/ui/DLNASettings;->clearPlaylist()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$500(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->startActivity(Landroid/content/Intent;)V

    .line 603
    :cond_fd
    :goto_fd
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    .line 607
    :goto_108
    return-void

    .line 564
    :catch_109
    move-exception v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_10d} :catch_10f

    goto/16 :goto_58

    .line 604
    :catch_10f
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_108

    .line 590
    :cond_114
    :try_start_114
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_fd

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_129} :catch_10f

    move-result v0

    if-nez v0, :cond_fd

    .line 593
    :try_start_12c
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 596
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 597
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_148} :catch_149
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_148} :catch_10f

    goto :goto_fd

    .line 599
    :catch_149
    move-exception v0

    .line 600
    :try_start_14a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_10f

    goto :goto_fd
.end method
