.class public Lcom/estrongs/io/archive/aeszip/h;
.super Lcom/estrongs/io/archive/h;


# instance fields
.field g:Lcom/estrongs/io/archive/aeszip/a;

.field h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/estrongs/io/archive/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Z

    const-string v0, "AUTO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Z

    invoke-static {}, Lcom/estrongs/android/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    :cond_1a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()V
    .registers 6

    new-instance v0, Lcom/estrongs/io/archive/aeszip/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/h;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Z

    new-instance v4, Lcom/estrongs/io/archive/aeszip/i;

    invoke-direct {v4, p0}, Lcom/estrongs/io/archive/aeszip/i;-><init>(Lcom/estrongs/io/archive/aeszip/h;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/io/archive/aeszip/a;-><init>(Ljava/io/File;Ljava/lang/String;ZLcom/estrongs/io/archive/aeszip/b;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    return-void
.end method

.method public c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .registers 12

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/aeszip/h;->b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    check-cast p1, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;

    invoke-virtual {p1}, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->getArchiveEntry()Lde/a/a/a/a/i;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_13
    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v1}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/lang/String;Lcom/estrongs/io/a/b;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v1}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/io/archive/aeszip/a;->a(J)I

    move-result v1

    new-array v1, v1, [B

    :goto_2f
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_32} :catch_59

    move-result v4

    if-gtz v4, :cond_42

    :cond_35
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_7

    :cond_42
    const/4 v5, 0x0

    :try_start_43
    invoke-virtual {v2, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v5

    if-nez v5, :cond_35

    iget-wide v5, p0, Lcom/estrongs/io/archive/aeszip/h;->a:J

    int-to-long v7, v4

    add-long v4, v5, v7

    iput-wide v4, p0, Lcom/estrongs/io/archive/aeszip/h;->a:J

    iget-wide v4, p0, Lcom/estrongs/io/archive/aeszip/h;->a:J

    invoke-interface {p2, v4, v5}, Lcom/estrongs/io/a/b;->a(J)V
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_58} :catch_59

    goto :goto_2f

    :catch_59
    move-exception v1

    :try_start_5a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6b
    throw v1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/aeszip/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    :cond_c
    return-void
.end method

.method protected i()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/io/archive/aeszip/j;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/aeszip/j;-><init>(Lcom/estrongs/io/archive/aeszip/h;)V

    return-object v0
.end method
