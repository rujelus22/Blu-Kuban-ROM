.class Lcom/sec/android/app/music/MusicPlayer$4;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicPlayer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$4;->this$0:Lcom/sec/android/app/music/MusicPlayer;

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

    .line 892
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 893
    .local v1, size:I
    if-eqz v1, :cond_20

    .line 894
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$4;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 897
    :try_start_12
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$4;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/music/ICorePlayerService;->setUlpBypass(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 907
    :goto_1a
    return-void

    .line 898
    :catch_1b
    move-exception v0

    .line 899
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 905
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$4;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->startBluetoothDevicePicker()V
    invoke-static {v2}, Lcom/sec/android/app/music/MusicPlayer;->access$100(Lcom/sec/android/app/music/MusicPlayer;)V

    goto :goto_1a
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$4;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->startBluetoothDevicePicker()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$100(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 888
    return-void
.end method
