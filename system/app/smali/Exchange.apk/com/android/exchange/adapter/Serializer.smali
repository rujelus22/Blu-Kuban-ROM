.class public Lcom/android/exchange/adapter/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private logging:Z

.field nameStack:[Ljava/lang/String;

.field out:Ljava/io/ByteArrayOutputStream;

.field pendingTag:I

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Serializer;-><init>(Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .parameter "startDocument"

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "Serializer"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    .line 91
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    .line 115
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->tagTable:Ljava/util/Hashtable;

    .line 149
    if-eqz p1, :cond_3a

    .line 153
    :try_start_34
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->startDocument()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_40

    .line 169
    :goto_37
    return-void

    :cond_38
    move v0, v1

    .line 83
    goto :goto_12

    .line 165
    :cond_3a
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_37

    .line 157
    :catch_40
    move-exception v0

    goto :goto_37
.end method


# virtual methods
.method public checkPendingTag(Z)V
    .registers 8
    .parameter "degenerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 227
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    if-ne v3, v5, :cond_6

    .line 263
    :goto_5
    return-void

    .line 233
    :cond_6
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    shr-int/lit8 v1, v3, 0x6

    .line 235
    .local v1, page:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    and-int/lit8 v2, v3, 0x3f

    .line 237
    .local v2, tag:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->tagPage:I

    if-eq v1, v3, :cond_1f

    .line 239
    iput v1, p0, Lcom/android/exchange/adapter/Serializer;->tagPage:I

    .line 241
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    :cond_1f
    iget-object v4, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_58

    move v3, v2

    :goto_24
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v3, :cond_55

    .line 253
    sget-object v3, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    aget-object v3, v3, v1

    add-int/lit8 v4, v2, -0x5

    aget-object v0, v3, v4

    .line 255
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    aput-object v0, v3, v4

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 261
    .end local v0           #name:Ljava/lang/String;
    :cond_55
    iput v5, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    goto :goto_5

    .line 249
    :cond_58
    or-int/lit8 v3, v2, 0x40

    goto :goto_24
.end method

.method public data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .registers 6
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    if-nez p2, :cond_1a

    .line 323
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null data for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 329
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 331
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 333
    return-object p0
.end method

.method public dataOpaque(I[B)Lcom/android/exchange/adapter/Serializer;
    .registers 6
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    if-nez p2, :cond_1a

    .line 345
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null data for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 351
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Serializer;->textOpaque([B)Lcom/android/exchange/adapter/Serializer;

    .line 353
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 355
    return-object p0
.end method

.method public done()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    if-eqz v0, :cond_c

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Done received with unclosed tags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_c
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/Serializer;->writeInteger(Ljava/io/OutputStream;I)V

    .line 205
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 207
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 209
    return-void
.end method

.method public end()Lcom/android/exchange/adapter/Serializer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 283
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    if-ltz v0, :cond_f

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 299
    :cond_8
    :goto_8
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    .line 301
    return-object p0

    .line 289
    :cond_f
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 291
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v0, :cond_8

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    goto :goto_8
.end method

.method log(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 175
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 177
    .local v0, cr:I
    if-lez v0, :cond_d

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 183
    :cond_d
    const-string v1, "Serializer"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v1, :cond_1b

    .line 187
    const-string v1, "Serializer"

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1b
    return-void
.end method

.method public start(I)Lcom/android/exchange/adapter/Serializer;
    .registers 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 271
    iput p1, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    .line 273
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    .line 275
    return-object p0
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 219
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 221
    return-void
.end method

.method public tag(I)Lcom/android/exchange/adapter/Serializer;
    .registers 2
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 311
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 313
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .registers 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    if-nez p1, :cond_1c

    .line 387
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null text for pending tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 395
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0, p1}, Lcom/android/exchange/adapter/Serializer;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 397
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v0, :cond_32

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 403
    :cond_32
    return-object p0
.end method

.method public textOpaque([B)Lcom/android/exchange/adapter/Serializer;
    .registers 6
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    if-nez p1, :cond_1c

    .line 415
    const-string v1, "Serializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing null text for pending tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xc3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 425
    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v1, p1}, Lcom/android/exchange/adapter/Serializer;->writeLiteralOpaque(Ljava/io/OutputStream;[B)V

    .line 435
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v1, :cond_38

    .line 437
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 439
    .local v0, text1:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 443
    .end local v0           #text1:Ljava/lang/String;
    :cond_38
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeInteger(Ljava/io/OutputStream;I)V
    .registers 7
    .parameter "out"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 474
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 480
    .local v1, idx:I
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p2, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 482
    shr-int/lit8 p2, p2, 0x7

    .line 484
    if-nez p2, :cond_2f

    move v1, v2

    .line 488
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_10
    const/4 v3, 0x1

    if-le v1, v3, :cond_1d

    .line 490
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_10

    .line 494
    :cond_1d
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 496
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v3, :cond_2e

    .line 498
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 502
    :cond_2e
    return-void

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_2f
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_4
.end method

.method writeLiteralOpaque(Ljava/io/OutputStream;[B)V
    .registers 5
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p2

    .line 453
    .local v0, data:[B
    if-nez v0, :cond_4

    .line 462
    :goto_3
    return-void

    .line 458
    :cond_4
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 460
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3
.end method

.method writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    if-nez p2, :cond_3

    .line 520
    :goto_2
    return-void

    .line 514
    :cond_3
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 516
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 518
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2
.end method

.method writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V
    .registers 6
    .parameter "cv"
    .parameter "key"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 530
    invoke-virtual {p0, p3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 534
    :cond_f
    return-void
.end method
