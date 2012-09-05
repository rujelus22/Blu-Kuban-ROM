.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/view/Menu;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iput-object p2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->val$menu:Landroid/view/Menu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 12
    .parameter "profile"
    .parameter "proxy"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1405
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareOptionsMenu onServiceConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;outDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-nez v4, :cond_4c

    move v0, v2

    .line 1414
    .local v0, isAudioPathBT:Z
    :goto_37
    if-eqz v0, :cond_4e

    .line 1415
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->val$menu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1416
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->val$menu:Landroid/view/Menu;

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1421
    :goto_4b
    return-void

    .end local v0           #isAudioPathBT:Z
    :cond_4c
    move v0, v3

    .line 1410
    goto :goto_37

    .line 1418
    .restart local v0       #isAudioPathBT:Z
    :cond_4e
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->val$menu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1419
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->val$menu:Landroid/view/Menu;

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4b
.end method

.method public onServiceDisconnected(I)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 1425
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareOptionsMenu onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->val$menu:Landroid/view/Menu;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->val$menu:Landroid/view/Menu;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1428
    return-void
.end method
