.class public final Lcom/google/android/feeds/core/content/TimestampedContentHandler;
.super Ljava/net/ContentHandler;
.source "TimestampedContentHandler.java"


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mFile:Ljava/io/File;

.field private final mOutput:Ljava/lang/Object;


# direct methods
.method private isStale(Ljava/net/URLConnection;)Z
    .registers 16
    .parameter "connection"

    .prologue
    .line 88
    iget-object v5, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mFile:Ljava/io/File;

    .line 89
    .local v5, file:Ljava/io/File;
    const-string v10, "cache-control"

    invoke-virtual {p1, v10}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_65

    const-string v10, "max-age="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_65

    .line 92
    :try_start_12
    const-string v10, "max-age="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 93
    .local v8, start:I
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 94
    .local v6, maxAge:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_28

    .line 95
    const/4 v10, 0x1

    .line 116
    .end local v6           #maxAge:J
    .end local v8           #start:I
    :goto_27
    return v10

    .line 97
    .restart local v6       #maxAge:J
    .restart local v8       #start:I
    :cond_28
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_30

    .line 100
    const/4 v10, 0x1

    goto :goto_27

    .line 102
    :cond_30
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_38

    .line 105
    const/4 v10, 0x1

    goto :goto_27

    .line 107
    :cond_38
    invoke-static {}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->now()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long v0, v10, v12

    .line 108
    .local v0, ageInMillis:J
    const-wide/16 v10, 0x3e8

    div-long v2, v0, v10
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_46} :catch_4c

    .line 109
    .local v2, ageInSeconds:J
    cmp-long v10, v2, v6

    if-lez v10, :cond_65

    .line 110
    const/4 v10, 0x1

    goto :goto_27

    .line 112
    .end local v0           #ageInMillis:J
    .end local v2           #ageInSeconds:J
    .end local v6           #maxAge:J
    .end local v8           #start:I
    :catch_4c
    move-exception v4

    .line 113
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v10, "TimestampedContentHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse Cache-Control: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_65
    const/4 v10, 0x0

    goto :goto_27
.end method

.method private static now()J
    .registers 2

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateTimestamp(J)V
    .registers 10
    .parameter "time"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mFile:Ljava/io/File;

    .line 121
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 122
    .local v2, parent:Ljava/io/File;
    if-eqz v2, :cond_5a

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_31

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create parent directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v3           #path:Ljava/lang/String;
    :cond_30
    :goto_30
    return-void

    .line 128
    :cond_31
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parent is not a directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 134
    .end local v3           #path:Ljava/lang/String;
    :cond_5a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destination file is a directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 141
    .end local v3           #path:Ljava/lang/String;
    :cond_83
    :try_start_83
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_c8

    .line 149
    invoke-virtual {v1, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result v4

    if-nez v4, :cond_30

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to set timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_30

    .line 155
    const-string v4, "TimestampedContentHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 142
    .end local v3           #path:Ljava/lang/String;
    :catch_c8
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3       #path:Ljava/lang/String;
    const-string v4, "TimestampedContentHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->isStale(Ljava/net/URLConnection;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 166
    invoke-static {}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->now()J

    move-result-wide v1

    .line 168
    .local v1, time:J
    iget-object v3, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v3, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, content:Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->updateTimestamp(J)V

    .line 175
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #time:J
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/feeds/core/content/TimestampedContentHandler;->mOutput:Ljava/lang/Object;

    goto :goto_13
.end method
