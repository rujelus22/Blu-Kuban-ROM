.class public final Lcom/google/android/music/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
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

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, in:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 25
    .local v5, out:Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 27
    .local v6, success:Z
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 30
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_35

    .line 31
    const/4 v6, 0x1

    .line 34
    if-nez v6, :cond_31

    move v1, v7

    :goto_28
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 35
    if-nez v6, :cond_33

    :goto_2d
    invoke-static {v5, v7}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 37
    return-void

    :cond_31
    move v1, v8

    .line 34
    goto :goto_28

    :cond_33
    move v7, v8

    .line 35
    goto :goto_2d

    .line 34
    :catchall_35
    move-exception v1

    move-object v2, v1

    if-nez v6, :cond_43

    move v1, v7

    :goto_3a
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 35
    if-nez v6, :cond_45

    :goto_3f
    invoke-static {v5, v7}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2

    :cond_43
    move v1, v8

    .line 34
    goto :goto_3a

    :cond_45
    move v7, v8

    .line 35
    goto :goto_3f
.end method

.method public static getSafeFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "filenameCandidate"
    .parameter "extension"

    .prologue
    const/4 v3, 0x0

    .line 41
    const-string v1, "?\"<>*/\\[]:+|="

    invoke-static {v1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, p0, v2}, Lcom/google/android/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 44
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

    .line 46
    :cond_21
    const/16 v1, 0x1f

    invoke-static {v0, v1, v3}, Lcom/google/android/common/base/StringUtil;->truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_27
    return-object v0

    .line 49
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    invoke-static {v0, v1, v3}, Lcom/google/android/common/base/StringUtil;->truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 51
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
