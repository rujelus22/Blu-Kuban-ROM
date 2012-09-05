.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;
.super Landroid/content/BroadcastReceiver;
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
    .line 503
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v5, 0xc8596

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStateReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAudioManager.isWiredHeadsetOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v2, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 512
    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectResourceId:[I

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v3

    aget v1, v2, v3

    .line 514
    .local v1, effectStringId:I
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 533
    .end local v1           #effectStringId:I
    :goto_54
    return-void

    .line 518
    :cond_55
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 519
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBTStateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBTStateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBTStateHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_54

    .line 525
    :cond_7c
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isBluetoothA2dpOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isExtraSpeakerDockOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 528
    :cond_cc
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_54

    .line 530
    :cond_d8
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_54
.end method
