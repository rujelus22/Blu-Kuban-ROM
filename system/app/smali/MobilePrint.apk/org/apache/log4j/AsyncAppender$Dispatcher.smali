.class Lorg/apache/log4j/AsyncAppender$Dispatcher;
.super Ljava/lang/Object;
.source "AsyncAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/AsyncAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dispatcher"
.end annotation


# instance fields
.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final buffer:Ljava/util/List;

.field private final discardMap:Ljava/util/Map;

.field private final parent:Lorg/apache/log4j/AsyncAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V
    .registers 5
    .parameter "parent"
    .parameter "buffer"
    .parameter "discardMap"
    .parameter "appenders"

    .prologue
    .line 507
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    .line 510
    iput-object p2, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    .line 511
    iput-object p4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 512
    iput-object p3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    .line 513
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 519
    const/4 v6, 0x1

    .line 528
    .local v6, isActive:Z
    :cond_3
    if-nez v6, :cond_6

    .line 586
    :goto_5
    return-void

    .line 529
    :cond_6
    const/4 v1, 0x0

    .line 535
    .local v1, events:[Lorg/apache/log4j/spi/LoggingEvent;
    :try_start_7
    iget-object v11, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    monitor-enter v11
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_8b

    .line 536
    :try_start_a
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 537
    .local v0, bufferSize:I
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v8, v8, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-nez v8, :cond_61

    move v6, v9

    .line 539
    :goto_17
    if-nez v0, :cond_1b

    if-nez v6, :cond_63

    .line 545
    :cond_1b
    if-lez v0, :cond_4c

    .line 546
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    add-int/2addr v8, v0

    new-array v1, v8, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 547
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 552
    move v4, v0

    .line 555
    .local v4, index:I
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, iter:Ljava/util/Iterator;
    move v5, v4

    .line 556
    .end local v4           #index:I
    .local v5, index:I
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_78

    .line 563
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 564
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 568
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 570
    .end local v5           #index:I
    .end local v7           #iter:Ljava/util/Iterator;
    :cond_4c
    monitor-exit v11
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_88

    .line 575
    if-eqz v1, :cond_3

    .line 576
    const/4 v3, 0x0

    .local v3, i:I
    :goto_50
    :try_start_50
    array-length v8, v1

    if-ge v3, v8, :cond_3

    .line 577
    iget-object v11, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v11
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_56} :catch_8b

    .line 578
    :try_start_56
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    aget-object v12, v1, v3

    invoke-virtual {v8, v12}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 579
    monitor-exit v11
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_95

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .end local v3           #i:I
    :cond_61
    move v6, v10

    .line 537
    goto :goto_17

    .line 540
    :cond_63
    :try_start_63
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 541
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 542
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v8, v8, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-nez v8, :cond_76

    move v6, v9

    :goto_75
    goto :goto_17

    :cond_76
    move v6, v10

    goto :goto_75

    .line 557
    .restart local v5       #index:I
    .restart local v7       #iter:Ljava/util/Iterator;
    :cond_78
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    invoke-virtual {v8}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->createEvent()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v8

    aput-object v8, v1, v5
    :try_end_86
    .catchall {:try_start_63 .. :try_end_86} :catchall_88

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_37

    .line 570
    .end local v0           #bufferSize:I
    .end local v5           #index:I
    .end local v7           #iter:Ljava/util/Iterator;
    :catchall_88
    move-exception v8

    :try_start_89
    monitor-exit v11

    throw v8
    :try_end_8b
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8b} :catch_8b

    .line 584
    :catch_8b
    move-exception v2

    .local v2, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_5

    .line 579
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .restart local v0       #bufferSize:I
    .restart local v3       #i:I
    :catchall_95
    move-exception v8

    :try_start_96
    monitor-exit v11

    throw v8
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_98} :catch_8b
.end method
