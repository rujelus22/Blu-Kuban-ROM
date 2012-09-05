.class public Lorg/columba/ristretto/imap/IMAPCommand;
.super Ljava/lang/Object;
.source "IMAPCommand.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private command:Ljava/lang/String;

.field private lastWasLiteral:Z

.field private parameters:[Ljava/lang/Object;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "command"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "tag"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 75
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .registers 5
    .parameter "tag"
    .parameter "command"
    .parameter "parameters"
    .parameter "charset"

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPCommand;->tag:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->command:Ljava/lang/String;

    .line 352
    iput-object p3, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    .line 353
    iput-object p4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    .line 354
    return-void
.end method

.method private writeAddress([Ljava/lang/Integer;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 8
    .parameter "integers"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 203
    new-instance v1, Ljava/lang/Integer;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 205
    const/4 v0, 0x1

    .local v0, i:I
    :goto_20
    array-length v1, p1

    if-ge v0, v1, :cond_49

    .line 206
    const/16 v1, 0x2e

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 207
    new-instance v1, Ljava/lang/Integer;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 211
    :cond_49
    iput-boolean v3, p0, Lorg/columba/ristretto/imap/IMAPCommand;->lastWasLiteral:Z

    .line 212
    return-void
.end method

.method private writeByteArray([BLorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 7
    .parameter "bs"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v1, 0x7b

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 222
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 223
    const/16 v1, 0x7d

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 224
    const/16 v1, 0xd

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 225
    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 226
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 227
    invoke-virtual {p2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v0

    .line 228
    .local v0, response:Lorg/columba/ristretto/imap/IMAPResponse;
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3a

    .line 229
    new-instance v1, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v1, v0}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v1

    .line 231
    :cond_3a
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 232
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/columba/ristretto/imap/IMAPCommand;->lastWasLiteral:Z

    .line 234
    return-void
.end method

.method private writeCharArray([CLorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 6
    .parameter "cs"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 191
    aget-char v1, p1, v0

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_c
    return-void
.end method

.method private writeInputStream(Ljava/io/InputStream;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 8
    .parameter "stream"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const/16 v1, 0x3e8

    .line 244
    .local v1, size:I
    const/16 v2, 0x7b

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 245
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 249
    const/16 v2, 0x7d

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 250
    const/16 v2, 0xd

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 251
    const/16 v2, 0xa

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 252
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 254
    invoke-virtual {p2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v0

    .line 255
    .local v0, response:Lorg/columba/ristretto/imap/IMAPResponse;
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3f

    .line 256
    new-instance v2, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v2, v0}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v2

    .line 259
    :cond_3f
    const/16 v2, 0x578

    invoke-static {p1, p3, v2}, Lorg/columba/ristretto/io/StreamUtils;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 266
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->lastWasLiteral:Z

    .line 267
    return-void
.end method

.method private writeSearchKey(Lorg/columba/ristretto/imap/SearchKey;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 9
    .parameter "key"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/SearchKey;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, strings:[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v4, :cond_34

    .line 142
    const/16 v2, 0x28

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 143
    aget-object v2, v1, v3

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 144
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1e
    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 145
    const/16 v2, 0x20

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 146
    aget-object v2, v1, v0

    invoke-direct {p0, v2, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeString(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 148
    :cond_2e
    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 153
    .end local v0           #i:I
    :cond_33
    :goto_33
    return-void

    .line 149
    :cond_34
    array-length v2, v1

    if-ne v2, v4, :cond_33

    .line 150
    aget-object v2, v1, v3

    invoke-direct {p0, v2, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeString(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_33
.end method

.method private writeSection(Lorg/columba/ristretto/imap/Section;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 8
    .parameter "section"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/16 v2, 0x28

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 159
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/Section;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 160
    const/16 v2, 0x5b

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 162
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/Section;->getParams()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, it:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, arg:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_42

    .line 166
    check-cast v0, Ljava/lang/String;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-direct {p0, v0, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeString(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 168
    const/16 v2, 0x20

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_23

    .line 169
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_42
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_4e

    .line 170
    check-cast v0, [Ljava/lang/String;

    .end local v0           #arg:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeStringArray([Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_23

    .line 171
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_4e
    instance-of v2, v0, [Ljava/lang/Integer;

    if-eqz v2, :cond_5a

    .line 172
    check-cast v0, [Ljava/lang/Integer;

    .end local v0           #arg:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {p0, v0, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeAddress([Ljava/lang/Integer;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_23

    .line 174
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeCharArray([CLorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_23

    .line 178
    .end local v0           #arg:Ljava/lang/Object;
    :cond_66
    const/16 v2, 0x5d

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 179
    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 180
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->lastWasLiteral:Z

    .line 181
    return-void
.end method

.method private writeString(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 12
    .parameter "sequence"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 293
    const/4 v1, 0x1

    .line 294
    .local v1, plainSafe:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_97

    move v2, v3

    .line 296
    .local v2, quote:Z
    :goto_c
    const/4 v0, 0x0

    .line 297
    .local v0, i:I
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_b4

    if-eqz v1, :cond_b4

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_9a

    move v5, v3

    :goto_1e
    and-int/2addr v1, v5

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_9c

    move v5, v3

    :goto_26
    and-int/2addr v1, v5

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_9e

    move v5, v3

    :goto_30
    and-int/2addr v1, v5

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v5, :cond_a0

    move v5, v3

    :goto_38
    and-int/2addr v1, v5

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_a2

    move v5, v3

    :goto_42
    and-int/2addr v1, v5

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_a4

    move v5, v3

    :goto_4c
    and-int/2addr v1, v5

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_a6

    move v5, v3

    :goto_56
    or-int/2addr v2, v5

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_a8

    move v5, v3

    :goto_60
    or-int/2addr v2, v5

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_aa

    move v5, v3

    :goto_6a
    or-int/2addr v2, v5

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_ac

    move v5, v3

    :goto_74
    or-int/2addr v2, v5

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_ae

    move v5, v3

    :goto_7e
    or-int/2addr v2, v5

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_b0

    move v5, v3

    :goto_88
    or-int/2addr v2, v5

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_b2

    move v5, v3

    :goto_92
    or-int/2addr v2, v5

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .end local v0           #i:I
    .end local v2           #quote:Z
    :cond_97
    move v2, v4

    .line 294
    goto/16 :goto_c

    .restart local v0       #i:I
    .restart local v2       #quote:Z
    :cond_9a
    move v5, v4

    .line 298
    goto :goto_1e

    :cond_9c
    move v5, v4

    .line 299
    goto :goto_26

    :cond_9e
    move v5, v4

    .line 300
    goto :goto_30

    :cond_a0
    move v5, v4

    .line 301
    goto :goto_38

    :cond_a2
    move v5, v4

    .line 302
    goto :goto_42

    :cond_a4
    move v5, v4

    .line 303
    goto :goto_4c

    :cond_a6
    move v5, v4

    .line 305
    goto :goto_56

    :cond_a8
    move v5, v4

    .line 306
    goto :goto_60

    :cond_aa
    move v5, v4

    .line 307
    goto :goto_6a

    :cond_ac
    move v5, v4

    .line 308
    goto :goto_74

    :cond_ae
    move v5, v4

    .line 309
    goto :goto_7e

    :cond_b0
    move v5, v4

    .line 310
    goto :goto_88

    :cond_b2
    move v5, v4

    .line 311
    goto :goto_92

    .line 317
    :cond_b4
    if-eqz v1, :cond_d0

    .line 318
    if-eqz v2, :cond_bb

    .line 319
    invoke-virtual {p3, v7}, Ljava/io/OutputStream;->write(I)V

    .line 321
    :cond_bb
    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/OutputStream;->write([B)V

    .line 322
    if-eqz v2, :cond_cd

    .line 323
    invoke-virtual {p3, v7}, Ljava/io/OutputStream;->write(I)V

    .line 325
    :cond_cd
    iput-boolean v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->lastWasLiteral:Z

    .line 329
    :goto_cf
    return-void

    .line 327
    :cond_d0
    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeByteArray([BLorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_cf
.end method

.method private writeStringArray([Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 8
    .parameter "strings"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 275
    const/16 v1, 0x28

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 276
    array-length v1, p1

    if-lez v1, :cond_29

    .line 277
    aget-object v1, p1, v3

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 278
    const/4 v0, 0x1

    .local v0, i:I
    :goto_19
    array-length v1, p1

    if-ge v0, v1, :cond_29

    .line 279
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 280
    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeString(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 283
    .end local v0           #i:I
    :cond_29
    const/16 v1, 0x29

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 284
    iput-boolean v3, p0, Lorg/columba/ristretto/imap/IMAPCommand;->lastWasLiteral:Z

    .line 285
    return-void
.end method


# virtual methods
.method public estimateLength()I
    .registers 7

    .prologue
    .line 365
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->command:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPCommand;->tag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 368
    .local v0, estimatedLength:I
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    if-eqz v4, :cond_86

    .line 369
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_86

    .line 371
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    instance-of v4, v4, [C

    if-eqz v4, :cond_30

    .line 372
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, [C

    check-cast v4, [C

    array-length v4, v4

    add-int/2addr v0, v4

    .line 400
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 375
    :cond_30
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_44

    .line 376
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2b

    .line 379
    :cond_44
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    instance-of v4, v4, [Ljava/lang/String;

    if-eqz v4, :cond_63

    .line 380
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 381
    .local v3, strings:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_56
    array-length v4, v3

    if-ge v2, v4, :cond_2b

    .line 382
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 386
    .end local v2           #j:I
    .end local v3           #strings:[Ljava/lang/String;
    :cond_63
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    instance-of v4, v4, Lorg/columba/ristretto/imap/SearchKey;

    if-eqz v4, :cond_83

    .line 387
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Lorg/columba/ristretto/imap/SearchKey;

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/SearchKey;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 389
    .restart local v3       #strings:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_76
    array-length v4, v3

    if-ge v2, v4, :cond_2b

    .line 390
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 396
    .end local v2           #j:I
    .end local v3           #strings:[Ljava/lang/String;
    :cond_83
    add-int/lit8 v0, v0, 0x3

    goto :goto_2b

    .line 404
    .end local v1           #i:I
    :cond_86
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPCommand;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToStream(Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    .registers 8
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 101
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->tag:Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 102
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 103
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->command:Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 105
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    if-eqz v2, :cond_9a

    .line 106
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPCommand;->parameters:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    .local v1, it:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 108
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, arg:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 111
    check-cast v0, Ljava/lang/String;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeString(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 112
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_40
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 113
    check-cast v0, [Ljava/lang/String;

    .end local v0           #arg:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeStringArray([Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 114
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_4c
    instance-of v2, v0, Ljava/io/InputStream;

    if-eqz v2, :cond_56

    .line 115
    check-cast v0, Ljava/io/InputStream;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeInputStream(Ljava/io/InputStream;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 116
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_56
    instance-of v2, v0, Lorg/columba/ristretto/imap/SearchKey;

    if-eqz v2, :cond_60

    .line 117
    check-cast v0, Lorg/columba/ristretto/imap/SearchKey;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeSearchKey(Lorg/columba/ristretto/imap/SearchKey;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 118
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_60
    instance-of v2, v0, [B

    if-eqz v2, :cond_6c

    .line 119
    check-cast v0, [B

    .end local v0           #arg:Ljava/lang/Object;
    check-cast v0, [B

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeByteArray([BLorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 120
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_6c
    instance-of v2, v0, [Ljava/lang/Integer;

    if-eqz v2, :cond_78

    .line 121
    check-cast v0, [Ljava/lang/Integer;

    .end local v0           #arg:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeAddress([Ljava/lang/Integer;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 122
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_78
    instance-of v2, v0, [C

    if-eqz v2, :cond_84

    .line 123
    check-cast v0, [C

    .end local v0           #arg:Ljava/lang/Object;
    check-cast v0, [C

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeCharArray([CLorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 124
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_84
    instance-of v2, v0, Lorg/columba/ristretto/imap/Section;

    if-eqz v2, :cond_8e

    .line 125
    check-cast v0, Lorg/columba/ristretto/imap/Section;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeSection(Lorg/columba/ristretto/imap/Section;Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 127
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_8e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lorg/columba/ristretto/imap/IMAPCommand;->writeCharArray([CLorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V

    goto :goto_29

    .line 132
    .end local v0           #arg:Ljava/lang/Object;
    .end local v1           #it:Ljava/util/Iterator;
    :cond_9a
    const/16 v2, 0xd

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 133
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 134
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 135
    return-void
.end method
