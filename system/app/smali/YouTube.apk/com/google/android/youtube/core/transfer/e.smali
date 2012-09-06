.class public final Lcom/google/android/youtube/core/transfer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/lang/Object;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/e;-><init>(I)V

    .line 50
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/e;->a:Ljava/util/LinkedList;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/e;->c:Ljava/lang/Object;

    .line 39
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/youtube/core/transfer/e;->d:I

    .line 40
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/e;->a(I)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/e;Ljava/io/InputStream;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/transfer/e;->b(I)Lcom/google/android/youtube/core/transfer/g;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/g;->a(I)V

    goto :goto_10
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/e;Ljava/io/InputStream;[BII)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    if-nez p4, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_14

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_3

    :cond_14
    invoke-direct {p0, p4}, Lcom/google/android/youtube/core/transfer/e;->b(I)Lcom/google/android/youtube/core/transfer/g;

    move-result-object v1

    iget v0, v1, Lcom/google/android/youtube/core/transfer/g;->b:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/g;->a(I)V

    goto :goto_3
.end method

.method private declared-synchronized b(I)Lcom/google/android/youtube/core/transfer/g;
    .registers 19
    .parameter

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/transfer/e;->c:Ljava/lang/Object;

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3d

    .line 133
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v9

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v5

    move v7, v1

    :goto_1d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 138
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/g;

    .line 141
    iget-wide v11, v1, Lcom/google/android/youtube/core/transfer/g;->a:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/youtube/core/transfer/e;->d:I

    int-to-long v13, v4

    sub-long v13, v5, v13

    cmp-long v4, v11, v13

    if-gtz v4, :cond_40

    .line 142
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    .line 170
    :catchall_3a
    move-exception v1

    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 131
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 144
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/g;->b()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/g;->a()I

    move-result v4

    :goto_4a
    add-int/2addr v4, v7

    .line 145
    iget-wide v11, v1, Lcom/google/android/youtube/core/transfer/g;->a:J

    cmp-long v7, v11, v2

    if-gez v7, :cond_95

    .line 146
    iget-wide v1, v1, Lcom/google/android/youtube/core/transfer/g;->a:J

    :goto_53
    move v7, v4

    move-wide v15, v1

    move-wide v2, v15

    .line 149
    goto :goto_1d

    .line 144
    :cond_57
    iget v4, v1, Lcom/google/android/youtube/core/transfer/g;->b:I

    goto :goto_4a

    .line 150
    :cond_5a
    sub-int v1, v9, v7

    .line 151
    move/from16 v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 152
    if-lez v1, :cond_77

    .line 153
    new-instance v2, Lcom/google/android/youtube/core/transfer/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/e;->c:Ljava/lang/Object;

    invoke-direct {v2, v3, v1, v5, v6}, Lcom/google/android/youtube/core/transfer/g;-><init>(Ljava/lang/Object;IJ)V

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 155
    monitor-exit v8
    :try_end_75
    .catchall {:try_start_40 .. :try_end_75} :catchall_3a

    monitor-exit p0

    return-object v2

    .line 161
    :cond_77
    :try_start_77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/e;->c:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/youtube/core/transfer/e;->d:I

    int-to-long v9, v4

    sub-long v2, v5, v2

    sub-long v2, v9, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_3a
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_87} :catch_89

    goto/16 :goto_6

    .line 162
    :catch_89
    move-exception v1

    .line 165
    :try_start_8a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "interrupted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 167
    throw v2
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_3a

    :cond_95
    move-wide v1, v2

    goto :goto_53
.end method


# virtual methods
.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 83
    if-ltz p1, :cond_e

    const/4 v0, 0x1

    :goto_3
    const-string v1, "bytesPerSecond cannot be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 85
    return-void

    .line 83
    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method
