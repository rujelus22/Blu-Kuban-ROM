.class final Lcom/dropbox/android/util/j;
.super Ljava/util/TimerTask;
.source "panda.py"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 611
    invoke-static {}, Lcom/dropbox/android/util/h;->ai()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 612
    :try_start_5
    invoke-static {}, Lcom/dropbox/android/util/h;->aj()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 613
    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-lez v0, :cond_2c

    .line 614
    invoke-static {}, Lcom/dropbox/android/util/h;->ak()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v4, "reason"

    const-string v5, "size"

    invoke-virtual {v0, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v4, "size"

    invoke-virtual {v0, v4, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 615
    invoke-static {}, Lcom/dropbox/android/util/h;->al()V

    .line 617
    :cond_2c
    monitor-exit v1

    .line 618
    return-void

    .line 617
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v0
.end method
