.class public final Lcom/google/io/iobuffer/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/io/iobuffer/b;


# direct methods
.method public constructor <init>(Lcom/google/io/iobuffer/b;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/io/iobuffer/c;->a:Lcom/google/io/iobuffer/b;

    .line 41
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/io/iobuffer/c;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->d()I

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public final mark(I)V
    .registers 2
    .parameter

    .prologue
    .line 52
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/io/iobuffer/c;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->c()I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/io/iobuffer/c;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1}, Lcom/google/io/iobuffer/b;->a([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/io/iobuffer/c;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/io/iobuffer/b;->a([BII)I

    move-result v0

    return v0
.end method

.method public final reset()V
    .registers 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final skip(J)J
    .registers 5
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/io/iobuffer/c;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/io/iobuffer/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
