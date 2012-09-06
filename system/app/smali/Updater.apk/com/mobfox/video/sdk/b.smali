.class public final Lcom/mobfox/video/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static a:Lcom/mobfox/video/sdk/b;


# instance fields
.field b:Ljava/util/Map;

.field c:Lorg/apache/http/client/methods/HttpGet;

.field d:Z

.field e:Z

.field f:Lcom/mobfox/video/sdk/e;

.field g:Lcom/mobfox/video/sdk/e;

.field h:I

.field i:Ljava/lang/Object;

.field j:Lcom/mobfox/video/sdk/i;

.field k:Ljava/lang/Runnable;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mobfox/video/sdk/b;->a:Lcom/mobfox/video/sdk/b;

    return-void
.end method

.method private constructor <init>(Lcom/mobfox/video/sdk/i;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    new-instance v0, Lcom/mobfox/video/sdk/e;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/e;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    new-instance v0, Lcom/mobfox/video/sdk/e;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/e;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/b;->g:Lcom/mobfox/video/sdk/e;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/b;->i:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/mobfox/video/sdk/b;->h:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->g:Lcom/mobfox/video/sdk/e;

    iput-object v1, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->g:Lcom/mobfox/video/sdk/e;

    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iput-object v1, v0, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iput-object p1, p0, Lcom/mobfox/video/sdk/b;->j:Lcom/mobfox/video/sdk/i;

    return-void
.end method

.method public static a(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/b;
    .registers 7

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/i;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mobfox/video/sdk/b;->a:Lcom/mobfox/video/sdk/b;

    if-nez v1, :cond_df

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8d

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.vAd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :try_start_54
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_e7

    :cond_57
    :goto_57
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long v1, v4, v2

    const-wide/32 v3, 0x1900000

    cmp-long v1, v1, v3

    if-gez v1, :cond_a9

    const/4 v0, 0x0

    :goto_70
    return-object v0

    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/.vAd/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/.vAd/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_a9
    new-instance v1, Lcom/mobfox/video/sdk/b;

    invoke-direct {v1, p0, v0}, Lcom/mobfox/video/sdk/b;-><init>(Lcom/mobfox/video/sdk/i;Ljava/lang/String;)V

    sput-object v1, Lcom/mobfox/video/sdk/b;->a:Lcom/mobfox/video/sdk/b;

    :try_start_b0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "cache.dat"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Lcom/mobfox/video/sdk/b;->a:Lcom/mobfox/video/sdk/b;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, v1, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_da} :catch_e2

    :goto_da
    sget-object v0, Lcom/mobfox/video/sdk/b;->a:Lcom/mobfox/video/sdk/b;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/b;->a()V

    :cond_df
    sget-object v0, Lcom/mobfox/video/sdk/b;->a:Lcom/mobfox/video/sdk/b;

    goto :goto_70

    :catch_e2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_da

    :catch_e7
    move-exception v1

    goto/16 :goto_57
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "cache"

    const-string v3, ".tmp"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_97

    move-result-object v2

    :try_start_10
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_9b

    const/16 v4, 0x2000

    :try_start_24
    new-array v4, v4, [B

    :goto_26
    const/4 v5, 0x0

    const/16 v6, 0x2000

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_5f

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_83
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_68

    :try_start_32
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_83
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_68

    :goto_35
    :try_start_35
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5e

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5e} :catch_9b

    :cond_5e
    :goto_5e
    return-object v0

    :cond_5f
    const/4 v6, 0x0

    :try_start_60
    invoke-virtual {v0, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_83
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_68

    goto :goto_26

    :catch_68
    move-exception v0

    :goto_69
    :try_start_69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_83

    :cond_77
    if-eqz v3, :cond_7c

    :try_start_79
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_8b

    :cond_7c
    :goto_7c
    move-object v0, v1

    goto :goto_5e

    :catch_7e
    move-exception v4

    :try_start_7f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_68

    goto :goto_35

    :catchall_83
    move-exception v0

    move-object v1, v3

    :goto_85
    if-eqz v1, :cond_8a

    :try_start_87
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_90

    :cond_8a
    :goto_8a
    throw v0

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    :catch_90
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    :catchall_95
    move-exception v0

    goto :goto_85

    :catch_97
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_69

    :catch_9b
    move-exception v0

    move-object v3, v1

    goto :goto_69
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_7
    array-length v2, p0

    if-lt v0, v2, :cond_f

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    move v3, v2

    move v2, v1

    :goto_17
    if-ltz v3, :cond_2e

    const/16 v4, 0x9

    if-gt v3, v4, :cond_2e

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_23
    aget-byte v3, p0, v0

    and-int/lit8 v4, v3, 0xf

    add-int/lit8 v3, v2, 0x1

    if-lez v2, :cond_37

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2e
    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_23

    :cond_37
    move v2, v3

    move v3, v4

    goto :goto_17
.end method

.method private a()V
    .registers 8

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move v1, v2

    :goto_13
    array-length v0, v3

    if-lt v1, v0, :cond_17

    :cond_16
    return-void

    :cond_17
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "cache.dat"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, ".nomedia"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_47

    move v0, v2

    :goto_3e
    if-nez v0, :cond_43

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_47
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/e;

    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_3e
.end method

.method private a(Lcom/mobfox/video/sdk/e;)V
    .registers 6

    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v2, p1, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iput-object v2, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iget-object v0, p1, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iget-object v2, p1, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iput-object v2, v0, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;JLjava/io/InputStream;)Z
    .registers 14

    const-wide v1, 0x7fffffffffffffffL

    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/e;

    if-eqz v0, :cond_33

    invoke-direct {p0, p4}, Lcom/mobfox/video/sdk/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_31

    iput-object v5, v0, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    cmp-long v4, p2, v7

    if-lez v4, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/mobfox/video/sdk/e;->c:J

    :goto_26
    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/b;->b(Lcom/mobfox/video/sdk/e;)V

    invoke-direct {p0}, Lcom/mobfox/video/sdk/b;->b()V

    move v0, v3

    :goto_2d
    return v0

    :cond_2e
    iput-wide v1, v0, Lcom/mobfox/video/sdk/e;->c:J

    goto :goto_26

    :cond_31
    move v0, v4

    goto :goto_2d

    :cond_33
    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v5, p0, Lcom/mobfox/video/sdk/b;->h:I

    if-lt v0, v5, :cond_4b

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->g:Lcom/mobfox/video/sdk/e;

    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v5, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    iget-object v6, v0, Lcom/mobfox/video/sdk/e;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/b;->a(Lcom/mobfox/video/sdk/e;)V

    :cond_4b
    cmp-long v0, p2, v7

    if-lez v0, :cond_81

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    :goto_54
    invoke-direct {p0, p4}, Lcom/mobfox/video/sdk/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    new-instance v4, Lcom/mobfox/video/sdk/e;

    invoke-direct {v4, p1, v2, v0, v1}, Lcom/mobfox/video/sdk/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_62
    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iput-object v0, v4, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iput-object v0, v4, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iput-object v4, v0, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iput-object v4, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_83

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mobfox/video/sdk/b;->b()V

    move v0, v3

    goto :goto_2d

    :cond_81
    move-wide v0, v1

    goto :goto_54

    :catchall_83
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_86
    move v0, v4

    goto :goto_2d
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/e;

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/mobfox/video/sdk/e;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_43

    :cond_37
    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/mobfox/video/sdk/e;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/b;->a(Lcom/mobfox/video/sdk/e;)V

    move-object v0, v1

    goto :goto_c

    :cond_43
    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iget-object v1, v1, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    if-eq v0, v1, :cond_4c

    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/b;->b(Lcom/mobfox/video/sdk/e;)V

    :cond_4c
    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    goto :goto_c
.end method

.method private b()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "cache.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method private b(Lcom/mobfox/video/sdk/e;)V
    .registers 5

    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v2, p1, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iput-object v2, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iget-object v0, p1, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iget-object v2, p1, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iput-object v2, v0, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iput-object v0, p1, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iput-object v0, p1, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    iput-object p1, v0, Lcom/mobfox/video/sdk/e;->d:Lcom/mobfox/video/sdk/e;

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iput-object p1, v0, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/e;

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/mobfox/video/sdk/e;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_43

    :cond_37
    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/mobfox/video/sdk/e;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/b;->a(Lcom/mobfox/video/sdk/e;)V

    move-object v0, v1

    goto :goto_c

    :cond_43
    iget-object v1, p0, Lcom/mobfox/video/sdk/b;->f:Lcom/mobfox/video/sdk/e;

    iget-object v1, v1, Lcom/mobfox/video/sdk/e;->e:Lcom/mobfox/video/sdk/e;

    if-eq v0, v1, :cond_4c

    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/b;->b(Lcom/mobfox/video/sdk/e;)V

    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/mobfox/video/sdk/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public final a(Lcom/mobfox/video/sdk/cf;)V
    .registers 4

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/b;->d:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/b;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobfox/video/sdk/c;

    invoke-direct {v1, p0, p1}, Lcom/mobfox/video/sdk/c;-><init>(Lcom/mobfox/video/sdk/b;Lcom/mobfox/video/sdk/cf;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/mobfox/video/sdk/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/e;

    if-eqz v0, :cond_24

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p3

    iput-wide v1, v0, Lcom/mobfox/video/sdk/e;->c:J

    :goto_1e
    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/b;->b(Lcom/mobfox/video/sdk/e;)V

    invoke-direct {p0}, Lcom/mobfox/video/sdk/b;->b()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lcom/mobfox/video/sdk/e;->c:J

    goto :goto_1e

    :cond_2d
    :try_start_2d
    const-string v0, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Try to download video from Url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    const-string v3, "Accept-Language"

    const-string v4, "en"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    const-string v3, "Cookie"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3, p1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const-string v3, "MOBFOX"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b6

    const-string v3, "MOBFOX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Using User-Agent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_ff

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-string v4, "MOBFOX"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_df

    const-string v4, "MOBFOX"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Download video file. Connection OK. Length:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_e6
    .catchall {:try_start_2d .. :try_end_e6} :catchall_13c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_e6} :catch_111

    move-result-object v0

    :try_start_e7
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/mobfox/video/sdk/b;->a(Ljava/lang/String;JLjava/io/InputStream;)Z
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_151
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_158

    :goto_ea
    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v2, :cond_f5

    iget-object v2, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    iput-object v1, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    :cond_f5
    if-eqz v0, :cond_24

    :try_start_f7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_fc

    goto/16 :goto_24

    :catch_fc
    move-exception v0

    goto/16 :goto_24

    :cond_ff
    :try_start_ff
    const-string v0, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15d

    const-string v0, "MOBFOX"

    const-string v2, "Server error downloading video file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_ff .. :try_end_10f} :catchall_13c
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10f} :catch_111

    move-object v0, v1

    goto :goto_ea

    :catch_111
    move-exception v0

    move-object v2, v1

    :goto_113
    :try_start_113
    const-string v3, "MOBFOX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception conecting to server to download video file"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catchall {:try_start_113 .. :try_end_127} :catchall_156

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    iput-object v1, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    :cond_132
    if-eqz v2, :cond_24

    :try_start_134
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_139

    goto/16 :goto_24

    :catch_139
    move-exception v0

    goto/16 :goto_24

    :catchall_13c
    move-exception v0

    move-object v2, v1

    :goto_13e
    iget-object v3, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v3, :cond_149

    iget-object v3, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    iput-object v1, p0, Lcom/mobfox/video/sdk/b;->c:Lorg/apache/http/client/methods/HttpGet;

    :cond_149
    if-eqz v2, :cond_14e

    :try_start_14b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_14f

    :cond_14e
    :goto_14e
    throw v0

    :catch_14f
    move-exception v1

    goto :goto_14e

    :catchall_151
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_13e

    :catchall_156
    move-exception v0

    goto :goto_13e

    :catch_158
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_113

    :cond_15d
    move-object v0, v1

    goto :goto_ea
.end method
