.class public abstract Lcom/estrongs/io/archive/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/estrongs/io/model/ArchiveEntryFile;

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation
.end field

.field protected f:[B

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->h:Ljava/util/List;

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    iput-object v2, p0, Lcom/estrongs/io/archive/h;->f:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    iput-object p1, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->h:Ljava/util/List;

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    iput-object v2, p0, Lcom/estrongs/io/archive/h;->f:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    iput-object p1, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    if-eqz p2, :cond_2e

    iput-object p2, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    :cond_2e
    return-void
.end method

.method private a(Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .registers 5

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4d

    const-string v0, "/"

    move-object v1, v0

    :goto_28
    const-string v0, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    const-string v1, "/"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-nez v0, :cond_49

    const-string v0, "/"

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/h;->b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    const-string v2, "/"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    invoke-virtual {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->attachChild(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_4

    :cond_4d
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_28

    :cond_53
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-eqz v0, :cond_61

    invoke-virtual {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->attachChild(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_4

    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/h;->b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->attachChild(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_4
.end method

.method private j()Lcom/estrongs/io/model/ArchiveEntryFile;
    .registers 7

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->i()Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening archive"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    const-string v1, "/"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    goto :goto_7

    :cond_48
    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    if-nez v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v4, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_c
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public a(Lcom/estrongs/io/a/b;)V
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    new-instance v1, Lcom/estrongs/io/archive/g;

    invoke-direct {v1}, Lcom/estrongs/io/archive/g;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->b()V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->i()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->b()I

    move-result v4

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->c()I

    move-result v1

    add-int/2addr v1, v4

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;JI)V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->i()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_54

    :cond_38
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3b} :catch_4b

    iput-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->g()V

    return-void

    :cond_41
    :try_start_41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4a} :catch_4b

    goto :goto_d

    :catch_4b
    move-exception v0

    :try_start_4c
    throw v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    iput-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->g()V

    throw v0

    :cond_54
    :try_start_54
    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_63} :catch_4b

    goto :goto_32
.end method

.method public a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v3, v2

    move v1, v0

    :goto_16
    if-ge v1, v3, :cond_7

    aget-object v0, v2, v1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_23
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_50
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p2, v1, v2, v3}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_5f
    if-ge v1, v3, :cond_7

    aget-object v0, v2, v1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5f

    :cond_6c
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/h;->c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    goto :goto_7
.end method

.method public a(Ljava/util/List;Lcom/estrongs/io/a/b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/io/a/b;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/high16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->f:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/io/archive/h;->a:J

    new-instance v3, Lcom/estrongs/io/archive/g;

    invoke-direct {v3}, Lcom/estrongs/io/archive/g;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_1d

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    const/4 v2, 0x0

    :try_start_29
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->a()Z
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_8a

    move-result v0

    if-nez v0, :cond_33

    :try_start_2f
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->b()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_a9

    move v2, v1

    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v1, :cond_3e

    invoke-direct {p0}, Lcom/estrongs/io/archive/h;->j()Lcom/estrongs/io/model/ArchiveEntryFile;

    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_75

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/estrongs/io/archive/g;->a()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/estrongs/io/archive/g;->b()I

    move-result v1

    invoke-virtual {v3}, Lcom/estrongs/io/archive/g;->c()I

    move-result v3

    add-int/2addr v1, v3

    invoke-interface {p2, v0, v5, v6, v1}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;JI)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_6a
    .catchall {:try_start_33 .. :try_end_6a} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_6a} :catch_8a

    move-result v0

    if-nez v0, :cond_97

    :cond_6d
    iput-object v7, p0, Lcom/estrongs/io/archive/h;->f:[B

    if-eqz v2, :cond_74

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V

    :cond_74
    return-void

    :cond_75
    :try_start_75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V
    :try_end_89
    .catchall {:try_start_75 .. :try_end_89} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_89} :catch_8a

    goto :goto_42

    :catch_8a
    move-exception v0

    move v1, v2

    :goto_8c
    :try_start_8c
    throw v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception v0

    move v2, v1

    :goto_8f
    iput-object v7, p0, Lcom/estrongs/io/archive/h;->f:[B

    if-eqz v2, :cond_96

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V

    :cond_96
    throw v0

    :cond_97
    :try_start_97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a6} :catch_8a

    goto :goto_67

    :catchall_a7
    move-exception v0

    goto :goto_8f

    :catch_a9
    move-exception v0

    goto :goto_8c
.end method

.method public abstract a()Z
.end method

.method protected b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;
    .registers 3

    new-instance v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-direct {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .registers 8

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_27
    return-object v0

    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_89

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create dir: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_70

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FILENAME_CONFILCT "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getSize()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;J)V

    const/4 v0, 0x0

    goto :goto_27

    :cond_89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d6

    :try_start_8f
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_d6

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "path_create_error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path_create_error ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d6
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getSize()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;J)V

    goto/16 :goto_27
.end method

.method public abstract b()V
.end method

.method public c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .registers 12

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/h;->b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v0, v1

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v3

    :try_start_e
    invoke-virtual {p0, v3}, Lcom/estrongs/io/archive/h;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_40

    move-result-object v3

    :try_start_12
    iget-object v4, p0, Lcom/estrongs/io/archive/h;->f:[B

    if-nez v4, :cond_1c

    const/high16 v4, 0x8

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/estrongs/io/archive/h;->f:[B

    :cond_1c
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    array-length v5, v5

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_65

    :goto_29
    :try_start_29
    iget-object v1, p0, Lcom/estrongs/io/archive/h;->f:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/estrongs/io/archive/h;->f:[B

    array-length v6, v6

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_5f

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_45

    :goto_36
    invoke-static {v3}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_3e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3e
    move-object v0, v2

    goto :goto_9

    :catch_40
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0

    :cond_45
    :try_start_45
    iget-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v0, 0x1

    goto :goto_36

    :cond_53
    iget-wide v5, p0, Lcom/estrongs/io/archive/h;->a:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/estrongs/io/archive/h;->a:J

    iget-wide v5, p0, Lcom/estrongs/io/archive/h;->a:J

    invoke-interface {p2, v5, v6}, Lcom/estrongs/io/a/b;->a(J)V
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_5f

    goto :goto_29

    :catchall_5f
    move-exception v0

    move-object v1, v3

    :goto_61
    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_65
    move-exception v0

    goto :goto_61
.end method

.method public abstract c()V
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    return v0
.end method

.method protected f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_12
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15
.end method

.method public final h()Lcom/estrongs/io/model/ArchiveEntryFile;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    invoke-direct {p0}, Lcom/estrongs/io/archive/h;->j()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->i:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->f()V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/estrongs/io/archive/a;->a(Ljava/lang/String;Lcom/estrongs/io/archive/h;)V

    goto :goto_14
.end method

.method protected abstract i()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation
.end method
