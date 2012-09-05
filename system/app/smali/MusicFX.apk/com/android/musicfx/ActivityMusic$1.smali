.class Lcom/android/musicfx/ActivityMusic$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicfx/ActivityMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ActivityMusic;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ActivityMusic;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x418

    const/16 v8, 0x404

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v6}, Lcom/android/musicfx/ActivityMusic;->access$000(Lcom/android/musicfx/ActivityMusic;)Z

    move-result v3

    .line 175
    .local v3, isHeadsetOnPrev:Z
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/musicfx/ActivityMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 176
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 177
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    const-string v7, "state"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v5, :cond_32

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-eqz v7, :cond_33

    :cond_32
    move v4, v5

    :cond_33
    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v6, v4}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    .line 198
    :cond_36
    :goto_36
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v4}, Lcom/android/musicfx/ActivityMusic;->access$000(Lcom/android/musicfx/ActivityMusic;)Z

    move-result v4

    if-eq v3, v4, :cond_43

    .line 199
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #calls: Lcom/android/musicfx/ActivityMusic;->updateUIHeadset()V
    invoke-static {v4}, Lcom/android/musicfx/ActivityMusic;->access$100(Lcom/android/musicfx/ActivityMusic;)V

    .line 201
    :cond_43
    return-void

    .line 179
    :cond_44
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 180
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 183
    .local v2, deviceClass:I
    if-eq v2, v9, :cond_60

    if-ne v2, v8, :cond_36

    .line 185
    :cond_60
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v4, v5}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    goto :goto_36

    .line 187
    .end local v2           #deviceClass:I
    :cond_66
    const-string v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 188
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-nez v7, :cond_7c

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-eqz v7, :cond_7d

    :cond_7c
    move v4, v5

    :cond_7d
    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v6, v4}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    goto :goto_36

    .line 189
    :cond_81
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 190
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 193
    .restart local v2       #deviceClass:I
    if-eq v2, v9, :cond_9d

    if-ne v2, v8, :cond_36

    .line 195
    :cond_9d
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v4, v5}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    goto :goto_36
.end method
