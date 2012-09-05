.class Lcom/sec/android/app/music/MusicPlayer$17;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
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
    .line 2455
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 2459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2460
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaReceiver:onReceive() is called,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2477
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iput-boolean v4, v1, Lcom/sec/android/app/music/MusicPlayer;->isActivityExit:Z

    .line 2478
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->finishMusicPlayer()V
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$000(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 2491
    :cond_39
    :goto_39
    return-void

    .line 2480
    :cond_3a
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2481
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2482
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f09013e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f09

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2488
    :cond_72
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->finishMusicPlayer()V
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$000(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 2489
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$17;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v2, "MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method
