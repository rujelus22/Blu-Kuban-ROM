.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

.field final synthetic val$mAudioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/media/AudioManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iput-object p2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->val$mAudioManager:Landroid/media/AudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 11
    .parameter "profile"
    .parameter "proxy"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1148
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected onServiceConnected isBluetoothA2dpOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->val$mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected onServiceConnected proxy.getConnectedDevices()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->val$mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1153
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_72

    .line 1156
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 1157
    const/4 v2, 0x0

    .line 1161
    .local v2, surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_56
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_6d

    move-result-object v2

    .line 1169
    :goto_5c
    if-eqz v2, :cond_67

    iget-object v3, v2, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v3, :cond_67

    .line 1170
    iget-object v3, v2, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 1172
    :cond_67
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->val$mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 1201
    .end local v2           #surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_6c
    :goto_6c
    return-void

    .line 1163
    .restart local v2       #surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_6d
    move-exception v1

    .line 1165
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c

    .line 1176
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_72
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v0, btIntent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1180
    const-string v3, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1182
    const-string v3, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1186
    :try_start_89
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_8e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_89 .. :try_end_8e} :catch_8f

    goto :goto_6c

    .line 1188
    :catch_8f
    move-exception v1

    .line 1190
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MoviePlayer"

    const-string v4, "onOptionsItemSelected() share bt - activity not found!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1192
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_6c
.end method

.method public onServiceDisconnected(I)V
    .registers 7
    .parameter "profile"

    .prologue
    const/4 v4, 0x1

    .line 1206
    const-string v2, "MoviePlayer"

    const-string v3, "onOptionsItemSelected onServiceDisconnected :"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v0, btIntent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1212
    const-string v2, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1214
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1218
    :try_start_1f
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_24} :catch_25

    .line 1230
    :goto_24
    return-void

    .line 1220
    :catch_25
    move-exception v1

    .line 1222
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MoviePlayer"

    const-string v3, "onOptionsItemSelected() share bt - activity not found!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1224
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_24
.end method
