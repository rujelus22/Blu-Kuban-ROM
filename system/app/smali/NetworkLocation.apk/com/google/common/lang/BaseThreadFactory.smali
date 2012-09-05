.class public Lcom/google/common/lang/BaseThreadFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/lang/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/lang/BaseThreadFactory$ThreadImpl;
    }
.end annotation


# instance fields
.field private created:I

.field private running:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/common/lang/BaseThreadFactory;->created:I

    iput v0, p0, Lcom/google/common/lang/BaseThreadFactory;->running:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/lang/BaseThreadFactory;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/lang/BaseThreadFactory;->incrementCreatedCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/lang/BaseThreadFactory;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/lang/BaseThreadFactory;->incrementRunningCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/lang/BaseThreadFactory;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/lang/BaseThreadFactory;->decrementRunningCount()V

    return-void
.end method

.method private declared-synchronized decrementRunningCount()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/common/lang/BaseThreadFactory;->running:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/lang/BaseThreadFactory;->running:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementCreatedCount()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/common/lang/BaseThreadFactory;->created:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/lang/BaseThreadFactory;->created:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementRunningCount()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/common/lang/BaseThreadFactory;->running:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/lang/BaseThreadFactory;->running:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Lcom/google/common/lang/BaseThreadFactory$ThreadImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/lang/BaseThreadFactory$ThreadImpl;-><init>(Lcom/google/common/lang/BaseThreadFactory;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
