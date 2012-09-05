.class Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 6
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 81
    .local v0, exists:Z
    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 82
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2e
    if-eqz v0, :cond_60

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-nez v1, :cond_53

    .line 96
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_53
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 108
    :goto_5d
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 109
    return-void

    .line 102
    :cond_60
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_85

    .line 103
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_85
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    goto :goto_5d
.end method

.method private delete(Ljava/io/File;)V
    .registers 4
    .parameter "file"

    .prologue
    .line 290
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_27

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :cond_27
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 294
    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 123
    if-nez p0, :cond_a

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFiles()V
    .registers 11

    .prologue
    .line 260
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 261
    .local v4, initialFiles:[Ljava/lang/String;
    if-eqz v4, :cond_4f

    .line 262
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 266
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 267
    .local v2, diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v5, :cond_28

    aget-object v6, v0, v3

    .line 269
    .local v6, name:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 270
    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v8, v9, v6}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 274
    .end local v6           #name:Ljava/lang/String;
    :cond_28
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 277
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v7

    .line 278
    .local v7, newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    .line 279
    .local v1, cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    iget-object v8, v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 281
    .end local v1           #cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    :cond_48
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 283
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 286
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    .end local v7           #newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_4f
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "host"
    .parameter "file"
    .parameter "t"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading session data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "host"
    .parameter "file"
    .parameter "t"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing session data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    return-void
.end method

.method private makeRoom()V
    .registers 5

    .prologue
    .line 240
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    const/16 v3, 0xc

    if-gt v2, v3, :cond_7

    .line 253
    :goto_6
    return-void

    .line 244
    :cond_7
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->indexFiles()V

    .line 247
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v1, v2, -0xc

    .line 248
    .local v1, removals:I
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 252
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_18

    goto :goto_6
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .registers 12
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v6, 0x0

    .line 136
    monitor-enter p0

    :try_start_2
    invoke-static {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, name:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 139
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_2d

    .line 141
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_45

    if-nez v7, :cond_17

    move-object v0, v6

    .line 173
    :goto_15
    monitor-exit p0

    return-object v0

    .line 147
    :cond_17
    :try_start_17
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_21

    move-object v0, v6

    .line 149
    goto :goto_15

    .line 153
    :cond_21
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v2, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .restart local v2       #file:Ljava/io/File;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_45

    .line 159
    :cond_2d
    :try_start_2d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_45
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_48

    .line 165
    .local v3, in:Ljava/io/FileInputStream;
    :try_start_32
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v5, v7

    .line 166
    .local v5, size:I
    new-array v0, v5, [B

    .line 167
    .local v0, data:[B
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_57
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_41} :catch_4e

    .line 173
    :try_start_41
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_15

    .line 136
    .end local v0           #data:[B
    .end local v2           #file:Ljava/io/File;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #size:I
    :catchall_45
    move-exception v6

    monitor-exit p0

    throw v6

    .line 160
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #name:Ljava/lang/String;
    :catch_48
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_49
    invoke-static {p1, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_45

    move-object v0, v6

    .line 162
    goto :goto_15

    .line 169
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :catch_4e
    move-exception v1

    .line 170
    .local v1, e:Ljava/io/IOException;
    :try_start_4f
    invoke-static {p1, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    .line 173
    :try_start_52
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v6

    goto :goto_15

    .end local v1           #e:Ljava/io/IOException;
    :catchall_57
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_45
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 13
    .parameter "session"
    .parameter "sessionData"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, host:Ljava/lang/String;
    if-nez p2, :cond_12

    .line 185
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "sessionData"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 183
    .end local v4           #host:Ljava/lang/String;
    :catchall_f
    move-exception v8

    monitor-exit p0

    throw v8

    .line 188
    .restart local v4       #host:Ljava/lang/String;
    :cond_12
    :try_start_12
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v8

    invoke-static {v4, v8}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, name:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_f

    move-result v2

    .line 196
    .local v2, existedBefore:Z
    :try_start_25
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_48

    .line 204
    .local v6, out:Ljava/io/FileOutputStream;
    if-nez v2, :cond_35

    .line 205
    :try_start_2c
    iget v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 208
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_f

    .line 211
    :cond_35
    const/4 v7, 0x0

    .line 213
    .local v7, writeSuccessful:Z
    :try_start_36
    invoke-virtual {v6, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_ac
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_74

    .line 214
    const/4 v7, 0x1

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, closeSuccessful:Z
    :try_start_3b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_65
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_53

    .line 221
    const/4 v0, 0x1

    .line 225
    if-eqz v7, :cond_43

    if-nez v0, :cond_4d

    .line 227
    :cond_43
    :try_start_43
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_f

    .line 234
    .end local v0           #closeSuccessful:Z
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v7           #writeSuccessful:Z
    :goto_46
    monitor-exit p0

    return-void

    .line 197
    :catch_48
    move-exception v1

    .line 199
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_49
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 230
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #closeSuccessful:Z
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #writeSuccessful:Z
    :cond_4d
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_f

    goto :goto_46

    .line 222
    :catch_53
    move-exception v1

    .line 223
    .local v1, e:Ljava/io/IOException;
    :try_start_54
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_65

    .line 225
    if-eqz v7, :cond_5b

    if-nez v0, :cond_5f

    .line 227
    :cond_5b
    :try_start_5b
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_46

    .line 230
    :cond_5f
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 225
    .end local v1           #e:Ljava/io/IOException;
    :catchall_65
    move-exception v8

    if-eqz v7, :cond_6a

    if-nez v0, :cond_6e

    .line 227
    :cond_6a
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 230
    :goto_6d
    throw v8

    :cond_6e
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_f

    goto :goto_6d

    .line 215
    .end local v0           #closeSuccessful:Z
    :catch_74
    move-exception v1

    .line 216
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_75
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_ac

    .line 218
    const/4 v0, 0x0

    .line 220
    .restart local v0       #closeSuccessful:Z
    :try_start_79
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_8b

    .line 221
    const/4 v0, 0x1

    .line 225
    if-eqz v7, :cond_81

    if-nez v0, :cond_85

    .line 227
    :cond_81
    :try_start_81
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_46

    .line 230
    :cond_85
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_f

    goto :goto_46

    .line 222
    :catch_8b
    move-exception v1

    .line 223
    :try_start_8c
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_9d

    .line 225
    if-eqz v7, :cond_93

    if-nez v0, :cond_97

    .line 227
    :cond_93
    :try_start_93
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_46

    .line 230
    :cond_97
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 225
    :catchall_9d
    move-exception v8

    if-eqz v7, :cond_a2

    if-nez v0, :cond_a6

    .line 227
    :cond_a2
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 230
    :goto_a5
    throw v8

    :cond_a6
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catchall {:try_start_93 .. :try_end_ab} :catchall_f

    goto :goto_a5

    .line 218
    .end local v0           #closeSuccessful:Z
    .end local v1           #e:Ljava/io/IOException;
    :catchall_ac
    move-exception v8

    const/4 v0, 0x0

    .line 220
    .restart local v0       #closeSuccessful:Z
    :try_start_ae
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_c0

    .line 221
    const/4 v0, 0x1

    .line 225
    if-eqz v7, :cond_b6

    if-nez v0, :cond_ba

    .line 227
    :cond_b6
    :try_start_b6
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 233
    :goto_b9
    throw v8

    .line 230
    :cond_ba
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_f

    goto :goto_b9

    .line 222
    :catch_c0
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_c1
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_d2

    .line 225
    if-eqz v7, :cond_c8

    if-nez v0, :cond_cc

    .line 227
    :cond_c8
    :try_start_c8
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_b9

    .line 230
    :cond_cc
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    .line 225
    .end local v1           #e:Ljava/io/IOException;
    :catchall_d2
    move-exception v8

    if-eqz v7, :cond_d7

    if-nez v0, :cond_db

    .line 227
    :cond_d7
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 230
    :goto_da
    throw v8

    :cond_db
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e0
    .catchall {:try_start_c8 .. :try_end_e0} :catchall_f

    goto :goto_da
.end method
