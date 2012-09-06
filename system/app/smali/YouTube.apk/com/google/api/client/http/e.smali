.class final Lcom/google/api/client/http/e;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field a:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 6
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/api/client/http/e;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/api/client/http/e;->a:J

    .line 39
    return-void
.end method

.method public final write([BII)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/api/client/http/e;->a:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/api/client/http/e;->a:J

    .line 34
    return-void
.end method
