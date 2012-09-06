.class Ldbxyzptlk/o/j;
.super Ljava/lang/Thread;
.source "panda.py"


# static fields
.field private static d:Ldbxyzptlk/o/j;


# instance fields
.field private final a:Ldbxyzptlk/o/f;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 503
    const/4 v0, 0x0

    sput-object v0, Ldbxyzptlk/o/j;->d:Ldbxyzptlk/o/j;

    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/o/f;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 508
    iput-object p1, p0, Ldbxyzptlk/o/j;->a:Ldbxyzptlk/o/f;

    .line 509
    iput p2, p0, Ldbxyzptlk/o/j;->b:I

    .line 510
    mul-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Ldbxyzptlk/o/j;->c:I

    .line 511
    return-void
.end method

.method public static declared-synchronized a(Ldbxyzptlk/o/f;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 516
    const-class v1, Ldbxyzptlk/o/j;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ldbxyzptlk/o/j;->d:Ldbxyzptlk/o/j;

    if-nez v0, :cond_13

    .line 517
    new-instance v0, Ldbxyzptlk/o/j;

    invoke-direct {v0, p0, p1, p2}, Ldbxyzptlk/o/j;-><init>(Ldbxyzptlk/o/f;II)V

    sput-object v0, Ldbxyzptlk/o/j;->d:Ldbxyzptlk/o/j;

    .line 519
    sget-object v0, Ldbxyzptlk/o/j;->d:Ldbxyzptlk/o/j;

    invoke-virtual {v0}, Ldbxyzptlk/o/j;->start()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 521
    :cond_13
    monitor-exit v1

    return-void

    .line 516
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 527
    :goto_1
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_2} :catch_2b

    .line 528
    :try_start_2
    iget v0, p0, Ldbxyzptlk/o/j;->c:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 529
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_28

    .line 530
    :try_start_9
    iget-object v0, p0, Ldbxyzptlk/o/j;->a:Ldbxyzptlk/o/f;

    invoke-virtual {v0}, Ldbxyzptlk/o/f;->closeExpiredConnections()V

    .line 531
    iget-object v0, p0, Ldbxyzptlk/o/j;->a:Ldbxyzptlk/o/f;

    iget v1, p0, Ldbxyzptlk/o/j;->b:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ldbxyzptlk/o/f;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 532
    const-class v1, Ldbxyzptlk/o/j;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1b} :catch_2b

    .line 533
    :try_start_1b
    iget-object v0, p0, Ldbxyzptlk/o/j;->a:Ldbxyzptlk/o/f;

    invoke-virtual {v0}, Ldbxyzptlk/o/f;->getConnectionsInPool()I

    move-result v0

    if-nez v0, :cond_2f

    .line 534
    const/4 v0, 0x0

    sput-object v0, Ldbxyzptlk/o/j;->d:Ldbxyzptlk/o/j;

    .line 535
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_31

    .line 542
    :goto_27
    return-void

    .line 529
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 539
    :catch_2b
    move-exception v0

    .line 540
    sput-object v4, Ldbxyzptlk/o/j;->d:Ldbxyzptlk/o/j;

    goto :goto_27

    .line 537
    :cond_2f
    :try_start_2f
    monitor-exit v1

    goto :goto_1

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_31

    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_34} :catch_2b
.end method
