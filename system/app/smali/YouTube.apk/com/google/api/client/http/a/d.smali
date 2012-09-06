.class final Lcom/google/api/client/http/a/d;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Lcom/google/api/client/http/h;


# direct methods
.method constructor <init>(JLcom/google/api/client/http/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/api/client/http/a/d;->a:J

    .line 35
    iput-object p3, p0, Lcom/google/api/client/http/a/d;->b:Lcom/google/api/client/http/h;

    .line 36
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getContentLength()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/api/client/http/a/d;->a:J

    return-wide v0
.end method

.method public final isRepeatable()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/api/client/http/a/d;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 56
    iget-object v0, p0, Lcom/google/api/client/http/a/d;->b:Lcom/google/api/client/http/h;

    invoke-interface {v0, p1}, Lcom/google/api/client/http/h;->a(Ljava/io/OutputStream;)V

    .line 58
    :cond_d
    return-void
.end method
