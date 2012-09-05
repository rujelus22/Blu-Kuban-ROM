.class final Lcom/google/net/async/z;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/ae;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/google/net/async/p;

.field private c:Ljava/lang/RuntimeException;

.field private final d:Lcom/google/net/async/ab;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 263
    const-class v0, Lcom/google/net/async/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/net/async/z;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(ZLcom/google/net/async/ab;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 271
    iput-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    .line 278
    iput-object v0, p0, Lcom/google/net/async/z;->c:Ljava/lang/RuntimeException;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/net/async/z;->e:J

    .line 293
    iput-object p2, p0, Lcom/google/net/async/z;->d:Lcom/google/net/async/ab;

    .line 294
    if-eqz p1, :cond_16

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/net/async/z;->setDaemon(Z)V

    .line 297
    :cond_16
    new-instance v0, Lcom/google/net/async/aa;

    invoke-direct {v0, p0}, Lcom/google/net/async/aa;-><init>(Lcom/google/net/async/z;)V

    invoke-virtual {p0, v0}, Lcom/google/net/async/z;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 308
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/net/async/p;
    .registers 2

    .prologue
    .line 331
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/net/async/z;->c:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_13

    .line 343
    :cond_9
    iget-object v0, p0, Lcom/google/net/async/z;->c:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_19

    .line 344
    iget-object v0, p0, Lcom/google/net/async/z;->c:Ljava/lang/RuntimeException;

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 331
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 333
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1

    :catch_17
    move-exception v0

    goto :goto_1

    .line 346
    :cond_19
    :try_start_19
    sget-boolean v0, Lcom/google/net/async/z;->a:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 347
    :cond_27
    iget-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_10

    monitor-exit p0

    return-object v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/net/async/z;->e:J

    .line 355
    return-void
.end method

.method public final run()V
    .registers 5

    .prologue
    .line 364
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_6d

    .line 366
    :try_start_1
    new-instance v0, Lcom/google/net/async/p;

    invoke-direct {v0}, Lcom/google/net/async/p;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    .line 367
    invoke-static {}, Lcom/google/net/async/x;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    .line 368
    new-instance v0, Lcom/google/net/async/ad;

    iget-object v1, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    invoke-direct {v0, v1}, Lcom/google/net/async/ad;-><init>(Lcom/google/net/async/d;)V

    .line 369
    invoke-static {}, Lcom/google/net/async/x;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/net/async/ad;->a(JLcom/google/net/async/ae;)V

    .line 370
    invoke-static {}, Lcom/google/net/async/x;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_65
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2f} :catch_4b

    .line 376
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 364
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_6a

    .line 380
    :try_start_33
    iget-object v0, p0, Lcom/google/net/async/z;->d:Lcom/google/net/async/ab;

    iget-object v1, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    invoke-interface {v0, v1}, Lcom/google/net/async/ab;->a(Lcom/google/net/async/p;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_6d

    .line 382
    invoke-static {}, Lcom/google/net/async/x;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 384
    :try_start_41
    iget-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    if-eqz v0, :cond_4a

    .line 385
    iget-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    invoke-virtual {v0}, Lcom/google/net/async/p;->d()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4a} :catch_7f

    .line 390
    :cond_4a
    :goto_4a
    return-void

    .line 372
    :catch_4b
    move-exception v0

    .line 373
    :try_start_4c
    iput-object v0, p0, Lcom/google/net/async/z;->c:Ljava/lang/RuntimeException;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_65

    .line 376
    :try_start_4e
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_6a

    .line 382
    invoke-static {}, Lcom/google/net/async/x;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 384
    :try_start_59
    iget-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    if-eqz v0, :cond_4a

    .line 385
    iget-object v0, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    invoke-virtual {v0}, Lcom/google/net/async/p;->d()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_4a

    :catch_63
    move-exception v0

    goto :goto_4a

    .line 375
    :catchall_65
    move-exception v0

    .line 376
    :try_start_66
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 377
    throw v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6a

    .line 364
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0

    throw v0
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_6d

    .line 381
    :catchall_6d
    move-exception v0

    .line 382
    invoke-static {}, Lcom/google/net/async/x;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 384
    :try_start_75
    iget-object v1, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    if-eqz v1, :cond_7e

    .line 385
    iget-object v1, p0, Lcom/google/net/async/z;->b:Lcom/google/net/async/p;

    invoke-virtual {v1}, Lcom/google/net/async/p;->d()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7e} :catch_81

    .line 389
    :cond_7e
    :goto_7e
    throw v0

    :catch_7f
    move-exception v0

    goto :goto_4a

    :catch_81
    move-exception v1

    goto :goto_7e
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/net/async/z;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/net/async/z;->getName()Ljava/lang/String;

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
