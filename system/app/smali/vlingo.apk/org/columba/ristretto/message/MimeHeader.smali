.class public Lorg/columba/ristretto/message/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"

# interfaces
.implements Lorg/columba/ristretto/io/Streamable;


# static fields
.field public static final BASE64:I = 0x2

.field public static final PLAIN:I = 0x0

.field public static final QUOTED_PRINTABLE:I = 0x1


# instance fields
.field private header:Lorg/columba/ristretto/message/Header;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 79
    new-instance v0, Lorg/columba/ristretto/message/Header;

    invoke-direct {v0}, Lorg/columba/ristretto/message/Header;-><init>()V

    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/MimeHeader;-><init>(Lorg/columba/ristretto/message/Header;)V

    .line 80
    new-instance v0, Lorg/columba/ristretto/message/MimeType;

    const-string v1, "text"

    const-string v2, "plain"

    invoke-direct {v0, v1, v2}, Lorg/columba/ristretto/message/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/MimeHeader;->setMimeType(Lorg/columba/ristretto/message/MimeType;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lorg/columba/ristretto/message/Header;

    invoke-direct {v0}, Lorg/columba/ristretto/message/Header;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    .line 101
    new-instance v0, Lorg/columba/ristretto/message/MimeType;

    invoke-direct {v0, p1, p2}, Lorg/columba/ristretto/message/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/MimeHeader;->setMimeType(Lorg/columba/ristretto/message/MimeType;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/message/Header;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    .line 90
    return-void
.end method


# virtual methods
.method protected appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "headerLine"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 246
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public count()I
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0}, Lorg/columba/ristretto/message/Header;->count()I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 403
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0, p1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 4

    .prologue
    .line 425
    const-string v2, "charset"

    invoke-virtual {p0, v2}, Lorg/columba/ristretto/message/MimeHeader;->getContentParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, charsetField:Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 429
    :try_start_8
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_b
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_8 .. :try_end_b} :catch_d
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_8 .. :try_end_b} :catch_19

    move-result-object v2

    .line 436
    :goto_c
    return-object v2

    .line 430
    :catch_d
    move-exception v1

    .line 431
    .local v1, e:Ljava/nio/charset/IllegalCharsetNameException;
    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_c

    .line 432
    .end local v1           #e:Ljava/nio/charset/IllegalCharsetNameException;
    :catch_19
    move-exception v1

    .line 433
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_c

    .line 436
    .end local v1           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_25
    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_c
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Description"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 198
    iget-object v1, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "Content-ID"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 200
    iget-object v1, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "Content-Id"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .end local v0           #result:Ljava/lang/String;
    :cond_12
    return-object v0
.end method

.method public getContentParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 167
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/columba/ristretto/message/MimeHeader;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentSubtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/columba/ristretto/message/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()I
    .registers 4

    .prologue
    .line 179
    iget-object v1, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 181
    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 185
    :goto_13
    return v1

    .line 182
    :cond_14
    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    goto :goto_13

    .line 185
    :cond_1e
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/columba/ristretto/message/MimeType;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispositionParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 226
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/columba/ristretto/message/MimeHeader;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, result:Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/columba/ristretto/message/MimeHeader;->getContentParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_12

    .line 270
    invoke-static {v0}, Lorg/columba/ristretto/coder/EncodedWord;->decode(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    :goto_11
    return-object v1

    .line 272
    :cond_12
    const-string v1, "filename"

    invoke-virtual {p0, v1}, Lorg/columba/ristretto/message/MimeHeader;->getDispositionParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_23

    .line 274
    invoke-static {v0}, Lorg/columba/ristretto/coder/EncodedWord;->decode(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_23
    move-object v1, v0

    .line 276
    goto :goto_11
.end method

.method public getHeader()Lorg/columba/ristretto/message/Header;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0}, Lorg/columba/ristretto/message/Header;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Lorg/columba/ristretto/message/MimeType;
    .registers 4

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/columba/ristretto/parser/MimeTypeParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/message/MimeType;
    :try_end_b
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 116
    :goto_c
    return-object v1

    .line 115
    :catch_d
    move-exception v0

    .line 116
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v1, Lorg/columba/ristretto/message/MimeType;

    invoke-direct {v1}, Lorg/columba/ristretto/message/MimeType;-><init>()V

    goto :goto_c
.end method

.method protected getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "headerLine"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    .line 230
    if-nez p1, :cond_5

    .line 240
    :cond_4
    :goto_4
    return-object v2

    .line 231
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\\s*=\\s*((\"([^\"]+)\")|([^\r\n\\s;]+))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 232
    .local v1, parameterPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 233
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 234
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 235
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 237
    :cond_32
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public putContentParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 300
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3}, Lorg/columba/ristretto/message/MimeHeader;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public putDispositionParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 317
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Disposition"

    iget-object v2, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v3, "Content-Disposition"

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3}, Lorg/columba/ristretto/message/MimeHeader;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 413
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0, p1, p2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .registers 4
    .parameter "description"

    .prologue
    .line 344
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Description"

    invoke-virtual {v0, v1, p1}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .registers 4
    .parameter "disposition"

    .prologue
    .line 361
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1, p1}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 374
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-ID"

    invoke-virtual {v0, v1, p1}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .registers 4
    .parameter "encoding"

    .prologue
    .line 386
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1, p1}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public setHeader(Lorg/columba/ristretto/message/Header;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 453
    iput-object p1, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    .line 454
    return-void
.end method

.method public setMimeType(Lorg/columba/ristretto/message/MimeType;)V
    .registers 5
    .parameter "type"

    .prologue
    .line 330
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0}, Lorg/columba/ristretto/message/Header;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
