.class public final Lcom/google/android/youtube/core/player/d;
.super Landroid/media/MediaPlayer;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Lcom/google/android/youtube/core/transfer/i;


# static fields
.field public static final a:Ljava/util/Set;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final A:I

.field private final B:Ljava/lang/Runnable;

.field private final c:Lcom/google/android/youtube/core/utils/i;

.field private d:Landroid/content/Context;

.field private e:Landroid/net/Uri;

.field private f:Ljava/util/concurrent/atomic/AtomicReference;

.field private g:I

.field private h:J

.field private i:Lcom/google/android/youtube/core/transfer/a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicReference;

.field private final q:Lcom/google/android/youtube/core/utils/m;

.field private r:J

.field private s:Landroid/media/MediaPlayer$OnPreparedListener;

.field private t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private u:Landroid/media/MediaPlayer$OnInfoListener;

.field private v:Landroid/media/MediaPlayer$OnCompletionListener;

.field private w:Landroid/media/MediaPlayer$OnErrorListener;

.field private final x:Lcom/google/android/youtube/core/player/k;

.field private y:Landroid/os/Handler;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "awf-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/d;->b:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    const-string v1, "video/mp4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "video/3gpp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/d;->a:Ljava/util/Set;

    .line 71
    new-instance v0, Lcom/google/android/youtube/core/player/e;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/e;-><init>()V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method public constructor <init>(IILcom/google/android/youtube/core/utils/i;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 548
    new-instance v0, Lcom/google/android/youtube/core/player/j;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/j;-><init>(Lcom/google/android/youtube/core/player/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->B:Ljava/lang/Runnable;

    .line 150
    if-lez p1, :cond_65

    move v0, v1

    :goto_f
    const-string v3, "bufferLowMillis must be > 0"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 151
    if-lez p2, :cond_67

    :goto_16
    const-string v0, "bufferFullMillis must be > 0"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 152
    const-string v0, "networkStatus cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/utils/i;

    .line 153
    iput p1, p0, Lcom/google/android/youtube/core/player/d;->z:I

    .line 154
    iput p2, p0, Lcom/google/android/youtube/core/player/d;->A:I

    .line 155
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 156
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 157
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    new-instance v0, Lcom/google/android/youtube/core/utils/m;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->q:Lcom/google/android/youtube/core/utils/m;

    .line 163
    new-instance v0, Lcom/google/android/youtube/core/player/k;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/k;-><init>(Lcom/google/android/youtube/core/player/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->x:Lcom/google/android/youtube/core/player/k;

    .line 164
    const-string v0, ".*Awful.*"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 165
    return-void

    :cond_65
    move v0, v2

    .line 150
    goto :goto_f

    :cond_67
    move v1, v2

    .line 151
    goto :goto_16
.end method

.method private a(I)J
    .registers 5
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 595
    if-eqz v0, :cond_2c

    .line 596
    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 597
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 598
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 599
    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 602
    :goto_2b
    return-wide v0

    :cond_2c
    const-wide/16 v0, 0x0

    goto :goto_2b
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/d;I)J
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/d;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)V
    .registers 14
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 327
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->e()V

    .line 328
    iput-wide p1, p0, Lcom/google/android/youtube/core/player/d;->r:J

    .line 329
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/d;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/google/android/youtube/core/player/d;->h:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_3d

    .line 330
    :cond_17
    new-instance v0, Lcom/google/android/youtube/core/transfer/a;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/high16 v8, 0x2

    move-wide v3, p1

    move-object v7, p0

    move v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/transfer/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/i;IZZ)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    .line 332
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 334
    :cond_3d
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/d;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->i()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/d;J)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x1

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->q:Lcom/google/android/youtube/core/utils/m;

    iget-wide v1, p0, Lcom/google/android/youtube/core/player/d;->r:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/youtube/core/utils/m;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/d;->r:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filled gap, downloading from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-long v3, v0, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    add-long v2, v0, v6

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/core/player/d;->a(J)V

    :cond_2d
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/android/youtube/core/player/d;->h:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/d;->t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/google/android/youtube/core/player/d;->t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v3, p0, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_3e
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5b

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/d;->h:J

    sub-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_70

    :cond_5b
    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_71

    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/google/android/youtube/core/player/i;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/i;-><init>(Lcom/google/android/youtube/core/player/d;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/i;->start()V

    :cond_70
    :goto_70
    return-void

    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start buffer full "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_70

    :cond_8c
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/d;->k:Z

    if-eqz v2, :cond_d3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/d;->getCurrentPosition()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/d;->A:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/d;->a(I)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a6

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/d;->h:J

    sub-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_70

    :cond_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full buffer at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/d;->a(Z)V

    iget v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    if-ltz v0, :cond_cb

    iget v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    :cond_cb
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->l:Z

    if-nez v0, :cond_70

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->g()V

    goto :goto_70

    :cond_d3
    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->x:Lcom/google/android/youtube/core/player/k;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/k;->d()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/d;->getCurrentPosition()I

    move-result v2

    const v3, 0x15f90

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/d;->a(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_70

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->e()V

    goto/16 :goto_70
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/d;->k:Z

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->u:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_10

    .line 255
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->u:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz p1, :cond_11

    const/16 v0, 0x2bd

    :goto_c
    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 260
    :cond_10
    return-void

    .line 255
    :cond_11
    const/16 v0, 0x2be

    goto :goto_c
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/youtube/core/player/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/d;)V
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/d;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    if-nez v1, :cond_1e

    add-int/lit16 v0, v0, 0x7530

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/d;->a(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/d;->r:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1d

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-wide v0, p0, Lcom/google/android/youtube/core/player/d;->r:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/d;->a(J)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget v1, p0, Lcom/google/android/youtube/core/player/d;->z:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/d;->a(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/d;->r:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1d

    iget-wide v0, p0, Lcom/google/android/youtube/core/player/d;->r:J

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/d;->h:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "low buffer at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/core/player/d;->r:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-direct {p0, v6}, Lcom/google/android/youtube/core/player/d;->a(Z)V

    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->x:Lcom/google/android/youtube/core/player/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/k;->c()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->h()V

    goto :goto_1d

    :cond_62
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    const/4 v1, 0x2

    const/16 v2, -0xfa0

    invoke-static {v0, v1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1d
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/d;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/d;->a(J)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->x:Lcom/google/android/youtube/core/player/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/k;->b()V

    .line 213
    iput-object v3, p0, Lcom/google/android/youtube/core/player/d;->e:Landroid/net/Uri;

    .line 214
    iput v4, p0, Lcom/google/android/youtube/core/player/d;->g:I

    .line 215
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/d;->h:J

    .line 217
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->e()V

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    :cond_1c
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    .line 223
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/d;->k:Z

    .line 224
    iput v4, p0, Lcom/google/android/youtube/core/player/d;->m:I

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->q:Lcom/google/android/youtube/core/utils/m;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/m;->a()V

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/d;->r:J

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->n:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x40000

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 232
    iput-object v3, p0, Lcom/google/android/youtube/core/player/d;->d:Landroid/content/Context;

    .line 233
    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->p:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 238
    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 239
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 240
    new-instance v1, Lcom/google/android/youtube/core/player/h;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/player/h;-><init>(Lcom/google/android/youtube/core/player/d;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 248
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 250
    :cond_23
    return-void
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/d;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/youtube/core/player/d;->A:I

    return v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    if-eqz v0, :cond_c

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/a;->a()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    .line 324
    :cond_c
    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->n:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private f()V
    .registers 6

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/d;->a(I)J

    move-result-wide v0

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 389
    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->q:Lcom/google/android/youtube/core/utils/m;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/utils/m;->a(J)J

    move-result-wide v1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next gap at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/d;->a(Z)V

    .line 393
    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/google/android/youtube/core/player/d;->r:J

    .line 394
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->e()V

    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/core/player/d;->r:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/youtube/core/player/d;->b(Ljava/lang/String;J)V

    .line 396
    invoke-direct {p0, v1, v2}, Lcom/google/android/youtube/core/player/d;->a(J)V

    .line 397
    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/d;)J
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/d;->r:J

    return-wide v0
.end method

.method private g()V
    .registers 1

    .prologue
    .line 571
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 572
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->i()V

    .line 573
    return-void
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/d;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 578
    return-void
.end method

.method static synthetic i(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 583
    return-void
.end method

.method static synthetic j(Lcom/google/android/youtube/core/player/d;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/utils/i;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/utils/i;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/transfer/a;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, -0xfa1

    .line 479
    :try_start_4
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_25

    .line 485
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/d;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/d;->g:I
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_d} :catch_2a

    .line 492
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->s:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_1d

    .line 495
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->s:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 497
    :cond_1d
    iget v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    if-ltz v0, :cond_32

    .line 498
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->f()V

    .line 506
    :goto_24
    return-void

    .line 481
    :catch_25
    move-exception v0

    invoke-virtual {p0, p0, v3, v1}, Lcom/google/android/youtube/core/player/d;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_24

    .line 487
    :catch_2a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/d;->release()V

    .line 489
    invoke-virtual {p0, p0, v3, v1}, Lcom/google/android/youtube/core/player/d;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_24

    .line 500
    :cond_32
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->l:Z

    if-eqz v0, :cond_3a

    .line 501
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->h()V

    goto :goto_24

    .line 503
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->g()V

    goto :goto_24
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 608
    iput-wide p2, p0, Lcom/google/android/youtube/core/player/d;->h:J

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 610
    const-wide/32 v0, 0x6000000

    cmp-long v0, p2, v0

    if-lez v0, :cond_24

    .line 611
    const/4 v0, 0x1

    const/16 v1, -0xfa3

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/android/youtube/core/player/d;->onError(Landroid/media/MediaPlayer;II)Z

    .line 613
    :cond_24
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/16 v6, -0xfa0

    const/4 v1, 0x1

    .line 629
    const-string v0, "download error"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->i:Lcom/google/android/youtube/core/transfer/a;

    .line 631
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->x:Lcom/google/android/youtube/core/player/k;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->x:Lcom/google/android/youtube/core/player/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/k;->c()Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    .line 632
    :goto_19
    iget-boolean v2, p2, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    if-nez v2, :cond_1f

    if-eqz v0, :cond_5a

    .line 633
    :cond_1f
    invoke-virtual {p2}, Lcom/google/android/youtube/core/transfer/TransferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_50

    .line 634
    new-instance v0, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 636
    const-wide/32 v4, 0x20000

    cmp-long v0, v2, v4

    if-gez v0, :cond_50

    .line 637
    const/16 v0, -0xfa2

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/android/youtube/core/player/d;->onError(Landroid/media/MediaPlayer;II)Z

    .line 649
    :cond_4d
    :goto_4d
    return-void

    .line 631
    :cond_4e
    const/4 v0, 0x0

    goto :goto_19

    .line 641
    :cond_50
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    invoke-static {v0, v7, v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4d

    .line 644
    :cond_5a
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    if-eqz v0, :cond_4d

    .line 645
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    invoke-static {v0, v7, v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4d
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/android/youtube/core/player/d;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    return-void
.end method

.method public final b(Ljava/lang/String;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    return-void
.end method

.method public final getCurrentPosition()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    if-ltz v0, :cond_7

    .line 360
    iget v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    .line 366
    :goto_6
    return v0

    .line 363
    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v0

    goto :goto_6

    .line 366
    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final isPlaying()Z
    .registers 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->l:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_9

    .line 557
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 559
    :cond_9
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->c()V

    .line 563
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->d()V

    .line 564
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->w:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_11

    .line 565
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->w:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 567
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 535
    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    const/16 v1, 0x10

    if-ne p3, v1, :cond_19

    .line 537
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 538
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->B:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    :cond_18
    :goto_18
    return v0

    .line 542
    :cond_19
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->u:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v1, :cond_18

    .line 543
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->u:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    goto :goto_18
.end method

.method public final pause()V
    .registers 2

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->l:Z

    .line 339
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->k:Z

    if-nez v0, :cond_e

    .line 340
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->h()V

    .line 342
    :cond_e
    return-void
.end method

.method public final prepare()V
    .registers 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final prepareAsync()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->e:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :try_start_7
    sget-object v0, Lcom/google/android/youtube/core/player/d;->b:Ljava/lang/String;

    const-string v1, ".tmp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 300
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created file buffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3e} :catch_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3e} :catch_53

    .line 315
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    .line 316
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->x:Lcom/google/android/youtube/core/player/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/k;->a()V

    .line 317
    :goto_45
    return-void

    .line 304
    :catch_46
    move-exception v0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    const/16 v1, -0xfa2

    invoke-static {v0, v4, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_45

    .line 309
    :catch_53
    move-exception v0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    const/16 v1, -0xfa1

    invoke-static {v0, v4, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_45
.end method

.method public final release()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->c()V

    .line 206
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 207
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->d()V

    .line 208
    return-void
.end method

.method public final reset()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->c()V

    .line 199
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 200
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->d()V

    .line 201
    return-void
.end method

.method public final seekTo(I)V
    .registers 4
    .parameter

    .prologue
    .line 373
    iget v0, p0, Lcom/google/android/youtube/core/player/d;->m:I

    if-eq p1, v0, :cond_29

    .line 374
    iput p1, p0, Lcom/google/android/youtube/core/player/d;->m:I

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 376
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    if-nez v0, :cond_29

    iget v0, p0, Lcom/google/android/youtube/core/player/d;->g:I

    if-lez v0, :cond_29

    .line 377
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->h()V

    .line 378
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->f()V

    .line 381
    :cond_29
    return-void
.end method

.method public final setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->c()V

    .line 170
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->d()V

    .line 171
    iput-object p1, p0, Lcom/google/android/youtube/core/player/d;->d:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/google/android/youtube/core/player/d;->e:Landroid/net/Uri;

    .line 174
    new-instance v0, Lcom/google/android/youtube/core/player/g;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/player/g;-><init>(Lcom/google/android/youtube/core/player/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->y:Landroid/os/Handler;

    .line 194
    return-void
.end method

.method public final setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/youtube/core/player/d;->t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 270
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 271
    return-void
.end method

.method public final setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/youtube/core/player/d;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 281
    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/youtube/core/player/d;->w:Landroid/media/MediaPlayer$OnErrorListener;

    .line 286
    return-void
.end method

.method public final setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/youtube/core/player/d;->u:Landroid/media/MediaPlayer$OnInfoListener;

    .line 276
    return-void
.end method

.method public final setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/youtube/core/player/d;->s:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 265
    return-void
.end method

.method public final start()V
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->l:Z

    .line 347
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->j:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/d;->k:Z

    if-nez v0, :cond_e

    .line 348
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/d;->g()V

    .line 350
    :cond_e
    return-void
.end method
