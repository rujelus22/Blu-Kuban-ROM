.class final Lcom/google/api/client/http/e;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/api/client/http/g;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/g;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/api/client/http/a;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/api/client/http/e;->a:Lcom/google/api/client/http/g;

    .line 41
    iput-object p2, p0, Lcom/google/api/client/http/e;->b:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, "gzip"

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 45
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    iget-object v1, p0, Lcom/google/api/client/http/e;->a:Lcom/google/api/client/http/g;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/g;->a(Ljava/io/OutputStream;)V

    .line 47
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 48
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/api/client/http/e;->a:Lcom/google/api/client/http/g;

    invoke-interface {v0}, Lcom/google/api/client/http/g;->c()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/client/http/e;->b:Ljava/lang/String;

    return-object v0
.end method
