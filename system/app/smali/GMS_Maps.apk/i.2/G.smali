.class public Li/G;
.super Ljava/lang/Object;


# instance fields
.field private final a:Li/A;

.field private final b:Ljavax/crypto/SecretKey;

.field private final c:Ljava/io/File;

.field private final d:I

.field private final e:LW/d;

.field private final f:Lcom/google/common/base/w;


# direct methods
.method public constructor <init>(ILW/d;Ljava/io/File;Lcom/google/common/base/w;Li/A;Ljavax/crypto/SecretKey;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/G;->e:LW/d;

    iput-object p5, p0, Li/G;->a:Li/A;

    iput-object p3, p0, Li/G;->c:Ljava/io/File;

    iput p1, p0, Li/G;->d:I

    iput-object p6, p0, Li/G;->b:Ljavax/crypto/SecretKey;

    iput-object p4, p0, Li/G;->f:Lcom/google/common/base/w;

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
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
.method public a()LW/a;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Li/G;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Li/G;->a(Ljava/io/InputStream;)LW/a;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    :catch_c
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File not found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/io/InputStream;)LW/a;
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_62

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget v3, p0, Li/G;->d:I

    if-eq v0, v3, :cond_35

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid version, desired = %d, actual = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Li/G;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    :goto_2e
    invoke-direct {p0, v2}, Li/G;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Li/G;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_35
    :try_start_35
    iget-object v0, p0, Li/G;->b:Ljavax/crypto/SecretKey;

    invoke-static {v1, v0}, Li/b;->b(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v0, LW/a;

    iget-object v3, p0, Li/G;->e:LW/d;

    invoke-direct {v0, v3}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v0, v2}, LW/a;->a(Ljava/io/InputStream;)LW/a;

    invoke-virtual {v0}, LW/a;->c()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Li/G;->f:Lcom/google/common/base/w;

    invoke-interface {v3, v0}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    :cond_53
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid file format."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_2d

    :cond_5b
    invoke-direct {p0, v2}, Li/G;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Li/G;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_62
    move-exception v0

    move-object v1, v2

    goto :goto_2e
.end method

.method public a(LW/a;)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "protoBuf can not be null."

    invoke-static {p1, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    iget-object v1, p0, Li/G;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Li/G;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_13
    iget-object v1, p0, Li/G;->a:Li/A;

    iget-object v2, p0, Li/G;->c:Ljava/io/File;

    invoke-interface {v1, v2}, Li/A;->a(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Li/G;->c:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_26} :catch_43

    :try_start_26
    iget v1, p0, Li/G;->d:I

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    iget-object v1, p0, Li/G;->b:Ljavax/crypto/SecretKey;

    invoke-static {v2, v1}, Li/b;->b(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/OutputStream;
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_57
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_33} :catch_5e

    move-result-object v1

    :try_start_34
    invoke-virtual {p1}, LW/a;->e()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_61

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Li/G;->a(Ljava/io/Closeable;)V

    :goto_3f
    invoke-direct {p0, v2}, Li/G;->a(Ljava/io/Closeable;)V

    return v0

    :catch_43
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_46
    const/4 v0, 0x0

    invoke-direct {p0, v1}, Li/G;->a(Ljava/io/Closeable;)V

    goto :goto_3f

    :catchall_4b
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_50
    invoke-direct {p0, v1}, Li/G;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Li/G;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_57
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_50

    :catchall_5c
    move-exception v0

    goto :goto_50

    :catch_5e
    move-exception v1

    move-object v1, v0

    goto :goto_46

    :catch_61
    move-exception v0

    goto :goto_46
.end method
