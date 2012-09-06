.class public Lcom/estrongs/io/model/ArchiveEntryFile;
.super Lcom/estrongs/io/model/ExtFile;


# static fields
.field private static final serialVersionUID:J = 0x32780266f54df572L


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private isRoot:Z

.field private parent:Ljava/io/File;

.field private sorted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/io/model/ExtFile;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->isRoot:Z

    iput-boolean v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->sorted:Z

    const-string v1, "/"

    invoke-virtual {p0}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "\\"

    invoke-virtual {p0}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    :goto_20
    iput-boolean v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->isRoot:Z

    return-void

    :cond_23
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private fillParentPath(Ljava/io/File;Ljava/lang/StringBuilder;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-eqz v1, :cond_26

    const-string v1, ""

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "/"

    invoke-virtual {p2, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-direct {p0, v0, p2}, Lcom/estrongs/io/model/ArchiveEntryFile;->fillParentPath(Ljava/io/File;Ljava/lang/StringBuilder;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    instance-of v1, v0, Lcom/estrongs/io/model/MountPointFile;

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25
.end method


# virtual methods
.method public attachChild(Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .registers 3

    invoke-virtual {p1, p0}, Lcom/estrongs/io/model/ArchiveEntryFile;->setParent(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->children:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->children:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/io/model/ArchiveEntryFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p0, v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->fillParentPath(Ljava/io/File;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->parent:Ljava/io/File;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isDirectory()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEncrypted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->isRoot:Z

    return v0
.end method

.method public length()J
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/io/model/ArchiveEntryFile;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Ljava/io/File;
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->children:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->sorted:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->children:Ljava/util/List;

    sget-object v1, Lcom/estrongs/android/a/d;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->sorted:Z

    :cond_13
    iget-object v0, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->children:Ljava/util/List;

    new-array v1, v2, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    :goto_1d
    return-object v0

    :cond_1e
    new-array v0, v2, [Ljava/io/File;

    goto :goto_1d
.end method

.method public setParent(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/model/ArchiveEntryFile;->parent:Ljava/io/File;

    return-void
.end method
