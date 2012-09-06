.class Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;
.super Ljava/lang/Object;
.source "AndroidPlaybackSeekingTracker.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;


# static fields
.field private static final MOVE_THRESHOLD_DP:I = 0x1e


# instance fields
.field private isIdle:Z

.field private final moveThresholdPx:I

.field private seekX:I

.field private seekY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->isIdle:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->moveThresholdPx:I

    .line 44
    return-void
.end method

.method private meetsSeekCriteria(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->isIdle:Z

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->seekX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->moveThresholdPx:I

    if-gt v0, v1, :cond_1c

    iget v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->seekY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->moveThresholdPx:I

    if-le v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private setSeekPosition(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->seekX:I

    .line 73
    iput p2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->seekY:I

    .line 74
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->isIdle:Z

    .line 64
    return-void
.end method

.method public shouldSeek(I)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->shouldSeek(II)Z

    move-result v0

    return v0
.end method

.method public shouldSeek(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->meetsSeekCriteria(II)Z

    move-result v0

    .line 55
    .local v0, seek:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->isIdle:Z

    .line 57
    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;->setSeekPosition(II)V

    .line 58
    :cond_c
    return v0
.end method
