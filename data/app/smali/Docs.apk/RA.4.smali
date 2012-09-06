.class public LRA;
.super Ljava/lang/Object;
.source "ZippedFileSource.java"

# interfaces
.implements LRd;


# instance fields
.field private final a:LXP;

.field protected final a:Ljava/io/File;

.field protected final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXP;Ljava/io/File;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXP;

    iput-object v0, p0, LRA;->a:LXP;

    .line 81
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, LRA;->a:Ljava/io/File;

    .line 83
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 85
    :try_start_18
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LRA;->a:Ljava/util/Collection;

    .line 87
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 88
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 89
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_23

    .line 90
    iget-object v3, p0, LRA;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_3f

    goto :goto_23

    .line 94
    :catchall_3f
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v0

    :cond_44
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 97
    iget-object v0, p0, LRA;->a:Ljava/util/Collection;

    invoke-static {v0}, LRA;->a(Ljava/util/Collection;)V

    .line 98
    return-void
.end method

.method static a(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-static {v0}, LRB;->a(Ljava/lang/String;)LRB;

    goto :goto_4

    .line 130
    :cond_14
    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 134
    invoke-static {p0}, LRB;->a(Ljava/lang/String;)LRB;

    move-result-object v0

    .line 135
    iget-object v0, v0, LRB;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 140
    invoke-static {p1}, LRA;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v0, p0, LRA;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 105
    :try_start_7
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 106
    if-nez v0, :cond_37

    .line 107
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LRA;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_32

    .line 117
    :catchall_32
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v0

    .line 109
    :cond_37
    :try_start_37
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_32

    move-result-object v2

    .line 111
    :try_start_3b
    iget-object v0, p0, LRA;->a:LXP;

    invoke-interface {v0, v2, p2}, LXP;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_47

    .line 113
    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_32

    .line 117
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 119
    return-void

    .line 113
    :catchall_47
    move-exception v0

    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_32
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 145
    const-string v0, "ZippedFileSource[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LRA;->a:Ljava/io/File;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
