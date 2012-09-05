.class Lcom/sec/android/app/music/AudioPreview$18;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
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
    .line 2980
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 2984
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2985
    .local v1, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMediaReceiver:onReceive() is called,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2989
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v8, v5, Lcom/sec/android/app/music/AudioPreview;->isMediaUnMounted:Z

    .line 3061
    :cond_2d
    :goto_2d
    return-void

    .line 3000
    :cond_2e
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 3001
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "MEDIA_MOUNTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v11, v5, Lcom/sec/android/app/music/AudioPreview;->isMediaUnMounted:Z

    .line 3005
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3006
    .local v0, ActionPath:Ljava/lang/String;
    if-eqz v0, :cond_51

    .line 3012
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v11, v5, Lcom/sec/android/app/music/AudioPreview;->isEjectSD:Z

    .line 3015
    :cond_51
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 3017
    .local v2, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 3018
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3019
    .local v4, runningTask:Ljava/lang/String;
    const-string v5, "SoundPlayer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 3020
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/app/music/AudioPreview;->access$3300(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v6, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v7, 0x7f09013e

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v9, v9, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const/high16 v10, 0x7f09

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3022
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/app/music/AudioPreview;->access$3300(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/Toast;->setDuration(I)V

    .line 3023
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/app/music/AudioPreview;->access$3300(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3025
    :cond_a9
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v5}, Lcom/sec/android/app/music/AudioPreview;->finish()V

    goto/16 :goto_2d

    .line 3026
    .end local v0           #ActionPath:Ljava/lang/String;
    .end local v2           #mActivityManager:Landroid/app/ActivityManager;
    .end local v3           #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #runningTask:Ljava/lang/String;
    :cond_b0
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3027
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3028
    .restart local v0       #ActionPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    if-eqz v0, :cond_132

    .line 3037
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v8, v5, Lcom/sec/android/app/music/AudioPreview;->isEjectSD:Z

    .line 3040
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-eqz v5, :cond_132

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_132

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v5, :cond_132

    .line 3042
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 3043
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v6, 0x10010

    iput v6, v5, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 3044
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 3045
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v9, v5, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 3046
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 3047
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v8, v5, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 3048
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v6, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v6}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v6, v5, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 3049
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v9, v5, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 3050
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v6, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v8}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3054
    :cond_132
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v6, 0x7f09013d

    invoke-static {v5, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3056
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v8, v5, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    .line 3057
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v5}, Lcom/sec/android/app/music/AudioPreview;->stopPlay()V

    .line 3058
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$18;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V
    invoke-static {v5}, Lcom/sec/android/app/music/AudioPreview;->access$2300(Lcom/sec/android/app/music/AudioPreview;)V

    goto/16 :goto_2d
.end method
