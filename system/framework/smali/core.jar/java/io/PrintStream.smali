.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private autoFlush:Z

.field private encoding:Ljava/lang/String;

.field private ioError:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    if-nez p2, :cond_10

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 159
    :cond_10
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 160
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1c
    iput-object p2, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    if-nez p1, :cond_b

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_b
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .parameter "out"
    .parameter "autoFlush"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    if-nez p1, :cond_b

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_b
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .registers 6
    .parameter "out"
    .parameter "autoFlush"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    if-eqz p1, :cond_7

    if-nez p3, :cond_d

    .line 110
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 112
    :cond_d
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 114
    :try_start_f
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 115
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1b
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_f .. :try_end_1b} :catch_1b

    .line 117
    :catch_1b
    move-exception v0

    .line 118
    .local v0, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    .end local v0           #e:Ljava/nio/charset/IllegalCharsetNameException;
    :cond_22
    iput-object p3, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private newline()V
    .registers 2

    .prologue
    .line 362
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 363
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .registers 2
    .parameter "c"

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 616
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .parameter "charSequence"

    .prologue
    .line 624
    if-nez p1, :cond_8

    .line 625
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 629
    :goto_7
    return-object p0

    .line 627
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5
    .parameter "charSequence"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 650
    if-nez p1, :cond_4

    .line 651
    const-string p1, "null"

    .line 653
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 654
    return-object p0
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
    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

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
    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

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
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 212
    .local v0, delegate:Ljava/io/OutputStream;
    if-nez v0, :cond_7

    .line 213
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    .line 217
    :goto_6
    return v1

    .line 216
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 217
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/OutputStream;->checkError()Z

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
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    .line 226
    return-void
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 236
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    if-eqz v1, :cond_10

    .line 238
    :try_start_8
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_12

    .line 244
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 240
    :catch_12
    move-exception v0

    .line 241
    .local v0, e:Ljava/io/IOException;
    :try_start_13
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_10

    .line 235
    .end local v0           #e:Ljava/io/IOException;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .registers 2

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_d

    .line 255
    :try_start_5
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_c

    .line 262
    :goto_a
    monitor-exit p0

    return-void

    .line 257
    :catch_c
    move-exception v0

    .line 261
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_a

    .line 253
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 305
    if-nez p2, :cond_a

    .line 306
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_a
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 309
    return-object p0
.end method

.method public print(C)V
    .registers 3
    .parameter "c"

    .prologue
    .line 376
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public print(D)V
    .registers 4
    .parameter "d"

    .prologue
    .line 383
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public print(F)V
    .registers 3
    .parameter "f"

    .prologue
    .line 390
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public print(I)V
    .registers 3
    .parameter "i"

    .prologue
    .line 397
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public print(J)V
    .registers 4
    .parameter "l"

    .prologue
    .line 404
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 411
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_a

    .line 428
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 445
    :goto_8
    monitor-exit p0

    return-void

    .line 431
    :cond_a
    if-nez p1, :cond_15

    .line 432
    :try_start_c
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_8

    .line 427
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 437
    :cond_15
    :try_start_15
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_8

    .line 442
    :catch_21
    move-exception v0

    .line 443
    .local v0, e:Ljava/io/IOException;
    :try_start_22
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_12

    goto :goto_8

    .line 440
    .end local v0           #e:Ljava/io/IOException;
    :cond_26
    :try_start_26
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_12
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_21

    goto :goto_8
.end method

.method public print(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 451
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public print([C)V
    .registers 5
    .parameter "chars"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 355
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 1

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V

    .line 459
    return-void
.end method

.method public println(C)V
    .registers 3
    .parameter "c"

    .prologue
    .line 472
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public println(D)V
    .registers 4
    .parameter "d"

    .prologue
    .line 479
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public println(F)V
    .registers 3
    .parameter "f"

    .prologue
    .line 486
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public println(I)V
    .registers 3
    .parameter "i"

    .prologue
    .line 493
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public println(J)V
    .registers 4
    .parameter "l"

    .prologue
    .line 500
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 508
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 525
    monitor-exit p0

    return-void

    .line 523
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 531
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public println([C)V
    .registers 5
    .parameter "chars"

    .prologue
    .line 465
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method protected setError()V
    .registers 2

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    .line 539
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 6
    .parameter "oneByte"

    .prologue
    .line 593
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-nez v3, :cond_a

    .line 594
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_29

    .line 608
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 598
    :cond_a
    :try_start_a
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 599
    and-int/lit16 v0, p1, 0xff

    .line 601
    .local v0, b:I
    const/16 v3, 0xa

    if-eq v0, v3, :cond_19

    const/16 v3, 0x15

    if-ne v0, v3, :cond_2c

    :cond_19
    const/4 v2, 0x1

    .line 602
    .local v2, isNewline:Z
    :goto_1a
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 603
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_29
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_23} :catch_24

    goto :goto_8

    .line 605
    .end local v0           #b:I
    .end local v2           #isNewline:Z
    :catch_24
    move-exception v1

    .line 606
    .local v1, e:Ljava/io/IOException;
    :try_start_25
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_8

    .line 593
    .end local v1           #e:Ljava/io/IOException;
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3

    .line 601
    .restart local v0       #b:I
    :cond_2c
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 562
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 563
    monitor-enter p0

    .line 564
    :try_start_5
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_e

    .line 565
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V

    .line 566
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1c

    .line 577
    :goto_d
    return-void

    .line 569
    :cond_e
    :try_start_e
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 570
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_1a

    .line 571
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1f

    .line 576
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    goto :goto_d

    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v1

    .line 573
    :catch_1f
    move-exception v0

    .line 574
    .local v0, e:Ljava/io/IOException;
    :try_start_20
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1c

    goto :goto_1a
.end method
