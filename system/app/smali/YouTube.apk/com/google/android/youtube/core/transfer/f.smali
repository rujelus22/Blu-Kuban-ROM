.class final Lcom/google/android/youtube/core/transfer/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcom/google/android/youtube/core/transfer/e;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/youtube/core/transfer/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/f;->a:Ljava/io/InputStream;

    .line 181
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/f;->b:Lcom/google/android/youtube/core/transfer/e;

    .line 182
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/f;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 187
    return-void
.end method

.method public final read()I
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/f;->b:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/f;->a:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->a(Lcom/google/android/youtube/core/transfer/e;Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .registers 6
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/f;->b:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/f;->a:Ljava/io/InputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/transfer/e;->a(Lcom/google/android/youtube/core/transfer/e;Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/f;->b:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/f;->a:Ljava/io/InputStream;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/youtube/core/transfer/e;->a(Lcom/google/android/youtube/core/transfer/e;Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public final skip(J)J
    .registers 5
    .parameter

    .prologue
    .line 206
    new-instance v0, Ljava/io/IOException;

    const-string v1, "skip not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
