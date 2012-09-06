.class public Lcom/estrongs/io/archive/a/a;
.super Lcom/estrongs/io/archive/compressor/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/io/archive/compressor/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/estrongs/io/archive/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
