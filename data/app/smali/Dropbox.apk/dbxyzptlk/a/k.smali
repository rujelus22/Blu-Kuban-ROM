.class abstract Ldbxyzptlk/a/k;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;

.field private static final c:Ldbxyzptlk/a/q;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static volatile e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Ldbxyzptlk/a/s;

.field private final g:Ljava/util/concurrent/FutureTask;

.field private volatile h:Ldbxyzptlk/a/r;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 54
    new-instance v0, Ldbxyzptlk/a/l;

    invoke-direct {v0}, Ldbxyzptlk/a/l;-><init>()V

    sput-object v0, Ldbxyzptlk/a/k;->a:Ljava/util/concurrent/ThreadFactory;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Ldbxyzptlk/a/k;->b:Ljava/util/concurrent/BlockingQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ldbxyzptlk/a/k;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Ldbxyzptlk/a/k;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Ldbxyzptlk/a/k;->d:Ljava/util/concurrent/Executor;

    .line 75
    new-instance v0, Ldbxyzptlk/a/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldbxyzptlk/a/q;-><init>(Ldbxyzptlk/a/l;)V

    sput-object v0, Ldbxyzptlk/a/k;->c:Ldbxyzptlk/a/q;

    .line 77
    sget-object v0, Ldbxyzptlk/a/k;->d:Ljava/util/concurrent/Executor;

    sput-object v0, Ldbxyzptlk/a/k;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Ldbxyzptlk/a/r;->a:Ldbxyzptlk/a/r;

    iput-object v0, p0, Ldbxyzptlk/a/k;->h:Ldbxyzptlk/a/r;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/a/k;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v0, Ldbxyzptlk/a/m;

    invoke-direct {v0, p0}, Ldbxyzptlk/a/m;-><init>(Ldbxyzptlk/a/k;)V

    iput-object v0, p0, Ldbxyzptlk/a/k;->f:Ldbxyzptlk/a/s;

    .line 127
    new-instance v0, Ldbxyzptlk/a/n;

    iget-object v1, p0, Ldbxyzptlk/a/k;->f:Ldbxyzptlk/a/s;

    invoke-direct {v0, p0, v1}, Ldbxyzptlk/a/n;-><init>(Ldbxyzptlk/a/k;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ldbxyzptlk/a/k;->g:Ljava/util/concurrent/FutureTask;

    .line 147
    return-void
.end method

.method static synthetic a(Ldbxyzptlk/a/k;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ldbxyzptlk/a/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ldbxyzptlk/a/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Ldbxyzptlk/a/k;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Ldbxyzptlk/a/k;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ldbxyzptlk/a/k;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Ldbxyzptlk/a/k;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ldbxyzptlk/a/k;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Ldbxyzptlk/a/k;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 151
    if-nez v0, :cond_b

    .line 152
    invoke-direct {p0, p1}, Ldbxyzptlk/a/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_b
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 157
    sget-object v0, Ldbxyzptlk/a/k;->c:Ldbxyzptlk/a/q;

    new-instance v1, Ldbxyzptlk/a/p;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Ldbxyzptlk/a/p;-><init>(Ldbxyzptlk/a/k;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Ldbxyzptlk/a/q;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 458
    invoke-virtual {p0}, Ldbxyzptlk/a/k;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 459
    invoke-virtual {p0, p1}, Ldbxyzptlk/a/k;->b(Ljava/lang/Object;)V

    .line 463
    :goto_9
    sget-object v0, Ldbxyzptlk/a/r;->c:Ldbxyzptlk/a/r;

    iput-object v0, p0, Ldbxyzptlk/a/k;->h:Ldbxyzptlk/a/r;

    .line 464
    return-void

    .line 461
    :cond_e
    invoke-virtual {p0, p1}, Ldbxyzptlk/a/k;->a(Ljava/lang/Object;)V

    goto :goto_9
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Ldbxyzptlk/a/k;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Ldbxyzptlk/a/k;->h:Ldbxyzptlk/a/r;

    sget-object v1, Ldbxyzptlk/a/r;->a:Ldbxyzptlk/a/r;

    if-eq v0, v1, :cond_13

    .line 407
    sget-object v0, Ldbxyzptlk/a/o;->a:[I

    iget-object v1, p0, Ldbxyzptlk/a/k;->h:Ldbxyzptlk/a/r;

    invoke-virtual {v1}, Ldbxyzptlk/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 418
    :cond_13
    sget-object v0, Ldbxyzptlk/a/r;->b:Ldbxyzptlk/a/r;

    iput-object v0, p0, Ldbxyzptlk/a/k;->h:Ldbxyzptlk/a/r;

    .line 420
    invoke-virtual {p0}, Ldbxyzptlk/a/k;->b()V

    .line 422
    iget-object v0, p0, Ldbxyzptlk/a/k;->f:Ldbxyzptlk/a/s;

    iput-object p2, v0, Ldbxyzptlk/a/s;->b:[Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Ldbxyzptlk/a/k;->g:Ljava/util/concurrent/FutureTask;

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

    .prologue
    .line 213
    return-void
.end method

.method public final a(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Ldbxyzptlk/a/k;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected final b()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    invoke-virtual {p0}, Ldbxyzptlk/a/k;->a()V

    .line 245
    return-void
.end method

.method protected final varargs b([Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Ldbxyzptlk/a/k;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method
