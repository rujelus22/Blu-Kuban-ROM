.class Landroid/media/AudioService$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 3805
    iput-object p1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3805
    invoke-direct {p0, p1}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3808
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3809
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 3846
    :cond_c
    :goto_c
    return-void

    .line 3812
    :cond_d
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 3813
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_c

    .line 3817
    invoke-static {}, Landroid/media/AudioService;->access$7200()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3818
    :try_start_1c
    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v5}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Z

    move-result v5

    if-nez v5, :cond_48

    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getMode()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_48

    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getMode()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_48

    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getMode()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_48

    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getMode()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4d

    .line 3822
    :cond_48
    monitor-exit v6

    goto :goto_c

    .line 3824
    :catchall_4a
    move-exception v5

    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    throw v5

    :cond_4d
    :try_start_4d
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    .line 3825
    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v5}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6

    .line 3826
    :try_start_55
    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v5}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_86

    .line 3828
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3829
    .local v4, targetedIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 3830
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_86

    .line 3831
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3833
    invoke-virtual {p0}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->abortBroadcast()V
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_88

    .line 3837
    :try_start_74
    iget-object v5, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v5}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v5, v5, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_86
    .catchall {:try_start_74 .. :try_end_86} :catchall_88
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_74 .. :try_end_86} :catch_8b

    .line 3844
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #targetedIntent:Landroid/content/Intent;
    :cond_86
    :goto_86
    :try_start_86
    monitor-exit v6

    goto :goto_c

    :catchall_88
    move-exception v5

    monitor-exit v6
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_88

    throw v5

    .line 3838
    .restart local v3       #extras:Landroid/os/Bundle;
    .restart local v4       #targetedIntent:Landroid/content/Intent;
    :catch_8b
    move-exception v1

    .line 3839
    .local v1, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_8c
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error sending pending intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v8}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_8c .. :try_end_b1} :catchall_88

    goto :goto_86
.end method
