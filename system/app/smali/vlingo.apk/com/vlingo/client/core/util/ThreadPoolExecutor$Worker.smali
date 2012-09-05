.class Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/util/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/util/ThreadPoolExecutor;Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;-><init>(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 172
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 173
    .local v3, fut:Lcom/vlingo/client/core/util/Future;
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    .line 174
    :goto_8
    :try_start_8
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->paused:Z
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$200(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_30

    :cond_1c
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->shutDown:Z
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$300(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_57

    move-result v5

    if-nez v5, :cond_30

    .line 184
    :try_start_24
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_57
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_8

    .line 185
    :catch_2e
    move-exception v2

    .line 186
    .local v2, e:Ljava/lang/InterruptedException;
    goto :goto_8

    .line 190
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_30
    :try_start_30
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->shutDown:Z
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$300(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 192
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$400(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v7

    monitor-enter v7
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_57

    .line 193
    :try_start_3f
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$400(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 194
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$510(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I

    .line 195
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_54

    .line 196
    :try_start_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_57

    .line 254
    :goto_53
    return-void

    .line 195
    :catchall_54
    move-exception v5

    :try_start_55
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v5

    .line 202
    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_57

    throw v5

    .line 200
    :cond_5a
    :try_start_5a
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/vlingo/client/core/util/Future;

    move-object v3, v0

    .line 201
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v6
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_57

    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, task:Ljava/lang/Runnable;
    monitor-enter v3

    .line 206
    :try_start_74
    invoke-virtual {v3}, Lcom/vlingo/client/core/util/Future;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_8a

    .line 207
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$510(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I

    .line 208
    invoke-virtual {v3}, Lcom/vlingo/client/core/util/Future;->getRunnable()Ljava/lang/Runnable;

    move-result-object v4

    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/util/Future;->setThread(Ljava/lang/Thread;)V

    .line 211
    :cond_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_113

    .line 213
    if-eqz v4, :cond_0

    .line 214
    const/4 v1, 0x1

    .line 218
    .local v1, completedTask:Z
    :try_start_8e
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 221
    #calls: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableRetry(Ljava/lang/Runnable;)Z
    invoke-static {v4}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$600(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 224
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_9e} :catch_123

    .line 225
    :try_start_9e
    #calls: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableOrdered(Ljava/lang/Runnable;)Z
    invoke-static {v4}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$700(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_aa

    #calls: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableHighPriority(Ljava/lang/Runnable;)Z
    invoke-static {v4}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$800(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 226
    :cond_aa
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 229
    :goto_b4
    monitor-exit v6
    :try_end_b5
    .catchall {:try_start_9e .. :try_end_b5} :catchall_120

    .line 230
    const/4 v1, 0x0

    .line 238
    :cond_b6
    :goto_b6
    monitor-enter v3

    .line 239
    if-eqz v1, :cond_bc

    .line 240
    :try_start_b9
    invoke-virtual {v3}, Lcom/vlingo/client/core/util/Future;->complete()V

    .line 241
    :cond_bc
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/util/Future;->setThread(Ljava/lang/Thread;)V

    .line 242
    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_125

    .line 243
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$508(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I

    .line 244
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->dynamic:Z
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$900(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    .line 247
    :try_start_d5
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 248
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$400(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v7

    monitor-enter v7
    :try_end_e8
    .catchall {:try_start_d5 .. :try_end_e8} :catchall_110

    .line 249
    :try_start_e8
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$400(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iget-object v8, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->minPoolSize:I
    invoke-static {v8}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$1000(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I

    move-result v8

    if-le v5, v8, :cond_128

    .line 252
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$510(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I

    .line 253
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$400(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v7
    :try_end_10d
    .catchall {:try_start_e8 .. :try_end_10d} :catchall_12c

    :try_start_10d
    monitor-exit v6

    goto/16 :goto_53

    .line 258
    :catchall_110
    move-exception v5

    monitor-exit v6
    :try_end_112
    .catchall {:try_start_10d .. :try_end_112} :catchall_110

    throw v5

    .line 211
    .end local v1           #completedTask:Z
    :catchall_113
    move-exception v5

    :try_start_114
    monitor-exit v3
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v5

    .line 228
    .restart local v1       #completedTask:Z
    :cond_116
    :try_start_116
    iget-object v5, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    #getter for: Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_b4

    .line 229
    :catchall_120
    move-exception v5

    monitor-exit v6
    :try_end_122
    .catchall {:try_start_116 .. :try_end_122} :catchall_120

    :try_start_122
    throw v5
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_123} :catch_123

    .line 232
    :catch_123
    move-exception v5

    goto :goto_b6

    .line 242
    :catchall_125
    move-exception v5

    :try_start_126
    monitor-exit v3
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    throw v5

    .line 256
    :cond_128
    :try_start_128
    monitor-exit v7
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_12c

    .line 258
    :cond_129
    :try_start_129
    monitor-exit v6
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_110

    goto/16 :goto_0

    .line 256
    :catchall_12c
    move-exception v5

    :try_start_12d
    monitor-exit v7
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    :try_start_12e
    throw v5
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_110
.end method
