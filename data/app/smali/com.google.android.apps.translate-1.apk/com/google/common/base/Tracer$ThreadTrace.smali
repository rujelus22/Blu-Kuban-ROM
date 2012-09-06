.class final Lcom/google/common/base/Tracer$ThreadTrace;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadTrace"
.end annotation


# instance fields
.field private defaultSilenceThreshold:I

.field final events:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Tracer$Event;",
            ">;"
        }
    .end annotation
.end field

.field isEventsTruncated:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private isInitialized:Z

.field isOutstandingEventsTruncated:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private maxTraceSize:I

.field final outstandingEvents:Ljava/util/HashSet;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/common/base/Tracer;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/common/base/Tracer$ThreadTrace;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private prettyPrint:Z

.field final stats:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Tracer$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/base/Tracer$ThreadTrace;Ljava/util/List;I)V
    .registers 5
    .parameter "parent"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter "defaultSilenceThreshold"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Tracer$ThreadTrace;",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Tracer$Event;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p2, events:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/base/Tracer$Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    .line 787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->stats:Ljava/util/Map;

    .line 818
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->maxTraceSize:I

    .line 838
    iput-object p1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->parent:Lcom/google/common/base/Tracer$ThreadTrace;

    .line 839
    iput-object p2, p0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    .line 840
    invoke-static {}, Lcom/google/common/base/Tracer;->access$900()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->prettyPrint:Z

    .line 841
    iput p3, p0, Lcom/google/common/base/Tracer$ThreadTrace;->defaultSilenceThreshold:I

    .line 842
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/base/Tracer$ThreadTrace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 769
    iget v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->maxTraceSize:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/common/base/Tracer$ThreadTrace;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput p1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->maxTraceSize:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/common/base/Tracer$ThreadTrace;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput p1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->defaultSilenceThreshold:I

    return p1
.end method

.method private getMaxDigits()I
    .registers 13

    .prologue
    .line 1052
    const-wide/16 v1, -0x1

    .line 1053
    .local v1, etime:J
    const-wide/16 v4, 0x0

    .line 1054
    .local v4, max_time:J
    iget-object v8, p0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Tracer$Event;

    .line 1055
    .local v0, e:Lcom/google/common/base/Tracer$Event;
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_26

    .line 1056
    invoke-virtual {v0}, Lcom/google/common/base/Tracer$Event;->eventTime()J

    move-result-wide v8

    sub-long v6, v8, v1

    .line 1057
    .local v6, time:J
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1059
    .end local v6           #time:J
    :cond_26
    iget-boolean v8, v0, Lcom/google/common/base/Tracer$Event;->isStart:Z

    if-nez v8, :cond_3c

    .line 1060
    iget-object v8, v0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->stopTimeMs:J
    invoke-static {v8}, Lcom/google/common/base/Tracer;->access$300(Lcom/google/common/base/Tracer;)J

    move-result-wide v8

    iget-object v10, v0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->startTimeMs:J
    invoke-static {v10}, Lcom/google/common/base/Tracer;->access$200(Lcom/google/common/base/Tracer;)J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 1061
    .restart local v6       #time:J
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1063
    .end local v6           #time:J
    :cond_3c
    invoke-virtual {v0}, Lcom/google/common/base/Tracer$Event;->eventTime()J

    move-result-wide v1

    goto :goto_a

    .line 1066
    .end local v0           #e:Lcom/google/common/base/Tracer$Event;
    :cond_41
    const/4 v8, 0x3

    #calls: Lcom/google/common/base/Tracer;->numDigits(J)I
    invoke-static {v4, v5}, Lcom/google/common/base/Tracer;->access$1800(J)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    return v8
.end method

.method private getStat(Ljava/lang/String;)Lcom/google/common/base/Tracer$Stat;
    .registers 4
    .parameter "type"

    .prologue
    .line 958
    iget-object v1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->stats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Tracer$Stat;

    .line 959
    .local v0, stat:Lcom/google/common/base/Tracer$Stat;
    if-nez v0, :cond_2b

    .line 960
    new-instance v0, Lcom/google/common/base/Tracer$Stat;

    .end local v0           #stat:Lcom/google/common/base/Tracer$Stat;
    invoke-direct {v0}, Lcom/google/common/base/Tracer$Stat;-><init>()V

    .line 961
    .restart local v0       #stat:Lcom/google/common/base/Tracer$Stat;
    invoke-static {}, Lcom/google/common/base/Tracer;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 962
    invoke-static {}, Lcom/google/common/base/Tracer;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    #setter for: Lcom/google/common/base/Tracer$Stat;->extraInfo:[I
    invoke-static {v0, v1}, Lcom/google/common/base/Tracer$Stat;->access$1602(Lcom/google/common/base/Tracer$Stat;[I)[I

    .line 964
    :cond_26
    iget-object v1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->stats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_2b
    return-object v0
.end method

.method static newChildThreadTrace(Lcom/google/common/base/Tracer$ThreadTrace;)Lcom/google/common/base/Tracer$ThreadTrace;
    .registers 5
    .parameter "parent"

    .prologue
    .line 828
    iget-object v1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 829
    .local v0, numParentEvents:I
    new-instance v1, Lcom/google/common/base/Tracer$ThreadTrace;

    iget-object v2, p0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v2, v0, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/google/common/base/Tracer$ThreadTrace;->defaultSilenceThreshold:I

    invoke-direct {v1, p0, v2, v3}, Lcom/google/common/base/Tracer$ThreadTrace;-><init>(Lcom/google/common/base/Tracer$ThreadTrace;Ljava/util/List;I)V

    return-object v1
.end method

.method static newRootThreadTrace()Lcom/google/common/base/Tracer$ThreadTrace;
    .registers 4

    .prologue
    .line 821
    new-instance v0, Lcom/google/common/base/Tracer$ThreadTrace;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/Tracer$ThreadTrace;-><init>(Lcom/google/common/base/Tracer$ThreadTrace;Ljava/util/List;I)V

    return-object v0
.end method


# virtual methods
.method endEvent(Lcom/google/common/base/Tracer;I)V
    .registers 19
    .parameter "t"
    .parameter "silenceThreshold"

    .prologue
    .line 868
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    .line 869
    .local v10, wasOutstanding:Z
    if-nez v10, :cond_20

    .line 870
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/common/base/Tracer$ThreadTrace;->isOutstandingEventsTruncated:Z

    if-eqz v11, :cond_f9

    .line 874
    sget-object v11, Lcom/google/common/base/Tracer;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v13, "event not found, probably because the event stack overflowed and was truncated"

    new-instance v14, Ljava/lang/Throwable;

    invoke-direct {v14}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v11, v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    :cond_20
    #getter for: Lcom/google/common/base/Tracer;->stopTimeMs:J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$300(Lcom/google/common/base/Tracer;)J

    move-result-wide v11

    #getter for: Lcom/google/common/base/Tracer;->startTimeMs:J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$200(Lcom/google/common/base/Tracer;)J

    move-result-wide v13

    sub-long v2, v11, v13

    .line 887
    .local v2, elapsed:J
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_35

    .line 888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/base/Tracer$ThreadTrace;->defaultSilenceThreshold:I

    move/from16 p2, v0

    .line 891
    :cond_35
    move/from16 v0, p2

    int-to-long v11, v0

    cmp-long v11, v2, v11

    if-gez v11, :cond_108

    .line 893
    const/4 v7, 0x0

    .line 894
    .local v7, removed:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_65

    .line 895
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Tracer$Event;

    .line 896
    .local v1, e:Lcom/google/common/base/Tracer$Event;
    iget-object v11, v1, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_101

    .line 897
    iget-boolean v11, v1, Lcom/google/common/base/Tracer$Event;->isStart:Z

    invoke-static {v11}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 898
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 899
    const/4 v7, 0x1

    .line 906
    .end local v1           #e:Lcom/google/common/base/Tracer$Event;
    :cond_65
    if-nez v7, :cond_6d

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/common/base/Tracer$ThreadTrace;->isEventsTruncated:Z

    if-eqz v11, :cond_105

    :cond_6d
    const/4 v11, 0x1

    :goto_6e
    invoke-static {v11}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 911
    .end local v4           #i:I
    .end local v7           #removed:Z
    :goto_71
    #getter for: Lcom/google/common/base/Tracer;->type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$1000(Lcom/google/common/base/Tracer;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_169

    .line 913
    invoke-static {}, Lcom/google/common/base/Tracer;->access$1100()Lcom/google/common/base/AtomicTracerStatMap;

    move-result-object v11

    if-eqz v11, :cond_8a

    .line 914
    invoke-static {}, Lcom/google/common/base/Tracer;->access$1100()Lcom/google/common/base/AtomicTracerStatMap;

    move-result-object v11

    #getter for: Lcom/google/common/base/Tracer;->type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$1000(Lcom/google/common/base/Tracer;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/common/base/AtomicTracerStatMap;->incrementBy(Ljava/lang/String;J)V

    .line 916
    :cond_8a
    invoke-static {}, Lcom/google/common/base/Tracer;->access$1200()Lcom/google/common/base/AtomicTracerStatMap;

    move-result-object v11

    if-eqz v11, :cond_9b

    .line 917
    invoke-static {}, Lcom/google/common/base/Tracer;->access$1200()Lcom/google/common/base/AtomicTracerStatMap;

    move-result-object v11

    #getter for: Lcom/google/common/base/Tracer;->type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$1000(Lcom/google/common/base/Tracer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2, v3}, Lcom/google/common/base/AtomicTracerStatMap;->incrementBy(Ljava/lang/String;J)V

    .line 919
    :cond_9b
    move/from16 v0, p2

    int-to-long v11, v0

    cmp-long v11, v2, v11

    if-gez v11, :cond_b5

    .line 920
    invoke-static {}, Lcom/google/common/base/Tracer;->access$1300()Lcom/google/common/base/AtomicTracerStatMap;

    move-result-object v11

    if-eqz v11, :cond_b5

    .line 921
    invoke-static {}, Lcom/google/common/base/Tracer;->access$1300()Lcom/google/common/base/AtomicTracerStatMap;

    move-result-object v11

    #getter for: Lcom/google/common/base/Tracer;->type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$1000(Lcom/google/common/base/Tracer;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/common/base/AtomicTracerStatMap;->incrementBy(Ljava/lang/String;J)V

    .line 924
    :cond_b5
    invoke-static {}, Lcom/google/common/base/Tracer;->access$700()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_119

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v11

    if-eqz v11, :cond_119

    .line 925
    invoke-static {}, Lcom/google/common/base/Tracer;->access$700()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v12

    array-length v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 927
    .local v6, overlapLength:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_d7
    if-ge v4, v6, :cond_119

    .line 928
    invoke-static {}, Lcom/google/common/base/Tracer;->access$700()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/common/base/TracingStatistic;

    invoke-interface {v11}, Lcom/google/common/base/TracingStatistic;->getTracingStat()Lcom/google/common/base/AtomicTracerStatMap;

    move-result-object v5

    .line 930
    .local v5, map:Lcom/google/common/base/AtomicTracerStatMap;
    if-eqz v5, :cond_f6

    .line 931
    #getter for: Lcom/google/common/base/Tracer;->type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$1000(Lcom/google/common/base/Tracer;)Ljava/lang/String;

    move-result-object v11

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v12

    aget-wide v12, v12, v4

    invoke-virtual {v5, v11, v12, v13}, Lcom/google/common/base/AtomicTracerStatMap;->incrementBy(Ljava/lang/String;J)V

    .line 927
    :cond_f6
    add-int/lit8 v4, v4, 0x1

    goto :goto_d7

    .line 881
    .end local v2           #elapsed:J
    .end local v4           #i:I
    .end local v5           #map:Lcom/google/common/base/AtomicTracerStatMap;
    .end local v6           #overlapLength:I
    :cond_f9
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Assertion failed"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 894
    .restart local v1       #e:Lcom/google/common/base/Tracer$Event;
    .restart local v2       #elapsed:J
    .restart local v4       #i:I
    .restart local v7       #removed:Z
    :cond_101
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3e

    .line 906
    .end local v1           #e:Lcom/google/common/base/Tracer$Event;
    :cond_105
    const/4 v11, 0x0

    goto/16 :goto_6e

    .line 908
    .end local v4           #i:I
    .end local v7           #removed:Z
    :cond_108
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    new-instance v12, Lcom/google/common/base/Tracer$Event;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/google/common/base/Tracer$Event;-><init>(ZLcom/google/common/base/Tracer;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_71

    .line 936
    :cond_119
    move-object/from16 v9, p0

    .local v9, trace:Lcom/google/common/base/Tracer$ThreadTrace;
    :goto_11b
    if-eqz v9, :cond_169

    .line 937
    #getter for: Lcom/google/common/base/Tracer;->type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$1000(Lcom/google/common/base/Tracer;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/google/common/base/Tracer$ThreadTrace;->getStat(Ljava/lang/String;)Lcom/google/common/base/Tracer$Stat;

    move-result-object v8

    .line 938
    .local v8, stat:Lcom/google/common/base/Tracer$Stat;
    invoke-static {v8}, Lcom/google/common/base/Tracer$Stat;->access$1408(Lcom/google/common/base/Tracer$Stat;)I

    .line 939
    invoke-static {v8, v2, v3}, Lcom/google/common/base/Tracer$Stat;->access$1514(Lcom/google/common/base/Tracer$Stat;J)I

    .line 941
    #getter for: Lcom/google/common/base/Tracer$Stat;->extraInfo:[I
    invoke-static {v8}, Lcom/google/common/base/Tracer$Stat;->access$1600(Lcom/google/common/base/Tracer$Stat;)[I

    move-result-object v11

    if-eqz v11, :cond_15c

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v11

    if-eqz v11, :cond_15c

    .line 942
    #getter for: Lcom/google/common/base/Tracer$Stat;->extraInfo:[I
    invoke-static {v8}, Lcom/google/common/base/Tracer$Stat;->access$1600(Lcom/google/common/base/Tracer$Stat;)[I

    move-result-object v11

    array-length v11, v11

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v12

    array-length v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 944
    .restart local v6       #overlapLength:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_146
    if-ge v4, v6, :cond_15c

    .line 945
    #getter for: Lcom/google/common/base/Tracer$Stat;->extraInfo:[I
    invoke-static {v8}, Lcom/google/common/base/Tracer$Stat;->access$1600(Lcom/google/common/base/Tracer$Stat;)[I

    move-result-object v11

    aget v12, v11, v4

    int-to-long v12, v12

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v14

    aget-wide v14, v14, v4

    add-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v11, v4

    .line 944
    add-int/lit8 v4, v4, 0x1

    goto :goto_146

    .line 949
    .end local v4           #i:I
    .end local v6           #overlapLength:I
    :cond_15c
    move/from16 v0, p2

    int-to-long v11, v0

    cmp-long v11, v2, v11

    if-gez v11, :cond_166

    .line 950
    invoke-static {v8}, Lcom/google/common/base/Tracer$Stat;->access$1708(Lcom/google/common/base/Tracer$Stat;)I

    .line 936
    :cond_166
    iget-object v9, v9, Lcom/google/common/base/Tracer$ThreadTrace;->parent:Lcom/google/common/base/Tracer$ThreadTrace;

    goto :goto_11b

    .line 954
    .end local v8           #stat:Lcom/google/common/base/Tracer$Stat;
    .end local v9           #trace:Lcom/google/common/base/Tracer$ThreadTrace;
    :cond_169
    return-void
.end method

.method init()V
    .registers 2

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->isInitialized:Z

    .line 847
    return-void
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isInitialized()Z
    .registers 2

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->isInitialized:Z

    return v0
.end method

.method startEvent(Lcom/google/common/base/Tracer;)V
    .registers 6
    .parameter "t"

    .prologue
    .line 859
    iget-object v1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    new-instance v2, Lcom/google/common/base/Tracer$Event;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/google/common/base/Tracer$Event;-><init>(ZLcom/google/common/base/Tracer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v1, p0, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 861
    .local v0, notAlreadyOutstanding:Z
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 862
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 21

    .prologue
    .line 986
    invoke-direct/range {p0 .. p0}, Lcom/google/common/base/Tracer$ThreadTrace;->getMaxDigits()I

    move-result v6

    .line 987
    .local v6, numDigits:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .local v2, sb:Ljava/lang/StringBuilder;
    const-wide/16 v3, -0x1

    .line 989
    .local v3, etime:J
    const/4 v5, 0x0

    .line 990
    .local v5, indentDepth:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Tracer$Event;

    .line 991
    .local v1, e:Lcom/google/common/base/Tracer$Event;
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->prettyPrint:Z

    if-eqz v7, :cond_2e

    iget-boolean v7, v1, Lcom/google/common/base/Tracer$Event;->isStart:Z

    if-nez v7, :cond_2e

    if-lez v5, :cond_2e

    .line 992
    add-int/lit8 v5, v5, -0x1

    .line 994
    :cond_2e
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 995
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->prettyPrint:Z

    if-eqz v7, :cond_52

    .line 996
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/base/Tracer$Event;->appendTo(Ljava/lang/StringBuilder;JII)V

    .line 1000
    :goto_3c
    invoke-virtual {v1}, Lcom/google/common/base/Tracer$Event;->eventTime()J

    move-result-wide v3

    .line 1001
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->prettyPrint:Z

    if-eqz v7, :cond_14

    iget-boolean v7, v1, Lcom/google/common/base/Tracer$Event;->isStart:Z

    if-eqz v7, :cond_14

    .line 1003
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 998
    :cond_52
    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object v7, v1

    move-object v8, v2

    move-wide v9, v3

    invoke-virtual/range {v7 .. v12}, Lcom/google/common/base/Tracer$Event;->appendTo(Ljava/lang/StringBuilder;JII)V

    goto :goto_3c

    .line 1007
    .end local v1           #e:Lcom/google/common/base/Tracer$Event;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-eqz v7, :cond_b8

    .line 1008
    sget-object v7, Lcom/google/common/base/Tracer;->clock:Lcom/google/common/base/Tracer$InternalClock;

    invoke-interface {v7}, Lcom/google/common/base/Tracer$InternalClock;->currentTimeMillis()J

    move-result-wide v16

    .line 1010
    .local v16, now:J
    const-string v7, " Unstopped timers:\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_78
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/common/base/Tracer;

    .line 1012
    .local v19, t:Lcom/google/common/base/Tracer;
    const-string v7, "  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/google/common/base/Tracer;->startTimeMs:J
    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Tracer;->access$200(Lcom/google/common/base/Tracer;)J

    move-result-wide v8

    sub-long v8, v16, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms, started at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/google/common/base/Tracer;->startTimeMs:J
    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Tracer;->access$200(Lcom/google/common/base/Tracer;)J

    move-result-wide v8

    #calls: Lcom/google/common/base/Tracer;->formatTime(J)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/google/common/base/Tracer;->access$500(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1022
    .end local v16           #now:J
    .end local v19           #t:Lcom/google/common/base/Tracer;
    :cond_b8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->stats:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c4
    :goto_c4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1023
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/base/Tracer$ThreadTrace;->stats:Ljava/util/Map;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/common/base/Tracer$Stat;

    .line 1024
    .local v18, stat:Lcom/google/common/base/Tracer$Stat;
    #getter for: Lcom/google/common/base/Tracer$Stat;->count:I
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Tracer$Stat;->access$1400(Lcom/google/common/base/Tracer$Stat;)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_c4

    .line 1025
    const-string v7, " TOTAL "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/google/common/base/Tracer$Stat;->count:I
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Tracer$Stat;->access$1400(Lcom/google/common/base/Tracer$Stat;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/google/common/base/Tracer$Stat;->clockTime:I
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Tracer$Stat;->access$1500(Lcom/google/common/base/Tracer$Stat;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    #getter for: Lcom/google/common/base/Tracer$Stat;->extraInfo:[I
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Tracer$Stat;->access$1600(Lcom/google/common/base/Tracer$Stat;)[I

    move-result-object v7

    if-eqz v7, :cond_143

    .line 1033
    const/4 v13, 0x0

    .local v13, i:I
    :goto_113
    #getter for: Lcom/google/common/base/Tracer$Stat;->extraInfo:[I
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Tracer$Stat;->access$1600(Lcom/google/common/base/Tracer$Stat;)[I

    move-result-object v7

    array-length v7, v7

    if-ge v13, v7, :cond_143

    .line 1034
    const-string v7, "; "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    #getter for: Lcom/google/common/base/Tracer$Stat;->extraInfo:[I
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Tracer$Stat;->access$1600(Lcom/google/common/base/Tracer$Stat;)[I

    move-result-object v7

    aget v7, v7, v13

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/google/common/base/Tracer;->access$700()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/base/TracingStatistic;

    invoke-interface {v7}, Lcom/google/common/base/TracingStatistic;->getUnits()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    add-int/lit8 v13, v13, 0x1

    goto :goto_113

    .line 1040
    .end local v13           #i:I
    :cond_143
    const-string v7, ")\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 1043
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #stat:Lcom/google/common/base/Tracer$Stat;
    :cond_14a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method truncateEvents()V
    .registers 2

    .prologue
    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->isEventsTruncated:Z

    .line 980
    iget-object v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 981
    return-void
.end method

.method truncateOutstandingEvents()V
    .registers 2

    .prologue
    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->isOutstandingEventsTruncated:Z

    .line 975
    iget-object v0, p0, Lcom/google/common/base/Tracer$ThreadTrace;->outstandingEvents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 976
    return-void
.end method
