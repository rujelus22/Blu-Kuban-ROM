.class public Ljava/io/PrintWriter;
.super Ljava/io/Writer;
.source "PrintWriter.java"


# instance fields
.field private autoFlush:Z

.field private ioError:Z

.field protected out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 59
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .parameter "out"
    .parameter "autoFlush"

    .prologue
    .line 77
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .parameter "wr"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 3
    .parameter "wr"
    .parameter "autoFlush"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 110
    iput-boolean p2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    .line 111
    iput-object p1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 195
    return-void
.end method

.method private final doWrite([CII)V
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 620
    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 621
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz v1, :cond_16

    .line 623
    :try_start_7
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e

    .line 630
    :goto_c
    :try_start_c
    monitor-exit v2

    .line 631
    return-void

    .line 624
    :catch_e
    move-exception v0

    .line 625
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 630
    .end local v0           #e:Ljava/io/IOException;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1

    .line 628
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    goto :goto_c
.end method


# virtual methods
.method public append(C)Ljava/io/PrintWriter;
    .registers 2
    .parameter "c"

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 673
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "csq"

    .prologue
    .line 688
    if-nez p1, :cond_4

    .line 689
    const-string p1, "null"

    .line 691
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    .line 692
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 7
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 718
    if-nez p1, :cond_4

    .line 719
    const-string p1, "null"

    .line 721
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, output:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 723
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 207
    .local v0, delegate:Ljava/io/Writer;
    if-nez v0, :cond_7

    .line 208
    iget-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    .line 212
    :goto_6
    return v1

    .line 211
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 212
    iget-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/Writer;->checkError()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    goto :goto_6

    :cond_16
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected clearError()V
    .registers 3

    .prologue
    .line 220
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Ljava/io/PrintWriter;->ioError:Z

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public close()V
    .registers 4

    .prologue
    .line 231
    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 232
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v1, :cond_f

    .line 234
    :try_start_7
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_11

    .line 238
    :goto_c
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 240
    :cond_f
    monitor-exit v2

    .line 241
    return-void

    .line 235
    :catch_11
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v1
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 250
    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz v1, :cond_16

    .line 253
    :try_start_7
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e

    .line 260
    :goto_c
    :try_start_c
    monitor-exit v2

    .line 261
    return-void

    .line 254
    :catch_e
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 260
    .end local v0           #e:Ljava/io/IOException;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1

    .line 258
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    goto :goto_c
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 6
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 306
    if-nez p2, :cond_a

    .line 307
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_a
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 310
    iget-boolean v0, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v0, :cond_19

    .line 311
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 313
    :cond_19
    return-object p0
.end method

.method public print(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 383
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public print(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 394
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public print(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 405
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public print(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 416
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public print(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 427
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 438
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 453
    if-eqz p1, :cond_6

    .end local p1
    :goto_2
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 454
    return-void

    .line 453
    .restart local p1
    :cond_6
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public print(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 464
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public print([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 371
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 5
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 359
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 3

    .prologue
    .line 471
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget-boolean v0, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v0, :cond_11

    .line 474
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 476
    :cond_11
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public println(C)V
    .registers 3
    .parameter "c"

    .prologue
    .line 492
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public println(D)V
    .registers 4
    .parameter "d"

    .prologue
    .line 500
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public println(F)V
    .registers 3
    .parameter "f"

    .prologue
    .line 508
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public println(I)V
    .registers 3
    .parameter "i"

    .prologue
    .line 516
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public println(J)V
    .registers 4
    .parameter "l"

    .prologue
    .line 524
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 533
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 548
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 551
    monitor-exit v1

    .line 552
    return-void

    .line 551
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public println(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 559
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public println([C)V
    .registers 5
    .parameter "chars"

    .prologue
    .line 484
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method protected setError()V
    .registers 3

    .prologue
    .line 566
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 567
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Ljava/io/PrintWriter;->ioError:Z

    .line 568
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public write(I)V
    .registers 6
    .parameter "oneChar"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 616
    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-direct {p0, v0, v2, v3}, Ljava/io/PrintWriter;->doWrite([CII)V

    .line 617
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    .line 642
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5
    .parameter "str"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 660
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    .line 661
    return-void
.end method

.method public write([C)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 579
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 580
    return-void
.end method

.method public write([CII)V
    .registers 4
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 601
    invoke-direct {p0, p1, p2, p3}, Ljava/io/PrintWriter;->doWrite([CII)V

    .line 602
    return-void
.end method
