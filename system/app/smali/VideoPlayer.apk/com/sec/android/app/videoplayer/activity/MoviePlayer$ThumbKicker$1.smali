.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;)V
    .registers 2
    .parameter

    .prologue
    .line 3562
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker$1;->this$1:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3565
    const-string v1, "MoviePlayer"

    const-string v2, "mThumbSuspendKicker.run()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3567
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker$1;->this$1:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 3568
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker$1;->this$1:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->access$2900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker$1;->this$1:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->access$2800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3569
    return-void
.end method
