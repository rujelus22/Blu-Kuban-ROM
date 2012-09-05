.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbKicker"
.end annotation


# static fields
.field private static final THUMB_SUSPEND_KICK_TIME:I = 0x2710


# instance fields
.field private mThumbSuspendKicker:Ljava/lang/Runnable;

.field private mThumbSuspendKickerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 3557
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    .line 3562
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker$1;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public stopKickThumbSuspend()V
    .registers 3

    .prologue
    .line 3580
    const-string v0, "MoviePlayer"

    const-string v1, "stopKickThumbSuspend"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3582
    return-void
.end method

.method public suspendThumbWork()V
    .registers 6

    .prologue
    .line 3573
    const-string v1, "MoviePlayer"

    const-string v2, "suspendThumbWork"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3575
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 3576
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3577
    return-void
.end method
