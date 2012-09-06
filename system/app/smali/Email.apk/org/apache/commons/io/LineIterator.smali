.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 156
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public hasNext()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 102
    :goto_6
    return v2

    .line 91
    :cond_7
    iget-boolean v4, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    if-eqz v4, :cond_d

    move v2, v3

    .line 92
    goto :goto_6

    .line 96
    :cond_d
    :try_start_d
    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    move v2, v3

    .line 99
    goto :goto_6

    .line 100
    :cond_1a
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 101
    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_6

    .line 105
    .end local v1           #line:Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 106
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V

    .line 107
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .registers 3
    .parameter "line"

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 140
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more lines"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 143
    .local v0, currentLine:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 144
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
