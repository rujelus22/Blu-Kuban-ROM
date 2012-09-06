.class Lcom/google/android/picasastore/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# instance fields
.field private mFilepath:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filepath"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    .line 24
    iput-object p1, p0, Lcom/google/android/picasastore/VersionInfo;->mFilepath:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/google/android/picasastore/VersionInfo;->loadVersions()V

    .line 26
    return-void
.end method

.method private loadVersions()V
    .registers 7

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/picasastore/VersionInfo;->mFilepath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 45
    :goto_d
    return-void

    .line 32
    :cond_e
    :try_start_e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_2a

    .line 34
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, line:Ljava/lang/String;
    :goto_1c
    if-eqz v1, :cond_26

    .line 36
    invoke-direct {p0, v1}, Lcom/google/android/picasastore/VersionInfo;->parseLine(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_33

    move-result-object v1

    goto :goto_1c

    .line 40
    :cond_26
    :try_start_26
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_d

    .line 42
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :catch_2a
    move-exception v3

    .line 43
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "VersionInfo"

    const-string v5, "cannot load version"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 40
    .end local v3           #t:Ljava/lang/Throwable;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_33
    move-exception v4

    :try_start_34
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_38} :catch_2a
.end method

.method private parseLine(Ljava/lang/String;)V
    .registers 10
    .parameter "line"

    .prologue
    .line 48
    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 49
    .local v1, pos:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_a

    .line 58
    :goto_9
    return-void

    .line 50
    :cond_a
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, key:Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, value:Ljava/lang/String;
    :try_start_1d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 54
    .local v4, version:I
    iget-object v5, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_9

    .line 55
    .end local v4           #version:I
    :catch_2b
    move-exception v2

    .line 56
    .local v2, t:Ljava/lang/Throwable;
    const-string v5, "VersionInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail parse line:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b
.end method

.method public setVersion(Ljava/lang/String;I)V
    .registers 5
    .parameter "key"
    .parameter "version"

    .prologue
    .line 66
    if-eqz p2, :cond_10

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void

    .line 66
    :cond_10
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public sync()V
    .registers 10

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, writer:Ljava/io/PrintWriter;
    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/android/picasastore/VersionInfo;->mFilepath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_57

    .line 74
    .end local v3           #writer:Ljava/io/PrintWriter;
    .local v4, writer:Ljava/io/PrintWriter;
    :try_start_d
    iget-object v5, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v5, "%s = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 76
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_54
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_3c} :catch_3d

    goto :goto_17

    .line 78
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_3d
    move-exception v2

    move-object v3, v4

    .line 79
    .end local v4           #writer:Ljava/io/PrintWriter;
    .local v2, t:Ljava/lang/Throwable;
    .restart local v3       #writer:Ljava/io/PrintWriter;
    :goto_3f
    :try_start_3f
    const-string v5, "VersionInfo"

    const-string v6, "sync file fail"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4f

    .line 81
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 83
    .end local v2           #t:Ljava/lang/Throwable;
    :goto_49
    return-void

    .line 81
    .end local v3           #writer:Ljava/io/PrintWriter;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #writer:Ljava/io/PrintWriter;
    :cond_4a
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 82
    .end local v4           #writer:Ljava/io/PrintWriter;
    .restart local v3       #writer:Ljava/io/PrintWriter;
    goto :goto_49

    .line 81
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_4f
    move-exception v5

    :goto_50
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v3           #writer:Ljava/io/PrintWriter;
    .restart local v4       #writer:Ljava/io/PrintWriter;
    :catchall_54
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/PrintWriter;
    .restart local v3       #writer:Ljava/io/PrintWriter;
    goto :goto_50

    .line 78
    :catch_57
    move-exception v2

    goto :goto_3f
.end method
