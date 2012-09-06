.class public final Lcom/google/android/music/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;J)V
    .registers 13
    .parameter "from"
    .parameter "to"
    .parameter "maxLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, in:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 27
    .local v5, out:Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 29
    .local v6, success:Z
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 32
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_35

    .line 33
    const/4 v6, 0x1

    .line 36
    if-nez v6, :cond_31

    move v1, v7

    :goto_28
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 37
    if-nez v6, :cond_33

    :goto_2d
    invoke-static {v5, v7}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 39
    return-void

    :cond_31
    move v1, v8

    .line 36
    goto :goto_28

    :cond_33
    move v7, v8

    .line 37
    goto :goto_2d

    .line 36
    :catchall_35
    move-exception v1

    move-object v2, v1

    if-nez v6, :cond_43

    move v1, v7

    :goto_3a
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 37
    if-nez v6, :cond_45

    :goto_3f
    invoke-static {v5, v7}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2

    :cond_43
    move v1, v8

    .line 36
    goto :goto_3a

    :cond_45
    move v7, v8

    .line 37
    goto :goto_3f
.end method

.method public static getSafeFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "filenameCandidate"
    .parameter "extension"

    .prologue
    const/4 v3, 0x0

    .line 43
    const-string v1, "?\"<>*/\\[]:+|="

    invoke-static {v1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, p0, v2}, Lcom/google/android/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, filename:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 48
    :cond_21
    const/16 v1, 0x1f

    invoke-static {v0, v1, v3}, Lcom/google/android/common/base/StringUtil;->truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_27
    return-object v0

    .line 51
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    invoke-static {v0, v1, v3}, Lcom/google/android/common/base/StringUtil;->truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method public static readSmallStream(Ljava/io/InputStream;I)[B
    .registers 13
    .parameter "in"
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x2000

    :try_start_4
    new-array v0, v7, [B

    .line 73
    .local v0, buffer:[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_58

    .line 74
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 75
    .local v1, copied:I
    const/4 v4, 0x0

    .line 76
    .local v4, reachedEos:Z
    :goto_d
    if-gt v1, p1, :cond_29

    if-nez v4, :cond_29

    .line 78
    :try_start_11
    array-length v7, v0

    sub-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 79
    .local v6, toRead:I
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 80
    .local v5, read:I
    if-gez v5, :cond_23

    .line 81
    const/4 v4, 0x1

    goto :goto_d

    .line 83
    :cond_23
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 84
    add-int/2addr v1, v5

    goto :goto_d

    .line 87
    .end local v5           #read:I
    .end local v6           #toRead:I
    :cond_29
    if-eqz v4, :cond_36

    .line 88
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_4f

    move-result-object v7

    .line 93
    invoke-static {p0, v10}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 94
    invoke-static {v3, v10}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v7

    .line 90
    :cond_36
    :try_start_36
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stream is too large to cache. Exceeds "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_4f

    .line 93
    :catchall_4f
    move-exception v7

    move-object v2, v3

    .end local v0           #buffer:[B
    .end local v1           #copied:I
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #reachedEos:Z
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    :goto_51
    invoke-static {p0, v10}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 94
    invoke-static {v2, v10}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7

    .line 93
    :catchall_58
    move-exception v7

    goto :goto_51
.end method
