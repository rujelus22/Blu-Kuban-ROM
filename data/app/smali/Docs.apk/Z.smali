.class abstract LZ;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Laf;

.field private static final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/util/concurrent/Executor;

.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static volatile b:Ljava/util/concurrent/Executor;


# instance fields
.field private volatile a:Lag;

.field private final a:Lah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lah",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 54
    new-instance v0, Laa;

    invoke-direct {v0}, Laa;-><init>()V

    sput-object v0, LZ;->a:Ljava/util/concurrent/ThreadFactory;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, LZ;->a:Ljava/util/concurrent/BlockingQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, LZ;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, LZ;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, LZ;->a:Ljava/util/concurrent/Executor;

    .line 75
    new-instance v0, Laf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laf;-><init>(Laa;)V

    sput-object v0, LZ;->a:Laf;

    .line 77
    sget-object v0, LZ;->a:Ljava/util/concurrent/Executor;

    sput-object v0, LZ;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lag;->a:Lag;

    iput-object v0, p0, LZ;->a:Lag;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LZ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v0, Lab;

    invoke-direct {v0, p0}, Lab;-><init>(LZ;)V

    iput-object v0, p0, LZ;->a:Lah;

    .line 127
    new-instance v0, Lac;

    iget-object v1, p0, LZ;->a:Lah;

    invoke-direct {v0, p0, v1}, Lac;-><init>(LZ;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, LZ;->a:Ljava/util/concurrent/FutureTask;

    .line 147
    return-void
.end method

.method static synthetic a(LZ;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, LZ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 157
    sget-object v0, LZ;->a:Laf;

    new-instance v1, Lae;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lae;-><init>(LZ;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Laf;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-object p1
.end method

.method static synthetic a(LZ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, LZ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(LZ;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, LZ;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(LZ;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, LZ;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, LZ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 151
    if-nez v0, :cond_b

    .line 152
    invoke-direct {p0, p1}, LZ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_b
    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, LZ;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 459
    invoke-virtual {p0, p1}, LZ;->b(Ljava/lang/Object;)V

    .line 463
    :goto_9
    sget-object v0, Lag;->c:Lag;

    iput-object v0, p0, LZ;->a:Lag;

    .line 464
    return-void

    .line 461
    :cond_e
    invoke-virtual {p0, p1}, LZ;->a(Ljava/lang/Object;)V

    goto :goto_9
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)LZ;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "LZ",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, LZ;->a:Lag;

    sget-object v1, Lag;->a:Lag;

    if-eq v0, v1, :cond_13

    .line 407
    sget-object v0, Lad;->a:[I

    iget-object v1, p0, LZ;->a:Lag;

    invoke-virtual {v1}, Lag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 418
    :cond_13
    sget-object v0, Lag;->b:Lag;

    iput-object v0, p0, LZ;->a:Lag;

    .line 420
    invoke-virtual {p0}, LZ;->b()V

    .line 422
    iget-object v0, p0, LZ;->a:Lah;

    iput-object p2, v0, Lah;->a:[Ljava/lang/Object;

    .line 423
    iget-object v0, p0, LZ;->a:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 425
    return-object p0

    .line 409
    :pswitch_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 260
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, LZ;->a:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final a(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, LZ;->a:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, LZ;->a()V

    .line 245
    return-void
.end method
