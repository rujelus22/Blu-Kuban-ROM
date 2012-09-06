.class Lcom/estrongs/android/widget/ESVfsFile;
.super Ljava/io/File;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isDir:Z

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private service:Lcom/estrongs/android/pop/d/f;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/widget/ESVfsFile;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/estrongs/android/widget/ESVfsFile;->service:Lcom/estrongs/android/pop/d/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/estrongs/android/widget/ESVfsFile;->isDir:Z

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/estrongs/android/widget/ESVfsFile;->deleteUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->username:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->password:Ljava/lang/String;

    :cond_1f
    return-void
.end method

.method private static final deleteUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, -0x1

    const/4 v2, 0x5

    if-nez p0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "bt://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_2f
    if-eq v0, v3, :cond_46

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_3f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_3f
    if-le v0, v2, :cond_5

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_46
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/widget/ESVfsFile;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_75

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5
.end method

.method private static final getHostName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    const-string v0, "smb://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "Whole Network"

    goto :goto_5

    :cond_11
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_39

    :goto_27
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3e

    :goto_2f
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_45

    move-object p0, v0

    goto :goto_5

    :cond_39
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_45
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    check-cast p1, Ljava/io/File;

    if-eq p0, p1, :cond_16

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ESVfsFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_16
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public exists()Z
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->service:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/widget/ESVfsFile;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/widget/ESVfsFile;->password:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/d/f;->a(JLjava/lang/String;Z)Z

    move-result v0

    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_1b
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/widget/ESVfsFile;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/widget/ESVfsFile;->password:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    goto :goto_12
.end method

.method public getParentFile()Ljava/io/File;
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ESVfsFile;->getParentFile()Ljava/io/File;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/android/widget/ESVfsFile;

    if-eqz v1, :cond_11

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/estrongs/android/widget/ESVfsFile;

    iget-object v1, p0, Lcom/estrongs/android/widget/ESVfsFile;->service:Lcom/estrongs/android/pop/d/f;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ESVfsFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/widget/ESVfsFile;-><init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Z)V

    goto :goto_10

    :cond_22
    invoke-super {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_10
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->isDir:Z

    return v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 12

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile;->service:Lcom/estrongs/android/pop/d/f;

    iget-object v1, p0, Lcom/estrongs/android/widget/ESVfsFile;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/widget/ESVfsFile;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/widget/ESVfsFile;->password:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_2c

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_37

    :cond_29
    new-array v0, v3, [Ljava/io/File;

    goto :goto_d

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_37
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v6, v0

    move v2, v3

    :goto_4a
    if-lt v2, v6, :cond_55

    new-array v0, v3, [Ljava/io/File;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_d

    :cond_55
    aget-object v7, v0, v2

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v8, Lcom/estrongs/android/widget/ESVfsFile$1;

    iget-object v9, p0, Lcom/estrongs/android/widget/ESVfsFile;->service:Lcom/estrongs/android/pop/d/f;

    invoke-direct {v8, p0, v9, v7, v1}, Lcom/estrongs/android/widget/ESVfsFile$1;-><init>(Lcom/estrongs/android/widget/ESVfsFile;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Z)V

    invoke-interface {p1, v8}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4a
.end method

.method public setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/widget/ESVfsFile;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/widget/ESVfsFile;->password:Ljava/lang/String;

    return-void
.end method

.method public setIService(Lcom/estrongs/android/pop/d/f;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/ESVfsFile;->service:Lcom/estrongs/android/pop/d/f;

    return-void
.end method
