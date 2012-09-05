.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;
.super Landroid/os/Handler;
.source "MusicSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/16 v6, 0x1000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 436
    const v1, 0xc8596

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_b5

    .line 437
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBTStateHandler isBluetoothA2dpOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isExtraSpeakerDockOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_b6

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 445
    :cond_67
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectResourceId:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 449
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v4

    if-eq v1, v6, :cond_b5

    .line 450
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sinkState == BluetoothA2dp.STATE_PLAYING, Effect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->Normal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aput v6, v1, v4

    .line 453
    invoke-static {v5}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 455
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 457
    .local v0, corePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    if-eqz v0, :cond_b5

    .line 458
    :try_start_b2
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b5} :catch_c0

    .line 467
    .end local v0           #corePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    :cond_b5
    :goto_b5
    return-void

    .line 464
    :cond_b6
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_b5

    .line 460
    .restart local v0       #corePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    :catch_c0
    move-exception v1

    goto :goto_b5
.end method
