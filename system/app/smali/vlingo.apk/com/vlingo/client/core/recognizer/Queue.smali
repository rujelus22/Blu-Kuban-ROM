.class public Lcom/vlingo/client/core/recognizer/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/recognizer/Queue$Element;
    }
.end annotation


# instance fields
.field protected m_Last:Lcom/vlingo/client/core/recognizer/Queue$Element;

.field protected m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .registers 4
    .parameter "element"

    .prologue
    .line 17
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/core/recognizer/Queue$Element;

    invoke-direct {v0, p1}, Lcom/vlingo/client/core/recognizer/Queue$Element;-><init>(Ljava/lang/Object;)V

    .line 18
    .local v0, e:Lcom/vlingo/client/core/recognizer/Queue$Element;
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Last:Lcom/vlingo/client/core/recognizer/Queue$Element;

    if-nez v1, :cond_13

    .line 19
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;

    .line 24
    :goto_c
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Last:Lcom/vlingo/client/core/recognizer/Queue$Element;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    .line 26
    monitor-exit p0

    return-void

    .line 22
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Last:Lcom/vlingo/client/core/recognizer/Queue$Element;

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/Queue$Element;->m_Next:Lcom/vlingo/client/core/recognizer/Queue$Element;
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    goto :goto_c

    .line 17
    .end local v0           #e:Lcom/vlingo/client/core/recognizer/Queue$Element;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()Z
    .registers 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    .line 48
    .local v0, inProgress:Z
    :goto_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Last:Lcom/vlingo/client/core/recognizer/Queue$Element;

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    .line 49
    monitor-exit p0

    return v0

    .line 47
    .end local v0           #inProgress:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 33
    monitor-enter p0

    const/4 v0, 0x0

    .line 34
    .local v0, element:Ljava/lang/Object;
    :try_start_2
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;

    if-eqz v1, :cond_15

    .line 35
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;

    iget-object v0, v1, Lcom/vlingo/client/core/recognizer/Queue$Element;->m_Element:Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Last:Lcom/vlingo/client/core/recognizer/Queue$Element;

    if-ne v1, v2, :cond_17

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Last:Lcom/vlingo/client/core/recognizer/Queue$Element;

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1e

    .line 43
    .end local v0           #element:Ljava/lang/Object;
    :cond_15
    :goto_15
    monitor-exit p0

    return-object v0

    .line 40
    .restart local v0       #element:Ljava/lang/Object;
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;

    iget-object v1, v1, Lcom/vlingo/client/core/recognizer/Queue$Element;->m_Next:Lcom/vlingo/client/core/recognizer/Queue$Element;

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Queue;->m_Nodes:Lcom/vlingo/client/core/recognizer/Queue$Element;
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1e

    goto :goto_15

    .line 33
    .end local v0           #element:Ljava/lang/Object;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
