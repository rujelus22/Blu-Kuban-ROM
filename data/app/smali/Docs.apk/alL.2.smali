.class public final LalL;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "LalM;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, LalL;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LalL;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lajk;->a()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, LalL;->a:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, LalL;->a:Z

    .line 60
    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 45
    sget-object v0, LalL;->a:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 124
    iget-object v1, p0, LalL;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 125
    :try_start_3
    iget-boolean v0, p0, LalL;->a:Z

    if-eqz v0, :cond_9

    .line 126
    monitor-exit v1

    .line 136
    :cond_8
    return-void

    .line 128
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, LalL;->a:Z

    .line 129
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    .line 133
    :goto_d
    iget-object v0, p0, LalL;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 134
    iget-object v0, p0, LalL;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LalM;

    invoke-virtual {v0}, LalM;->a()V

    goto :goto_d

    .line 129
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 84
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, LalL;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 93
    :try_start_e
    iget-boolean v2, p0, LalL;->a:Z

    if-nez v2, :cond_28

    .line 94
    iget-object v2, p0, LalL;->a:Ljava/util/Queue;

    new-instance v3, LalM;

    invoke-direct {v3, p1, p2}, LalM;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_2a

    .line 104
    if-eqz v0, :cond_27

    .line 105
    new-instance v0, LalM;

    invoke-direct {v0, p1, p2}, LalM;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, LalM;->a()V

    .line 107
    :cond_27
    return-void

    .line 96
    :cond_28
    const/4 v0, 0x1

    goto :goto_1c

    .line 98
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method