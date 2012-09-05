.class final Lcom/google/android/youtube/core/transfer/z;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/w;

.field private final b:Ljava/io/OutputStream;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/w;Ljava/io/OutputStream;J)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/w;

    .line 535
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 536
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->b:Ljava/io/OutputStream;

    .line 537
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    .line 538
    return-void
.end method

.method private a(JJ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/32 v2, 0x19000

    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/w;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->b(Lcom/google/android/youtube/core/transfer/w;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 557
    :try_start_a
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/w;

    invoke-static {v0, p3, p4}, Lcom/google/android/youtube/core/transfer/w;->a(Lcom/google/android/youtube/core/transfer/w;J)J

    .line 558
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_37

    .line 562
    div-long v0, p3, v2

    div-long v2, p1, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/w;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->c(Lcom/google/android/youtube/core/transfer/w;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    cmp-long v0, p3, v0

    if-nez v0, :cond_36

    .line 564
    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/w;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->e(Lcom/google/android/youtube/core/transfer/w;)Lcom/google/android/youtube/core/transfer/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/w;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/w;->d(Lcom/google/android/youtube/core/transfer/w;)Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p3, p4}, Lcom/google/android/youtube/core/transfer/i;->b(Ljava/lang/String;J)V

    .line 566
    :cond_36
    return-void

    .line 558
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final write(I)V
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    .line 550
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 551
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    .line 552
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/z;->a(JJ)V

    .line 553
    return-void
.end method

.method public final write([BII)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 543
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    .line 544
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    .line 545
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/z;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/z;->a(JJ)V

    .line 546
    return-void
.end method
