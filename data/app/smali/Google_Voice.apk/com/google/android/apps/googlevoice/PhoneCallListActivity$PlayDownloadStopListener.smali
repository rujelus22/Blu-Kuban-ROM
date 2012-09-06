.class public Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;
.implements Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayDownloadStopListener"
.end annotation


# instance fields
.field private mediaPlayerPreparedRunnable:Ljava/lang/Runnable;

.field private playWhenDownloaded:Z

.field private request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

.field private stream:Ljava/io/FileInputStream;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

.field private transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 2156
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->playWhenDownloaded:Z

    .line 2143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->stream:Ljava/io/FileInputStream;

    .line 2149
    new-instance v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$1;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->mediaPlayerPreparedRunnable:Ljava/lang/Runnable;

    .line 2157
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;

    .line 2158
    return-void
.end method

.method static synthetic access$3102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;Lcom/google/android/apps/googlevoice/TranscriptView;)Lcom/google/android/apps/googlevoice/TranscriptView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 2138
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->onMediaPlayerPrepared()V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;

    return-object v0
.end method

.method private endMediaPlayback()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2421
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2422
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->stop()V

    .line 2423
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->done()V

    .line 2424
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;->setActiveMediaPlayer(Lcom/google/android/apps/googlevoice/MediaPlayer;)V

    .line 2426
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->stream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_33

    .line 2427
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->stream:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 2428
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->stream:Ljava/io/FileInputStream;

    .line 2430
    :cond_33
    return-void
.end method

.method private onMediaPlayerPrepared()V
    .registers 5

    .prologue
    .line 2317
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->phoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    .line 2318
    .local v0, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;->setActiveMediaPlayer(Lcom/google/android/apps/googlevoice/MediaPlayer;)V

    .line 2320
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/PlaybackClock;->getPosition()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/PlaybackClock;->seekPosition(J)V

    .line 2322
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallDurationMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/PlaybackClock;->start(J)V

    .line 2323
    return-void
.end method

.method private pause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2388
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_a

    .line 2389
    const-string v0, "pausing"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2392
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2393
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2394
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 2397
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2398
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->pause()V

    .line 2399
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;->queueResetAudioRouting()V

    .line 2402
    :cond_3f
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->playWhenDownloaded:Z

    .line 2404
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3502(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I)I

    .line 2405
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;

    if-eqz v0, :cond_4f

    .line 2406
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 2408
    :cond_4f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->disableProximitySensor()V

    .line 2409
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->updateView()V

    .line 2410
    return-void
.end method

.method private phoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 2

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    return-object v0
.end method

.method private prepareMediaPlayer(Ljava/lang/String;)V
    .registers 6
    .parameter "filename"

    .prologue
    const/16 v3, 0x450

    const/4 v2, 0x0

    .line 2270
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_15

    .line 2271
    const-string v0, "prepareMediaPlayer(\'%s\')"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2273
    :cond_15
    if-eqz p1, :cond_61

    .line 2274
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/apps/googlevoice/MediaPlayer;->prepareToPlayFile(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2276
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_38

    .line 2277
    const-string v0, "prepareMediaPlayer(): mediaPlayer.prepareToPlayFile() is OK"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2280
    :cond_38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->mediaPlayerPreparedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 2311
    :goto_41
    return-void

    .line 2282
    :cond_42
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_51

    .line 2283
    const-string v0, "prepareMediaPlayer(): mediaPlayer.prepareToPlayFile() failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2287
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 2288
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3502(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I)I

    .line 2289
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->updateView()V

    goto :goto_41

    .line 2292
    :cond_61
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_6a

    .line 2293
    const-string v0, "prepareMediaPlayer(): no file!"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2295
    :cond_6a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/ConnectionInformation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ConnectionInformation;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2296
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_7f

    .line 2297
    const-string v0, "prepareMediaPlayer(): but we do have a network connection, showing generic error"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2300
    :cond_7f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 2308
    :goto_86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3502(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I)I

    .line 2309
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->updateView()V

    goto :goto_41

    .line 2302
    :cond_8f
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_98

    .line 2303
    const-string v0, "prepareMediaPlayer(): and we have no network connection, showing \'no network\' error"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2306
    :cond_98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/16 v1, 0x451

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_86
.end method

.method private updateView()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 2326
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 2327
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 2328
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    new-instance v2, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$3;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 2362
    :cond_1a
    :goto_1a
    return-void

    .line 2343
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)I

    move-result v1

    if-nez v1, :cond_44

    const v0, 0x1080024

    .line 2347
    .local v0, icon:I
    :goto_26
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v2, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)I

    move-result v1

    if-ne v1, v3, :cond_54

    const/16 v1, 0x1d

    :goto_34
    invoke-virtual {v2, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 2349
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    new-instance v2, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$4;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 2343
    .end local v0           #icon:I
    :cond_44
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)I

    move-result v1

    if-ne v1, v3, :cond_50

    const v0, 0x1080023

    goto :goto_26

    :cond_50
    const v0, 0x1080027

    goto :goto_26

    .line 2347
    .restart local v0       #icon:I
    :cond_54
    const/16 v1, 0x1e

    goto :goto_34
.end method


# virtual methods
.method public declared-synchronized download()V
    .registers 3

    .prologue
    .line 2234
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    if-nez v0, :cond_52

    .line 2235
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_2d

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending new VoiceRecordingRequest for call id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->phoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2239
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceRecordingRequest()Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    .line 2240
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->phoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->setCallId(Ljava/lang/String;)V

    .line 2241
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$2;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->submit(Ljava/lang/Runnable;)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_8b

    .line 2253
    :cond_50
    :goto_50
    monitor-exit p0

    return-void

    .line 2248
    :cond_52
    :try_start_52
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_50

    .line 2249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "have existing VoiceRecordingRequest for call id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', should be \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->phoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_52 .. :try_end_8a} :catchall_8b

    goto :goto_50

    .line 2234
    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActive()V
    .registers 6

    .prologue
    .line 2161
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->phoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    .line 2162
    .local v0, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v1

    .line 2163
    .local v1, transcript:Lcom/google/android/apps/googlevoice/core/Transcript;
    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    if-eqz v2, :cond_19

    .line 2164
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->setActiveTranscript(Lcom/google/android/apps/googlevoice/core/Transcript;Lcom/google/android/apps/googlevoice/TranscriptView;)V

    .line 2166
    :cond_19
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallDurationMillis()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/PlaybackClock;->setLength(J)V

    .line 2167
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/apps/googlevoice/PlaybackClock;->addListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V

    .line 2168
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/PlaybackClock;->addListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V

    .line 2170
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/PlaybackClock;->addStepListener(Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;)V

    .line 2171
    return-void
.end method

.method public onActiveLost()V
    .registers 1

    .prologue
    .line 2174
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->stop()V

    .line 2175
    return-void
.end method

.method public declared-synchronized onDoneDownloading()V
    .registers 5

    .prologue
    .line 2260
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1a

    .line 2261
    const-string v0, "onDoneDownloading, filename = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->getFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2263
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->playWhenDownloaded:Z

    if-eqz v0, :cond_27

    .line 2264
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->prepareMediaPlayer(Ljava/lang/String;)V

    .line 2266
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 2267
    monitor-exit p0

    return-void

    .line 2260
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPlayButtonDidClick()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2179
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_1d

    .line 2180
    const-string v1, "onClick(), status = %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2182
    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_b4

    .line 2225
    :goto_26
    return-void

    .line 2184
    :pswitch_27
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_30

    .line 2185
    const-string v1, "clicked while idle: starting download"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2187
    :cond_30
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setActivePlayDownloadStopListener(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V
    invoke-static {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V

    .line 2190
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/PlaybackClock;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/PlaybackClock;->getLength()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_58

    .line 2191
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/PlaybackClock;->seekPosition(J)V

    .line 2194
    :cond_58
    iput-boolean v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->playWhenDownloaded:Z

    .line 2195
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 2196
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->download()V

    .line 2197
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v1, v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3502(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I)I

    .line 2198
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->enableProximitySensor()V

    .line 2199
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->updateView()V

    .line 2201
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    .line 2202
    .local v0, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_PLAY_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 2203
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto :goto_26

    .line 2207
    .end local v0           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :pswitch_83
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_8c

    .line 2208
    const-string v1, "clicked while downloading: stopping"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2210
    :cond_8c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->disableProximitySensor()V

    .line 2211
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/PlaybackClock;->pause()V

    goto :goto_26

    .line 2215
    :pswitch_9b
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_a4

    .line 2216
    const-string v1, "clicked while playing: stopping"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2218
    :cond_a4
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->disableProximitySensor()V

    .line 2219
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/PlaybackClock;->pause()V

    goto/16 :goto_26

    .line 2182
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_27
        :pswitch_83
        :pswitch_9b
    .end packed-switch
.end method

.method public onPlaybackBarDidSeek(I)V
    .registers 5
    .parameter "seekedPosition"

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PlaybackClock;->seekPosition(J)V

    .line 2231
    return-void
.end method

.method public onPlaybackClockDidFinish(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 2434
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->pause()V

    .line 2435
    return-void
.end method

.method public onPlaybackClockDidPause(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 2384
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->pause()V

    .line 2385
    return-void
.end method

.method public onPlaybackClockDidResume(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 4
    .parameter "clock"

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2367
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_15

    .line 2368
    const-string v0, "Setting audio route"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2370
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$4000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;->configureAudioRouting()V

    .line 2371
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_27

    .line 2372
    const-string v0, "Starting media player"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2374
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->start()V

    .line 2376
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    const/4 v1, 0x2

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3502(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I)I

    .line 2377
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->enableProximitySensor()V

    .line 2378
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->updateView()V

    .line 2380
    :cond_3e
    return-void
.end method

.method public onPlaybackClockPositionDidSeek(Lcom/google/android/apps/googlevoice/PlaybackClock;J)V
    .registers 6
    .parameter "clock"
    .parameter "position"

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2440
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v0

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/MediaPlayer;->seekTo(I)V

    .line 2442
    :cond_16
    return-void
.end method

.method stop()V
    .registers 3

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/PlaybackClock;->pause()V

    .line 2415
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/PlaybackClock;->removeListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V

    .line 2416
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PlaybackClock;->removeListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V

    .line 2417
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->endMediaPlayback()V

    .line 2418
    return-void
.end method
