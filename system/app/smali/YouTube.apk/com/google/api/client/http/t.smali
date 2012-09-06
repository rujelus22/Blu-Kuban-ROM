.class final Lcom/google/api/client/http/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/h;


# instance fields
.field private final a:Lcom/google/api/client/http/h;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:I


# direct methods
.method constructor <init>(Lcom/google/api/client/http/h;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/api/client/http/t;->a:Lcom/google/api/client/http/h;

    .line 53
    iput-object p2, p0, Lcom/google/api/client/http/t;->b:Ljava/lang/String;

    .line 54
    iput-wide p4, p0, Lcom/google/api/client/http/t;->d:J

    .line 55
    iput-object p3, p0, Lcom/google/api/client/http/t;->c:Ljava/lang/String;

    .line 56
    if-ltz p6, :cond_16

    const/4 v0, 0x1

    :goto_e
    const-string v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 58
    iput p6, p0, Lcom/google/api/client/http/t;->e:I

    .line 59
    return-void

    .line 56
    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 101
    if-eqz p0, :cond_14

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "application/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/api/client/http/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 62
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    :try_start_5
    iget-object v0, p0, Lcom/google/api/client/http/t;->a:Lcom/google/api/client/http/h;

    invoke-interface {v0, v1}, Lcom/google/api/client/http/h;->a(Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 66
    array-length v2, v0

    iget v3, p0, Lcom/google/api/client/http/t;->e:I

    if-gt v2, v3, :cond_1c

    .line 67
    sget-object v2, Lcom/google/api/client/http/r;->a:Ljava/util/logging/Logger;

    invoke-static {v0}, Lcom/google/api/client/util/t;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 69
    :cond_1c
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_26

    .line 71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 73
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 74
    return-void

    .line 71
    :catchall_26
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/api/client/http/t;->d:J

    return-wide v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/client/http/t;->a:Lcom/google/api/client/http/h;

    invoke-interface {v0}, Lcom/google/api/client/http/h;->c()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/api/client/http/t;->b:Ljava/lang/String;

    return-object v0
.end method
