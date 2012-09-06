.class public Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;
.super Ljava/lang/Object;
.source "AndroidPlaybackClock.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PlaybackClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$1;,
        Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;
    }
.end annotation


# static fields
.field private static final STEP_PERIOD:I = 0x21


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isNotifyingListeners:Z

.field private length:J

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private playbackBeginningTime:J

.field private position:J

.field private stepListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;",
            ">;"
        }
    .end annotation
.end field

.field private stepper:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;-><init>(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepper:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepListeners:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 75
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->handler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->paused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->position:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->playbackBeginningTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;JZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->setPosition(JZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->schedule()V

    return-void
.end method

.method private ensureNotNotifyingListeners()V
    .registers 3

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    if-eqz v0, :cond_c

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adding/removing a listener from a listener\'s callback method is disallowed for performance reasons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_c
    return-void
.end method

.method private notifyFinishListeners()V
    .registers 3

    .prologue
    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 210
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1b

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;->onPlaybackClockDidFinish(Lcom/google/android/apps/googlevoice/PlaybackClock;)V

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 213
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 214
    return-void
.end method

.method private notifyPauseListeners()V
    .registers 3

    .prologue
    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1b

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;->onPlaybackClockDidPause(Lcom/google/android/apps/googlevoice/PlaybackClock;)V

    .line 147
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 150
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 151
    return-void
.end method

.method private notifyResumeListeners()V
    .registers 3

    .prologue
    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1b

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;->onPlaybackClockDidResume(Lcom/google/android/apps/googlevoice/PlaybackClock;)V

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 131
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 132
    return-void
.end method

.method private notifySeekListeners()V
    .registers 5

    .prologue
    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 202
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1d

    .line 203
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->position:J

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;->onPlaybackClockPositionDidSeek(Lcom/google/android/apps/googlevoice/PlaybackClock;J)V

    .line 202
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 205
    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 206
    return-void
.end method

.method private notifyStepListeners()V
    .registers 5

    .prologue
    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1d

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->position:J

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;->onPlaybackClockPositionDidStep(Lcom/google/android/apps/googlevoice/PlaybackClock;J)V

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 197
    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->isNotifyingListeners:Z

    .line 198
    return-void
.end method

.method private schedule()V
    .registers 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepper:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepper:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    return-void
.end method

.method private setPosition(JZ)V
    .registers 10
    .parameter "newPosition"
    .parameter "isStep"

    .prologue
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 161
    .local v0, time:J
    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_c

    .line 162
    iget-wide p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J

    .line 165
    :cond_c
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->position:J

    .line 166
    if-nez p3, :cond_14

    .line 168
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->playbackBeginningTime:J

    .line 171
    :cond_14
    if-eqz p3, :cond_2b

    .line 172
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->notifyStepListeners()V

    .line 177
    :goto_19
    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2a

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    .line 178
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->notifyFinishListeners()V

    .line 180
    :cond_2a
    return-void

    .line 174
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->notifySeekListeners()V

    goto :goto_19
.end method

.method private unschedule()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepper:Lcom/google/android/apps/googlevoice/AndroidPlaybackClock$Stepper;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->ensureNotNotifyingListeners()V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_10
    return-void
.end method

.method public addStepListener(Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->ensureNotNotifyingListeners()V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_10
    return-void
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->position:J

    return-wide v0
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->paused:Z

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->unschedule()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->paused:Z

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->notifyPauseListeners()V

    .line 143
    return-void
.end method

.method public removeListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->ensureNotNotifyingListeners()V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->stepListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public resume()V
    .registers 5

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->paused:Z

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->playbackBeginningTime:J

    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->schedule()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->notifyResumeListeners()V

    .line 124
    return-void
.end method

.method public seekPosition(J)V
    .registers 4
    .parameter "newPosition"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->setPosition(JZ)V

    .line 156
    return-void
.end method

.method public setLength(J)V
    .registers 3
    .parameter "length"

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->length:J

    .line 185
    return-void
.end method

.method public start(J)V
    .registers 3
    .parameter "newLength"

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->setLength(J)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;->resume()V

    .line 112
    return-void
.end method
