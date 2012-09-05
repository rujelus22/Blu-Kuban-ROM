.class public Lcom/google/android/location/internal/server/NetworkLocationService;
.super Landroid/app/Service;


# instance fields
.field public final a:Li/z;

.field private b:Lcom/google/android/location/internal/e;

.field private c:Li/f;

.field private final d:Landroid/os/HandlerThread;

.field private e:Lcom/google/android/location/internal/server/f;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/location/internal/server/d;

    invoke-direct {v0, p0}, Lcom/google/android/location/internal/server/d;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->a:Li/z;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gmmInternalNlpService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->d:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/f;

    return-object v0
.end method

.method private declared-synchronized a()V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Li/f;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_55

    if-eqz v1, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/google/android/location/internal/server/f;

    iget-object v3, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/google/android/location/internal/server/f;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/f;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_55

    :try_start_1b
    const-string v1, "nlp_debug_log"

    invoke-virtual {p0, v1}, Lcom/google/android/location/internal/server/NetworkLocationService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_55
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_25} :catch_58
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_5b

    :goto_25
    if-eqz v1, :cond_67

    :try_start_27
    new-instance v2, Ljava/io/BufferedOutputStream;

    const-string v1, "nlp_debug_log"

    const v3, 0x8000

    invoke-virtual {p0, v1, v3}, Lcom/google/android/location/internal/server/NetworkLocationService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_55
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_3a} :catch_5e

    :goto_3a
    :try_start_3a
    new-instance v2, Li/f;

    iget-object v3, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->a:Li/z;

    invoke-static {}, Lcom/google/android/location/os/real/N;->a()Lcom/google/android/location/os/real/N;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/location/os/real/N;->b()Z

    move-result v4

    if-eqz v4, :cond_61

    :goto_48
    invoke-direct {v2, v3, v0, v1}, Li/f;-><init>(Li/z;Lm/b;Ljava/io/PrintWriter;)V

    iput-object v2, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Li/f;

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/f;

    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Li/f;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/server/f;->a(Li/f;)V
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_55

    goto :goto_7

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_58
    move-exception v1

    move v1, v2

    goto :goto_25

    :catch_5b
    move-exception v1

    move v1, v2

    goto :goto_25

    :catch_5e
    move-exception v1

    move-object v1, v0

    goto :goto_3a

    :cond_61
    :try_start_61
    new-instance v0, Lcom/google/android/location/os/real/a;

    invoke-direct {v0}, Lcom/google/android/location/os/real/a;-><init>()V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_55

    goto :goto_48

    :cond_67
    move-object v1, v0

    goto :goto_3a
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/NetworkLocationService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private a(Ljava/io/PrintWriter;)V
    .registers 9

    invoke-static {}, Lcom/google/android/location/os/real/K;->y()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/location/os/real/K;->z()J

    move-result-wide v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "elapsedRealtime "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " is time "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/f;

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/f;->a(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Li/f;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Li/f;

    sub-long/2addr v2, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Li/f;->a(Ljava/text/Format;JJLjava/io/PrintWriter;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->b:Lcom/google/android/location/internal/e;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/location/internal/server/NetworkLocationService;->a()V

    new-instance v0, Lcom/google/android/location/os/real/a;

    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->c:Li/f;

    invoke-direct {v0, v1}, Lcom/google/android/location/os/real/a;-><init>(Li/f;)V

    invoke-static {v0}, Lm/a;->a(Lm/b;)V

    new-instance v0, Lcom/google/android/location/internal/server/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/e;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;Lcom/google/android/location/internal/server/d;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->b:Lcom/google/android/location/internal/e;

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/f;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/f;->b()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/f;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/f;->c()V

    iput-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->b:Lcom/google/android/location/internal/e;

    invoke-static {v1}, Lm/a;->a(Lm/b;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9

    const-wide/16 v3, -0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "com.google.android.location.internal.EXTRA_PENDING_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "com.google.android.location.internal.EXTRA_PERIOD_MILLIS"

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1f

    const-string v1, "com.google.android.location.internal.EXTRA_PERIOD_MILLIS"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    :cond_1f
    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->e:Lcom/google/android/location/internal/server/f;

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/location/internal/server/f;->a(Landroid/app/PendingIntent;I)V

    goto :goto_4
.end method
