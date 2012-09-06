.class public final Lcom/google/android/youtube/core/async/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/youtube/core/async/ar;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Lcom/google/android/youtube/core/utils/d;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/utils/d;Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/concurrent/ScheduledExecutorService;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x1388

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/q;->b:Lcom/google/android/youtube/core/async/ar;

    .line 29
    const-string v0, "baseTime may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/q;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3c

    const/4 v0, 0x1

    :goto_20
    const-string v1, "delay cannot be negative or zero"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 31
    iput-wide v2, p0, Lcom/google/android/youtube/core/async/q;->a:J

    .line 32
    const-string v0, "clock may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/q;->d:Lcom/google/android/youtube/core/utils/d;

    .line 33
    const-string v0, "scheduler may not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/q;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    return-void

    .line 30
    :cond_3c
    const/4 v0, 0x0

    goto :goto_20
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/q;)Lcom/google/android/youtube/core/async/ar;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/youtube/core/async/q;->b:Lcom/google/android/youtube/core/async/ar;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/async/q;->d:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/android/youtube/core/async/q;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/google/android/youtube/core/async/q;->a:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_27

    move-wide v0, v2

    .line 38
    :goto_16
    cmp-long v2, v0, v2

    if-lez v2, :cond_2c

    .line 39
    iget-object v2, p0, Lcom/google/android/youtube/core/async/q;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/youtube/core/async/r;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/youtube/core/async/r;-><init>(Lcom/google/android/youtube/core/async/q;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 43
    :goto_26
    return-void

    .line 37
    :cond_27
    iget-wide v4, p0, Lcom/google/android/youtube/core/async/q;->a:J

    sub-long v0, v4, v0

    goto :goto_16

    .line 41
    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/core/async/q;->b:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_26
.end method
