.class public final Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceBootstrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/ByteSourceBootstrapper$1;
    }
.end annotation


# instance fields
.field _bigEndian:Z

.field private final _bufferRecyclable:Z

.field _bytesPerChar:I

.field final _context:Lorg/codehaus/jackson/io/IOContext;

.field final _in:Ljava/io/InputStream;

.field final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .registers 6
    .parameter "ctxt"
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 69
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 79
    iput-object p1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 80
    iput-object p2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 81
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 82
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 83
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 84
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;[BII)V
    .registers 7
    .parameter "ctxt"
    .parameter "inputBuffer"
    .parameter "inputStart"
    .parameter "inputLen"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 69
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 89
    iput-object p1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 91
    iput-object p2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 92
    iput p3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 93
    add-int v0, p3, p4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 95
    neg-int v0, p3

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 96
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 97
    return-void
.end method

.method private checkUTF16(I)Z
    .registers 5
    .parameter "i16"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 295
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_f

    .line 296
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 304
    :goto_a
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 305
    :cond_e
    return v0

    .line 297
    :cond_f
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_e

    .line 298
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_a
.end method

.method private checkUTF32(I)Z
    .registers 5
    .parameter "quad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 275
    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_d

    .line 276
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 289
    :goto_8
    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 290
    :cond_c
    return v0

    .line 277
    :cond_d
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_16

    .line 278
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_8

    .line 279
    :cond_16
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_22

    .line 280
    const-string v0, "3412"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_8

    .line 281
    :cond_22
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_c

    .line 282
    const-string v0, "2143"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private handleBOM(I)Z
    .registers 8
    .parameter "quad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    sparse-switch p1, :sswitch_data_5e

    .line 246
    :goto_7
    ushr-int/lit8 v0, p1, 0x10

    .line 247
    .local v0, msw:I
    const v3, 0xfeff

    if-ne v0, v3, :cond_3a

    .line 248
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 249
    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 250
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 266
    .end local v0           #msw:I
    :goto_18
    return v1

    .line 231
    :sswitch_19
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 232
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 233
    iput v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    goto :goto_18

    .line 236
    :sswitch_24
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 237
    iput v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 238
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_18

    .line 241
    :sswitch_2f
    const-string v3, "2143"

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    .line 243
    :sswitch_34
    const-string v3, "3412"

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_7

    .line 253
    .restart local v0       #msw:I
    :cond_3a
    const v3, 0xfffe

    if-ne v0, v3, :cond_4a

    .line 254
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 255
    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 256
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_18

    .line 260
    :cond_4a
    ushr-int/lit8 v3, p1, 0x8

    const v4, 0xefbbbf

    if-ne v3, v4, :cond_5c

    .line 261
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 262
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 263
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_18

    :cond_5c
    move v1, v2

    .line 266
    goto :goto_18

    .line 229
    :sswitch_data_5e
    .sparse-switch
        -0x1010000 -> :sswitch_34
        -0x20000 -> :sswitch_24
        0xfeff -> :sswitch_19
        0xfffe -> :sswitch_2f
    .end sparse-switch
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .registers 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;
    .registers 18
    .parameter "features"
    .parameter "codec"
    .parameter "rootByteSymbols"
    .parameter "rootCharSymbols"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->detectEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v11

    .line 206
    .local v11, enc:Lorg/codehaus/jackson/JsonEncoding;
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v12

    .line 207
    .local v12, intern:Z
    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne v11, v1, :cond_28

    .line 208
    new-instance v1, Lorg/codehaus/jackson/impl/Utf8StreamParser;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->makeChild(Z)Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v6

    iget-object v7, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-boolean v10, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V

    .line 210
    :goto_27
    return-object v1

    :cond_28
    new-instance v1, Lorg/codehaus/jackson/impl/ReaderBasedParser;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructReader()Ljava/io/Reader;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(Z)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v6

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    goto :goto_27
.end method

.method public constructReader()Ljava/io/Reader;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v7

    .line 165
    .local v7, enc:Lorg/codehaus/jackson/JsonEncoding;
    sget-object v1, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper$1;->$SwitchMap$org$codehaus$jackson$JsonEncoding:[I

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_6c

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :pswitch_19
    new-instance v0, Lorg/codehaus/jackson/io/UTF32Reader;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v6}, Lorg/codehaus/jackson/io/IOContext;->getEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/io/UTF32Reader;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    .line 187
    :goto_32
    return-object v0

    .line 175
    :pswitch_33
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 177
    .local v2, in:Ljava/io/InputStream;
    if-nez v2, :cond_4d

    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct {v0, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 187
    .end local v2           #in:Ljava/io/InputStream;
    .local v0, in:Ljava/io/InputStream;
    :goto_42
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_32

    .line 183
    .end local v0           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_4d
    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    if-ge v1, v3, :cond_69

    .line 184
    new-instance v0, Lorg/codehaus/jackson/io/MergedStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/io/MergedStream;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_42

    .line 197
    .end local v0           #in:Ljava/io/InputStream;
    :pswitch_61
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Internal error: should be using Utf8StreamParser directly"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v2       #in:Ljava/io/InputStream;
    :cond_69
    move-object v0, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_42

    .line 165
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_33
        :pswitch_33
        :pswitch_61
    .end packed-switch
.end method

.method public detectEncoding()Lorg/codehaus/jackson/JsonEncoding;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 107
    const/4 v1, 0x0

    .line 116
    .local v1, foundEncoding:Z
    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 117
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 122
    .local v3, quad:I
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->handleBOM(I)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 123
    const/4 v1, 0x1

    .line 148
    .end local v3           #quad:I
    :cond_3e
    :goto_3e
    if-nez v1, :cond_7e

    .line 149
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    .line 157
    .local v0, enc:Lorg/codehaus/jackson/JsonEncoding;
    :goto_42
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/io/IOContext;->setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 158
    return-object v0

    .line 131
    .end local v0           #enc:Lorg/codehaus/jackson/JsonEncoding;
    .restart local v3       #quad:I
    :cond_48
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF32(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 132
    const/4 v1, 0x1

    goto :goto_3e

    .line 133
    :cond_50
    ushr-int/lit8 v4, v3, 0x10

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 134
    const/4 v1, 0x1

    goto :goto_3e

    .line 137
    .end local v3           #quad:I
    :cond_5a
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 138
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 140
    .local v2, i16:I
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 141
    const/4 v1, 0x1

    goto :goto_3e

    .line 150
    .end local v2           #i16:I
    :cond_7e
    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v4, v7, :cond_8c

    .line 151
    iget-boolean v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_89

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    .restart local v0       #enc:Lorg/codehaus/jackson/JsonEncoding;
    :goto_88
    goto :goto_42

    .end local v0           #enc:Lorg/codehaus/jackson/JsonEncoding;
    :cond_89
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_88

    .line 152
    :cond_8c
    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v4, v8, :cond_9a

    .line 153
    iget-boolean v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_97

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    .restart local v0       #enc:Lorg/codehaus/jackson/JsonEncoding;
    :goto_96
    goto :goto_42

    .end local v0           #enc:Lorg/codehaus/jackson/JsonEncoding;
    :cond_97
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_96

    .line 155
    :cond_9a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Internal error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected ensureLoaded(I)Z
    .registers 10
    .parameter "minimum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 332
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    sub-int v1, v3, v4

    .line 333
    .local v1, gotten:I
    :goto_7
    if-ge v1, p1, :cond_11

    .line 336
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_12

    .line 337
    const/4 v0, -0x1

    .line 341
    .local v0, count:I
    :goto_e
    if-ge v0, v2, :cond_23

    .line 342
    const/4 v2, 0x0

    .line 347
    .end local v0           #count:I
    :cond_11
    return v2

    .line 339
    :cond_12
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    array-length v6, v6

    iget v7, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_e

    .line 344
    :cond_23
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 345
    add-int/2addr v1, v0

    .line 346
    goto :goto_7
.end method
