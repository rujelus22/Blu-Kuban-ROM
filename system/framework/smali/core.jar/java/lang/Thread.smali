.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$ParkState;
    }
.end annotation


# static fields
.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static count:I

.field private static defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private contextClassLoader:Ljava/lang/ClassLoader;

.field volatile daemon:Z

.field volatile group:Ljava/lang/ThreadGroup;

.field hasBeenStarted:Z

.field private id:J

.field inheritableValues:Ljava/lang/ThreadLocal$Values;

.field private final interruptActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field localValues:Ljava/lang/ThreadLocal$Values;

.field volatile name:Ljava/lang/String;

.field private parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field volatile priority:I

.field volatile stackSize:J

.field target:Ljava/lang/Runnable;

.field private uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile vmThread:Ljava/lang/VMThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    const/4 v0, 0x0

    sput v0, Ljava/lang/Thread;->count:I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 200
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 8
    .parameter "runnable"

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 216
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 9
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 234
    if-nez p2, :cond_18

    .line 235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 238
    :cond_18
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "threadName"

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 254
    if-nez p1, :cond_19

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_19
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .registers 9
    .parameter "group"
    .parameter "runnable"

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 278
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 10
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 298
    if-nez p3, :cond_18

    .line 299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 302
    :cond_18
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 7
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"
    .parameter "stackSize"

    .prologue
    .line 347
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 348
    if-nez p3, :cond_18

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 351
    :cond_18
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 352
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 9
    .parameter "group"
    .parameter "threadName"

    .prologue
    .line 318
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 319
    if-nez p2, :cond_18

    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_18
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 324
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .registers 9
    .parameter "group"
    .parameter "name"
    .parameter "priority"
    .parameter "daemon"

    .prologue
    .line 361
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 362
    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

    .line 363
    :try_start_13
    sget v0, Ljava/lang/Thread;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/lang/Thread;->count:I

    int-to-long v2, v0

    iput-wide v2, p0, Ljava/lang/Thread;->id:J

    .line 364
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_40

    .line 366
    if-nez p2, :cond_43

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 372
    :goto_36
    if-nez p1, :cond_46

    .line 373
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "group not specified"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 369
    :cond_43
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_36

    .line 376
    :cond_46
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    .line 380
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 381
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 384
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 385
    return-void
.end method

.method public static activeCount()I
    .registers 1

    .prologue
    .line 448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 11
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"
    .parameter "stackSize"

    .prologue
    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 405
    .local v0, currentThread:Ljava/lang/Thread;
    if-nez p1, :cond_a

    .line 406
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 409
    :cond_a
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 410
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Group already destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_18
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 415
    const-class v2, Ljava/lang/Thread;

    monitor-enter v2

    .line 416
    :try_start_1d
    sget v1, Ljava/lang/Thread;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/lang/Thread;->count:I

    int-to-long v3, v1

    iput-wide v3, p0, Ljava/lang/Thread;->id:J

    .line 417
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_61

    .line 419
    if-nez p3, :cond_64

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 425
    :goto_40
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 426
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 428
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 430
    iget-object v1, v0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 433
    iget-object v1, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    if-eqz v1, :cond_5b

    .line 434
    new-instance v1, Ljava/lang/ThreadLocal$Values;

    iget-object v2, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    invoke-direct {v1, v2}, Ljava/lang/ThreadLocal$Values;-><init>(Ljava/lang/ThreadLocal$Values;)V

    iput-object v1, p0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    .line 438
    :cond_5b
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 439
    return-void

    .line 417
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1

    .line 422
    :cond_64
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_40
.end method

.method public static currentThread()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 476
    invoke-static {}, Ljava/lang/VMThread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static dumpStack()V
    .registers 2

    .prologue
    .line 496
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 497
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .registers 3
    .parameter "threads"

    .prologue
    .line 510
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 511
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    return v1
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v4, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 523
    .local v0, count:I
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    new-array v3, v4, [Ljava/lang/Thread;

    .line 526
    .local v3, threads:[Ljava/lang/Thread;
    sget-object v4, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 527
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v0, :cond_27

    .line 528
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 531
    :cond_27
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .prologue
    .line 553
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .registers 2
    .parameter "object"

    .prologue
    .line 1118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    invoke-virtual {v0, p0}, Ljava/lang/VMThread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static interrupted()Z
    .registers 1

    .prologue
    .line 696
    invoke-static {}, Ljava/lang/VMThread;->interrupted()Z

    move-result v0

    return v0
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .parameter "handler"

    .prologue
    .line 896
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 897
    return-void
.end method

.method public static sleep(J)V
    .registers 3
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1013
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 1014
    return-void
.end method

.method public static sleep(JI)V
    .registers 3
    .parameter "millis"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1031
    invoke-static {p0, p1, p2}, Ljava/lang/VMThread;->sleep(JI)V

    .line 1032
    return-void
.end method

.method public static yield()V
    .registers 0

    .prologue
    .line 1106
    invoke-static {}, Ljava/lang/VMThread;->yield()V

    .line 1107
    return-void
.end method


# virtual methods
.method public final checkAccess()V
    .registers 1

    .prologue
    .line 455
    return-void
.end method

.method public countStackFrames()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "Thread.destroy()"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 565
    iget-wide v0, p0, Ljava/lang/Thread;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    .prologue
    .line 584
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 591
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 592
    .local v0, ste:[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_7

    .end local v0           #ste:[Ljava/lang/StackTraceElement;
    :goto_6
    return-object v0

    .restart local v0       #ste:[Ljava/lang/StackTraceElement;
    :cond_7
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    goto :goto_6
.end method

.method public getState()Ljava/lang/Thread$State;
    .registers 5

    .prologue
    .line 603
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 607
    .local v2, vmt:Ljava/lang/VMThread;
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 608
    .local v1, thread:Ljava/lang/VMThread;
    if-eqz v1, :cond_12

    .line 611
    invoke-virtual {v1}, Ljava/lang/VMThread;->getStatus()I

    move-result v0

    .line 612
    .local v0, state:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    .line 613
    sget-object v3, Ljava/lang/VMThread;->STATE_MAP:[Ljava/lang/Thread$State;

    aget-object v3, v3, v0

    .line 616
    .end local v0           #state:I
    :goto_11
    return-object v3

    :cond_12
    iget-boolean v3, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    goto :goto_11

    :cond_19
    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    goto :goto_11
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .prologue
    .line 626
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_a

    .line 627
    const/4 v0, 0x0

    .line 629
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_9
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 642
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 644
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_6
.end method

.method public interrupt()V
    .registers 5

    .prologue
    .line 672
    iget-object v3, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v3

    .line 673
    :try_start_3
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1b

    .line 674
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 673
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 676
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_24

    .line 678
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 679
    .local v1, vmt:Ljava/lang/VMThread;
    if-eqz v1, :cond_23

    .line 680
    invoke-virtual {v1}, Ljava/lang/VMThread;->interrupt()V

    .line 682
    :cond_23
    return-void

    .line 676
    .end local v0           #i:I
    .end local v1           #vmt:Ljava/lang/VMThread;
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public final isAlive()Z
    .registers 2

    .prologue
    .line 709
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 723
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public isInterrupted()Z
    .registers 3

    .prologue
    .line 736
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 737
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_9

    .line 738
    invoke-virtual {v0}, Ljava/lang/VMThread;->isInterrupted()Z

    move-result v1

    .line 741
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public final join()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 755
    .local v0, t:Ljava/lang/VMThread;
    if-nez v0, :cond_5

    .line 764
    :goto_4
    return-void

    .line 759
    :cond_5
    monitor-enter v0

    .line 760
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 761
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 763
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1

    :cond_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_10

    goto :goto_4
.end method

.method public final join(J)V
    .registers 4
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Thread;->join(JI)V

    .line 779
    return-void
.end method

.method public final join(JI)V
    .registers 22
    .parameter "millis"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 794
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-ltz v14, :cond_f

    if-ltz p3, :cond_f

    const v14, 0xf4240

    move/from16 v0, p3

    if-lt v0, v14, :cond_15

    .line 795
    :cond_f
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 799
    :cond_15
    const-wide v14, 0x7fffffffffffffffL

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    cmp-long v14, p1, v14

    if-ltz v14, :cond_3f

    const/4 v10, 0x1

    .line 800
    .local v10, overflow:Z
    :goto_2b
    move/from16 v0, p3

    int-to-long v14, v0

    or-long v14, v14, p1

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_41

    const/4 v3, 0x1

    .line 801
    .local v3, forever:Z
    :goto_37
    or-int v14, v3, v10

    if-eqz v14, :cond_43

    .line 802
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->join()V

    .line 835
    :cond_3e
    :goto_3e
    return-void

    .line 799
    .end local v3           #forever:Z
    .end local v10           #overflow:Z
    :cond_3f
    const/4 v10, 0x0

    goto :goto_2b

    .line 800
    .restart local v10       #overflow:Z
    :cond_41
    const/4 v3, 0x0

    goto :goto_37

    .line 806
    .restart local v3       #forever:Z
    :cond_43
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 807
    .local v13, t:Ljava/lang/VMThread;
    if-eqz v13, :cond_3e

    .line 811
    monitor-enter v13

    .line 812
    :try_start_4a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v14

    if-nez v14, :cond_55

    .line 813
    monitor-exit v13

    goto :goto_3e

    .line 834
    :catchall_52
    move-exception v14

    monitor-exit v13
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    throw v14

    .line 817
    :cond_55
    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p1

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v8, v14, v16

    .line 820
    .local v8, nanosToWait:J
    :try_start_61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 822
    .local v11, start:J
    :goto_65
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 823
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v14

    if-nez v14, :cond_74

    .line 834
    :cond_72
    monitor-exit v13

    goto :goto_3e

    .line 826
    :cond_74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long v4, v14, v11

    .line 827
    .local v4, nanosElapsed:J
    sub-long v6, v8, v4

    .line 828
    .local v6, nanosRemaining:J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_72

    .line 831
    const-wide/32 v14, 0xf4240

    div-long p1, v6, v14
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_52

    .line 832
    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p1

    sub-long v14, v6, v14

    long-to-int v0, v14

    move/from16 p3, v0

    .line 833
    goto :goto_65
.end method

.method public parkFor(J)V
    .registers 10
    .parameter "nanos"

    .prologue
    const/4 v6, 0x3

    .line 1212
    iget-object v3, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1214
    .local v3, vmt:Ljava/lang/VMThread;
    if-nez v3, :cond_b

    .line 1216
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1219
    :cond_b
    monitor-enter v3

    .line 1220
    :try_start_c
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v4, :pswitch_data_4e

    .line 1247
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "shouldn\'t happen: attempt to repark"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1251
    :catchall_19
    move-exception v4

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v4

    .line 1222
    :pswitch_1c
    const/4 v4, 0x1

    :try_start_1d
    iput v4, p0, Ljava/lang/Thread;->parkState:I

    .line 1251
    :cond_1f
    :goto_1f
    monitor-exit v3

    .line 1252
    return-void

    .line 1226
    :pswitch_21
    const-wide/32 v4, 0xf4240

    div-long v1, p1, v4

    .line 1227
    .local v1, millis:J
    const-wide/32 v4, 0xf4240

    rem-long/2addr p1, v4

    .line 1229
    const/4 v4, 0x3

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_19

    .line 1231
    long-to-int v4, p1

    :try_start_2e
    invoke-virtual {v3, v1, v2, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_45
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_39

    .line 1240
    :try_start_31
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1f

    .line 1241
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_19

    goto :goto_1f

    .line 1232
    :catch_39
    move-exception v0

    .line 1233
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 1240
    :try_start_3d
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1f

    .line 1241
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_1f

    .line 1240
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_45
    move-exception v4

    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v6, :cond_4d

    .line 1241
    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    :cond_4d
    throw v4
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_19

    .line 1220
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method public parkUntil(J)V
    .registers 8
    .parameter "time"

    .prologue
    .line 1276
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1278
    .local v2, vmt:Ljava/lang/VMThread;
    if-nez v2, :cond_a

    .line 1280
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1283
    :cond_a
    monitor-enter v2

    .line 1298
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, p1, v3

    .line 1300
    .local v0, delayMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1c

    .line 1301
    const/4 v3, 0x1

    iput v3, p0, Ljava/lang/Thread;->parkState:I

    .line 1305
    :goto_1a
    monitor-exit v2

    .line 1306
    return-void

    .line 1303
    :cond_1c
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/Thread;->parkFor(J)V

    goto :goto_1a

    .line 1305
    .end local v0           #delayMillis:J
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v3
.end method

.method public final popInterruptAction$(Ljava/lang/Runnable;)V
    .registers 7
    .parameter "interruptAction"

    .prologue
    .line 929
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v2

    .line 930
    :try_start_3
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    iget-object v3, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 931
    .local v0, removed:Ljava/lang/Runnable;
    if-eq p1, v0, :cond_3b

    .line 932
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 935
    .end local v0           #removed:Ljava/lang/Runnable;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1

    .restart local v0       #removed:Ljava/lang/Runnable;
    :cond_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 936
    return-void
.end method

.method public final pushInterruptAction$(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "interruptAction"

    .prologue
    .line 911
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v1

    .line 912
    :try_start_3
    iget-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 915
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 916
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 918
    :cond_14
    return-void

    .line 913
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final resume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 845
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 856
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 858
    :cond_9
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "cl"

    .prologue
    .line 867
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 868
    return-void
.end method

.method public final setDaemon(Z)V
    .registers 4
    .parameter "isDaemon"

    .prologue
    .line 879
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_c

    .line 880
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_c
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    if-nez v0, :cond_12

    .line 884
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 886
    :cond_12
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 4
    .parameter "threadName"

    .prologue
    .line 945
    if-nez p1, :cond_8

    .line 946
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 949
    :cond_8
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 950
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 951
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_11

    .line 953
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->nameChanged(Ljava/lang/String;)V

    .line 955
    :cond_11
    return-void
.end method

.method public final setPriority(I)V
    .registers 5
    .parameter "priority"

    .prologue
    .line 971
    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    const/16 v1, 0xa

    if-le p1, v1, :cond_f

    .line 972
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Priority out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 975
    :cond_f
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    if-le p1, v1, :cond_1d

    .line 976
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    .line 979
    :cond_1d
    iput p1, p0, Ljava/lang/Thread;->priority:I

    .line 981
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 982
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_26

    .line 983
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->setPriority(I)V

    .line 985
    :cond_26
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 997
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 998
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 1044
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_10

    .line 1045
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1044
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1048
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 1050
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    invoke-static {p0, v0, v1}, Ljava/lang/VMThread;->create(Ljava/lang/Thread;J)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_d

    .line 1051
    monitor-exit p0

    return-void
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1063
    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    .line 1064
    return-void
.end method

.method public final declared-synchronized stop(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "throwable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1076
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1087
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/Thread;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpark()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1152
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1154
    .local v0, vmt:Ljava/lang/VMThread;
    if-nez v0, :cond_8

    .line 1162
    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1188
    :goto_7
    return-void

    .line 1166
    :cond_8
    monitor-enter v0

    .line 1167
    :try_start_9
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_1e

    .line 1182
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1183
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1187
    :goto_14
    :pswitch_14
    monitor-exit v0

    goto :goto_7

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1

    .line 1178
    :pswitch_19
    const/4 v1, 0x2

    :try_start_1a
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_16

    goto :goto_14

    .line 1167
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method
