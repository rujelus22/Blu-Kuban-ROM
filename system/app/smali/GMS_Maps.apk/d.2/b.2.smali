.class public Ld/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/io/DataInputStream;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private final g:Ld/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ld/a;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ld/b;->b:J

    iput v2, p0, Ld/b;->d:I

    iput-boolean v2, p0, Ld/b;->e:Z

    iput-object p1, p0, Ld/b;->a:Ljava/lang/String;

    iput-object p2, p0, Ld/b;->g:Ld/a;

    return-void
.end method

.method private a(Ljava/io/DataInputStream;I)[B
    .registers 6

    new-array v1, p2, [B

    const/4 v0, 0x0

    :cond_3
    sub-int v2, p2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_e

    add-int/2addr v0, v2

    if-ne v0, p2, :cond_3

    :cond_e
    if-eq v0, p2, :cond_1b

    invoke-direct {p0}, Ld/b;->d()V

    new-instance v0, Ld/c;

    const-string v1, "Unexpected end of file."

    invoke-direct {v0, v1}, Ld/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    return-object v1
.end method

.method private c()V
    .registers 6

    const/4 v4, 0x0

    iget-wide v0, p0, Ld/b;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Could not found file %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ld/b;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Ld/b;->c:Ljava/io/DataInputStream;

    iput-boolean v4, p0, Ld/b;->e:Z

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ld/b;->b:J

    :cond_3d
    return-void
.end method

.method private d()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ld/b;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized a()[B
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Ld/b;->c()V

    iget-boolean v1, p0, Ld/b;->e:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_4d

    if-eqz v1, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v1, p0, Ld/b;->f:Ljava/lang/Integer;

    if-nez v1, :cond_50

    iget-object v1, p0, Ld/b;->c:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Ld/b;->f:Ljava/lang/Integer;

    iget v1, p0, Ld/b;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ld/b;->d:I

    iget v1, p0, Ld/b;->d:I

    int-to-long v1, v1

    iget-wide v3, p0, Ld/b;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_50

    invoke-direct {p0}, Ld/b;->d()V
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_4d
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2d} :catch_88

    goto :goto_9

    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-direct {p0}, Ld/b;->d()V

    new-instance v0, Ld/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_50
    :try_start_50
    iget-object v0, p0, Ld/b;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v0, p0, Ld/b;->c:Ljava/io/DataInputStream;

    invoke-direct {p0, v0, v1}, Ld/b;->a(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    iget v2, p0, Ld/b;->d:I

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Ld/b;->d:I

    iget v1, p0, Ld/b;->d:I

    int-to-long v1, v1

    iget-wide v3, p0, Ld/b;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_6f

    invoke-direct {p0}, Ld/b;->d()V

    :cond_6f
    iget-object v1, p0, Ld/b;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_9

    iget-object v1, p0, Ld/b;->g:Ld/a;

    invoke-virtual {v1, v0}, Ld/a;->b([B)[B

    move-result-object v0

    if-nez v0, :cond_8d

    new-instance v0, Ld/c;

    const-string v1, "Unable to decrypt GLocRequest."

    invoke-direct {v0, v1}, Ld/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catchall {:try_start_50 .. :try_end_88} :catchall_4d
    .catch Ljava/io/EOFException; {:try_start_50 .. :try_end_88} :catch_2e
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    :try_start_89
    invoke-direct {p0}, Ld/b;->d()V

    throw v0
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_4d

    :cond_8d
    :try_start_8d
    invoke-static {v0}, Ld/ax;->b([B)[B
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_4d
    .catch Ljava/io/EOFException; {:try_start_8d .. :try_end_90} :catch_2e
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_88

    move-result-object v0

    goto/16 :goto_9
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Ld/b;->e:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Ld/b;->c:Ljava/io/DataInputStream;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ld/b;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b;->e:Z

    :cond_10
    return-void
.end method
