.class public Lorg/apache/log4j/FileAppender;
.super Lorg/apache/log4j/WriterAppender;
.source "FileAppender.java"


# instance fields
.field protected bufferSize:I

.field protected bufferedIO:Z

.field protected fileAppend:Z

.field protected fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 65
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .registers 4
    .parameter "layout"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V
    .registers 6
    .parameter "layout"
    .parameter "filename"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 65
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 107
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 108
    iget v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, p2, p3, v1, v0}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;ZZI)V
    .registers 7
    .parameter "layout"
    .parameter "filename"
    .parameter "append"
    .parameter "bufferedIO"
    .parameter "bufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 65
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 91
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 92
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 93
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 6

    .prologue
    .line 161
    iget-object v1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 163
    :try_start_4
    iget-object v1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    iget-boolean v3, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v4, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_10

    .line 174
    :goto_f
    return-void

    .line 166
    :catch_10
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_f

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    :cond_3f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "File option not set for appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 172
    const-string v1, "Are you using FileAppender instead of ConsoleAppender?"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected closeFile()V
    .registers 4

    .prologue
    .line 181
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_9

    .line 183
    :try_start_4
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1}, Ljava/io/FilterWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 191
    :cond_9
    :goto_9
    return-void

    .line 188
    :catch_a
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public getAppend()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    return v0
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    return v0
.end method

.method public getBufferedIO()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method protected reset()V
    .registers 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->closeFile()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 340
    invoke-super {p0}, Lorg/apache/log4j/WriterAppender;->reset()V

    .line 341
    return-void
.end method

.method public setAppend(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 228
    iput-boolean p1, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 229
    return-void
.end method

.method public setBufferSize(I)V
    .registers 2
    .parameter "bufferSize"

    .prologue
    .line 255
    iput p1, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 256
    return-void
.end method

.method public setBufferedIO(Z)V
    .registers 3
    .parameter "bufferedIO"

    .prologue
    .line 243
    iput-boolean p1, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 244
    if-eqz p1, :cond_7

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 247
    :cond_7
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, val:Ljava/lang/String;
    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public declared-synchronized setFile(Ljava/lang/String;ZZI)V
    .registers 13
    .parameter "fileName"
    .parameter "append"
    .parameter "bufferedIO"
    .parameter "bufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "setFile called: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 279
    if-eqz p3, :cond_27

    .line 280
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/log4j/WriterAppender;->setImmediateFlush(Z)V

    .line 283
    :cond_27
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->reset()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_75

    .line 284
    const/4 v3, 0x0

    .line 289
    .local v3, ostream:Ljava/io/FileOutputStream;
    :try_start_2b
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3           #ostream:Ljava/io/FileOutputStream;
    invoke-direct {v3, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_75
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_51

    .line 308
    .restart local v3       #ostream:Ljava/io/FileOutputStream;
    :goto_30
    :try_start_30
    invoke-virtual {p0, v3}, Lorg/apache/log4j/WriterAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    .line 309
    .local v1, fw:Ljava/io/Writer;
    if-eqz p3, :cond_3c

    .line 310
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .end local v1           #fw:Ljava/io/Writer;
    .local v2, fw:Ljava/io/Writer;
    move-object v1, v2

    .line 312
    .end local v2           #fw:Ljava/io/Writer;
    .restart local v1       #fw:Ljava/io/Writer;
    :cond_3c
    invoke-virtual {p0, v1}, Lorg/apache/log4j/FileAppender;->setQWForFiles(Ljava/io/Writer;)V

    .line 313
    iput-object p1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 314
    iput-boolean p2, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 315
    iput-boolean p3, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 316
    iput p4, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 317
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeHeader()V

    .line 318
    const-string v6, "setFile ended"

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_75

    .line 319
    monitor-exit p0

    return-void

    .line 296
    .end local v1           #fw:Ljava/io/Writer;
    .end local v3           #ostream:Ljava/io/FileOutputStream;
    :catch_51
    move-exception v0

    .local v0, ex:Ljava/io/FileNotFoundException;
    :try_start_52
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, parentName:Ljava/lang/String;
    if-eqz v5, :cond_78

    .line 298
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v4, parentDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_74

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 300
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .restart local v3       #ostream:Ljava/io/FileOutputStream;
    goto :goto_30

    .line 302
    .end local v3           #ostream:Ljava/io/FileOutputStream;
    :cond_74
    throw v0
    :try_end_75
    .catchall {:try_start_52 .. :try_end_75} :catchall_75

    .line 276
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v5           #parentName:Ljava/lang/String;
    :catchall_75
    move-exception v6

    monitor-exit p0

    throw v6

    .line 305
    .restart local v0       #ex:Ljava/io/FileNotFoundException;
    .restart local v5       #parentName:Ljava/lang/String;
    :cond_78
    :try_start_78
    throw v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_75
.end method

.method protected setQWForFiles(Ljava/io/Writer;)V
    .registers 4
    .parameter "writer"

    .prologue
    .line 329
    new-instance v0, Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 330
    return-void
.end method
