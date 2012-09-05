.class Lcom/samsung/map/BBODY;
.super Lcom/samsung/map/Indentable;
.source "bMessageBuilder.java"


# instance fields
.field baos:Ljava/io/ByteArrayOutputStream;

.field charset:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/Header;",
            ">;"
        }
    .end annotation
.end field

.field language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 7
    .parameter "encoding"
    .parameter "charset"
    .parameter "language"
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p4, emailHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/map/Header;>;"
    invoke-direct {p0}, Lcom/samsung/map/Indentable;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/map/BBODY;->headers:Ljava/util/ArrayList;

    .line 199
    iput-object p1, p0, Lcom/samsung/map/BBODY;->encoding:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/samsung/map/BBODY;->charset:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/samsung/map/BBODY;->language:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/samsung/map/BBODY;->headers:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/BBODY;->baos:Ljava/io/ByteArrayOutputStream;

    .line 204
    invoke-virtual {p0, p5}, Lcom/samsung/map/BBODY;->appendString(Ljava/lang/String;)V

    .line 205
    return-void
.end method


# virtual methods
.method public appendBytes([B)V
    .registers 9
    .parameter "buf"

    .prologue
    const/16 v2, 0x3e6

    .line 119
    if-nez p1, :cond_5

    .line 126
    :cond_4
    return-void

    .line 121
    :cond_5
    const/4 v0, 0x0

    .local v0, offset:I
    :goto_6
    array-length v3, p1

    if-le v3, v0, :cond_4

    .line 122
    array-length v3, p1

    sub-int/2addr v3, v0

    if-le v3, v2, :cond_28

    move v1, v2

    .line 123
    .local v1, size:I
    :goto_e
    iget-object v3, p0, Lcom/samsung/map/BBODY;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 124
    iget-object v3, p0, Lcom/samsung/map/BBODY;->baos:Ljava/io/ByteArrayOutputStream;

    new-instance v4, Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 121
    add-int/lit16 v0, v0, 0x3e6

    goto :goto_6

    .line 122
    .end local v1           #size:I
    :cond_28
    array-length v3, p1

    sub-int v1, v3, v0

    goto :goto_e
.end method

.method public appendBytesToStream(Ljava/io/ByteArrayOutputStream;)V
    .registers 13
    .parameter "b"

    .prologue
    const/4 v10, 0x0

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "BEGIN:BBODY\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, body:Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/map/BBODY;->encoding:Ljava/lang/String;

    if-eqz v8, :cond_49

    iget-object v8, p0, Lcom/samsung/map/BBODY;->encoding:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_49

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ENCODING:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/BBODY;->encoding:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_49
    iget-object v8, p0, Lcom/samsung/map/BBODY;->charset:Ljava/lang/String;

    if-eqz v8, :cond_7c

    iget-object v8, p0, Lcom/samsung/map/BBODY;->charset:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7c

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "CHARSET:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/BBODY;->charset:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_7c
    iget-object v8, p0, Lcom/samsung/map/BBODY;->language:Ljava/lang/String;

    if-eqz v8, :cond_af

    iget-object v8, p0, Lcom/samsung/map/BBODY;->language:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_af

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LANGUAGE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/BBODY;->language:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_af
    const-string v3, ""

    .line 159
    .local v3, body_headers:Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/map/BBODY;->headers:Ljava/util/ArrayList;

    if-eqz v8, :cond_10e

    iget-object v8, p0, Lcom/samsung/map/BBODY;->headers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_10e

    .line 160
    iget-object v8, p0, Lcom/samsung/map/BBODY;->headers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_c3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/map/Header;

    .line 161
    .local v5, header:Lcom/samsung/map/Header;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/samsung/map/Header;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/samsung/map/Header;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c3

    .line 163
    .end local v5           #header:Lcom/samsung/map/Header;
    :cond_fb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_10e
    :try_start_10e
    const-string v8, "UTF-8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_113
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10e .. :try_end_113} :catch_1a3

    move-result-object v2

    .line 172
    .local v2, bodyHeadersAsBytes:[B
    :goto_114
    iget-object v8, p0, Lcom/samsung/map/BBODY;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    array-length v9, v2

    add-int/2addr v8, v9

    const-string v9, "BEGIN:MSG\r\n"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "END:MSG\r\n"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v7, v8, v9

    .line 175
    .local v7, size:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LENGTH:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "BEGIN:MSG\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :try_start_15a
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_15f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15a .. :try_end_15f} :catch_1aa

    move-result-object v1

    .line 184
    .local v1, bodyAsBytes:[B
    :goto_160
    array-length v8, v1

    invoke-virtual {p1, v1, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 185
    array-length v8, v2

    invoke-virtual {p1, v2, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 186
    iget-object v8, p0, Lcom/samsung/map/BBODY;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/BBODY;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {p1, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "END:MSG\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "END:BBODY\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :try_start_198
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_19d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_198 .. :try_end_19d} :catch_1b0

    move-result-object v1

    .line 194
    :goto_19e
    array-length v8, v1

    invoke-virtual {p1, v1, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 195
    return-void

    .line 169
    .end local v1           #bodyAsBytes:[B
    .end local v2           #bodyHeadersAsBytes:[B
    .end local v7           #size:I
    :catch_1a3
    move-exception v4

    .line 170
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2       #bodyHeadersAsBytes:[B
    goto/16 :goto_114

    .line 180
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #size:I
    :catch_1aa
    move-exception v4

    .line 181
    .restart local v4       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1       #bodyAsBytes:[B
    goto :goto_160

    .line 191
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1b0
    move-exception v4

    .line 192
    .restart local v4       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_19e
.end method

.method public appendString(Ljava/lang/String;)V
    .registers 13
    .parameter "msg"

    .prologue
    .line 129
    if-nez p1, :cond_3

    .line 144
    :goto_2
    return-void

    .line 130
    :cond_3
    const-string v8, "\r\n"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, lines:[Ljava/lang/String;
    const-string v1, ""

    .line 133
    .local v1, body_content:Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_e
    if-ge v4, v5, :cond_32

    aget-object v6, v0, v4

    .line 134
    .local v6, line:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 139
    .end local v6           #line:Ljava/lang/String;
    :cond_32
    :try_start_32
    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_37} :catch_40

    move-result-object v2

    .line 143
    .local v2, buf:[B
    :goto_38
    iget-object v8, p0, Lcom/samsung/map/BBODY;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v8, v2, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 140
    .end local v2           #buf:[B
    :catch_40
    move-exception v3

    .line 141
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2       #buf:[B
    goto :goto_38
.end method
