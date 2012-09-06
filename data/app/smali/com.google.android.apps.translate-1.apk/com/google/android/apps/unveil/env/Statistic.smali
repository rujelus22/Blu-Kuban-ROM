.class public Lcom/google/android/apps/unveil/env/Statistic;
.super Ljava/lang/Object;
.source "Statistic.java"


# static fields
.field private static final MAX_NUMBERS:I = 0xa


# instance fields
.field private final numbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    .line 24
    return-void
.end method

.method private static blend(FFF)F
    .registers 5
    .parameter "num1"
    .parameter "num2"
    .parameter "alpha"

    .prologue
    .line 27
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized addNumber(F)V
    .registers 4
    .parameter "number"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1e

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_a

    .line 68
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getMovingAverage()F
    .registers 5

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    move-result v2

    if-nez v2, :cond_c

    .line 32
    const/4 v0, 0x0

    .line 40
    :cond_a
    monitor-exit p0

    return v0

    .line 35
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 36
    .local v0, average:F
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1a
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 37
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3e99999a

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/unveil/env/Statistic;->blend(FFF)F
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_38

    move-result v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 31
    .end local v0           #average:F
    .end local v1           #i:I
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getStandardDeviation()F
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Statistic;->getVariance()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVariance()F
    .registers 8

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_58

    move-result v5

    if-nez v5, :cond_c

    .line 45
    const/4 v5, 0x0

    .line 60
    :goto_a
    monitor-exit p0

    return v5

    .line 48
    :cond_c
    const/4 v4, 0x0

    .line 49
    .local v4, sum:F
    :try_start_d
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 50
    .local v3, number:Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_13

    .line 53
    .end local v3           #number:Ljava/lang/Float;
    :cond_25
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 55
    .local v0, average:F
    const/4 v1, 0x0

    .line 56
    .local v1, differenceSum:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 57
    .restart local v3       #number:Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    goto :goto_35

    .line 60
    .end local v3           #number:Ljava/lang/Float;
    :cond_4e
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_58

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    goto :goto_a

    .line 44
    .end local v0           #average:F
    .end local v1           #differenceSum:F
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sum:F
    :catchall_58
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    const-string v1, ""

    .line 82
    .local v1, string:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/Statistic;->numbers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 83
    .local v2, value:Ljava/lang/Float;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    move-result-object v1

    goto :goto_9

    .line 86
    .end local v2           #value:Ljava/lang/Float;
    :cond_33
    monitor-exit p0

    return-object v1

    .line 80
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #string:Ljava/lang/String;
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method
