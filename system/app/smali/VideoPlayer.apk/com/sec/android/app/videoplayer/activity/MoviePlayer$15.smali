.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 3077
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-static {p2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$902(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 3082
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v0, :cond_15

    .line 3083
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 3084
    :cond_15
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "classname"

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$902(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 3089
    return-void
.end method
