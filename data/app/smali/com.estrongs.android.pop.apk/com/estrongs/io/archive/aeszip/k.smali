.class public Lcom/estrongs/io/archive/aeszip/k;
.super Lcom/estrongs/io/archive/i;


# instance fields
.field protected d:Lde/a/a/a/a/j;

.field private e:Lde/a/a/a/a/d;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/io/archive/i;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->e:Lde/a/a/a/a/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    iput-object p3, p0, Lcom/estrongs/io/archive/aeszip/k;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/io/a/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "password"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/io/archive/aeszip/k;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/lang/String;)V

    const-string v0, "compress_level"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    invoke-static {v0}, Lcom/estrongs/android/a/h;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    :goto_21
    return-void

    :cond_22
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    goto :goto_21
.end method

.method private static final a(J)I
    .registers 7

    const-wide/32 v0, 0x10000

    const-wide/16 v2, 0x2000

    cmp-long v4, p0, v0

    if-lez v4, :cond_c

    move-wide p0, v0

    :cond_a
    :goto_a
    long-to-int v0, p0

    return v0

    :cond_c
    cmp-long v0, p0, v2

    if-gez v0, :cond_a

    move-wide p0, v2

    goto :goto_a
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v0}, Lcom/estrongs/io/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_57

    :cond_18
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    new-instance v2, Lde/a/a/a/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/a/a/a/a/j;->d(Lde/a/a/a/a/i;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_45
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v5}, Lcom/estrongs/io/a/d;->b()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/io/archive/aeszip/k;->a(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_73
    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/estrongs/io/a/d;->a(Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/io/archive/aeszip/k;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 14

    const-wide/16 v3, 0x0

    const/4 v10, 0x0

    :try_start_3
    new-instance v0, Lde/a/a/a/a/e;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->f:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lde/a/a/a/a/e;-><init>([B)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->e:Lde/a/a/a/a/d;
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_12} :catch_a5

    :goto_12
    new-instance v2, Lde/a/a/a/a/i;

    invoke-direct {v2, p1}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    if-nez v0, :cond_ab

    invoke-virtual {v2, v10}, Lde/a/a/a/a/i;->setMethod(I)V

    :goto_1e
    invoke-virtual {v2, v3, v4}, Lde/a/a/a/a/i;->setCrc(J)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lde/a/a/a/a/i;->setSize(J)V

    invoke-virtual {v2, v3, v4}, Lde/a/a/a/a/i;->setCompressedSize(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lde/a/a/a/a/i;->setTime(J)V

    invoke-virtual {v2}, Lde/a/a/a/a/i;->a()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    invoke-virtual {v0, v2}, Lde/a/a/a/a/j;->d(Lde/a/a/a/a/i;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->e:Lde/a/a/a/a/d;

    invoke-interface {v1}, Lde/a/a/a/a/d;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/a/a/a/a/j;->write([B)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->e:Lde/a/a/a/a/d;

    invoke-interface {v1}, Lde/a/a/a/a/d;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/a/a/a/a/j;->write([B)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/aeszip/k;->a(J)I

    move-result v0

    new-array v3, v0, [B

    new-instance v1, Lcom/estrongs/io/archive/aeszip/l;

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    iget-object v4, p0, Lcom/estrongs/io/archive/aeszip/k;->e:Lde/a/a/a/a/d;

    invoke-direct {v1, p0, v0, v4}, Lcom/estrongs/io/archive/aeszip/l;-><init>(Lcom/estrongs/io/archive/aeszip/k;Ljava/io/OutputStream;Lde/a/a/a/a/d;)V

    iget v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    if-nez v0, :cond_b2

    move-object v0, v1

    :goto_6d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_72
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_c2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lde/a/a/a/a/i;->setSize(J)V

    iget-wide v3, v1, Lcom/estrongs/io/archive/aeszip/l;->a:J

    const-wide/16 v5, 0x1c

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lde/a/a/a/a/i;->setCompressedSize(J)V

    invoke-virtual {v1}, Lcom/estrongs/io/archive/aeszip/l;->a()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lde/a/a/a/a/i;->setCrc(J)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->e:Lde/a/a/a/a/d;

    invoke-interface {v1}, Lde/a/a/a/a/d;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/a/a/a/a/j;->write([B)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    invoke-virtual {v0, v2}, Lde/a/a/a/a/j;->a(Lde/a/a/a/a/i;)V

    :goto_a4
    return-void

    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_12

    :cond_ab
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lde/a/a/a/a/i;->setMethod(I)V

    goto/16 :goto_1e

    :cond_b2
    new-instance v4, Ljava/util/zip/Deflater;

    iget v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/util/zip/Deflater;-><init>(IZ)V

    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v0, v1, v4, v5}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    goto :goto_6d

    :cond_c2
    iget-object v6, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v6}, Lcom/estrongs/io/a/d;->b()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_a4

    :cond_ce
    invoke-virtual {v0, v3, v10, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v6, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v6}, Lcom/estrongs/io/a/d;->b()Z

    move-result v6

    if-eqz v6, :cond_dd

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_a4

    :cond_dd
    iget-wide v6, p0, Lcom/estrongs/io/archive/aeszip/k;->c:J

    int-to-long v8, v5

    add-long v5, v6, v8

    iput-wide v5, p0, Lcom/estrongs/io/archive/aeszip/k;->c:J

    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    iget-wide v6, p0, Lcom/estrongs/io/archive/aeszip/k;->c:J

    invoke-interface {v5, v6, v7}, Lcom/estrongs/io/a/d;->a(J)V

    goto :goto_72
.end method

.method public a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/aeszip/k;->c:J

    new-instance v0, Lde/a/a/a/a/j;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Lde/a/a/a/a/j;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_33
    new-instance v1, Lcom/estrongs/io/archive/g;

    invoke-direct {v1}, Lcom/estrongs/io/archive/g;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->a()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->c()I

    move-result v1

    add-int/2addr v1, v5

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/estrongs/io/a/d;->a(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_b6
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7b} :catch_b4
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7b} :catch_cd

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    invoke-virtual {v0}, Lde/a/a/a/a/j;->a()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v1}, Lcom/estrongs/io/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_93
    :goto_93
    return-void

    :cond_94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V

    goto :goto_3c

    :cond_a3
    :try_start_a3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/io/archive/aeszip/k;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_a3 .. :try_end_b3} :catchall_b6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b3} :catch_b4
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_b3} :catch_cd

    goto :goto_78

    :catch_b4
    move-exception v0

    :try_start_b5
    throw v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception v0

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lde/a/a/a/a/j;

    invoke-virtual {v2}, Lde/a/a/a/a/j;->a()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v1}, Lcom/estrongs/io/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_cc
    :goto_cc
    throw v0

    :catch_cd
    move-exception v0

    :try_start_ce
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_db
    .catchall {:try_start_ce .. :try_end_db} :catchall_b6

    :cond_db
    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_cc

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_cc

    :cond_ee
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_93

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_93
.end method
