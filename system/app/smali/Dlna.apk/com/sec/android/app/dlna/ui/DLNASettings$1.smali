.class Lcom/sec/android/app/dlna/ui/DLNASettings$1;
.super Ljava/lang/Object;
.source "DLNASettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;->saveSettings()V
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
    .line 342
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 345
    :try_start_0
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$300(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$402(Lcom/sec/android/app/dlna/ui/DLNASettings;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_43} :catch_130

    .line 375
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setMyPlayerSelected(Z)V

    .line 379
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$1$1;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 387
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 388
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #calls: Lcom/sec/android/app/dlna/ui/DLNASettings;->clearPlaylist()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$500(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->startActivity(Landroid/content/Intent;)V

    .line 392
    return-void

    .line 350
    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 352
    const-string v0, "sharing_video"

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 354
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addVideoDirectory()Z

    .line 358
    :cond_e0
    :goto_e0
    const-string v0, "sharing_picture"

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_142

    .line 360
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addImageDirectory()Z

    .line 364
    :cond_107
    :goto_107
    const-string v0, "sharing_audio"

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 366
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addAudioDirectory()Z
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_12e} :catch_130

    goto/16 :goto_43

    .line 372
    :catch_130
    move-exception v0

    .line 373
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_43

    .line 356
    :cond_136
    :try_start_136
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->removeVideoDirectory()Z

    goto :goto_e0

    .line 362
    :cond_142
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->removeImageDirectory()Z

    goto :goto_107

    .line 368
    :cond_14e
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->removeAudioDirectory()Z
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_136 .. :try_end_159} :catch_130

    goto/16 :goto_43
.end method
