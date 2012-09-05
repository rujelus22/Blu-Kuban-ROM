.class Lcom/samsung/map/BMSG;
.super Lcom/samsung/map/Indentable;
.source "bMessageBuilder.java"


# instance fields
.field public envelope:Lcom/samsung/map/BENV;

.field public folder:Ljava/lang/String;

.field public originator:Lcom/samsung/map/VCard;

.field public status:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "type"
    .parameter "folder"

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Lcom/samsung/map/Indentable;-><init>()V

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/map/BMSG;->status:Ljava/lang/String;

    .line 264
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/map/BMSG;->type:Ljava/lang/String;

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/map/BMSG;->folder:Ljava/lang/String;

    .line 268
    iput-object v1, p0, Lcom/samsung/map/BMSG;->originator:Lcom/samsung/map/VCard;

    .line 270
    iput-object v1, p0, Lcom/samsung/map/BMSG;->envelope:Lcom/samsung/map/BENV;

    .line 257
    iput-object p1, p0, Lcom/samsung/map/BMSG;->status:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/samsung/map/BMSG;->type:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/samsung/map/BMSG;->folder:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method public appendBytesToStream(Ljava/io/ByteArrayOutputStream;)V
    .registers 8
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BEGIN:BMSG\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VERSION:1.0\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "STATUS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/BMSG;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TYPE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/BMSG;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FOLDER:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/BMSG;->folder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, bmsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/map/BMSG;->originator:Lcom/samsung/map/VCard;

    if-eqz v3, :cond_7f

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/BMSG;->originator:Lcom/samsung/map/VCard;

    invoke-virtual {v4}, Lcom/samsung/map/VCard;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_7f
    :try_start_7f
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_84
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7f .. :try_end_84} :catch_a4

    move-result-object v2

    .line 287
    .local v2, metaAsBytes:[B
    :goto_85
    array-length v3, v2

    invoke-virtual {p1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 289
    iget-object v3, p0, Lcom/samsung/map/BMSG;->envelope:Lcom/samsung/map/BENV;

    if-eqz v3, :cond_92

    .line 291
    iget-object v3, p0, Lcom/samsung/map/BMSG;->envelope:Lcom/samsung/map/BENV;

    invoke-virtual {v3, p1}, Lcom/samsung/map/BENV;->appendBytesToStream(Ljava/io/ByteArrayOutputStream;)V

    .line 295
    :cond_92
    :try_start_92
    new-instance v3, Ljava/lang/String;

    const-string v4, "END:BMSG\r\n"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_92 .. :try_end_9e} :catch_aa

    move-result-object v2

    .line 300
    :goto_9f
    array-length v3, v2

    invoke-virtual {p1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 301
    return-void

    .line 284
    .end local v2           #metaAsBytes:[B
    :catch_a4
    move-exception v1

    .line 285
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2       #metaAsBytes:[B
    goto :goto_85

    .line 296
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_aa
    move-exception v1

    .line 297
    .restart local v1       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    const-string v4, "END:BMSG\r\n"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_9f
.end method
