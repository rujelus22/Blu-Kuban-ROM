.class public final Lorg/apache/xml/serializer/Encodings;
.super Ljava/lang/Object;
.source "Encodings.java"


# static fields
.field static final DEFAULT_MIME_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ENCODINGS_FILE:Ljava/lang/String;

.field private static final _encodingTableKeyJava:Ljava/util/Hashtable;

.field private static final _encodingTableKeyMime:Ljava/util/Hashtable;

.field private static final _encodings:[Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Encodings.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    .line 494
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    .line 495
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    .line 496
    invoke-static {}, Lorg/apache/xml/serializer/Encodings;->loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "encoding"

    .prologue
    .line 272
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    .line 274
    .local v0, enc:Lorg/apache/xml/serializer/EncodingInfo;
    if-eqz v0, :cond_10

    .line 275
    iget-object p0, v0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    .line 276
    .end local p0
    :cond_10
    return-object p0
.end method

.method public static convertMime2JavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "encoding"

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 296
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 298
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v1, v1, v0

    iget-object p0, v1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 302
    .end local p0
    :cond_18
    return-object p0

    .line 294
    .restart local p0
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;
    .registers 5
    .parameter "encoding"

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, normalizedEncoding:Ljava/lang/String;
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    .line 120
    .local v0, ei:Lorg/apache/xml/serializer/EncodingInfo;
    if-nez v0, :cond_17

    .line 121
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ei:Lorg/apache/xml/serializer/EncodingInfo;
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    .line 122
    .restart local v0       #ei:Lorg/apache/xml/serializer/EncodingInfo;
    :cond_17
    if-nez v0, :cond_1f

    .line 124
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo;

    .end local v0           #ei:Lorg/apache/xml/serializer/EncodingInfo;
    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v2}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    .line 127
    .restart local v0       #ei:Lorg/apache/xml/serializer/EncodingInfo;
    :cond_1f
    return-object v0
.end method

.method public static getHighChar(Ljava/lang/String;)C
    .registers 5
    .parameter "encoding"

    .prologue
    .line 483
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, normalizedEncoding:Ljava/lang/String;
    sget-object v3, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    .line 485
    .local v0, ei:Lorg/apache/xml/serializer/EncodingInfo;
    if-nez v0, :cond_16

    .line 486
    sget-object v3, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ei:Lorg/apache/xml/serializer/EncodingInfo;
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    .line 487
    .restart local v0       #ei:Lorg/apache/xml/serializer/EncodingInfo;
    :cond_16
    if-eqz v0, :cond_1d

    .line 488
    invoke-virtual {v0}, Lorg/apache/xml/serializer/EncodingInfo;->getHighChar()C

    move-result v1

    .line 491
    .local v1, highCodePoint:C
    :goto_1c
    return v1

    .line 490
    .end local v1           #highCodePoint:C
    :cond_1d
    const/4 v1, 0x0

    .restart local v1       #highCodePoint:C
    goto :goto_1c
.end method

.method static getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "encoding"

    .prologue
    .line 212
    if-nez p0, :cond_41

    .line 220
    :try_start_2
    const-string v2, "file.encoding"

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    if-eqz p0, :cond_3a

    .line 232
    const-string v2, "Cp1252"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "ISO8859_1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "8859_1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_2c
    const-string v0, "UTF-8"

    .line 240
    .local v0, jencoding:Ljava/lang/String;
    :goto_2e
    if-eqz v0, :cond_37

    move-object p0, v0

    .line 258
    .end local v0           #jencoding:Ljava/lang/String;
    :goto_31
    return-object p0

    .line 232
    :cond_32
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 240
    .restart local v0       #jencoding:Ljava/lang/String;
    :cond_37
    const-string p0, "UTF-8"

    goto :goto_31

    .line 245
    .end local v0           #jencoding:Ljava/lang/String;
    :cond_3a
    const-string p0, "UTF-8"
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_3c} :catch_3d

    goto :goto_31

    .line 248
    :catch_3d
    move-exception v1

    .line 250
    .local v1, se:Ljava/lang/SecurityException;
    const-string p0, "UTF-8"

    .line 251
    goto :goto_31

    .line 255
    .end local v1           #se:Ljava/lang/SecurityException;
    :cond_41
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_31
.end method

.method static getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .registers 7
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_22

    .line 71
    sget-object v4, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 75
    :try_start_12
    sget-object v4, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v4, v4, v0

    iget-object v2, v4, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 76
    .local v2, javaName:Ljava/lang/String;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1d} :catch_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 93
    .end local v2           #javaName:Ljava/lang/String;
    :goto_1d
    return-object v3

    .line 83
    :catch_1e
    move-exception v4

    .line 69
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_22
    :try_start_22
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_1d

    .line 95
    :catch_28
    move-exception v1

    .line 97
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2f
    move-exception v4

    goto :goto_1f
.end method

.method static isHighUTF16Surrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 422
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static isLowUTF16Surrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 432
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isRecognizedEncoding(Ljava/lang/String;)Z
    .registers 4
    .parameter "encoding"

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, normalizedEncoding:Ljava/lang/String;
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    .line 143
    .local v0, ei:Lorg/apache/xml/serializer/EncodingInfo;
    if-nez v0, :cond_16

    .line 144
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ei:Lorg/apache/xml/serializer/EncodingInfo;
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    .line 145
    .restart local v0       #ei:Lorg/apache/xml/serializer/EncodingInfo;
    :cond_16
    if-eqz v0, :cond_1a

    .line 146
    const/4 v2, 0x1

    .line 147
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private static lengthOfMimeNames(Ljava/lang/String;)I
    .registers 3
    .parameter "val"

    .prologue
    .line 405
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 408
    .local v0, len:I
    if-gez v0, :cond_c

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 411
    :cond_c
    return v0
.end method

.method private static loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;
    .registers 26

    .prologue
    .line 319
    :try_start_0
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v20

    .line 320
    .local v20, ss:Lorg/apache/xml/serializer/SecuritySupport;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    sget-object v25, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 323
    .local v11, is:Ljava/io/InputStream;
    new-instance v18, Ljava/util/Properties;

    invoke-direct/range {v18 .. v18}, Ljava/util/Properties;-><init>()V

    .line 324
    .local v18, props:Ljava/util/Properties;
    if-eqz v11, :cond_23

    .line 325
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 326
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 336
    :cond_23
    invoke-virtual/range {v18 .. v18}, Ljava/util/Properties;->size()I

    move-result v22

    .line 338
    .local v22, totalEntries:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v5, encodingInfo_list:Ljava/util/List;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v13

    .line 340
    .local v13, keys:Ljava/util/Enumeration;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_31
    move/from16 v0, v22

    if-ge v9, v0, :cond_ac

    .line 342
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 343
    .local v12, javaName:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 344
    .local v23, val:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lorg/apache/xml/serializer/Encodings;->lengthOfMimeNames(Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_44} :catch_bc
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_44} :catch_c7

    move-result v14

    .line 348
    .local v14, len:I
    if-nez v14, :cond_4c

    .line 351
    move-object v15, v12

    .line 352
    .local v15, mimeName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 340
    .end local v15           #mimeName:Ljava/lang/String;
    .local v7, highChar:C
    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 358
    .end local v7           #highChar:C
    :cond_4c
    :try_start_4c
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, highVal:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_5d} :catch_a9
    .catch Ljava/net/MalformedURLException; {:try_start_4c .. :try_end_5d} :catch_bc
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5d} :catch_c7

    move-result v24

    move/from16 v0, v24

    int-to-char v7, v0

    .line 364
    .end local v8           #highVal:Ljava/lang/String;
    .restart local v7       #highChar:C
    :goto_61
    const/16 v24, 0x0

    :try_start_63
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 365
    .local v16, mimeNames:Ljava/lang/String;
    new-instance v21, Ljava/util/StringTokenizer;

    const-string v24, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v21, st:Ljava/util/StringTokenizer;
    const/4 v6, 0x1

    .line 368
    .local v6, first:Z
    :goto_79
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_49

    .line 371
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 372
    .restart local v15       #mimeName:Ljava/lang/String;
    new-instance v4, Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct {v4, v15, v12, v7}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    .line 373
    .local v4, ei:Lorg/apache/xml/serializer/EncodingInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v24, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    if-eqz v6, :cond_a7

    .line 376
    sget-object v24, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_a7
    const/4 v6, 0x0

    goto :goto_79

    .line 361
    .end local v4           #ei:Lorg/apache/xml/serializer/EncodingInfo;
    .end local v6           #first:Z
    .end local v7           #highChar:C
    .end local v15           #mimeName:Ljava/lang/String;
    .end local v16           #mimeNames:Ljava/lang/String;
    .end local v21           #st:Ljava/util/StringTokenizer;
    :catch_a9
    move-exception v3

    .line 362
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .restart local v7       #highChar:C
    goto :goto_61

    .line 382
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v7           #highChar:C
    .end local v12           #javaName:Ljava/lang/String;
    .end local v14           #len:I
    .end local v23           #val:Ljava/lang/String;
    :cond_ac
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Lorg/apache/xml/serializer/EncodingInfo;

    move-object/from16 v19, v0

    .line 383
    .local v19, ret_ei:[Lorg/apache/xml/serializer/EncodingInfo;
    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_bb
    .catch Ljava/net/MalformedURLException; {:try_start_63 .. :try_end_bb} :catch_bc
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_bb} :catch_c7

    .line 384
    return-object v19

    .line 386
    .end local v5           #encodingInfo_list:Ljava/util/List;
    .end local v9           #i:I
    .end local v11           #is:Ljava/io/InputStream;
    .end local v13           #keys:Ljava/util/Enumeration;
    .end local v18           #props:Ljava/util/Properties;
    .end local v19           #ret_ei:[Lorg/apache/xml/serializer/EncodingInfo;
    .end local v22           #totalEntries:I
    :catch_bc
    move-exception v17

    .line 388
    .local v17, mue:Ljava/net/MalformedURLException;
    new-instance v24, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v24

    .line 390
    .end local v17           #mue:Ljava/net/MalformedURLException;
    :catch_c7
    move-exception v10

    .line 392
    .local v10, ioe:Ljava/io/IOException;
    new-instance v24, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v24
.end method

.method static toCodePoint(C)I
    .registers 2
    .parameter "ch"

    .prologue
    .line 459
    move v0, p0

    .line 460
    .local v0, codePoint:I
    return v0
.end method

.method static toCodePoint(CC)I
    .registers 5
    .parameter "highSurrogate"
    .parameter "lowSurrogate"

    .prologue
    .line 443
    const v1, 0xd800

    sub-int v1, p0, v1

    shl-int/lit8 v1, v1, 0xa

    const v2, 0xdc00

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int v0, v1, v2

    .line 447
    .local v0, codePoint:I
    return v0
.end method

.method private static toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "s"

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, different:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 164
    .local v4, mx:I
    new-array v1, v4, [C

    .line 165
    .local v1, chars:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v4, :cond_1f

    .line 166
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, ch:C
    const/16 v6, 0x61

    if-gt v6, v0, :cond_1a

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_1a

    .line 170
    add-int/lit8 v6, v0, -0x20

    int-to-char v0, v6

    .line 171
    const/4 v2, 0x1

    .line 173
    :cond_1a
    aput-char v0, v1, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 179
    .end local v0           #ch:C
    :cond_1f
    if-eqz v2, :cond_26

    .line 180
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, upper:Ljava/lang/String;
    :goto_25
    return-object v5

    .line 182
    .end local v5           #upper:Ljava/lang/String;
    :cond_26
    move-object v5, p0

    .restart local v5       #upper:Ljava/lang/String;
    goto :goto_25
.end method
