.class Lcom/sec/android/app/music/AudioPreview$5;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/AudioPreview;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$5;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7
    .parameter "profile"
    .parameter "proxy"

    .prologue
    const/4 v3, 0x1

    .line 1084
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1085
    .local v0, size:I
    if-eqz v0, :cond_21

    .line 1086
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$5;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 1087
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$5;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$1100(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1088
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$5;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/app/music/AudioPreview;->setUlpBypassInternal(ZZ)V
    invoke-static {v1, v3, v2}, Lcom/sec/android/app/music/AudioPreview;->access$1200(Lcom/sec/android/app/music/AudioPreview;ZZ)V

    .line 1095
    :cond_20
    :goto_20
    return-void

    .line 1093
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$5;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->startBluetoothDevicePicker()V
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$1000(Lcom/sec/android/app/music/AudioPreview;)V

    goto :goto_20
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$5;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->startBluetoothDevicePicker()V
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1000(Lcom/sec/android/app/music/AudioPreview;)V

    .line 1080
    return-void
.end method
