.class final LacY;
.super LacT;
.source "GZipContent.java"


# instance fields
.field private final a:Lada;


# direct methods
.method constructor <init>(Lada;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p2}, LacT;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, LacY;->a:Lada;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, "gzip"

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    iget-object v1, p0, LacY;->a:Lada;

    invoke-interface {v1, v0}, Lada;->a(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 56
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, LacY;->a:Lada;

    invoke-interface {v0}, Lada;->a()Z

    move-result v0

    return v0
.end method
