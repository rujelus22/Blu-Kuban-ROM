.class Lcom/sec/android/app/music/TrackBrowserActivity$40;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$40;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 2377
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$40;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2400(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$40;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mStart:Z
    invoke-static {v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2500(Lcom/sec/android/app/music/TrackBrowserActivity;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 2403
    :cond_10
    :goto_10
    return-void

    .line 2380
    :cond_11
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 2381
    .local v4, service:Lcom/sec/android/app/music/ICorePlayerService;
    if-eqz v4, :cond_10

    .line 2385
    const-wide/16 v0, -0x1

    .line 2387
    .local v0, duration:J
    :try_start_17
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->duration()J

    move-result-wide v0

    .line 2388
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_68

    .line 2389
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L

    mul-double/2addr v5, v7

    long-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    .line 2390
    .local v3, progress:I
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$40;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2400(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2392
    invoke-static {}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mNowPlayingProgressBarHandler.......... do update. progress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    .end local v3           #progress:I
    :goto_56
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$40;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2600(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_62} :catch_63

    goto :goto_10

    .line 2400
    :catch_63
    move-exception v2

    .line 2401
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 2397
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_68
    :try_start_68
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$40;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2400(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_72} :catch_63

    goto :goto_56
.end method
