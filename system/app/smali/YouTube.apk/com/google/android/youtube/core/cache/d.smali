.class public final Lcom/google/android/youtube/core/cache/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private final d:Ljava/io/FilenameFilter;

.field private final e:Landroid/os/ConditionVariable;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "cachePath may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 67
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/d;->a:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/d;->e:Landroid/os/ConditionVariable;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    const-string v0, "ext may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/d;->b:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/google/android/youtube/core/cache/e;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/core/cache/e;-><init>(Lcom/google/android/youtube/core/cache/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/d;->d:Ljava/io/FilenameFilter;

    .line 76
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/android/youtube/core/cache/d;->f:Z

    const-string v1, "init() must be called before calling to this method"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/d;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 272
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/cache/d;)V
    .registers 7
    .parameter

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/d;->d:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_23

    array-length v2, v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/google/android/youtube/core/cache/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_23
    return-void
.end method

.method private a(Ljava/io/FileOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 231
    if-nez p1, :cond_3

    .line 242
    :goto_2
    return-void

    .line 235
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_13

    .line 241
    invoke-static {p1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    goto :goto_2

    :catch_e
    move-exception v0

    invoke-static {p1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    goto :goto_2

    :catch_13
    move-exception v0

    invoke-static {p1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_18
    move-exception v0

    invoke-static {p1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    if-nez p0, :cond_3

    .line 265
    :goto_2
    return-void

    .line 261
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 265
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/io/OutputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    if-nez p0, :cond_3

    .line 254
    :goto_2
    return-void

    .line 250
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 254
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/google/android/youtube/core/cache/d;)Landroid/os/ConditionVariable;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/d;->e:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/io/Serializable;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/d;->a()V

    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/d;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 152
    :goto_15
    return-object v1

    .line 133
    :cond_16
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/youtube/core/cache/d;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_1d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_3f

    .line 140
    :try_start_22
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v0, 0x2000

    invoke-direct {v3, v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_8a

    .line 141
    :try_start_29
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_8f

    .line 142
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_34} :catch_94

    .line 148
    invoke-static {v4}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    .line 149
    invoke-static {v3}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    .line 150
    invoke-static {v2}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    :goto_3d
    move-object v1, v0

    .line 152
    goto :goto_15

    .line 145
    :catch_3f
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    :goto_43
    :try_start_43
    iget-object v4, p0, Lcom/google/android/youtube/core/cache/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error opening cache file (maybe removed). [filename="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_85

    .line 148
    invoke-static {v3}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    .line 149
    invoke-static {v2}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    .line 150
    invoke-static {v0}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 151
    goto :goto_3d

    .line 148
    :catchall_6b
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_6e
    invoke-static {v3}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    .line 149
    invoke-static {v2}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    .line 150
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/InputStream;)V

    throw v0

    .line 148
    :catchall_78
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto :goto_6e

    :catchall_7c
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_6e

    :catchall_80
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_6e

    :catchall_85
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_6e

    .line 145
    :catch_8a
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v4

    goto :goto_43

    :catch_8f
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_43

    :catch_94
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_43
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/d;
    .registers 3
    .parameter

    .prologue
    .line 105
    const-string v0, "executor may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/cache/d;->f:Z

    .line 107
    new-instance v0, Lcom/google/android/youtube/core/cache/f;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/cache/f;-><init>(Lcom/google/android/youtube/core/cache/d;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/d;->b(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/utils/o;)V
    .registers 6
    .parameter

    .prologue
    .line 204
    const-string v0, "predicate may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 206
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/d;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/core/cache/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/d;->d:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2b

    array-length v2, v1

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v2, :cond_2b

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 207
    :cond_2b
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    check-cast p2, Ljava/io/Serializable;

    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "element may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/d;->a()V

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/d;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/youtube/core/cache/d;->a:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_67
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_43
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_55

    :try_start_20
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v3, v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_74
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_27} :catch_89
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_81

    :try_start_27
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_77
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_84

    :try_start_2c
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    iget-object v2, p0, Lcom/google/android/youtube/core/cache/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_79
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_39} :catch_92
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_86

    invoke-direct {p0, v4}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/FileOutputStream;)V

    invoke-static {v3}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    :goto_42
    return-void

    :catch_43
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_46
    :try_start_46
    const-string v4, "Error creating cache file."

    invoke-static {v4, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_7c

    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/FileOutputStream;)V

    invoke-static {v2}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    goto :goto_42

    :catch_55
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_58
    :try_start_58
    const-string v1, "Error creating cache file."

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_77

    invoke-direct {p0, v4}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/FileOutputStream;)V

    invoke-static {v3}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    goto :goto_42

    :catchall_67
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_6a
    invoke-direct {p0, v4}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/FileOutputStream;)V

    invoke-static {v3}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_74
    move-exception v0

    move-object v3, v2

    goto :goto_6a

    :catchall_77
    move-exception v0

    goto :goto_6a

    :catchall_79
    move-exception v0

    move-object v2, v1

    goto :goto_6a

    :catchall_7c
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_6a

    :catch_81
    move-exception v0

    move-object v3, v2

    goto :goto_58

    :catch_84
    move-exception v0

    goto :goto_58

    :catch_86
    move-exception v0

    move-object v2, v1

    goto :goto_58

    :catch_89
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_46

    :catch_8d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_46

    :catch_92
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_46
.end method
