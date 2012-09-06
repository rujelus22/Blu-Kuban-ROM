.class public Lcom/google/android/apps/googlevoice/TranscriptPlayer;
.super Ljava/lang/Object;
.source "TranscriptPlayer.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;
.implements Lcom/google/android/apps/googlevoice/TranscriptView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/TranscriptPlayer$1;,
        Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;
    }
.end annotation


# instance fields
.field private currentWordIndex:I

.field private final handler:Landroid/os/Handler;

.field private final highlighter:Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;

.field private final playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

.field private startTime:J

.field private transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

.field private view:Lcom/google/android/apps/googlevoice/TranscriptView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 4
    .parameter "playbackClock"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->handler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;-><init>(Lcom/google/android/apps/googlevoice/TranscriptPlayer;Lcom/google/android/apps/googlevoice/TranscriptPlayer$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->highlighter:Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    return v0
.end method

.method static synthetic access$108(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)Lcom/google/android/apps/googlevoice/core/Transcript;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)Lcom/google/android/apps/googlevoice/TranscriptView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->schedule()V

    return-void
.end method

.method private getWordAt(J)I
    .registers 7
    .parameter "elapsedTime"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWordStartTimes()[F

    move-result-object v1

    .line 68
    .local v1, wordStartTimes:[F
    long-to-float v2, p1

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    .line 69
    .local v0, index:I
    if-gez v0, :cond_13

    .line 71
    neg-int v2, v0

    add-int/lit8 v0, v2, -0x1

    .line 73
    :cond_13
    return v0
.end method

.method private schedule()V
    .registers 9

    .prologue
    .line 115
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    if-eqz v4, :cond_46

    iget v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWords()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_46

    .line 116
    iget v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    add-int/lit8 v2, v4, 0x1

    .line 117
    .local v2, nextWordIndex:I
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWords()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_47

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWordStartTimes()[F

    move-result-object v4

    aget v3, v4, v2

    .line 124
    .local v3, offset:F
    :goto_24
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_46

    .line 125
    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->startTime:J

    const/high16 v6, 0x447a

    mul-float/2addr v6, v3

    float-to-long v6, v6

    add-long v0, v4, v6

    .line 126
    .local v0, nextTime:J
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->highlighter:Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->highlighter:Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    .end local v0           #nextTime:J
    .end local v2           #nextWordIndex:I
    .end local v3           #offset:F
    :cond_46
    return-void

    .line 117
    .restart local v2       #nextWordIndex:I
    :cond_47
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWordEndTimes()[F

    move-result-object v4

    iget v5, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    aget v4, v4, v5

    const v5, 0x3e4ccccd

    add-float v3, v4, v5

    goto :goto_24
.end method

.method private setPosition(J)V
    .registers 5
    .parameter "elapsedTime"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    if-nez v0, :cond_5

    .line 85
    :goto_4
    return-void

    .line 82
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->startTime:J

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->getWordAt(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;

    iget v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TranscriptView;->highlightWordAtIndex(I)V

    goto :goto_4
.end method

.method private unschedule()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->highlighter:Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onPlaybackClockDidFinish(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->unschedule()V

    .line 100
    return-void
.end method

.method public onPlaybackClockDidPause(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->unschedule()V

    .line 95
    return-void
.end method

.method public onPlaybackClockDidResume(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->schedule()V

    .line 90
    return-void
.end method

.method public onPlaybackClockPositionDidSeek(Lcom/google/android/apps/googlevoice/PlaybackClock;J)V
    .registers 4
    .parameter "clock"
    .parameter "position"

    .prologue
    .line 104
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->setPosition(J)V

    .line 105
    return-void
.end method

.method public onTranscriptWordClick(Lcom/google/android/apps/googlevoice/TranscriptView;Lcom/google/android/apps/googlevoice/core/Transcript;I)V
    .registers 8
    .parameter "theView"
    .parameter "theTranscript"
    .parameter "wordIndex"

    .prologue
    .line 110
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWordStartTimes()[F

    move-result-object v2

    aget v2, v2, p3

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 111
    .local v0, position:J
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    invoke-interface {v2, v0, v1}, Lcom/google/android/apps/googlevoice/PlaybackClock;->seekPosition(J)V

    .line 112
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/PlaybackClock;->removeListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->highlighter:Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;

    if-eqz v0, :cond_16

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/TranscriptView;->unHighlight()V

    .line 62
    :cond_16
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    .line 63
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;

    .line 64
    return-void
.end method

.method public setActiveTranscript(Lcom/google/android/apps/googlevoice/core/Transcript;Lcom/google/android/apps/googlevoice/TranscriptView;)V
    .registers 6
    .parameter "transcript"
    .parameter "view"

    .prologue
    .line 36
    const-string v1, "transcript"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v1, "view"

    invoke-static {p2, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->reset()V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;

    .line 42
    .local v0, oldView:Lcom/google/android/apps/googlevoice/TranscriptView;
    if-eqz v0, :cond_15

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TranscriptView;->setListener(Lcom/google/android/apps/googlevoice/TranscriptView$Listener;)V

    .line 46
    :cond_15
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    .line 47
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;

    .line 48
    invoke-virtual {p2, p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->setListener(Lcom/google/android/apps/googlevoice/TranscriptView$Listener;)V

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/PlaybackClock;->addListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->startTime:J

    .line 53
    return-void
.end method
