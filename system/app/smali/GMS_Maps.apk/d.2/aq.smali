.class public Ld/aq;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ld/aq;->a:I

    iput v0, p0, Ld/aq;->b:I

    return-void
.end method

.method static a(Ljava/lang/String;)Ld/aq;
    .registers 4

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-static {p0}, Ld/aq;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ld/aq;

    invoke-direct {v0}, Ld/aq;-><init>()V

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Ld/aq;->a:I

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Ld/aq;->b:I
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_2e} :catch_32

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catch_32
    move-exception v0

    :try_start_33
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method private b(LW/a;)I
    .registers 8

    const/4 v0, 0x0

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, LW/a;->i(I)I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1f

    invoke-virtual {p1, v5, v1}, LW/a;->d(II)LW/a;

    move-result-object v3

    invoke-virtual {v3, v5}, LW/a;->h(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3, v5}, LW/a;->c(I)I

    move-result v3

    if-nez v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "sessionSummary"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ld/aq;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(LW/a;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {p1, v0}, LW/a;->i(I)I

    move-result v1

    if-lez v1, :cond_34

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_34

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, LW/a;->d(II)LW/a;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, LW/a;->h(I)Z

    move-result v3

    if-eqz v3, :cond_31

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, LW/a;->f(I)LW/a;

    move-result-object v2

    iget v3, p0, Ld/aq;->a:I

    invoke-direct {p0, v2}, Ld/aq;->b(LW/a;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ld/aq;->a:I

    iget v3, p0, Ld/aq;->b:I

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, LW/a;->i(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Ld/aq;->b:I
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_36

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ld/aq;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/PrintWriter;

    invoke-static {p1}, Ld/aq;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget v1, p0, Ld/aq;->a:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget v1, p0, Ld/aq;->b:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
