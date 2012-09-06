.class public final Lcom/a/c/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static d:Ljava/util/Map;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/util/concurrent/ScheduledExecutorService;

.field private static g:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/c/a;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/c/a;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    sget-object v0, Lcom/a/c/a;->g:Ljava/io/File;

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/a/c/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    sget-object v0, Lcom/a/c/a;->g:Ljava/io/File;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Lcom/a/c/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/c/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/a/c/a;->a([B)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    :try_start_6
    invoke-static/range {v0 .. v5}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    if-eqz p3, :cond_13

    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    :goto_11
    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    if-nez p3, :cond_b

    const/4 v1, 0x0

    :try_start_9
    new-array p3, v1, [Ljava/lang/Class;

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_5

    :catch_18
    move-exception v1

    if-eqz p2, :cond_5

    if-nez p4, :cond_30

    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_3b} :catch_3d

    move-result-object v0

    goto :goto_5

    :catch_3d
    move-exception v1

    goto :goto_5
.end method

.method public static a()V
    .registers 2

    sget-boolean v0, Lcom/a/c/a;->a:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/a/c/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v1, Lcom/a/c/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    sget-object v0, Lcom/a/c/a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_13

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/io/File;JJ)V
    .registers 13

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v3, Lcom/a/c/c;

    invoke-direct {v3}, Lcom/a/c/c;-><init>()V

    invoke-static {v4, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v5, v4

    move v3, v0

    :goto_14
    if-lt v3, v5, :cond_47

    :goto_16
    if-eqz v0, :cond_1b

    invoke-static {v4, p3, p4}, Lcom/a/c/a;->a([Ljava/io/File;J)V

    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v0, 0x0

    :cond_30
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/c/a;->a([Ljava/io/File;J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_41} :catch_42

    goto :goto_9

    :catch_42
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_47
    :try_start_47
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_42

    move-result-wide v6

    add-long/2addr v1, v6

    cmp-long v6, v1, p1

    if-lez v6, :cond_54

    const/4 v0, 0x1

    goto :goto_16

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public static a(Ljava/io/File;[B)V
    .registers 7

    sget-object v0, Lcom/a/c/a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_a

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/a/c/a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_a
    sget-object v0, Lcom/a/c/a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/a/c/c;

    invoke-direct {v1}, Lcom/a/c/c;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/a/c/c;->a([Ljava/lang/Object;)Lcom/a/c/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 3

    sget-boolean v0, Lcom/a/c/a;->a:Z

    if-eqz v0, :cond_16

    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    sget-boolean v0, Lcom/a/c/a;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Lcom/a/c/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/a/c/a;->e:Landroid/os/Handler;

    :cond_f
    sget-object v0, Lcom/a/c/a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/a/c/a;->a:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private static a([Ljava/io/File;J)V
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_6
    array-length v4, p0

    if-lt v0, v4, :cond_13

    const-string v0, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_13
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    cmp-long v5, v2, p1

    if-ltz v5, :cond_23

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_6
    invoke-static {p0, v1}, Lcom/a/c/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_13

    if-eqz p0, :cond_e

    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_13

    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    invoke-static {v1}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    goto :goto_12

    :catch_18
    move-exception v2

    goto :goto_e
.end method

.method private static a([B)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {p0, p1}, Lcom/a/c/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public static b(Ljava/io/File;[B)V
    .registers 3

    if-eqz p0, :cond_16

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1c

    move-result v0

    if-nez v0, :cond_b

    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_17

    :cond_b
    :goto_b
    :try_start_b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_b

    :catch_1c
    move-exception v0

    :try_start_1d
    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_16

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 3

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/a/c/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/c/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_2

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
