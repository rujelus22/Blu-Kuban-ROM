.class Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettingsEqEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 873
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, action:Ljava/lang/String;
    const-string v2, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 875
    sget-boolean v2, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    if-nez v2, :cond_3c

    .line 876
    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectValue:[I

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I
    invoke-static {v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1100(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)I

    move-result v3

    aget v1, v2, v3

    .line 877
    .local v1, effectValue:I
    const/high16 v2, 0x8

    if-eq v1, v2, :cond_28

    const v2, 0x8000

    if-eq v1, v2, :cond_28

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_3c

    .line 880
    :cond_28
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->saveSettingValue(I)V
    invoke-static {v2, v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1500(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;I)V

    .line 882
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1200(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 883
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->showSoundEffectErrorToast()V
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1600(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    .line 893
    .end local v1           #effectValue:I
    :cond_3c
    :goto_3c
    return-void

    .line 886
    :cond_3d
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1700(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1700(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_61

    :cond_55
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1700(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 889
    :cond_61
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->showSoundEffectErrorToast()V
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1600(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    .line 890
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->finish()V

    goto :goto_3c
.end method
