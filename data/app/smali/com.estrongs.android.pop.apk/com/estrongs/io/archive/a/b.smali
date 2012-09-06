.class public Lcom/estrongs/io/archive/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/io/archive/e;


# instance fields
.field a:Ljava/util/zip/GZIPOutputStream;

.field b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/a/b;->b:Ljava/io/File;

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/estrongs/io/archive/a/b;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/a/b;->a:Ljava/util/zip/GZIPOutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a([BII)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/io/archive/a/b;->a:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/a/b;->a:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    iget-object v0, p0, Lcom/estrongs/io/archive/a/b;->a:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method
