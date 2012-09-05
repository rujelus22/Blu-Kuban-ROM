.class public abstract Lcom/google/android/youtube/videos/store/AbstractFileStore;
.super Ljava/lang/Object;
.source "AbstractFileStore.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TK;TE;>;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TK;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeIfOpen(Ljava/io/InputStream;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 157
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    if-nez p1, :cond_3

    .line 165
    :goto_2
    return-void

    .line 161
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 162
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private closeIfOpen(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 146
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    if-nez p1, :cond_3

    .line 154
    :goto_2
    return-void

    .line 150
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 151
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const-string v10, "key may not be null"

    invoke-static {p1, v10}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->generateFilename(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, filename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_16

    .line 67
    const/4 v3, 0x0

    .line 88
    :goto_15
    return-object v3

    .line 69
    :cond_16
    const/4 v6, 0x0

    .line 70
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 71
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 72
    .local v8, ois:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 74
    .local v3, element:Ljava/lang/Object;,"TE;"
    :try_start_1a
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_3a

    .line 75
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1f
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_7b

    .line 76
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_24
    new-instance v9, Ljava/io/ObjectInputStream;

    invoke-direct {v9, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_7e

    .line 77
    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .local v9, ois:Ljava/io/ObjectInputStream;
    :try_start_29
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_82

    move-result-object v3

    .line 83
    invoke-direct {p0, v9}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    .line 84
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    .line 85
    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    move-object v8, v9

    .end local v9           #ois:Ljava/io/ObjectInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 86
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_15

    .line 78
    :catch_3a
    move-exception v2

    .line 80
    .local v2, e:Ljava/lang/Exception;
    :goto_3b
    :try_start_3b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error opening cache file (maybe removed). [filename="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_64

    .line 83
    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    .line 85
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    goto :goto_15

    .line 83
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_64
    move-exception v10

    :goto_65
    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    .line 85
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/InputStream;)V

    throw v10

    .line 83
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_6f
    move-exception v10

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_65

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_72
    move-exception v10

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_65

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #ois:Ljava/io/ObjectInputStream;
    :catchall_76
    move-exception v10

    move-object v8, v9

    .end local v9           #ois:Ljava/io/ObjectInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_65

    .line 78
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_7b
    move-exception v2

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3b

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_7e
    move-exception v2

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3b

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #ois:Ljava/io/ObjectInputStream;
    :catch_82
    move-exception v2

    move-object v8, v9

    .end local v9           #ois:Ljava/io/ObjectInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3b
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    const-string v9, "key may not be null"

    invoke-static {p1, v9}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v9, "element may not be null"

    invoke-static {p1, v9}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->generateFilename(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 98
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 99
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 101
    .local v7, oos:Ljava/io/ObjectOutputStream;
    :try_start_16
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_58
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_38
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_48

    .line 102
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_1b
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_63
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_7b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_6f

    .line 103
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_20
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_66
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_25} :catch_7e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_72

    .line 104
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .local v8, oos:Ljava/io/ObjectOutputStream;
    :try_start_25
    invoke-virtual {v8, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2b} :catch_82
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_76

    .line 113
    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 114
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 115
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 117
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_37
    return-void

    .line 106
    :catch_38
    move-exception v2

    .line 108
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_39
    :try_start_39
    const-string v9, "Error creating cache file."

    invoke-static {v9, v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_58

    .line 113
    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 115
    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    goto :goto_37

    .line 109
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_48
    move-exception v2

    .line 111
    .local v2, e:Ljava/io/IOException;
    :goto_49
    :try_start_49
    const-string v9, "Error creating cache file."

    invoke-static {v9, v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_58

    .line 113
    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 115
    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    goto :goto_37

    .line 113
    .end local v2           #e:Ljava/io/IOException;
    :catchall_58
    move-exception v9

    :goto_59
    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 115
    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    throw v9

    .line 113
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_63
    move-exception v9

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_59

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_66
    move-exception v9

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_59

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catchall_6a
    move-exception v9

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_59

    .line 109
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_6f
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_49

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_72
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_49

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catch_76
    move-exception v2

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_49

    .line 106
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_7b
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_39

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_7e
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_39

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catch_82
    move-exception v2

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_39
.end method

.method private remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const-string v3, "key may not be null"

    invoke-static {p1, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, element:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_17

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->generateFilename(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 127
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :cond_17
    return-object v0
.end method

.method private syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 131
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    if-nez p1, :cond_3

    .line 143
    :goto_2
    return-void

    .line 135
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_13

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 136
    :catch_e
    move-exception v0

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 138
    :catch_13
    move-exception v0

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_18
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->closeIfOpen(Ljava/io/OutputStream;)V

    throw v0
.end method


# virtual methods
.method protected abstract generateFilename(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    if-eqz p2, :cond_6

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :goto_5
    return-void

    .line 53
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TK;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/android/youtube/videos/store/AbstractFileStore;,"Lcom/google/android/youtube/videos/store/AbstractFileStore<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TK;TE;>;"
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, element:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_a

    .line 43
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :goto_9
    return-void

    .line 45
    :cond_a
    new-instance v1, Lcom/google/android/youtube/core/async/NotFoundException;

    invoke-direct {v1}, Lcom/google/android/youtube/core/async/NotFoundException;-><init>()V

    invoke-interface {p2, p1, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_9
.end method
