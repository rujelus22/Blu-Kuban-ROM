.class public Lc/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lc/v;

.field private final b:Lc/A;

.field private final c:Ljava/io/File;

.field private final d:Ljavax/crypto/SecretKey;

.field private final e:Li/A;


# direct methods
.method public constructor <init>(ILc/A;Ljava/io/File;Ljavax/crypto/SecretKey;Li/A;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/v;

    invoke-direct {v0, p1}, Lc/v;-><init>(I)V

    iput-object v0, p0, Lc/k;->a:Lc/v;

    iput-object p2, p0, Lc/k;->b:Lc/A;

    iput-object p3, p0, Lc/k;->c:Ljava/io/File;

    iput-object p4, p0, Lc/k;->d:Ljavax/crypto/SecretKey;

    iput-object p5, p0, Lc/k;->e:Li/A;

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/k;->a:Lc/v;

    invoke-virtual {v0, p1}, Lc/v;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/F;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p2, p3}, Le/F;->a(J)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/k;->d:Ljavax/crypto/SecretKey;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lc/k;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lc/k;->d:Ljavax/crypto/SecretKey;

    invoke-static {v1, v2}, Li/b;->b(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_37
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_14} :catch_23
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_28

    move-result-object v0

    :try_start_15
    iget-object v1, p0, Lc/k;->b:Lc/A;

    iget-object v2, p0, Lc/k;->a:Lc/v;

    invoke-interface {v1, v2, v0}, Lc/A;->a(Lc/v;Ljava/io/InputStream;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1c} :catch_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_28

    :try_start_1c
    invoke-static {v0}, Lc/k;->a(Ljava/io/Closeable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_5

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_23
    move-exception v1

    :try_start_24
    invoke-static {v0}, Lc/k;->a(Ljava/io/Closeable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    goto :goto_5

    :catch_28
    move-exception v1

    :try_start_29
    iget-object v1, p0, Lc/k;->a:Lc/v;

    invoke-virtual {v1}, Lc/v;->clear()V

    iget-object v1, p0, Lc/k;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_3f

    :try_start_33
    invoke-static {v0}, Lc/k;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_37
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3b
    invoke-static {v1}, Lc/k;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_20

    :catchall_3f
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3b
.end method

.method public declared-synchronized a(JJ)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/k;->a:Lc/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/v;->a(JJ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Le/F;

    invoke-direct {v0, p2, p3, p4}, Le/F;-><init>(Ljava/lang/Object;J)V

    iget-object v1, p0, Lc/k;->a:Lc/v;

    invoke-virtual {v1, p1, v0}, Lc/v;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lc/k;->d:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lc/k;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    iget-object v1, p0, Lc/k;->e:Li/A;

    iget-object v2, p0, Lc/k;->c:Ljava/io/File;

    invoke-interface {v1, v2}, Li/A;->a(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lc/k;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lc/k;->d:Ljavax/crypto/SecretKey;

    invoke-static {v1, v2}, Li/b;->b(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/OutputStream;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1e} :catch_51
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1e} :catch_35

    move-result-object v1

    :try_start_1f
    monitor-enter p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_20} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_20} :catch_4e

    :try_start_20
    iget-object v0, p0, Lc/k;->b:Lc/A;

    iget-object v2, p0, Lc/k;->a:Lc/v;

    invoke-interface {v0, v2, v1}, Lc/A;->a(Lc/v;Ljava/io/OutputStream;)V

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    invoke-static {v1}, Lc/k;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2f} :catch_2f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_4e

    :catch_2f
    move-exception v0

    move-object v0, v1

    :goto_31
    invoke-static {v0}, Lc/k;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_35
    move-exception v1

    :goto_36
    :try_start_36
    iget-object v1, p0, Lc/k;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_49

    invoke-static {v0}, Lc/k;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_3f
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_43
    invoke-static {v1}, Lc/k;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_47
    move-exception v0

    goto :goto_43

    :catchall_49
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_43

    :catch_4e
    move-exception v0

    move-object v0, v1

    goto :goto_36

    :catch_51
    move-exception v1

    goto :goto_31
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lc/k;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
