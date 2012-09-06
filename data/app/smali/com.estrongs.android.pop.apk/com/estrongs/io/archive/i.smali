.class public Lcom/estrongs/io/archive/i;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/estrongs/io/a/d;

.field protected c:J

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/i;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/i;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/estrongs/io/archive/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    iput-object p3, p0, Lcom/estrongs/io/archive/i;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/io/File;Ljava/lang/String;Lcom/estrongs/io/archive/e;)V
    .registers 12

    const/4 v0, 0x0

    const/high16 v6, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v1}, Lcom/estrongs/io/a/d;->b()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_4c

    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_20
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/estrongs/io/archive/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_42
    if-ge v0, v4, :cond_a

    aget-object v2, v3, v0

    invoke-virtual {p0, v2, v1, p3}, Lcom/estrongs/io/archive/i;->a(Ljava/io/File;Ljava/lang/String;Lcom/estrongs/io/archive/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_68
    iget-object v2, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/estrongs/io/a/d;->a(Ljava/lang/String;J)V

    invoke-interface {p3, v1}, Lcom/estrongs/io/archive/e;->a(Ljava/lang/String;)V

    new-array v1, v6, [B

    :try_start_7a
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_c3

    :goto_86
    const/4 v3, 0x0

    const/high16 v4, 0x10

    :try_start_89
    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_b7

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9c

    :cond_90
    check-cast v0, [B

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_97
    invoke-interface {p3}, Lcom/estrongs/io/archive/e;->a()V

    goto/16 :goto_a

    :cond_9c
    :try_start_9c
    iget-object v4, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v4}, Lcom/estrongs/io/a/d;->b()Z

    move-result v4

    if-nez v4, :cond_90

    const/4 v4, 0x0

    invoke-interface {p3, v1, v4, v3}, Lcom/estrongs/io/archive/e;->a([BII)V

    iget-wide v4, p0, Lcom/estrongs/io/archive/i;->c:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, p0, Lcom/estrongs/io/archive/i;->c:J

    iget-object v3, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    iget-wide v4, p0, Lcom/estrongs/io/archive/i;->c:J

    invoke-interface {v3, v4, v5}, Lcom/estrongs/io/a/d;->a(J)V
    :try_end_b6
    .catchall {:try_start_9c .. :try_end_b6} :catchall_b7

    goto :goto_86

    :catchall_b7
    move-exception v1

    :goto_b8
    check-cast v0, [B

    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_bf
    invoke-interface {p3}, Lcom/estrongs/io/archive/e;->a()V

    throw v1

    :catchall_c3
    move-exception v1

    move-object v2, v0

    goto :goto_b8
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

    iput-wide v0, p0, Lcom/estrongs/io/archive/i;->c:J

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1e
    new-instance v1, Lcom/estrongs/io/archive/g;

    invoke-direct {v1}, Lcom/estrongs/io/archive/g;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/i;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/io/archive/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/io/archive/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/i;->d:Ljava/util/Map;

    const-string v2, "archive_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/io/archive/i;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/io/archive/i;->d:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/e;

    move-result-object v2

    :try_start_72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_b0
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_79} :catch_c7

    move-result v0

    if-nez v0, :cond_9f

    invoke-interface {v2}, Lcom/estrongs/io/archive/e;->b()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v1}, Lcom/estrongs/io/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8f
    :goto_8f
    return-void

    :cond_90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V

    goto :goto_27

    :cond_9f
    :try_start_9f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v4, v0, v2}, Lcom/estrongs/io/archive/i;->a(Ljava/io/File;Ljava/lang/String;Lcom/estrongs/io/archive/e;)V
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_af} :catch_b0
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_af} :catch_c7

    goto :goto_76

    :catch_b0
    move-exception v0

    :try_start_b1
    throw v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v0

    invoke-interface {v2}, Lcom/estrongs/io/archive/e;->b()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/i;->b:Lcom/estrongs/io/a/d;

    invoke-interface {v1}, Lcom/estrongs/io/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_c6
    :goto_c6
    throw v0

    :catch_c7
    move-exception v0

    :try_start_c8
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_b2

    :cond_d2
    if-eqz v2, :cond_c6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c6

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/i;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_c6

    :cond_e5
    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8f

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/i;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_8f
.end method
