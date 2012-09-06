.class public Lcom/estrongs/io/archive/rar/a;
.super Lcom/estrongs/io/archive/h;


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field g:Lde/innosystec/unrar/a;

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "RarInArchive"

    sput-object v0, Lcom/estrongs/io/archive/rar/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/estrongs/io/archive/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Z

    const-string v0, "AUTO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Z

    invoke-static {}, Lcom/estrongs/android/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    :cond_1a
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    if-nez v0, :cond_1a

    :try_start_4
    new-instance v0, Lde/innosystec/unrar/a;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/io/archive/rar/a;->c:Ljava/lang/String;

    new-instance v3, Lcom/estrongs/io/archive/rar/d;

    invoke-direct {v3, p0}, Lcom/estrongs/io/archive/rar/d;-><init>(Lcom/estrongs/io/archive/rar/a;)V

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/estrongs/io/archive/rar/a;->h:Z

    invoke-direct/range {v0 .. v5}, Lde/innosystec/unrar/a;-><init>(Ljava/io/File;Ljava/lang/String;Lde/innosystec/unrar/b;Lde/innosystec/unrar/c;Z)V

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;
    :try_end_1a
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_4 .. :try_end_1a} :catch_1b

    :cond_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Lde/innosystec/unrar/exception/RarException;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lde/innosystec/unrar/exception/RarException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/io/a/b;)V
    .registers 8

    new-instance v1, Lcom/estrongs/io/archive/g;

    invoke-direct {v1}, Lcom/estrongs/io/archive/g;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->b()V

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->e()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->p()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->e()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->q()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->e()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->v()Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Z

    move-result v0

    if-nez v0, :cond_c0

    const/4 v0, 0x0

    :goto_35
    iget-object v2, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lde/innosystec/unrar/d;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->b()V

    :cond_51
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->i()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_cf
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_58} :catch_cd

    move-result v0

    if-nez v0, :cond_c3

    :try_start_5b
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_d9

    :goto_5e
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

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

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_80
    sget-object v1, Lcom/estrongs/io/archive/rar/a;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Openning the rar file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lde/innosystec/unrar/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/io/archive/rar/a;->c:Ljava/lang/String;

    new-instance v3, Lcom/estrongs/io/archive/rar/b;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/io/archive/rar/b;-><init>(Lcom/estrongs/io/archive/rar/a;Lcom/estrongs/io/a/b;)V

    new-instance v4, Lcom/estrongs/io/archive/rar/e;

    invoke-direct {v4, p1}, Lcom/estrongs/io/archive/rar/e;-><init>(Lcom/estrongs/io/a/d;)V

    iget-boolean v5, p0, Lcom/estrongs/io/archive/rar/a;->h:Z

    invoke-direct/range {v0 .. v5}, Lde/innosystec/unrar/a;-><init>(Ljava/io/File;Ljava/lang/String;Lde/innosystec/unrar/b;Lde/innosystec/unrar/c;Z)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b2} :catch_de

    :try_start_b2
    invoke-virtual {v0}, Lde/innosystec/unrar/a;->c()Lde/innosystec/unrar/rarfile/g;
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_15e
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_144

    move-result-object v1

    :goto_b6
    if-nez v1, :cond_e9

    :cond_b8
    sget-object v0, Lcom/estrongs/io/archive/rar/a;->i:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bf
    return-void

    :cond_c0
    const/4 v0, 0x1

    goto/16 :goto_35

    :cond_c3
    :try_start_c3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V
    :try_end_cc
    .catchall {:try_start_c3 .. :try_end_cc} :catchall_cf
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_cc} :catch_cd

    goto :goto_55

    :catch_cd
    move-exception v0

    :try_start_ce
    throw v0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    :goto_d3
    throw v0

    :catch_d4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d3

    :catch_d9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    :catch_de
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e9
    :try_start_e9
    new-instance v2, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;

    invoke-direct {v2, v1}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;-><init>(Lde/innosystec/unrar/rarfile/g;)V

    invoke-virtual {p0, v2, p1}, Lcom/estrongs/io/archive/rar/a;->b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/g;->B()Z

    move-result v3

    if-nez v3, :cond_fa

    if-nez v2, :cond_ff

    :cond_fa
    invoke-virtual {v0}, Lde/innosystec/unrar/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v1

    goto :goto_b6

    :cond_ff
    sget-object v3, Lcom/estrongs/io/archive/rar/a;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Extracting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v3}, Lde/innosystec/unrar/a;->a(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iget-wide v2, p0, Lcom/estrongs/io/archive/rar/a;->a:J

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/g;->p()I

    move-result v1

    int-to-long v4, v1

    add-long v1, v2, v4

    iput-wide v1, p0, Lcom/estrongs/io/archive/rar/a;->a:J

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->d()Lde/innosystec/unrar/c;

    move-result-object v1

    if-nez v1, :cond_138

    iget-wide v1, p0, Lcom/estrongs/io/archive/rar/a;->a:J

    invoke-interface {p1, v1, v2}, Lcom/estrongs/io/a/b;->a(J)V

    :cond_138
    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->c()Lde/innosystec/unrar/rarfile/g;
    :try_end_141
    .catchall {:try_start_e9 .. :try_end_141} :catchall_15e
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_141} :catch_144

    move-result-object v1

    goto/16 :goto_b6

    :catch_144
    move-exception v0

    :try_start_145
    sget-object v1, Lcom/estrongs/io/archive/rar/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_167

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15e
    .catchall {:try_start_145 .. :try_end_15e} :catchall_15e

    :catchall_15e
    move-exception v0

    sget-object v1, Lcom/estrongs/io/archive/rar/a;->i:Ljava/lang/String;

    const-string v2, "Extraction is done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_167
    sget-object v0, Lcom/estrongs/io/archive/rar/a;->i:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/rar/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/g;->u()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/g;->t()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    move-object v0, v1

    :goto_19
    return-object v0

    :cond_1a
    :try_start_1a
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/rar/a;->b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_5b
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_1a .. :try_end_1d} :catch_4a

    move-result-object v2

    if-nez v2, :cond_25

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_19

    :cond_25
    :try_start_25
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_5b
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_25 .. :try_end_2a} :catch_4a

    :try_start_2a
    iget-object v1, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    invoke-virtual {v1}, Lde/innosystec/unrar/a;->d()Lde/innosystec/unrar/c;

    move-result-object v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    new-instance v4, Lcom/estrongs/io/archive/rar/e;

    invoke-direct {v4, p2}, Lcom/estrongs/io/archive/rar/e;-><init>(Lcom/estrongs/io/a/d;)V

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/a;->a(Lde/innosystec/unrar/c;)V

    :cond_3c
    iget-object v1, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lde/innosystec/unrar/a;->a(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_5e
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_2a .. :try_end_45} :catch_60

    invoke-static {v3}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_19

    :catch_4a
    move-exception v0

    :goto_4b
    :try_start_4b
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lde/innosystec/unrar/exception/RarException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    move-object v3, v1

    :goto_57
    invoke-static {v3}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_5b
    move-exception v0

    move-object v3, v1

    goto :goto_57

    :catchall_5e
    move-exception v0

    goto :goto_57

    :catch_60
    move-exception v0

    move-object v1, v3

    goto :goto_4b
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->close()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->g:Lde/innosystec/unrar/a;

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

    new-instance v0, Lcom/estrongs/io/archive/rar/c;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/rar/c;-><init>(Lcom/estrongs/io/archive/rar/a;)V

    return-object v0
.end method
