.class public Lcom/google/net/async/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/u;


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/google/net/async/s;

.field private static final n:Ljava/util/logging/Logger;


# instance fields
.field private final c:Ljava/nio/channels/Selector;

.field private final d:Ljava/lang/Thread;

.field private final e:Lcom/google/net/async/ak;

.field private final f:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final g:Ljava/util/PriorityQueue;

.field private volatile h:J

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/google/net/async/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/net/async/p;->a:Z

    .line 52
    new-instance v0, Lcom/google/net/async/q;

    invoke-direct {v0}, Lcom/google/net/async/q;-><init>()V

    sput-object v0, Lcom/google/net/async/p;->b:Lcom/google/net/async/s;

    .line 1196
    const-class v0, Lcom/google/net/async/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 1195
    sput-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    return-void

    .line 47
    :cond_1f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v0, Lcom/google/net/async/ak;

    invoke-direct {v0}, Lcom/google/net/async/ak;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/p;->e:Lcom/google/net/async/ak;

    .line 1166
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/p;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1171
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    .line 1176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/net/async/p;->h:J

    .line 1182
    iput-boolean v2, p0, Lcom/google/net/async/p;->j:Z

    .line 1186
    iput-boolean v2, p0, Lcom/google/net/async/p;->k:Z

    .line 1189
    iput-boolean v2, p0, Lcom/google/net/async/p;->l:Z

    .line 1193
    iput-boolean v2, p0, Lcom/google/net/async/p;->m:Z

    .line 66
    :try_start_25
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_32

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/async/p;->d:Ljava/lang/Thread;

    .line 71
    return-void

    .line 67
    :catch_32
    move-exception v0

    .line 68
    new-instance v1, Lcom/google/net/async/IORuntimeException;

    invoke-direct {v1, v0}, Lcom/google/net/async/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/util/Set;Z)I
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 766
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 767
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 766
    if-nez v0, :cond_d

    .line 856
    return v2

    .line 768
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 769
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 779
    monitor-enter v0

    .line 782
    :try_start_17
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_22

    .line 783
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_6

    .line 779
    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1

    .line 788
    :cond_22
    :try_start_22
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v4

    .line 791
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/net/async/t;

    .line 792
    iget-object v5, v1, Lcom/google/net/async/t;->a:Lcom/google/net/async/a;

    .line 793
    iget-object v5, v1, Lcom/google/net/async/t;->b:Lcom/google/net/async/o;

    .line 794
    iget-object v6, v1, Lcom/google/net/async/t;->c:Lcom/google/net/async/af;

    .line 795
    iget-object v7, v1, Lcom/google/net/async/t;->d:Lcom/google/net/async/an;

    .line 779
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_1f

    .line 798
    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_42

    .line 800
    :try_start_39
    sget-object v1, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v8, "OP_ACCEPT event ready"

    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_40} :catch_74

    .line 810
    :goto_40
    add-int/lit8 v2, v2, 0x1

    .line 812
    :cond_42
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_52

    .line 814
    :try_start_46
    sget-object v1, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v8, "OP_CONNECT event ready"

    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 815
    invoke-interface {v5}, Lcom/google/net/async/o;->a()V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_50} :catch_85

    .line 824
    :goto_50
    add-int/lit8 v2, v2, 0x1

    .line 826
    :cond_52
    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_bb

    .line 828
    :try_start_56
    sget-object v1, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v5, "OP_READ event ready"

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 829
    invoke-interface {v6}, Lcom/google/net/async/af;->g()V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_60} :catch_96

    .line 838
    :goto_60
    add-int/lit8 v1, v2, 0x1

    .line 840
    :goto_62
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_b8

    .line 842
    :try_start_66
    sget-object v2, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v4, "OP_WRITE event ready"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 843
    invoke-interface {v7}, Lcom/google/net/async/an;->h()V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_70} :catch_a7

    .line 852
    :goto_70
    add-int/lit8 v0, v1, 0x1

    move v2, v0

    goto :goto_6

    .line 802
    :catch_74
    move-exception v1

    .line 803
    invoke-direct {p0, v0}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectionKey;)V

    .line 804
    if-eqz p2, :cond_7b

    .line 805
    throw v1

    .line 807
    :cond_7b
    sget-object v8, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "RuntimeException caught when invoking AcceptHandler.handleAcceptEvent"

    invoke-virtual {v8, v9, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    .line 816
    :catch_85
    move-exception v1

    .line 817
    invoke-direct {p0, v0}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectionKey;)V

    .line 818
    if-eqz p2, :cond_8c

    .line 819
    throw v1

    .line 821
    :cond_8c
    sget-object v5, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v9, "RuntimeException caught when invoking ConnectHandler.handleConnectEvent"

    invoke-virtual {v5, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 830
    :catch_96
    move-exception v1

    .line 831
    invoke-direct {p0, v0}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectionKey;)V

    .line 832
    if-eqz p2, :cond_9d

    .line 833
    throw v1

    .line 835
    :cond_9d
    sget-object v5, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "RuntimeException caught when invoking ReadHandler.handleReadEvent"

    invoke-virtual {v5, v6, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_60

    .line 844
    :catch_a7
    move-exception v2

    .line 845
    invoke-direct {p0, v0}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectionKey;)V

    .line 846
    if-eqz p2, :cond_ae

    .line 847
    throw v2

    .line 849
    :cond_ae
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "RuntimeException caught when invoking WriteHandler.handleWriteEvent"

    invoke-virtual {v0, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70

    :cond_b8
    move v2, v1

    goto/16 :goto_6

    :cond_bb
    move v1, v2

    goto :goto_62
.end method

.method private static a(Ljava/util/Queue;Ljava/util/PriorityQueue;Lcom/google/net/async/s;Z)J
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 631
    :goto_2
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_14

    .line 647
    monitor-enter p1

    .line 648
    :try_start_b
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 653
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_70

    move-wide v0, v1

    .line 684
    :goto_13
    return-wide v0

    .line 633
    :cond_14
    :try_start_14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_2

    .line 634
    :catch_18
    move-exception v0

    .line 635
    if-eqz p3, :cond_1c

    .line 636
    throw v0

    .line 638
    :cond_1c
    sget-object v3, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 639
    const-string v5, "RuntimeException caught when invoking Runnable.run()"

    .line 638
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 656
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/async/r;

    .line 658
    invoke-virtual {v0}, Lcom/google/net/async/r;->a()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/google/net/async/s;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 659
    cmp-long v5, v3, v1

    if-lez v5, :cond_3c

    .line 662
    monitor-exit p1

    move-wide v0, v3

    goto :goto_13

    .line 666
    :cond_3c
    sget-object v3, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 667
    sget-object v3, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Alarm expired: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 670
    :cond_5a
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/async/r;

    .line 671
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/net/async/r;->b:Z

    .line 647
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_26 .. :try_end_64} :catchall_70

    .line 675
    :try_start_64
    invoke-virtual {v0}, Lcom/google/net/async/r;->b()Lcom/google/net/async/c;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/net/async/c;->a(Lcom/google/net/async/b;)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_6b} :catch_6c

    goto :goto_2

    .line 676
    :catch_6c
    move-exception v0

    .line 677
    if-eqz p3, :cond_73

    .line 678
    throw v0

    .line 647
    :catchall_70
    move-exception v0

    monitor-exit p1

    throw v0

    .line 680
    :cond_73
    sget-object v3, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "RuntimeException caught when invoking AlarmHandler.handleAlarmEvent"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(Ljava/nio/channels/SelectableChannel;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 1041
    if-nez v1, :cond_9

    .line 1086
    :goto_8
    return-void

    .line 1047
    :cond_9
    invoke-direct {p0}, Lcom/google/net/async/p;->h()V

    .line 1054
    :try_start_c
    monitor-enter v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_4d

    .line 1055
    :try_start_d
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1059
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_4a

    .line 1084
    invoke-direct {p0}, Lcom/google/net/async/p;->i()V

    goto :goto_8

    .line 1061
    :cond_18
    :try_start_18
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 1066
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/async/t;

    .line 1067
    const/16 v2, 0x10

    if-ne p2, v2, :cond_3b

    .line 1068
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/net/async/t;->a:Lcom/google/net/async/a;

    .line 1069
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_ACCEPT event deregistered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1054
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_4a

    .line 1084
    invoke-direct {p0}, Lcom/google/net/async/p;->i()V

    goto :goto_8

    .line 1070
    :cond_3b
    const/16 v2, 0x8

    if-ne p2, v2, :cond_52

    .line 1071
    const/4 v2, 0x0

    :try_start_40
    iput-object v2, v0, Lcom/google/net/async/t;->b:Lcom/google/net/async/o;

    .line 1072
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_CONNECT event deregistered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_4a

    goto :goto_36

    .line 1054
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1

    throw v0
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_4d

    .line 1083
    :catchall_4d
    move-exception v0

    .line 1084
    invoke-direct {p0}, Lcom/google/net/async/p;->i()V

    .line 1085
    throw v0

    .line 1073
    :cond_52
    const/4 v2, 0x1

    if-ne p2, v2, :cond_60

    .line 1074
    const/4 v2, 0x0

    :try_start_56
    iput-object v2, v0, Lcom/google/net/async/t;->c:Lcom/google/net/async/af;

    .line 1075
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_READ event deregistered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_36

    .line 1076
    :cond_60
    const/4 v2, 0x4

    if-ne p2, v2, :cond_6e

    .line 1077
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/net/async/t;->d:Lcom/google/net/async/an;

    .line 1078
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_WRITE event deregistered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_36

    .line 1080
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not a valid op"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catchall {:try_start_56 .. :try_end_87} :catchall_4a
.end method

.method private a(Ljava/nio/channels/SelectableChannel;ILcom/google/net/async/a;Lcom/google/net/async/o;Lcom/google/net/async/af;Lcom/google/net/async/an;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 972
    invoke-direct {p0}, Lcom/google/net/async/p;->h()V

    .line 974
    const/4 v1, 0x0

    .line 976
    :try_start_5
    monitor-enter p1
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_28

    .line 977
    :try_start_6
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_34

    move-result-object v0

    .line 978
    if-nez v0, :cond_cc

    .line 980
    :try_start_e
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    new-instance v1, Lcom/google/net/async/t;

    invoke-direct {v1}, Lcom/google/net/async/t;-><init>()V

    invoke-virtual {p1, v0, p2, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_34
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_e .. :try_end_18} :catch_2d

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 976
    :goto_1b
    :try_start_1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_34

    .line 987
    :try_start_1c
    sget-boolean v3, Lcom/google/net/async/p;->a:Z

    if-nez v3, :cond_37

    if-nez v1, :cond_37

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_28

    .line 1022
    :catchall_28
    move-exception v0

    .line 1023
    invoke-direct {p0}, Lcom/google/net/async/p;->i()V

    .line 1024
    throw v0

    .line 981
    :catch_2d
    move-exception v0

    .line 982
    :try_start_2e
    new-instance v1, Lcom/google/net/async/IORuntimeException;

    invoke-direct {v1, v0}, Lcom/google/net/async/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_34

    .line 976
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p1

    throw v0

    .line 994
    :cond_37
    monitor-enter v1
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_28

    .line 997
    if-nez v0, :cond_42

    .line 998
    :try_start_3a
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 1001
    :cond_42
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/async/t;

    .line 1002
    const/16 v3, 0x10

    if-ne p2, v3, :cond_68

    .line 1003
    sget-boolean v2, Lcom/google/net/async/p;->a:Z

    if-nez v2, :cond_59

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_56

    .line 994
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v1

    throw v0
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_28

    .line 1004
    :cond_59
    const/4 v2, 0x0

    :try_start_5a
    iput-object v2, v0, Lcom/google/net/async/t;->a:Lcom/google/net/async/a;

    .line 1005
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_ACCEPT event registered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 994
    :goto_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_56

    .line 1023
    invoke-direct {p0}, Lcom/google/net/async/p;->i()V

    .line 1025
    return-void

    .line 1006
    :cond_68
    const/16 v3, 0x8

    if-ne p2, v3, :cond_82

    .line 1007
    :try_start_6c
    sget-boolean v2, Lcom/google/net/async/p;->a:Z

    if-nez v2, :cond_78

    if-nez p4, :cond_78

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1008
    :cond_78
    iput-object p4, v0, Lcom/google/net/async/t;->b:Lcom/google/net/async/o;

    .line 1009
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_CONNECT event registered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_63

    .line 1010
    :cond_82
    if-ne p2, v2, :cond_9a

    .line 1011
    sget-boolean v2, Lcom/google/net/async/p;->a:Z

    if-nez v2, :cond_90

    if-nez p5, :cond_90

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1012
    :cond_90
    iput-object p5, v0, Lcom/google/net/async/t;->c:Lcom/google/net/async/af;

    .line 1013
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_READ event registered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_63

    .line 1014
    :cond_9a
    const/4 v2, 0x4

    if-ne p2, v2, :cond_b3

    .line 1015
    sget-boolean v2, Lcom/google/net/async/p;->a:Z

    if-nez v2, :cond_a9

    if-nez p6, :cond_a9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1016
    :cond_a9
    iput-object p6, v0, Lcom/google/net/async/t;->d:Lcom/google/net/async/an;

    .line 1017
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "OP_WRITE event registered"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_63

    .line 1019
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not a valid op"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cc
    .catchall {:try_start_6c .. :try_end_cc} :catchall_56

    :cond_cc
    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto/16 :goto_1b
.end method

.method private static a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 879
    if-nez p0, :cond_a

    .line 880
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_a
    if-nez p1, :cond_14

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_14
    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 886
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 888
    :cond_20
    return-void
.end method

.method private a(Ljava/nio/channels/SelectionKey;)V
    .registers 6
    .parameter

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/google/net/async/p;->m:Z

    if-eqz v0, :cond_14

    .line 861
    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 862
    const-string v2, "Closing channel due to RuntimeException thrown by event handler"

    .line 861
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 867
    :try_start_d
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_15

    .line 872
    :cond_14
    :goto_14
    return-void

    .line 868
    :catch_15
    move-exception v0

    .line 869
    sget-object v1, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed to close channel"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private f()J
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 583
    iget-object v0, p0, Lcom/google/net/async/p;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move-wide v0, v2

    .line 596
    :goto_d
    return-wide v0

    .line 586
    :cond_e
    iget-object v6, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    monitor-enter v6

    .line 587
    :try_start_11
    iget-object v0, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 588
    monitor-exit v6

    move-wide v0, v4

    goto :goto_d

    .line 591
    :cond_1c
    iget-object v0, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/async/r;

    invoke-virtual {v0}, Lcom/google/net/async/r;->a()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v0, v7

    .line 592
    cmp-long v4, v0, v4

    if-lez v4, :cond_36

    .line 593
    monitor-exit v6
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_33

    goto :goto_d

    .line 586
    :catchall_33
    move-exception v0

    monitor-exit v6

    throw v0

    .line 596
    :cond_36
    monitor-exit v6

    move-wide v0, v2

    goto :goto_d
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 900
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/net/async/p;->e:Lcom/google/net/async/ak;

    invoke-virtual {v0}, Lcom/google/net/async/ak;->c()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_8

    .line 907
    :goto_5
    iget-boolean v0, p0, Lcom/google/net/async/p;->k:Z

    return v0

    .line 905
    :catch_8
    move-exception v0

    iget-boolean v0, p0, Lcom/google/net/async/p;->k:Z

    .line 898
    if-eqz v0, :cond_0

    goto :goto_5
.end method

.method private h()V
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/net/async/p;->e()Z

    move-result v0

    if-nez v0, :cond_10

    .line 933
    iget-object v0, p0, Lcom/google/net/async/p;->e:Lcom/google/net/async/ak;

    invoke-virtual {v0}, Lcom/google/net/async/ak;->a()V

    .line 935
    :try_start_b
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_11

    .line 941
    :cond_10
    return-void

    .line 938
    :catch_11
    move-exception v0

    new-instance v0, Lcom/google/net/async/IpV6BugException;

    invoke-direct {v0}, Lcom/google/net/async/IpV6BugException;-><init>()V

    throw v0
.end method

.method private i()V
    .registers 2

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/google/net/async/p;->e()Z

    move-result v0

    if-nez v0, :cond_b

    .line 950
    iget-object v0, p0, Lcom/google/net/async/p;->e:Lcom/google/net/async/ak;

    invoke-virtual {v0}, Lcom/google/net/async/ak;->b()V

    .line 952
    :cond_b
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;Lcom/google/net/async/c;)Lcom/google/net/async/b;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1b

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offsetMillis cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_1b
    if-nez p4, :cond_25

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_25
    iget-object v7, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    monitor-enter v7

    .line 502
    :try_start_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 503
    new-instance v0, Lcom/google/net/async/r;

    add-long v1, v3, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/net/async/r;-><init>(JJLcom/google/net/async/c;Ljava/lang/Object;)V

    .line 505
    sget-object v1, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 506
    sget-object v1, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Alarm created: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 508
    :cond_53
    iget-object v1, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 509
    sget-boolean v2, Lcom/google/net/async/p;->a:Z

    if-nez v2, :cond_68

    if-nez v1, :cond_68

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_65
    .catchall {:try_start_28 .. :try_end_65} :catchall_65

    .line 501
    :catchall_65
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_68
    :try_start_68
    monitor-exit v7
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_65

    .line 512
    invoke-virtual {p0}, Lcom/google/net/async/p;->e()Z

    move-result v1

    if-nez v1, :cond_74

    .line 514
    iget-object v1, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 517
    :cond_74
    return-object v0
.end method

.method public final a()V
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/google/net/async/p;->e()Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network thread is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/net/async/p;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but the thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is trying to loop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-boolean v0, p0, Lcom/google/net/async/p;->j:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recursively loop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iput-boolean v1, p0, Lcom/google/net/async/p;->j:Z

    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v1, "Start looping"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_52
    invoke-direct {p0}, Lcom/google/net/async/p;->f()J

    move-result-wide v0

    :cond_56
    :goto_56
    iget-boolean v2, p0, Lcom/google/net/async/p;->k:Z
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_cb

    if-eqz v2, :cond_6f

    :cond_5a
    iput-boolean v6, p0, Lcom/google/net/async/p;->j:Z

    iput-boolean v6, p0, Lcom/google/net/async/p;->k:Z

    sget-object v0, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v1, "Stop looping"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/net/async/p;->l:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 102
    :cond_6e
    return-void

    .line 101
    :cond_6f
    :try_start_6f
    invoke-direct {p0}, Lcom/google/net/async/p;->g()Z
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_cb

    move-result v2

    if-nez v2, :cond_5a

    cmp-long v2, v0, v7

    if-nez v2, :cond_106

    const-wide/32 v0, 0x5265c00

    move-wide v1, v0

    :goto_7d
    cmp-long v0, v1, v7

    if-ltz v0, :cond_e1

    :try_start_81
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_86} :catch_e7

    :goto_86
    :try_start_86
    iget-wide v0, p0, Lcom/google/net/async/p;->h:J

    iget-object v2, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/net/async/p;->a(Ljava/util/Set;Z)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/net/async/p;->h:J
    :try_end_97
    .catchall {:try_start_86 .. :try_end_97} :catchall_cb

    const/4 v0, 0x1

    :try_start_98
    iput-boolean v0, p0, Lcom/google/net/async/p;->i:Z

    iget-object v0, p0, Lcom/google/net/async/p;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    sget-object v2, Lcom/google/net/async/p;->b:Lcom/google/net/async/s;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/net/async/p;->a(Ljava/util/Queue;Ljava/util/PriorityQueue;Lcom/google/net/async/s;Z)J
    :try_end_a4
    .catchall {:try_start_98 .. :try_end_a4} :catchall_101

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_a6
    iput-boolean v2, p0, Lcom/google/net/async/p;->i:Z

    sget-object v2, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_56

    sget-object v2, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "State at end of loop iteration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/net/async/p;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_a6 .. :try_end_ca} :catchall_cb

    goto :goto_56

    :catchall_cb
    move-exception v0

    iput-boolean v6, p0, Lcom/google/net/async/p;->j:Z

    iput-boolean v6, p0, Lcom/google/net/async/p;->k:Z

    sget-object v1, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    const-string v2, "Stop looping"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/net/async/p;->l:Z

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    :cond_e0
    throw v0

    :cond_e1
    :try_start_e1
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_e6
    .catchall {:try_start_e1 .. :try_end_e6} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e6} :catch_e7

    goto :goto_86

    :catch_e7
    move-exception v0

    :try_start_e8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Operation not permitted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_100

    sget-object v3, Lcom/google/net/async/p;->n:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Ignoring spurious IOException in server loop"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v1

    goto/16 :goto_56

    :cond_100
    throw v0

    :catchall_101
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/net/async/p;->i:Z

    throw v0
    :try_end_106
    .catchall {:try_start_e8 .. :try_end_106} :catchall_cb

    :cond_106
    move-wide v1, v0

    goto/16 :goto_7d
.end method

.method public final a(Ljava/nio/channels/SelectableChannel;)V
    .registers 4
    .parameter

    .prologue
    .line 418
    if-nez p1, :cond_a

    .line 419
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_a
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;I)V

    .line 422
    return-void
.end method

.method public final a(Ljava/nio/channels/SelectableChannel;Lcom/google/net/async/af;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 439
    invoke-static {p1, p2}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 440
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;ILcom/google/net/async/a;Lcom/google/net/async/o;Lcom/google/net/async/af;Lcom/google/net/async/an;)V

    .line 441
    return-void
.end method

.method public final a(Ljava/nio/channels/SelectableChannel;Lcom/google/net/async/an;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 465
    invoke-static {p1, p2}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 466
    const/4 v2, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;ILcom/google/net/async/a;Lcom/google/net/async/o;Lcom/google/net/async/af;Lcom/google/net/async/an;)V

    .line 467
    return-void
.end method

.method public final a(Ljava/nio/channels/SelectableChannel;Lcom/google/net/async/o;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 413
    invoke-static {p1, p2}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 414
    const/16 v2, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;ILcom/google/net/async/a;Lcom/google/net/async/o;Lcom/google/net/async/af;Lcom/google/net/async/an;)V

    .line 415
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/p;->k:Z

    .line 258
    return-void
.end method

.method public final b(Ljava/nio/channels/SelectableChannel;)V
    .registers 4
    .parameter

    .prologue
    .line 444
    if-nez p1, :cond_a

    .line 445
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_a
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;I)V

    .line 448
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/p;->k:Z

    .line 286
    invoke-virtual {p0}, Lcom/google/net/async/p;->e()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 287
    :cond_e
    return-void
.end method

.method public final c(Ljava/nio/channels/SelectableChannel;)V
    .registers 4
    .parameter

    .prologue
    .line 470
    if-nez p1, :cond_a

    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_a
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/net/async/p;->a(Ljava/nio/channels/SelectableChannel;I)V

    .line 474
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 307
    return-void
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 553
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/async/p;->d:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/net/async/p;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {p0}, Lcom/google/net/async/p;->e()Z

    move-result v0

    if-nez v0, :cond_10

    .line 560
    iget-object v0, p0, Lcom/google/net/async/p;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 562
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    const-string v1, "Alarm set = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    iget-object v1, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 329
    :try_start_d
    iget-object v2, p0, Lcom/google/net/async/p;->g:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_2e

    .line 331
    iget-boolean v1, p0, Lcom/google/net/async/p;->j:Z

    if-eqz v1, :cond_31

    .line 332
    const-string v1, "; Looping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    :goto_20
    iget-boolean v1, p0, Lcom/google/net/async/p;->k:Z

    if-eqz v1, :cond_29

    .line 337
    const-string v1, "; Loop exiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 334
    :cond_31
    const-string v1, "; Not looping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20
.end method
