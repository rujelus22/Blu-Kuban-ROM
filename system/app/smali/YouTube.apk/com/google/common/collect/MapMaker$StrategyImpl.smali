.class Lcom/google/common/collect/MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/az;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expirationNanos:J

.field internals:Lcom/google/common/collect/bj;

.field final keyStrength:Lcom/google/common/collect/MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;

.field final valueStrength:Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .registers 4
    .parameter

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 473
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->b(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 474
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->c(Lcom/google/common/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 476
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->d(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/ay;

    move-result-object v0

    if-nez p0, :cond_23

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/common/collect/bk;Lcom/google/common/collect/ay;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 477
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/k;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 482
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->b(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 483
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->c(Lcom/google/common/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 485
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->d(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/ay;

    move-result-object v0

    if-nez p0, :cond_23

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    if-nez p2, :cond_2d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "computer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v1, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/google/common/collect/az;Lcom/google/common/collect/ay;Lcom/google/common/base/k;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 486
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 745
    :try_start_0
    sget-object v0, Lcom/google/common/collect/ei;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    sget-object v0, Lcom/google/common/collect/ei;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    sget-object v0, Lcom/google/common/collect/ei;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    sget-object v0, Lcom/google/common/collect/ei;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    sget-object v0, Lcom/google/common/collect/ei;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_31} :catch_32

    .line 752
    return-void

    .line 750
    :catch_32
    move-exception v0

    .line 751
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 709
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 715
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/bj;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 717
    return-void
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Lcom/google/common/collect/ee;Lcom/google/common/base/k;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_3} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_3f

    move-result-object v0

    .line 606
    if-nez v0, :cond_4e

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returned null for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/google/common/collect/ec;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/ee;Lcom/google/common/collect/em;)V

    .line 611
    new-instance v1, Lcom/google/common/collect/NullOutputException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :catch_31
    move-exception v0

    .line 597
    new-instance v1, Lcom/google/common/collect/dy;

    invoke-virtual {v0}, Lcom/google/common/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/dy;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/ee;Lcom/google/common/collect/em;)V

    .line 599
    throw v0

    .line 600
    :catch_3f
    move-exception v0

    .line 601
    new-instance v1, Lcom/google/common/collect/dy;

    invoke-direct {v1, v0}, Lcom/google/common/collect/dy;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/ee;Lcom/google/common/collect/em;)V

    .line 603
    new-instance v1, Lcom/google/common/collect/ComputationException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 613
    :cond_4e
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/google/common/collect/ee;Ljava/lang/Object;)V

    .line 615
    return-object v0
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/k;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p2, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->compute(Ljava/lang/Object;Lcom/google/common/collect/ee;Lcom/google/common/base/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyEntry(Ljava/lang/Object;Lcom/google/common/collect/ee;Lcom/google/common/collect/ee;)Lcom/google/common/collect/ee;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    invoke-interface {p2}, Lcom/google/common/collect/ee;->c()Lcom/google/common/collect/em;

    move-result-object v1

    .line 548
    invoke-static {}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/em;

    move-result-object v0

    if-ne v1, v0, :cond_1b

    .line 549
    invoke-interface {p2}, Lcom/google/common/collect/ee;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/ee;)Lcom/google/common/collect/ee;

    move-result-object v0

    .line 551
    new-instance v1, Lcom/google/common/collect/ej;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/common/collect/ej;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/ee;Lcom/google/common/collect/ee;)V

    invoke-interface {v0, v1}, Lcom/google/common/collect/ee;->a(Lcom/google/common/collect/em;)V

    .line 558
    :goto_1a
    return-object v0

    .line 555
    :cond_1b
    invoke-interface {p2}, Lcom/google/common/collect/ee;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/ee;)Lcom/google/common/collect/ee;

    move-result-object v0

    .line 557
    invoke-interface {v1, v0}, Lcom/google/common/collect/em;->a(Lcom/google/common/collect/ee;)Lcom/google/common/collect/em;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/ee;->a(Lcom/google/common/collect/em;)V

    goto :goto_1a
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p2, Lcom/google/common/collect/ee;

    check-cast p3, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->copyEntry(Ljava/lang/Object;Lcom/google/common/collect/ee;Lcom/google/common/collect/ee;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHash(Lcom/google/common/collect/ee;)I
    .registers 3
    .parameter

    .prologue
    .line 537
    invoke-interface {p1}, Lcom/google/common/collect/ee;->e()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getHash(Lcom/google/common/collect/ee;)I

    move-result v0

    return v0
.end method

.method public getKey(Lcom/google/common/collect/ee;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 533
    invoke-interface {p1}, Lcom/google/common/collect/ee;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getKey(Lcom/google/common/collect/ee;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/google/common/collect/ee;)Lcom/google/common/collect/ee;
    .registers 3
    .parameter

    .prologue
    .line 692
    invoke-interface {p1}, Lcom/google/common/collect/ee;->b()Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getNext(Lcom/google/common/collect/ee;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/common/collect/ee;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 585
    invoke-interface {p1}, Lcom/google/common/collect/ee;->c()Lcom/google/common/collect/em;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Lcom/google/common/collect/em;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getValue(Lcom/google/common/collect/ee;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashKey(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMaker$Strength;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public newEntry(Ljava/lang/Object;ILcom/google/common/collect/ee;)Lcom/google/common/collect/ee;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/bj;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/collect/MapMaker$Strength;->newEntry(Lcom/google/common/collect/bj;Ljava/lang/Object;ILcom/google/common/collect/ee;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p3, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/ee;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 506
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 507
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 508
    sget-object v2, Lcom/google/common/collect/bl;->a:Ljava/util/Timer;

    new-instance v3, Lcom/google/common/collect/eh;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/common/collect/eh;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 518
    return-void
.end method

.method public setInternals(Lcom/google/common/collect/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/bj;

    .line 698
    return-void
.end method

.method public setValue(Lcom/google/common/collect/ee;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->referenceValue(Lcom/google/common/collect/ee;Ljava/lang/Object;)Lcom/google/common/collect/em;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/ee;Lcom/google/common/collect/em;)V

    .line 491
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 492
    invoke-interface {p1}, Lcom/google/common/collect/ee;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    :cond_18
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/google/common/collect/ee;Ljava/lang/Object;)V

    return-void
.end method

.method setValueReference(Lcom/google/common/collect/ee;Lcom/google/common/collect/em;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-interface {p1}, Lcom/google/common/collect/ee;->c()Lcom/google/common/collect/em;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/em;

    move-result-object v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    .line 625
    :goto_b
    invoke-interface {p1, p2}, Lcom/google/common/collect/ee;->a(Lcom/google/common/collect/em;)V

    .line 626
    if-eqz v0, :cond_15

    .line 627
    monitor-enter p1

    .line 628
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 629
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_18

    .line 631
    :cond_15
    return-void

    .line 624
    :cond_16
    const/4 v0, 0x0

    goto :goto_b

    .line 629
    :catchall_18
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public waitForValue(Lcom/google/common/collect/ee;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 568
    invoke-interface {p1}, Lcom/google/common/collect/ee;->c()Lcom/google/common/collect/em;

    move-result-object v0

    .line 569
    invoke-static {}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/em;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 570
    monitor-enter p1

    .line 572
    :goto_b
    :try_start_b
    invoke-interface {p1}, Lcom/google/common/collect/ee;->c()Lcom/google/common/collect/em;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/em;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_b

    .line 575
    :catchall_19
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 577
    :cond_1d
    invoke-interface {v0}, Lcom/google/common/collect/em;->n_()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/ee;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/google/common/collect/ee;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
