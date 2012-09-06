.class final Ladz;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ContentEntity.java"


# instance fields
.field private final a:J

.field private final a:Lada;


# direct methods
.method constructor <init>(JLada;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 34
    iput-wide p1, p0, Ladz;->a:J

    .line 35
    iput-object p3, p0, Ladz;->a:Lada;

    .line 36
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Ladz;->a:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Ladz;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 56
    iget-object v0, p0, Ladz;->a:Lada;

    invoke-interface {v0, p1}, Lada;->a(Ljava/io/OutputStream;)V

    .line 58
    :cond_d
    return-void
.end method
