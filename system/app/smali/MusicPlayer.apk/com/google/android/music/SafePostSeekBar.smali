.class public Lcom/google/android/music/SafePostSeekBar;
.super Landroid/widget/SeekBar;
.source "SafePostSeekBar.java"


# instance fields
.field private mAttachedToWindow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/SeekBar;->onAttachedToWindow()V

    .line 36
    monitor-enter p0

    .line 37
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/music/SafePostSeekBar;->mAttachedToWindow:Z

    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 38
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/music/SafePostSeekBar;->mAttachedToWindow:Z

    .line 45
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 46
    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    .line 47
    return-void

    .line 45
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized post(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 26
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/SafePostSeekBar;->mAttachedToWindow:Z

    if-eqz v0, :cond_b

    .line 27
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    move-result v0

    .line 29
    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 26
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
