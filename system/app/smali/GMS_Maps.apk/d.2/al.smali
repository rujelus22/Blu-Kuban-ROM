.class abstract Ld/al;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final a:Lm/c;

.field protected final b:Ld/C;

.field private final d:Ld/y;

.field private volatile e:Z

.field private volatile f:Z

.field private final g:Ljava/lang/Thread;

.field private final h:Landroid/app/AlarmManager;

.field private final i:Landroid/app/PendingIntent;

.field private final j:Ljava/lang/String;

.field private final k:Landroid/content/Context;

.field private final l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ld/al;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/y;Ld/C;Lm/c;)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ld/al;->e:Z

    iput-boolean v1, p0, Ld/al;->f:Z

    new-instance v0, Ld/am;

    invoke-direct {v0, p0}, Ld/am;-><init>(Ld/al;)V

    iput-object v0, p0, Ld/al;->l:Landroid/content/BroadcastReceiver;

    const-string v0, "No Handler specified!"

    invoke-static {p2, v0}, Ld/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld/al;->k:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Ld/al;->h:Landroid/app/AlarmManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.location.lbs.collectionlib.STOP_SCANNER."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ld/al;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/al;->j:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ld/al;->j:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Ld/al;->i:Landroid/app/PendingIntent;

    iput-object p2, p0, Ld/al;->d:Ld/y;

    invoke-static {p4}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/al;->a:Lm/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ld/al;->g:Ljava/lang/Thread;

    invoke-virtual {p2}, Ld/y;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v2, p0, Ld/al;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v2, v0, :cond_6d

    const/4 v0, 0x1

    :goto_65
    const-string v1, "Scanner should be called in handler\'s thread."

    invoke-static {v0, v1}, Ld/ax;->a(ZLjava/lang/Object;)V

    :cond_6a
    iput-object p3, p0, Ld/al;->b:Ld/C;

    return-void

    :cond_6d
    move v0, v1

    goto :goto_65
.end method


# virtual methods
.method protected abstract a()V
.end method

.method declared-synchronized a(J)V
    .registers 11

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v4, 0x927c0

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_b
    invoke-virtual {p0}, Ld/al;->h()V

    iget-boolean v2, p0, Ld/al;->e:Z

    if-nez v2, :cond_63

    move v2, v0

    :goto_13
    const-string v3, "Start should be called only once!"

    invoke-static {v2, v3}, Ld/ax;->a(ZLjava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_22

    cmp-long v2, p1, v4

    if-lez v2, :cond_26

    :cond_22
    cmp-long v2, p1, v6

    if-nez v2, :cond_65

    :cond_26
    :goto_26
    const-string v1, "Duration should be > 0 and <= "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/32 v4, 0x927c0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/ax;->a(ZLjava/lang/Object;)V

    cmp-long v0, p1, v6

    if-eqz v0, :cond_5b

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Ld/al;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/al;->k:Landroid/content/Context;

    iget-object v2, p0, Ld/al;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Ld/al;->h:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Ld/al;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_5b
    invoke-virtual {p0}, Ld/al;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/al;->e:Z
    :try_end_61
    .catchall {:try_start_b .. :try_end_61} :catchall_67

    monitor-exit p0

    return-void

    :cond_63
    move v2, v1

    goto :goto_13

    :cond_65
    move v0, v1

    goto :goto_26

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()V
.end method

.method declared-synchronized d()V
    .registers 3

    monitor-enter p0

    const-wide v0, 0x7fffffffffffffffL

    :try_start_6
    invoke-virtual {p0, v0, v1}, Ld/al;->a(J)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/al;->e:Z

    const-string v1, "Call start before calling stop!"

    invoke-static {v0, v1}, Ld/ax;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Ld/al;->f:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/al;->f:Z

    iget-object v0, p0, Ld/al;->h:Landroid/app/AlarmManager;

    iget-object v1, p0, Ld/al;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    :try_start_16
    iget-object v0, p0, Ld/al;->k:Landroid/content/Context;

    iget-object v1, p0, Ld/al;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1d} :catch_25

    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Ld/al;->b()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_25
    move-exception v0

    goto :goto_1d
.end method

.method protected f()Ld/y;
    .registers 2

    iget-object v0, p0, Ld/al;->d:Ld/y;

    return-object v0
.end method

.method protected declared-synchronized g()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/al;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected h()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ld/al;->g:Ljava/lang/Thread;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_9
    const-string v1, "Could not be called outside owner thread."

    invoke-static {v0, v1}, Ld/ax;->b(ZLjava/lang/Object;)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method
