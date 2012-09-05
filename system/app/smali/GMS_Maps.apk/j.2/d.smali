.class final Lj/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lj/b;


# direct methods
.method private constructor <init>(Lj/b;)V
    .registers 2

    iput-object p1, p0, Lj/d;->a:Lj/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj/b;Lj/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lj/d;-><init>(Lj/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lj/d;->a:Lj/b;

    iget-object v0, v0, Lj/b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lj/d;->a:Lj/b;

    invoke-static {v2}, Lj/b;->a(Lj/b;)Li/A;

    move-result-object v2

    invoke-interface {v2}, Li/A;->e()Ljava/io/File;

    move-result-object v2

    const-string v4, "cp_state"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1e} :catch_56

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_27
    iget-object v2, p0, Lj/d;->a:Lj/b;

    invoke-static {v2}, Lj/b;->a(Lj/b;)Li/A;

    move-result-object v2

    invoke-interface {v2, v3}, Li/A;->a(Ljava/io/File;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_70
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_35} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_35} :catch_60
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_35} :catch_68

    :try_start_35
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v3, p0, Lj/d;->a:Lj/b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lj/b;->a(Lj/b;JLjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_78
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_50} :catch_7e
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_50} :catch_7c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_50} :catch_7a

    :try_start_50
    iget-object v0, p0, Lj/d;->a:Lj/b;

    invoke-static {v0, v2}, Lj/b;->a(Lj/b;Ljava/io/Closeable;)V

    goto :goto_0

    :catch_56
    move-exception v0

    return-void

    :catch_58
    move-exception v0

    move-object v0, v1

    :goto_5a
    iget-object v1, p0, Lj/d;->a:Lj/b;

    invoke-static {v1, v0}, Lj/b;->a(Lj/b;Ljava/io/Closeable;)V

    goto :goto_0

    :catch_60
    move-exception v0

    move-object v2, v1

    :goto_62
    iget-object v0, p0, Lj/d;->a:Lj/b;

    invoke-static {v0, v2}, Lj/b;->a(Lj/b;Ljava/io/Closeable;)V

    goto :goto_0

    :catch_68
    move-exception v0

    move-object v2, v1

    :goto_6a
    iget-object v0, p0, Lj/d;->a:Lj/b;

    invoke-static {v0, v2}, Lj/b;->a(Lj/b;Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_70
    move-exception v0

    move-object v2, v1

    :goto_72
    iget-object v1, p0, Lj/d;->a:Lj/b;

    invoke-static {v1, v2}, Lj/b;->a(Lj/b;Ljava/io/Closeable;)V

    throw v0
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_78} :catch_56

    :catchall_78
    move-exception v0

    goto :goto_72

    :catch_7a
    move-exception v0

    goto :goto_6a

    :catch_7c
    move-exception v0

    goto :goto_62

    :catch_7e
    move-exception v0

    move-object v0, v2

    goto :goto_5a
.end method
