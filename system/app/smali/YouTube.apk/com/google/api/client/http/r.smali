.class final Lcom/google/api/client/http/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/g;


# instance fields
.field private final a:Lcom/google/api/client/http/g;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/api/client/http/g;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/g;

    .line 49
    iput-object p2, p0, Lcom/google/api/client/http/r;->b:Ljava/lang/String;

    .line 50
    iput-wide p4, p0, Lcom/google/api/client/http/r;->d:J

    .line 51
    iput-object p3, p0, Lcom/google/api/client/http/r;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 83
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
    .line 63
    iget-object v0, p0, Lcom/google/api/client/http/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/g;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/g;->a(Ljava/io/OutputStream;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 58
    sget-object v1, Lcom/google/api/client/http/p;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 60
    return-void
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/api/client/http/r;->d:J

    return-wide v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/g;

    invoke-interface {v0}, Lcom/google/api/client/http/g;->c()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/api/client/http/r;->b:Ljava/lang/String;

    return-object v0
.end method
