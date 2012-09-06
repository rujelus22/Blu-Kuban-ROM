.class public final Lcom/google/common/base/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Tracer$ThreadTrace;,
        Lcom/google/common/base/Tracer$Event;,
        Lcom/google/common/base/Tracer$Stat;,
        Lcom/google/common/base/Tracer$InternalClock;
    }
.end annotation


# static fields
.field static final DEFAULT_MAX_TRACE_SIZE:I = 0x3e8

.field private static final ZERO_STAT:Lcom/google/common/base/Tracer$Stat;

.field static clock:Lcom/google/common/base/Tracer$InternalClock;

.field private static volatile defaultPrettyPrint:Z

.field private static extraTracingStatistics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/TracingStatistic;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;

.field private static final manySpaces:[C

.field private static traceStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Deque",
            "<",
            "Lcom/google/common/base/Tracer$ThreadTrace;",
            ">;>;"
        }
    .end annotation
.end field

.field private static tracingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/base/TracingListener;",
            ">;"
        }
    .end annotation
.end field

.field private static typeToCountMap:Lcom/google/common/base/AtomicTracerStatMap;

.field private static typeToSilentMap:Lcom/google/common/base/AtomicTracerStatMap;

.field private static typeToTimeMap:Lcom/google/common/base/AtomicTracerStatMap;


# instance fields
.field private final comment:Ljava/lang/String;

.field private extraTracingValues:[J

.field final startThread:Ljava/lang/Thread;

.field private final startTimeMs:J

.field private stopTimeMs:J

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 191
    const-class v0, Lcom/google/common/base/Tracer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Tracer;->logger:Ljava/util/logging/Logger;

    .line 203
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->tracingListeners:Ljava/util/Set;

    .line 253
    new-instance v0, Lcom/google/common/base/Tracer$1;

    invoke-direct {v0}, Lcom/google/common/base/Tracer$1;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->clock:Lcom/google/common/base/Tracer$InternalClock;

    .line 369
    const-string v0, "                                                        "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Tracer;->manySpaces:[C

    .line 696
    new-instance v0, Lcom/google/common/base/Tracer$Stat;

    invoke-direct {v0}, Lcom/google/common/base/Tracer$Stat;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->ZERO_STAT:Lcom/google/common/base/Tracer$Stat;

    .line 1076
    new-instance v0, Lcom/google/common/base/Tracer$2;

    invoke-direct {v0}, Lcom/google/common/base/Tracer$2;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->traceStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "comment"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/common/base/Tracer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "type"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "comment"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/google/common/base/Tracer;->type:Ljava/lang/String;

    .line 269
    if-nez p2, :cond_4b

    const-string v6, ""

    :goto_9
    iput-object v6, p0, Lcom/google/common/base/Tracer;->comment:Ljava/lang/String;

    .line 270
    sget-object v6, Lcom/google/common/base/Tracer;->clock:Lcom/google/common/base/Tracer$InternalClock;

    invoke-interface {v6}, Lcom/google/common/base/Tracer$InternalClock;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/common/base/Tracer;->startTimeMs:J

    .line 271
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/base/Tracer;->startThread:Ljava/lang/Thread;

    .line 272
    sget-object v6, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 273
    sget-object v6, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 274
    .local v3, size:I
    new-array v6, v3, [J

    iput-object v6, p0, Lcom/google/common/base/Tracer;->extraTracingValues:[J

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, i:I
    sget-object v6, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/base/TracingStatistic;

    .line 277
    .local v5, tracingStatistic:Lcom/google/common/base/TracingStatistic;
    iget-object v6, p0, Lcom/google/common/base/Tracer;->extraTracingValues:[J

    iget-object v7, p0, Lcom/google/common/base/Tracer;->startThread:Ljava/lang/Thread;

    invoke-interface {v5, v7}, Lcom/google/common/base/TracingStatistic;->start(Ljava/lang/Thread;)J

    move-result-wide v7

    aput-wide v7, v6, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #size:I
    .end local v5           #tracingStatistic:Lcom/google/common/base/TracingStatistic;
    :cond_4b
    move-object v6, p2

    .line 269
    goto :goto_9

    .line 282
    :cond_4d
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v4

    .line 285
    .local v4, trace:Lcom/google/common/base/Tracer$ThreadTrace;
    invoke-virtual {v4}, Lcom/google/common/base/Tracer$ThreadTrace;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_58

    .line 314
    :cond_57
    return-void

    .line 290
    :cond_58
    iget-object v6, v4, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    #getter for: Lcom/google/common/base/Tracer$ThreadTrace;->maxTraceSize:I
    invoke-static {v4}, Lcom/google/common/base/Tracer$ThreadTrace;->access$000(Lcom/google/common/base/Tracer$ThreadTrace;)I

    move-result v7

    if-lt v6, v7, :cond_79

    .line 291
    sget-object v6, Lcom/google/common/base/Tracer;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Giant thread trace. Too many Tracers created. Clearing to avoid memory leak."

    new-instance v9, Ljava/lang/Throwable;

    invoke-virtual {v4}, Lcom/google/common/base/Tracer$ThreadTrace;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    invoke-virtual {v4}, Lcom/google/common/base/Tracer$ThreadTrace;->truncateEvents()V

    .line 299
    :cond_79
    iget-object v6, v4, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    #getter for: Lcom/google/common/base/Tracer$ThreadTrace;->maxTraceSize:I
    invoke-static {v4}, Lcom/google/common/base/Tracer$ThreadTrace;->access$000(Lcom/google/common/base/Tracer$ThreadTrace;)I

    move-result v7

    if-lt v6, v7, :cond_9a

    .line 300
    sget-object v6, Lcom/google/common/base/Tracer;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Too many outstanding Tracers. Tracer.stop() is missing or Tracer.stop() is not wrapped in a try/finally block. Clearing to avoid memory leak."

    new-instance v9, Ljava/lang/Throwable;

    invoke-virtual {v4}, Lcom/google/common/base/Tracer$ThreadTrace;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    invoke-virtual {v4}, Lcom/google/common/base/Tracer$ThreadTrace;->truncateOutstandingEvents()V

    .line 309
    :cond_9a
    invoke-virtual {v4, p0}, Lcom/google/common/base/Tracer$ThreadTrace;->startEvent(Lcom/google/common/base/Tracer;)V

    .line 311
    sget-object v6, Lcom/google/common/base/Tracer;->tracingListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/TracingListener;

    .line 312
    .local v2, listener:Lcom/google/common/base/TracingListener;
    iget-wide v6, p0, Lcom/google/common/base/Tracer;->startTimeMs:J

    invoke-virtual {v2, p1, p2, v6, v7}, Lcom/google/common/base/TracingListener;->handleStartTracer(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_a3
.end method

.method static synthetic access$1000(Lcom/google/common/base/Tracer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/base/Tracer;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/common/base/AtomicTracerStatMap;
    .registers 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/common/base/Tracer;->typeToCountMap:Lcom/google/common/base/AtomicTracerStatMap;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/common/base/AtomicTracerStatMap;
    .registers 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/common/base/Tracer;->typeToTimeMap:Lcom/google/common/base/AtomicTracerStatMap;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/common/base/AtomicTracerStatMap;
    .registers 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/common/base/Tracer;->typeToSilentMap:Lcom/google/common/base/AtomicTracerStatMap;

    return-object v0
.end method

.method static synthetic access$1800(J)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/google/common/base/Tracer;->numDigits(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/base/Tracer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/google/common/base/Tracer;->startTimeMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/common/base/Tracer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/google/common/base/Tracer;->stopTimeMs:J

    return-wide v0
.end method

.method static synthetic access$400(Ljava/lang/StringBuilder;JI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/base/Tracer;->appendPaddedLong(Ljava/lang/StringBuilder;JI)V

    return-void
.end method

.method static synthetic access$500(J)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/google/common/base/Tracer;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/base/Tracer;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/base/Tracer;->extraTracingValues:[J

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/List;
    .registers 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/base/Tracer;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/common/base/Tracer;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/google/common/base/Tracer;->defaultPrettyPrint:Z

    return v0
.end method

.method public static addTracingListener(Lcom/google/common/base/TracingListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 422
    sget-object v0, Lcom/google/common/base/Tracer;->tracingListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method public static addTracingStatistic(Lcom/google/common/base/TracingStatistic;)I
    .registers 2
    .parameter "tracingStatistic"

    .prologue
    .line 396
    invoke-interface {p0}, Lcom/google/common/base/TracingStatistic;->enable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 398
    sget-object v0, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 402
    :goto_11
    return v0

    :cond_12
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private static appendPaddedLong(Ljava/lang/StringBuilder;JI)V
    .registers 6
    .parameter "sb"
    .parameter "v"
    .parameter "digits_column_width"

    .prologue
    .line 349
    invoke-static {p1, p2}, Lcom/google/common/base/Tracer;->numDigits(J)I

    move-result v0

    .line 350
    .local v0, digit_width:I
    sub-int v1, p3, v0

    invoke-static {p0, v1}, Lcom/google/common/base/Tracer;->appendSpaces(Ljava/lang/StringBuilder;I)V

    .line 351
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 352
    return-void
.end method

.method static appendSpaces(Ljava/lang/StringBuilder;I)V
    .registers 5
    .parameter "sb"
    .parameter "numSpaces"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 379
    :goto_0
    if-lez p1, :cond_11

    .line 380
    sget-object v1, Lcom/google/common/base/Tracer;->manySpaces:[C

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 381
    .local v0, numToAppend:I
    sget-object v1, Lcom/google/common/base/Tracer;->manySpaces:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 382
    sub-int/2addr p1, v0

    .line 383
    goto :goto_0

    .line 384
    .end local v0           #numToAppend:I
    :cond_11
    return-void
.end method

.method private appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "sb"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/common/base/Tracer;->type:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/common/base/Tracer;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Tracer;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Tracer;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_a
.end method

.method public static clearCurrentThreadTrace()V
    .registers 0

    .prologue
    .line 582
    invoke-static {}, Lcom/google/common/base/Tracer;->clearThreadTrace()V

    .line 583
    return-void
.end method

.method private static clearThreadTrace()V
    .registers 4

    .prologue
    .line 1113
    sget-object v0, Lcom/google/common/base/Tracer;->traceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1114
    sget-object v0, Lcom/google/common/base/Tracer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "clearThreadTrace() called without a current ThreadTrace. Any call to {logAnd}clearCurrentThreadTrace() should be preceded by a corresponding call to initCurrentThreadTrace."

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1120
    :cond_1c
    return-void
.end method

.method static clearThreadTraceStackForTesting()V
    .registers 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1124
    sget-object v0, Lcom/google/common/base/Tracer;->traceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 1125
    return-void
.end method

.method static clearTracingStatisticsTestingOnly()V
    .registers 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    return-void
.end method

.method public static declared-synchronized enableTypeMaps()V
    .registers 2

    .prologue
    .line 656
    const-class v1, Lcom/google/common/base/Tracer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/common/base/Tracer;->typeToCountMap:Lcom/google/common/base/AtomicTracerStatMap;

    if-nez v0, :cond_1c

    .line 657
    new-instance v0, Lcom/google/common/base/AtomicTracerStatMap;

    invoke-direct {v0}, Lcom/google/common/base/AtomicTracerStatMap;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->typeToCountMap:Lcom/google/common/base/AtomicTracerStatMap;

    .line 658
    new-instance v0, Lcom/google/common/base/AtomicTracerStatMap;

    invoke-direct {v0}, Lcom/google/common/base/AtomicTracerStatMap;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->typeToSilentMap:Lcom/google/common/base/AtomicTracerStatMap;

    .line 659
    new-instance v0, Lcom/google/common/base/AtomicTracerStatMap;

    invoke-direct {v0}, Lcom/google/common/base/AtomicTracerStatMap;-><init>()V

    sput-object v0, Lcom/google/common/base/Tracer;->typeToTimeMap:Lcom/google/common/base/AtomicTracerStatMap;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 661
    :cond_1c
    monitor-exit v1

    return-void

    .line 656
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static formatTime(J)Ljava/lang/String;
    .registers 10
    .parameter "time"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 700
    div-long v2, p0, v6

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    long-to-int v1, v2

    .line 701
    .local v1, sec:I
    rem-long v2, p0, v6

    long-to-int v0, v2

    .line 702
    .local v0, ms:I
    const-string v2, "%02d.%03d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentThreadTraceReport()Ljava/lang/String;
    .registers 1

    .prologue
    .line 551
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Tracer$ThreadTrace;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMaxTraceSize()I
    .registers 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 521
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    #getter for: Lcom/google/common/base/Tracer$ThreadTrace;->maxTraceSize:I
    invoke-static {v0}, Lcom/google/common/base/Tracer$ThreadTrace;->access$000(Lcom/google/common/base/Tracer$ThreadTrace;)I

    move-result v0

    return v0
.end method

.method public static getStatsForType(Ljava/lang/String;)Lcom/google/common/base/Tracer$Stat;
    .registers 3
    .parameter "type"

    .prologue
    .line 692
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/base/Tracer$ThreadTrace;->stats:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Tracer$Stat;

    .line 693
    .local v0, stat:Lcom/google/common/base/Tracer$Stat;
    if-eqz v0, :cond_f

    .end local v0           #stat:Lcom/google/common/base/Tracer$Stat;
    :goto_e
    return-object v0

    .restart local v0       #stat:Lcom/google/common/base/Tracer$Stat;
    :cond_f
    sget-object v0, Lcom/google/common/base/Tracer;->ZERO_STAT:Lcom/google/common/base/Tracer$Stat;

    goto :goto_e
.end method

.method static getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1094
    sget-object v1, Lcom/google/common/base/Tracer;->traceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Tracer$ThreadTrace;

    .line 1095
    .local v0, t:Lcom/google/common/base/Tracer$ThreadTrace;
    if-eqz v0, :cond_11

    .end local v0           #t:Lcom/google/common/base/Tracer$ThreadTrace;
    :goto_10
    return-object v0

    .restart local v0       #t:Lcom/google/common/base/Tracer$ThreadTrace;
    :cond_11
    invoke-static {}, Lcom/google/common/base/Tracer;->pushNewThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    goto :goto_10
.end method

.method public static getTypeToCountMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    sget-object v0, Lcom/google/common/base/Tracer;->typeToCountMap:Lcom/google/common/base/AtomicTracerStatMap;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/common/base/Tracer;->typeToCountMap:Lcom/google/common/base/AtomicTracerStatMap;

    invoke-virtual {v0}, Lcom/google/common/base/AtomicTracerStatMap;->getMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getTypeToSilentMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    sget-object v0, Lcom/google/common/base/Tracer;->typeToSilentMap:Lcom/google/common/base/AtomicTracerStatMap;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/common/base/Tracer;->typeToSilentMap:Lcom/google/common/base/AtomicTracerStatMap;

    invoke-virtual {v0}, Lcom/google/common/base/AtomicTracerStatMap;->getMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getTypeToTimeMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    sget-object v0, Lcom/google/common/base/Tracer;->typeToTimeMap:Lcom/google/common/base/AtomicTracerStatMap;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/common/base/Tracer;->typeToTimeMap:Lcom/google/common/base/AtomicTracerStatMap;

    invoke-virtual {v0}, Lcom/google/common/base/AtomicTracerStatMap;->getMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static initCurrentThreadTrace()V
    .registers 2

    .prologue
    .line 530
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    .line 531
    .local v0, events:Lcom/google/common/base/Tracer$ThreadTrace;
    invoke-virtual {v0}, Lcom/google/common/base/Tracer$ThreadTrace;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 534
    invoke-static {}, Lcom/google/common/base/Tracer;->pushNewThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    .line 537
    :cond_e
    invoke-virtual {v0}, Lcom/google/common/base/Tracer$ThreadTrace;->init()V

    .line 538
    return-void
.end method

.method public static initCurrentThreadTrace(I)V
    .registers 1
    .parameter "default_silence_threshold"

    .prologue
    .line 541
    invoke-static {}, Lcom/google/common/base/Tracer;->initCurrentThreadTrace()V

    .line 542
    invoke-static {p0}, Lcom/google/common/base/Tracer;->setDefaultSilenceThreshold(I)V

    .line 543
    return-void
.end method

.method public static logAndClearCurrentThreadTrace()V
    .registers 0

    .prologue
    .line 589
    invoke-static {}, Lcom/google/common/base/Tracer;->logCurrentThreadTrace()V

    .line 590
    invoke-static {}, Lcom/google/common/base/Tracer;->clearThreadTrace()V

    .line 591
    return-void
.end method

.method public static logCurrentThreadTrace()V
    .registers 5

    .prologue
    .line 558
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    .line 565
    .local v0, trace:Lcom/google/common/base/Tracer$ThreadTrace;
    invoke-virtual {v0}, Lcom/google/common/base/Tracer$ThreadTrace;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_19

    .line 566
    sget-object v1, Lcom/google/common/base/Tracer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Tracer log requested for this thread but was not initialized using Tracer.initCurrentThreadTrace()."

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    :cond_18
    :goto_18
    return-void

    .line 573
    :cond_19
    invoke-virtual {v0}, Lcom/google/common/base/Tracer$ThreadTrace;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 574
    sget-object v1, Lcom/google/common/base/Tracer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "timers:\n{0}"

    invoke-static {}, Lcom/google/common/base/Tracer;->getCurrentThreadTraceReport()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18
.end method

.method private static numDigits(J)I
    .registers 5
    .parameter "n"

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 364
    const-wide/16 v1, 0xa

    div-long/2addr p0, v1

    .line 365
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    .line 366
    return v0
.end method

.method private static pushNewThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;
    .registers 3

    .prologue
    .line 1100
    sget-object v2, Lcom/google/common/base/Tracer;->traceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Tracer$ThreadTrace;

    .line 1101
    .local v1, parent:Lcom/google/common/base/Tracer$ThreadTrace;
    if-nez v1, :cond_20

    invoke-static {}, Lcom/google/common/base/Tracer$ThreadTrace;->newRootThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    .line 1104
    .local v0, newTrace:Lcom/google/common/base/Tracer$ThreadTrace;
    :goto_14
    sget-object v2, Lcom/google/common/base/Tracer;->traceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 1105
    return-object v0

    .line 1101
    .end local v0           #newTrace:Lcom/google/common/base/Tracer$ThreadTrace;
    :cond_20
    invoke-static {v1}, Lcom/google/common/base/Tracer$ThreadTrace;->newChildThreadTrace(Lcom/google/common/base/Tracer$ThreadTrace;)Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    goto :goto_14
.end method

.method public static removeTracingListener(Lcom/google/common/base/TracingListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 430
    sget-object v0, Lcom/google/common/base/Tracer;->tracingListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public static setDefaultSilenceThreshold(I)V
    .registers 2
    .parameter "threshold"

    .prologue
    .line 502
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    #setter for: Lcom/google/common/base/Tracer$ThreadTrace;->defaultSilenceThreshold:I
    invoke-static {v0, p0}, Lcom/google/common/base/Tracer$ThreadTrace;->access$102(Lcom/google/common/base/Tracer$ThreadTrace;I)I

    .line 503
    return-void
.end method

.method public static setMaxTraceSize(I)V
    .registers 2
    .parameter "maxTraceSize"

    .prologue
    .line 511
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v0

    #setter for: Lcom/google/common/base/Tracer$ThreadTrace;->maxTraceSize:I
    invoke-static {v0, p0}, Lcom/google/common/base/Tracer$ThreadTrace;->access$002(Lcom/google/common/base/Tracer$ThreadTrace;I)I

    .line 512
    return-void
.end method

.method public static setPrettyPrint(Z)V
    .registers 1
    .parameter "enabled"

    .prologue
    .line 599
    sput-boolean p0, Lcom/google/common/base/Tracer;->defaultPrettyPrint:Z

    .line 600
    return-void
.end method

.method public static shortName(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/common/base/Tracer;
    .registers 4
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "comment"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 333
    if-nez p0, :cond_8

    .line 334
    new-instance v0, Lcom/google/common/base/Tracer;

    invoke-direct {v0, p1}, Lcom/google/common/base/Tracer;-><init>(Ljava/lang/String;)V

    .line 336
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/base/Tracer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/base/Tracer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public stop()J
    .registers 3

    .prologue
    .line 482
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/base/Tracer;->stop(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public stop(I)J
    .registers 14
    .parameter "silence_threshold"

    .prologue
    const-wide/16 v5, 0x0

    .line 443
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Tracer;->startThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_19

    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 445
    invoke-static {}, Lcom/google/common/base/Tracer;->getThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;

    move-result-object v9

    .line 447
    .local v9, trace:Lcom/google/common/base/Tracer$ThreadTrace;
    invoke-virtual {v9}, Lcom/google/common/base/Tracer$ThreadTrace;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 474
    :cond_18
    return-wide v5

    .line 443
    .end local v9           #trace:Lcom/google/common/base/Tracer$ThreadTrace;
    :cond_19
    const/4 v1, 0x0

    goto :goto_b

    .line 451
    .restart local v9       #trace:Lcom/google/common/base/Tracer$ThreadTrace;
    :cond_1b
    sget-object v1, Lcom/google/common/base/Tracer;->clock:Lcom/google/common/base/Tracer$InternalClock;

    invoke-interface {v1}, Lcom/google/common/base/Tracer$InternalClock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/base/Tracer;->stopTimeMs:J

    .line 452
    iget-object v1, p0, Lcom/google/common/base/Tracer;->extraTracingValues:[J

    if-eqz v1, :cond_48

    .line 455
    const/4 v7, 0x0

    .local v7, i:I
    :goto_28
    iget-object v1, p0, Lcom/google/common/base/Tracer;->extraTracingValues:[J

    array-length v1, v1

    if-ge v7, v1, :cond_48

    .line 456
    sget-object v1, Lcom/google/common/base/Tracer;->extraTracingStatistics:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/TracingStatistic;

    iget-object v2, p0, Lcom/google/common/base/Tracer;->startThread:Ljava/lang/Thread;

    invoke-interface {v1, v2}, Lcom/google/common/base/TracingStatistic;->stop(Ljava/lang/Thread;)J

    move-result-wide v10

    .line 457
    .local v10, value:J
    iget-object v1, p0, Lcom/google/common/base/Tracer;->extraTracingValues:[J

    iget-object v2, p0, Lcom/google/common/base/Tracer;->extraTracingValues:[J

    aget-wide v2, v2, v7

    sub-long v2, v10, v2

    aput-wide v2, v1, v7

    .line 455
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 462
    .end local v7           #i:I
    .end local v10           #value:J
    :cond_48
    invoke-virtual {v9}, Lcom/google/common/base/Tracer$ThreadTrace;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 466
    invoke-virtual {v9, p0, p1}, Lcom/google/common/base/Tracer$ThreadTrace;->endEvent(Lcom/google/common/base/Tracer;I)V

    .line 468
    iget-wide v1, p0, Lcom/google/common/base/Tracer;->stopTimeMs:J

    iget-wide v3, p0, Lcom/google/common/base/Tracer;->startTimeMs:J

    sub-long v5, v1, v3

    .line 470
    .local v5, elapsedTimeMs:J
    sget-object v1, Lcom/google/common/base/Tracer;->tracingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/TracingListener;

    .line 471
    .local v0, listener:Lcom/google/common/base/TracingListener;
    iget-object v1, p0, Lcom/google/common/base/Tracer;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/common/base/Tracer;->comment:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/common/base/Tracer;->stopTimeMs:J

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/base/TracingListener;->handleStopTracer(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_5d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/common/base/Tracer;->type:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/common/base/Tracer;->comment:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/base/Tracer;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
