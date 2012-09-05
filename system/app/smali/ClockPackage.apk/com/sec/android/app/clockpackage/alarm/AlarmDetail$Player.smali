.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;
.super Ljava/lang/Object;
.source "AlarmDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Player"
.end annotation


# static fields
.field private static final DEBUG:Z

.field static mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2594
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 2592
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .parameter "c"
    .parameter "mSelectedUri"

    .prologue
    .line 2610
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 2611
    const-string v1, "AlarmDetail.Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uri1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 2613
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6e

    .line 2614
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2616
    :try_start_2a
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player$1;

    invoke-direct {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2627
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2628
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2629
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 2630
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2631
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4f} :catch_50

    .line 2643
    :cond_4f
    :goto_4f
    return-void

    .line 2633
    :catch_50
    move-exception v0

    .line 2634
    .local v0, e:Ljava/io/IOException;
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->DEBUG:Z

    if-eqz v1, :cond_4f

    .line 2635
    const-string v1, "AlarmDetail.Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2640
    .end local v0           #e:Ljava/io/IOException;
    :cond_6e
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4f

    .line 2641
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    goto :goto_4f
.end method

.method public static stopMediaPlayer()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 2649
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    .line 2650
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2651
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2652
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2653
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2654
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2656
    :cond_1c
    return-void
.end method
