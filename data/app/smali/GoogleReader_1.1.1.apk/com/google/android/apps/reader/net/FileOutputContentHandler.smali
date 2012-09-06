.class public final Lcom/google/android/apps/reader/net/FileOutputContentHandler;
.super Ljava/net/ContentHandler;
.source "FileOutputContentHandler.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 41
    if-nez p1, :cond_b

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    .line 45
    return-void
.end method

.method private createTempFile()Ljava/io/File;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v5, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, prefix:Ljava/lang/String;
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_21

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 53
    :cond_21
    const/4 v3, 0x0

    .line 54
    .local v3, suffix:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_57

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_57

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, path:Ljava/lang/String;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create parent directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    .end local v1           #path:Ljava/lang/String;
    :cond_57
    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 66
    .local v4, temp:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 67
    return-object v4
.end method


# virtual methods
.method public bridge synthetic getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Void;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->createTempFile()Ljava/io/File;

    move-result-object v0

    .line 75
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_80

    move-result-object v1

    .line 77
    :try_start_9
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_7b

    .line 79
    const/16 v3, 0x1000

    :try_start_10
    new-array v3, v3, [B

    .line 80
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_16
    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    .line 81
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 80
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_16

    .line 83
    :cond_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_76

    .line 86
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_7b

    .line 89
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_80

    .line 91
    const/4 v1, 0x1

    .line 92
    const/4 v2, 0x0

    .line 94
    if-eqz v1, :cond_c3

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :catchall_76
    move-exception v3

    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7b

    .line 89
    :catchall_7b
    move-exception v2

    :try_start_7c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_80

    .line 94
    :catchall_80
    move-exception v1

    if-eqz v6, :cond_c7

    .line 95
    iget-object v2, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 96
    iget-object v2, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_c3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_c6
    return-object v2

    :cond_c7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_ca
    throw v1
.end method
