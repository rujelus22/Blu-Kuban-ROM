.class Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J


# instance fields
.field final computer:Lcom/google/common/base/k;

.field final computingStrategy:Lcom/google/common/collect/az;


# direct methods
.method constructor <init>(Lcom/google/common/collect/az;Lcom/google/common/collect/ay;Lcom/google/common/base/k;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1990
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/common/collect/bk;Lcom/google/common/collect/ay;)V

    .line 1991
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/az;

    .line 1992
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/k;

    .line 1993
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2008
    if-nez p1, :cond_c

    .line 2009
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2012
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->hash(Ljava/lang/Object;)I

    move-result v5

    .line 2013
    invoke-virtual {p0, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v6

    .line 2015
    :cond_14
    :goto_14
    invoke-virtual {v6, p1, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 2016
    if-nez v3, :cond_70

    .line 2018
    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 2021
    :try_start_1d
    invoke-virtual {v6, p1, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 2022
    if-nez v0, :cond_9e

    .line 2025
    iget v0, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 2026
    add-int/lit8 v3, v0, 0x1

    iget v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v4, :cond_2e

    .line 2027
    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 2029
    :cond_2e
    iget-object v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2030
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, v5, v0

    .line 2031
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2032
    iget v8, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 2033
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/az;

    invoke-interface {v8, p1, v5, v0}, Lcom/google/common/collect/az;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2034
    invoke-virtual {v4, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2035
    iput v3, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_6b

    move-object v3, v0

    move v0, v1

    .line 2038
    :goto_4f
    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 2041
    if-eqz v0, :cond_70

    .line 2045
    :try_start_54
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/az;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/k;

    invoke-interface {v0, p1, v3, v1}, Lcom/google/common/collect/az;->compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/k;)Ljava/lang/Object;

    move-result-object v0

    .line 2046
    if-nez v0, :cond_8f

    .line 2047
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "compute() returned null unexpectedly"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_66

    .line 2053
    :catchall_66
    move-exception v0

    .line 2054
    invoke-virtual {v6, v3, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    throw v0

    .line 2038
    :catchall_6b
    move-exception v0

    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0

    :cond_70
    move v4, v2

    .line 2065
    :goto_71
    :try_start_71
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/az;

    invoke-interface {v0, v3}, Lcom/google/common/collect/az;->waitForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2066
    if-nez v0, :cond_86

    .line 2068
    invoke-virtual {v6, v3, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_93
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_7c} :catch_90

    .line 2077
    if-eqz v4, :cond_14

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_14

    .line 2077
    :cond_86
    if-eqz v4, :cond_8f

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_8f
    return-object v0

    .line 2073
    :catch_90
    move-exception v0

    move v4, v1

    .line 2074
    goto :goto_71

    .line 2077
    :catchall_93
    move-exception v0

    if-eqz v4, :cond_9d

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_9d
    throw v0

    :cond_9e
    move-object v3, v0

    move v0, v2

    goto :goto_4f
.end method