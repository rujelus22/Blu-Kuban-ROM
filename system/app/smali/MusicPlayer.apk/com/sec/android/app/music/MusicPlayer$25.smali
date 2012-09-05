.class Lcom/sec/android/app/music/MusicPlayer$25;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicPlayer;->showFlingAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3669
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$25;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iput-object p2, p0, Lcom/sec/android/app/music/MusicPlayer$25;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x2

    .line 3673
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$25;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3676
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$25;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3678
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$25;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3681
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$25;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$25;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$25;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$25;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v2, v2, Lcom/sec/android/app/music/MusicPlayer;->mDelayTimes:I

    mul-int/lit16 v2, v2, 0x12c

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3683
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 3687
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 3691
    return-void
.end method
