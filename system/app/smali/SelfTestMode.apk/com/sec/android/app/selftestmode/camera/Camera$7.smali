.class Lcom/sec/android/app/selftestmode/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;->setViewFinder(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

.field final synthetic val$wallTimeStart:J

.field final synthetic val$watchDogSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;Ljava/lang/Object;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2811
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$7;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$7;->val$watchDogSync:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/sec/android/app/selftestmode/camera/Camera$7;->val$wallTimeStart:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2815
    const-string v2, "testCamera"

    const-string v3, "watchDog thread run()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const/4 v1, 0x1

    .line 2823
    .local v1, next_warning:I
    :cond_8
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera$7;->val$watchDogSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_1f

    .line 2825
    :try_start_b
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$7;->val$watchDogSync:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2827
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_1c

    .line 2835
    :goto_13
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$7;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3800(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2879
    return-void

    .line 2827
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 2829
    :catch_1f
    move-exception v2

    goto :goto_13

    .line 2841
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$7;->val$wallTimeStart:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    div-int/lit16 v0, v2, 0x3e8

    .line 2843
    .local v0, delay:I
    if-lt v0, v1, :cond_8

    .line 2845
    const/16 v2, 0x78

    if-ge v0, v2, :cond_5c

    .line 2847
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview hasn\'t started yet in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :goto_4f
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_7d

    .line 2861
    shl-int/lit8 v1, v1, 0x1

    .line 2863
    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    .line 2865
    const/16 v1, 0xf

    goto :goto_8

    .line 2853
    :cond_5c
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview hasn\'t started yet in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v0, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2871
    :cond_7d
    add-int/lit8 v1, v1, 0x3c

    goto :goto_8
.end method
