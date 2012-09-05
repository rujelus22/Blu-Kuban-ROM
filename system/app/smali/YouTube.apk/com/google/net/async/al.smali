.class final Lcom/google/net/async/al;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    .line 29
    return-void
.end method

.method public final available()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_5
.end method

.method public final read()I
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 39
    const/4 v0, -0x1

    .line 41
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_5
.end method

.method public final read([BII)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 53
    const/4 v0, -0x1

    .line 55
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_5
.end method

.method public final skip(J)J
    .registers 5
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    if-nez v0, :cond_7

    .line 62
    const-wide/16 v0, 0x0

    .line 64
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/google/net/async/al;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    goto :goto_6
.end method
