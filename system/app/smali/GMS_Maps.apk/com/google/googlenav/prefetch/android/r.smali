.class public Lcom/google/googlenav/prefetch/android/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/r;->a:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;JJ)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/r;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 53
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 54
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 58
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 60
    monitor-exit p0

    return-void

    .line 49
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/clientparam/e;->k()Lcom/google/googlenav/clientparam/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/e;->e()J

    move-result-wide v2

    .line 42
    invoke-static {}, Lcom/google/googlenav/clientparam/e;->k()Lcom/google/googlenav/clientparam/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/e;->f()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/prefetch/android/r;->b(Landroid/content/Context;JJ)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 44
    monitor-exit p0

    return-void

    .line 41
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/util/t;->b()V

    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/prefetch/android/r;->b(Landroid/content/Context;JJ)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/r;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 84
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 86
    monitor-exit p0

    return-void

    .line 80
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
