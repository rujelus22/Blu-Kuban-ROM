.class final Lcom/google/android/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/f;


# instance fields
.field final synthetic a:Lcom/google/android/a/a/a/f;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/a/f;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/a/a/a/g;->a:Lcom/google/android/a/a/a/f;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/a/a/a/g;->a:Lcom/google/android/a/a/a/f;

    invoke-static {v0}, Lcom/google/android/a/a/a/f;->b(Lcom/google/android/a/a/a/f;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/a/a/a/k;

    invoke-direct {v1}, Lcom/google/android/a/a/a/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 562
    return-void
.end method

.method public final a(I)V
    .registers 7
    .parameter

    .prologue
    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/a/g;->a:Lcom/google/android/a/a/a/f;

    invoke-static {v0}, Lcom/google/android/a/a/a/f;->a(Lcom/google/android/a/a/a/f;)Lcom/google/net/async/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/net/async/l;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 548
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    .line 550
    iget-object v0, p0, Lcom/google/android/a/a/a/g;->a:Lcom/google/android/a/a/a/f;

    invoke-static {v0}, Lcom/google/android/a/a/a/f;->b(Lcom/google/android/a/a/a/f;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/a/a/a/k;

    invoke-direct {v1, v2}, Lcom/google/android/a/a/a/k;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    .line 554
    :goto_28
    return-void

    .line 551
    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public final a(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 541
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/a/a/a/g;->a:Lcom/google/android/a/a/a/f;

    invoke-static {v0}, Lcom/google/android/a/a/a/f;->b(Lcom/google/android/a/a/a/f;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/a/a/a/k;

    invoke-direct {v1, p1}, Lcom/google/android/a/a/a/k;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 558
    return-void
.end method
