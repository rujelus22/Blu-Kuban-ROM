.class public Ld/d;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lm/c;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Ld/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ld/a;Lm/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/d;->c:I

    iput-object p1, p0, Ld/d;->b:Ljava/lang/String;

    iput-object p2, p0, Ld/d;->e:Ld/a;

    invoke-static {p3}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/d;->a:Lm/c;

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ld/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Ld/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(LW/a;)Ld/ak;
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v3, 0x6

    :try_start_5
    invoke-virtual {p1, v3}, LW/a;->f(I)LW/a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, LW/a;->c(I)I

    move-result v3

    iget-object v4, p0, Ld/d;->d:Ljava/lang/String;

    if-nez v4, :cond_19

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ld/d;->d:Ljava/lang/String;

    move v2, v1

    :cond_19
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Ld/d;->b:Ljava/lang/String;

    iget-object v4, p0, Ld/d;->d:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_ab

    :try_start_22
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_28} :catch_76
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_8a

    :try_start_28
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v2, :cond_33

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_33
    iget-object v0, p0, Ld/d;->e:Ld/a;

    invoke-virtual {p1}, LW/a;->e()[B

    move-result-object v2

    invoke-static {v2}, Ld/ax;->a([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/a;->a([B)[B

    move-result-object v2

    if-nez v2, :cond_4e

    new-instance v5, Ld/ak;

    const/4 v6, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const-string v7, "Failed to encrypt data."

    invoke-direct {v5, v6, v0, v7}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4e
    array-length v0, v2

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget v0, p0, Ld/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/d;->c:I

    iget v0, p0, Ld/d;->c:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_64

    invoke-direct {p0}, Ld/d;->a()V

    :cond_64
    new-instance v0, Ld/ak;

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_28 .. :try_end_6f} :catchall_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_6f} :catch_be
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6f} :catch_bb

    if-eqz v1, :cond_74

    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_ab
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_b4

    :cond_74
    :goto_74
    monitor-exit p0

    return-object v0

    :catch_76
    move-exception v1

    move-object v2, v0

    :goto_78
    :try_start_78
    new-instance v1, Ld/ak;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const-string v4, "File not found."

    invoke-direct {v1, v3, v0, v4}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_b8

    if-eqz v2, :cond_88

    :try_start_85
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_ab
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_b0

    :cond_88
    :goto_88
    move-object v0, v1

    goto :goto_74

    :catch_8a
    move-exception v1

    move-object v2, v0

    :goto_8c
    :try_start_8c
    invoke-direct {p0}, Ld/d;->a()V

    new-instance v1, Ld/ak;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const-string v4, "Failed to write data to file"

    invoke-direct {v1, v3, v0, v4}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_8c .. :try_end_9a} :catchall_b8

    if-eqz v2, :cond_9f

    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_ab
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_b2

    :cond_9f
    :goto_9f
    move-object v0, v1

    goto :goto_74

    :catchall_a1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_a5
    if-eqz v1, :cond_aa

    :try_start_a7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ae

    :cond_aa
    :goto_aa
    :try_start_aa
    throw v0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_ae
    move-exception v1

    goto :goto_aa

    :catch_b0
    move-exception v0

    goto :goto_88

    :catch_b2
    move-exception v0

    goto :goto_9f

    :catch_b4
    move-exception v1

    goto :goto_74

    :catchall_b6
    move-exception v0

    goto :goto_a5

    :catchall_b8
    move-exception v0

    move-object v1, v2

    goto :goto_a5

    :catch_bb
    move-exception v0

    move-object v2, v1

    goto :goto_8c

    :catch_be
    move-exception v0

    move-object v2, v1

    goto :goto_78
.end method
