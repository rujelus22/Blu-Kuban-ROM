.class public Lcom/google/android/youtube/core/player/Tracker;
.super Landroid/os/Handler;
.source "Tracker.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/Handler;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CVSS_BASE_URI:Landroid/net/Uri;

.field private static final ITAG_REGEX:Ljava/util/regex/Pattern;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;

.field private static final STATS_BASE_URI:Landroid/net/Uri;

.field private static final VSS_PING_INTERVALS:[J


# instance fields
.field private ad:Lcom/google/android/youtube/core/model/VastAd;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field cvssPlaybackId:Ljava/lang/String;

.field private isSendingVssPings:Z

.field private lastVssPingTime:J

.field private nextQuartile:I

.field private nextTrackingPoint:I

.field private numBufferingEvents:I

.field private numVssPingsSent:I

.field private playEnded:Z

.field private playbackPosition:I

.field private playbackSegmentStartTime:I

.field private final playbackSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private playingAd:Z

.field private quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field private recordingPlaybackSegment:Z

.field private sessionStartTimestamp:J

.field private shouldCountPlaybacks:Z

.field private final statsClient:Lcom/google/android/youtube/core/client/StatsClient;

.field private trackingPlayback:Z

.field private final version:Ljava/lang/String;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private videoPrepared:Z

.field private videoStreamUri:Landroid/net/Uri;

.field vssPlaybackId:Ljava/lang/String;

.field private final vssSamplingWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "http://video.google.com/s"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->STATS_BASE_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "http://s2.youtube.com/s?ns=yt"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->CVSS_BASE_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "itag[/=](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->ITAG_REGEX:Ljava/util/regex/Pattern;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    .line 336
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void

    .line 57
    :array_28
    .array-data 0x8
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x9ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;Ljava/lang/String;IZ)V
    .registers 9
    .parameter "context"
    .parameter "analytics"
    .parameter "statsClient"
    .parameter "clock"
    .parameter "version"
    .parameter "samplingWeight"
    .parameter "shouldCountPlaybacks"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 95
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 96
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/StatsClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->statsClient:Lcom/google/android/youtube/core/client/StatsClient;

    .line 97
    iput-object p5, p0, Lcom/google/android/youtube/core/player/Tracker;->version:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegments:Ljava/util/ArrayList;

    .line 99
    iput-object p4, p0, Lcom/google/android/youtube/core/player/Tracker;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 100
    iput p6, p0, Lcom/google/android/youtube/core/player/Tracker;->vssSamplingWeight:I

    .line 101
    iput-boolean p7, p0, Lcom/google/android/youtube/core/player/Tracker;->shouldCountPlaybacks:Z

    .line 102
    return-void
.end method

.method private doResetForReplay()V
    .registers 2

    .prologue
    .line 122
    invoke-static {}, Lcom/google/android/youtube/core/player/Tracker;->newPlaybackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->cvssPlaybackId:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    .line 124
    return-void
.end method

.method private finishPlaybackSegment()V
    .registers 5

    .prologue
    .line 536
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Tracker;->recordingPlaybackSegment:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-nez v1, :cond_29

    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Tracker;->recordingPlaybackSegment:Z

    .line 538
    iget v1, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    iget v2, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegmentStartTime:I

    sub-int v0, v1, v2

    .line 539
    .local v0, segmentLength:I
    const/4 v1, 0x3

    if-le v0, v1, :cond_29

    .line 540
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegments:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegmentStartTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v0           #segmentLength:I
    :cond_29
    return-void
.end method

.method private static formatToSeconds(J)Ljava/lang/String;
    .registers 7
    .parameter "time"

    .prologue
    .line 470
    const-string v0, "%.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    long-to-float v3, p0

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateVssPingUri()Landroid/net/Uri;
    .registers 13

    .prologue
    .line 428
    iget-object v5, p0, Lcom/google/android/youtube/core/player/Tracker;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v5}, Lcom/google/android/youtube/core/utils/Clock;->elapsedMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/youtube/core/player/Tracker;->sessionStartTimestamp:J

    sub-long v3, v5, v7

    .line 429
    .local v3, sessionTime:J
    sget-object v5, Lcom/google/android/youtube/core/player/Tracker;->STATS_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "docid"

    iget-object v7, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "ns"

    const-string v7, "yt"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "len"

    iget-object v7, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget v7, v7, Lcom/google/android/youtube/core/model/Video;->duration:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "el"

    const-string v7, "detailpage"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "ps"

    const-string v7, "android"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "rt"

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/Tracker;->formatToSeconds(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "plid"

    iget-object v7, p0, Lcom/google/android/youtube/core/player/Tracker;->vssPlaybackId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "av"

    iget-object v7, p0, Lcom/google/android/youtube/core/player/Tracker;->version:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "sw"

    const-string v7, "%.1f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/youtube/core/player/Tracker;->vssSamplingWeight:I

    int-to-float v10, v10

    const/high16 v11, 0x4120

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 441
    .local v0, builder:Landroid/net/Uri$Builder;
    iget v5, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    if-nez v5, :cond_c3

    .line 442
    iget-boolean v5, p0, Lcom/google/android/youtube/core/player/Tracker;->shouldCountPlaybacks:Z

    if-eqz v5, :cond_86

    .line 443
    const-string v5, "playback"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 454
    :cond_86
    :goto_86
    iget-object v5, p0, Lcom/google/android/youtube/core/player/Tracker;->videoStreamUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/youtube/core/player/Tracker;->inferITag(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, iTag:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to infer iTag [videoId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", streamUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/core/player/Tracker;->videoStreamUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 461
    :goto_be
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 446
    .end local v1           #iTag:Ljava/lang/String;
    :cond_c3
    const-string v5, "nbe"

    iget v6, p0, Lcom/google/android/youtube/core/player/Tracker;->numBufferingEvents:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 447
    iget-object v5, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegments:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/google/android/youtube/core/player/Tracker;->getSegmentTimesAsStrings(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v2

    .line 448
    .local v2, segmentStrings:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_86

    .line 449
    const-string v6, "st"

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 450
    const-string v6, "et"

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_86

    .line 458
    .end local v2           #segmentStrings:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #iTag:Ljava/lang/String;
    :cond_f1
    const-string v5, "fmt"

    invoke-virtual {v0, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_be
.end method

.method static getCvssPingUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .registers 8
    .parameter "videoId"
    .parameter "playbackId"
    .parameter "trackPoint"
    .parameter "currentMediaTime"

    .prologue
    .line 323
    int-to-long v1, p3

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/Tracker;->formatToSeconds(J)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, mediaTimeAsString:Ljava/lang/String;
    sget-object v1, Lcom/google/android/youtube/core/player/Tracker;->CVSS_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "docid"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "plid"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ps"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "yttk"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "et"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "el"

    const-string v3, "detailpage"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ctp"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getQuartilePingUri(I)Landroid/net/Uri;
    .registers 3
    .parameter "quartile"

    .prologue
    .line 295
    packed-switch p1, :pswitch_data_14

    .line 299
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 296
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->firstQuartilePingUri:Landroid/net/Uri;

    goto :goto_4

    .line 297
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->midpointPingUri:Landroid/net/Uri;

    goto :goto_4

    .line 298
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->thirdQuartilePingUri:Landroid/net/Uri;

    goto :goto_4

    .line 295
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method private static getSegmentTimesAsStrings(Ljava/util/List;)Landroid/util/Pair;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, segments:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v3, startTimesBuilder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v0, endTimesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 553
    .local v2, segment:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v5, "%.1f,"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v5, "%.1f,"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 556
    .end local v2           #segment:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_51
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v4, ""

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    :goto_5f
    return-object v4

    :cond_60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v7, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_5f
.end method

.method private static inferITag(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "streamUri"

    .prologue
    .line 465
    sget-object v1, Lcom/google/android/youtube/core/player/Tracker;->ITAG_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 466
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;IZ)Lcom/google/android/youtube/core/player/Tracker;
    .registers 16
    .parameter "context"
    .parameter "analytics"
    .parameter "statsClient"
    .parameter "clock"
    .parameter "samplingWeight"
    .parameter "shouldCountPlaybacks"

    .prologue
    const/4 v9, 0x0

    .line 479
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/youtube/core/player/Tracker;

    .line 480
    .local v2, tracker:[Lcom/google/android/youtube/core/player/Tracker;
    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8, v9}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 481
    .local v8, conditionVariable:Landroid/os/ConditionVariable;
    new-instance v0, Lcom/google/android/youtube/core/player/Tracker$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/player/Tracker$1;-><init>(Landroid/content/Context;[Lcom/google/android/youtube/core/player/Tracker;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;IZLandroid/os/ConditionVariable;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker$1;->start()V

    .line 493
    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    .line 494
    aget-object v0, v2, v9

    return-object v0
.end method

.method private static newPlaybackId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 339
    .local v0, randomBytes:[B
    sget-object v1, Lcom/google/android/youtube/core/player/Tracker;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 340
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static nextVssPingDelayTime(JJI)J
    .registers 12
    .parameter "lastPingTime"
    .parameter "currentTime"
    .parameter "numPingsSent"

    .prologue
    .line 409
    move-wide v1, p0

    .line 410
    .local v1, timeToSendNextPing:J
    move v0, p4

    .line 413
    .local v0, numPingsShouldHaveSent:I
    :goto_2
    sget-object v3, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    array-length v3, v3

    if-gt v0, v3, :cond_15

    cmp-long v3, v1, p2

    if-gez v3, :cond_15

    .line 414
    sget-object v3, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    add-long/2addr v1, v3

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 417
    :cond_15
    cmp-long v3, v1, p2

    if-gez v3, :cond_33

    .line 419
    sub-long v3, p2, v1

    sget-object v5, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    sget-object v6, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-wide v5, v5, v6

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sget-object v5, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    sget-object v6, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-wide v5, v5, v6

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 424
    :cond_33
    sub-long v3, v1, p2

    return-wide v3
.end method

.method private ping(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 307
    if-eqz p1, :cond_1f

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pinging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->statsClient:Lcom/google/android/youtube/core/client/StatsClient;

    invoke-interface {v0, p1, p0}, Lcom/google/android/youtube/core/client/StatsClient;->ping(Landroid/net/Uri;Lcom/google/android/youtube/core/async/Callback;)V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static safeGetQuartile(II)I
    .registers 3
    .parameter "currentTimeInMillis"
    .parameter "totalTimeInMillis"

    .prologue
    .line 287
    if-lez p1, :cond_6

    .line 288
    mul-int/lit8 v0, p0, 0x4

    div-int/2addr v0, p1

    .line 290
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private scheduleNextVssPing()V
    .registers 5

    .prologue
    .line 498
    iget v2, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    sget-object v3, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    array-length v3, v3

    if-gt v2, v3, :cond_15

    sget-object v2, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    iget v3, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v0, v2, v3

    .line 501
    .local v0, pingInterval:J
    :goto_f
    const/16 v2, 0x68

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/youtube/core/player/Tracker;->sendEmptyMessageDelayed(IJ)Z

    .line 502
    return-void

    .line 498
    .end local v0           #pingInterval:J
    :cond_15
    sget-object v2, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    sget-object v3, Lcom/google/android/youtube/core/player/Tracker;->VSS_PING_INTERVALS:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v0, v2, v3

    goto :goto_f
.end method

.method private sendVssPing()V
    .registers 5

    .prologue
    .line 505
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/Tracker;->isSendingVssPings:Z

    if-eqz v2, :cond_32

    .line 506
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Tracker;->recordingPlaybackSegment:Z

    .line 507
    .local v1, wasRecordingVssInterval:Z
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/Tracker;->recordingPlaybackSegment:Z

    if-eqz v2, :cond_d

    .line 508
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->finishPlaybackSegment()V

    .line 511
    :cond_d
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->generateVssPingUri()Landroid/net/Uri;

    move-result-object v0

    .line 512
    .local v0, uri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 514
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/youtube/core/player/Tracker;->numBufferingEvents:I

    .line 515
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Tracker;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v2}, Lcom/google/android/youtube/core/utils/Clock;->elapsedMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/core/player/Tracker;->lastVssPingTime:J

    .line 516
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 517
    if-eqz v1, :cond_29

    .line 518
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->startPlaybackSegment()V

    .line 520
    :cond_29
    iget v2, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    .line 521
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->scheduleNextVssPing()V

    .line 523
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #wasRecordingVssInterval:Z
    :cond_32
    return-void
.end method

.method private startPlaybackSegment()V
    .registers 3

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->recordingPlaybackSegment:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->isSendingVssPings:Z

    if-eqz v0, :cond_19

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->recordingPlaybackSegment:Z

    .line 531
    iget v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    iput v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegmentStartTime:I

    .line 533
    :cond_19
    return-void
.end method

.method private trackPrepared()V
    .registers 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->sendVssPing()V

    .line 382
    return-void
.end method


# virtual methods
.method doReset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 6
    .parameter "video"
    .parameter "ad"
    .parameter "quality"

    .prologue
    const/4 v1, 0x1

    .line 109
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    .line 110
    iput-object p3, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 111
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    .line 112
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    if-eqz v0, :cond_10

    .line 113
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->doResetForReplay()V

    .line 116
    :cond_10
    iput-object p2, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 117
    if-eqz p2, :cond_1e

    iget-object v0, p2, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    .line 118
    iput v1, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    .line 119
    return-void

    .line 117
    :cond_1e
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    .line 136
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_1e0

    .line 280
    :cond_5
    :goto_5
    return-void

    .line 138
    :sswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v8, v9, v10

    check-cast v8, Lcom/google/android/youtube/core/model/Video;

    .line 139
    .local v8, v:Lcom/google/android/youtube/core/model/Video;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    const/4 v10, 0x1

    aget-object v0, v9, v10

    check-cast v0, Lcom/google/android/youtube/core/model/VastAd;

    .line 140
    .local v0, a:Lcom/google/android/youtube/core/model/VastAd;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    const/4 v10, 0x2

    aget-object v5, v9, v10

    check-cast v5, Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 141
    .local v5, q:Lcom/google/android/youtube/core/model/Stream$Quality;
    invoke-virtual {p0, v8, v0, v5}, Lcom/google/android/youtube/core/player/Tracker;->doReset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    goto :goto_5

    .line 145
    .end local v0           #a:Lcom/google/android/youtube/core/model/VastAd;
    .end local v5           #q:Lcom/google/android/youtube/core/model/Stream$Quality;
    .end local v8           #v:Lcom/google/android/youtube/core/model/Video;
    :sswitch_2b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->quit()V

    .line 146
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_5

    .line 150
    :sswitch_37
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_5

    .line 151
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->clickthroughPingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    goto :goto_5

    .line 156
    :sswitch_43
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-nez v9, :cond_51

    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    if-eqz v9, :cond_58

    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    if-nez v9, :cond_58

    .line 157
    :cond_51
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->impressionUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 161
    :cond_58
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-nez v9, :cond_69

    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->videoPrepared:Z

    if-nez v9, :cond_69

    .line 162
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->videoPrepared:Z

    .line 163
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->trackPrepared()V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Tracker;->trackStarted()V

    .line 166
    :cond_69
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playEnded:Z

    goto :goto_5

    .line 170
    :sswitch_6d
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_79

    .line 171
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->closePingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    goto :goto_5

    .line 176
    :cond_79
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playEnded:Z

    if-nez v9, :cond_8f

    .line 177
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "PlayStopped"

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    .line 181
    :goto_8a
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->finishPlaybackSegment()V

    goto/16 :goto_5

    .line 179
    :cond_8f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playEnded:Z

    goto :goto_8a

    .line 186
    :sswitch_93
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_a9

    .line 187
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->completePingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 188
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    .line 196
    :goto_a1
    const/4 v9, 0x0

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    .line 197
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playEnded:Z

    goto/16 :goto_5

    .line 190
    :cond_a9
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "PlayEnded"

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 191
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    if-eqz v9, :cond_bb

    .line 192
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->doResetForReplay()V

    .line 194
    :cond_bb
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->finishPlaybackSegment()V

    goto :goto_a1

    .line 201
    :sswitch_bf
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_e1

    .line 202
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_d2

    .line 205
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->closePingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 206
    const/4 v9, 0x5

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    .line 208
    :cond_d2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    .line 209
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "AdPlayError"

    const/4 v11, 0x0

    iget v12, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 211
    :cond_e1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_f7

    .line 212
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "PlayErrorException"

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    .line 222
    :goto_f2
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->finishPlaybackSegment()V

    goto/16 :goto_5

    .line 214
    :cond_f7
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_121

    iget v9, p1, Landroid/os/Message;->arg2:I

    if-eqz v9, :cond_121

    .line 215
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PlayErrorMediaUnknown"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    goto :goto_f2

    .line 218
    :cond_121
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PlayError"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    goto :goto_f2

    .line 227
    :sswitch_142
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 228
    .local v2, currentTimeInMillis:I
    div-int/lit16 v9, v2, 0x3e8

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    .line 229
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_174

    .line 230
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 231
    .local v6, totalTimeInMillis:I
    invoke-static {v2, v6}, Lcom/google/android/youtube/core/player/Tracker;->safeGetQuartile(II)I

    move-result v1

    .line 232
    .local v1, currentQuartile:I
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    if-lt v1, v9, :cond_5

    .line 234
    move v3, v1

    .local v3, i:I
    :goto_15d
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    if-lt v3, v9, :cond_16b

    .line 235
    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/player/Tracker;->getQuartilePingUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 236
    .local v7, uri:Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_171

    .line 240
    .end local v7           #uri:Landroid/net/Uri;
    :cond_16b
    add-int/lit8 v9, v1, 0x1

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    goto/16 :goto_5

    .line 234
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_171
    add-int/lit8 v3, v3, -0x1

    goto :goto_15d

    .line 242
    .end local v1           #currentQuartile:I
    .end local v3           #i:I
    .end local v6           #totalTimeInMillis:I
    .end local v7           #uri:Landroid/net/Uri;
    :cond_174
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    if-eqz v9, :cond_5

    .line 243
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17f

    if-gez v2, :cond_191

    :cond_17f
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_188

    const/16 v9, 0x4e20

    if-ge v2, v9, :cond_191

    :cond_188
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    const/16 v9, 0x7530

    if-lt v2, v9, :cond_5

    .line 246
    :cond_191
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/core/player/Tracker;->cvssPlaybackId:Ljava/lang/String;

    iget v11, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    invoke-static {v9, v10, v11, v2}, Lcom/google/android/youtube/core/player/Tracker;->getCvssPingUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v4

    .line 248
    .local v4, pingUri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 249
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    goto/16 :goto_5

    .line 254
    .end local v2           #currentTimeInMillis:I
    .end local v4           #pingUri:Landroid/net/Uri;
    :sswitch_1a8
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->videoPrepared:Z

    if-eqz v9, :cond_5

    .line 255
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->numBufferingEvents:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->numBufferingEvents:I

    .line 256
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->finishPlaybackSegment()V

    goto/16 :goto_5

    .line 260
    :sswitch_1b7
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->videoPrepared:Z

    if-eqz v9, :cond_5

    .line 261
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->startPlaybackSegment()V

    goto/16 :goto_5

    .line 265
    :sswitch_1c0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->finishPlaybackSegment()V

    .line 266
    iget v9, p1, Landroid/os/Message;->arg1:I

    div-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    goto/16 :goto_5

    .line 269
    :sswitch_1cb
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->finishPlaybackSegment()V

    goto/16 :goto_5

    .line 272
    :sswitch_1d0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->startPlaybackSegment()V

    goto/16 :goto_5

    .line 275
    :sswitch_1d5
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    const/16 v10, 0x190

    if-ge v9, v10, :cond_5

    .line 276
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->sendVssPing()V

    goto/16 :goto_5

    .line 136
    :sswitch_data_1e0
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_1d0
        0x3 -> :sswitch_1cb
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_142
        0x6 -> :sswitch_1a8
        0x7 -> :sswitch_1b7
        0x8 -> :sswitch_93
        0x9 -> :sswitch_bf
        0xa -> :sswitch_1c0
        0x65 -> :sswitch_6
        0x66 -> :sswitch_2b
        0x67 -> :sswitch_37
        0x68 -> :sswitch_1d5
    .end sparse-switch
.end method

.method nextInt(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 344
    sget-object v0, Lcom/google/android/youtube/core/player/Tracker;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Tracker;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Ljava/lang/Void;)V
    .registers 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 361
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Tracker;->onResponse(Landroid/net/Uri;Ljava/lang/Void;)V

    return-void
.end method

.method public pingClickthrough()V
    .registers 2

    .prologue
    .line 131
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->sendEmptyMessage(I)Z

    .line 132
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 127
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method public reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 7
    .parameter "video"
    .parameter "ad"
    .parameter "quality"

    .prologue
    .line 105
    const/16 v0, 0x65

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method public setPlaybackPosition(J)V
    .registers 5
    .parameter "playbackPositionMillis"

    .prologue
    .line 404
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackPosition:I

    .line 405
    return-void
.end method

.method shouldSendVssPings()Z
    .registers 5

    .prologue
    .line 348
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/Tracker;->nextInt(I)I

    move-result v0

    .line 349
    .local v0, randomInt:I
    iget v2, p0, Lcom/google/android/youtube/core/player/Tracker;->vssSamplingWeight:I

    if-le v2, v0, :cond_38

    const/4 v1, 0x1

    .line 350
    .local v1, shouldPing:Z
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSS sampling weight is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/core/player/Tracker;->vssSamplingWeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", generated number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will ping - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 352
    return v1

    .line 349
    .end local v1           #shouldPing:Z
    :cond_38
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public trackRestored()V
    .registers 7

    .prologue
    const/16 v5, 0x68

    .line 395
    iget v0, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    if-lez v0, :cond_27

    iget v0, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_27

    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/player/Tracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->isSendingVssPings:Z

    if-eqz v0, :cond_27

    .line 397
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/Tracker;->lastVssPingTime:J

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Tracker;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v2}, Lcom/google/android/youtube/core/utils/Clock;->elapsedMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/player/Tracker;->nextVssPingDelayTime(JJI)J

    move-result-wide v0

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/youtube/core/player/Tracker;->sendEmptyMessageDelayed(IJ)Z

    .line 401
    :cond_27
    return-void
.end method

.method public trackStarted()V
    .registers 6

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PlayStarted"

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget v4, v4, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    .line 386
    return-void
.end method

.method public trackStopped()V
    .registers 2

    .prologue
    .line 390
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->removeMessages(I)V

    .line 391
    return-void
.end method

.method public trackVideoInit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-static {}, Lcom/google/android/youtube/core/player/Tracker;->newPlaybackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->vssPlaybackId:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/Clock;->elapsedMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/Tracker;->sessionStartTimestamp:J

    .line 366
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->removeMessages(I)V

    .line 367
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/Tracker;->recordingPlaybackSegment:Z

    .line 368
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Tracker;->shouldSendVssPings()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->isSendingVssPings:Z

    .line 369
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playbackSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/Tracker;->videoPrepared:Z

    .line 371
    iput v2, p0, Lcom/google/android/youtube/core/player/Tracker;->numVssPingsSent:I

    .line 372
    iput v2, p0, Lcom/google/android/youtube/core/player/Tracker;->numBufferingEvents:I

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/Tracker;->lastVssPingTime:J

    .line 374
    return-void
.end method

.method public trackVideoPrepare(Landroid/net/Uri;)V
    .registers 2
    .parameter "streamUri"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Tracker;->videoStreamUri:Landroid/net/Uri;

    .line 378
    return-void
.end method
