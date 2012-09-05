.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$Chunk;
    }
.end annotation


# static fields
.field private static final BAIS_BUF:Ljava/lang/reflect/Field; = null

.field private static final BAIS_POS:Ljava/lang/reflect/Field; = null

.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_2a

    sput-object v0, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_30

    sput-object v0, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    .line 46
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Manifest;->NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

    .line 48
    const-string v0, "buf"

    invoke-static {v0}, Ljava/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljava/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    .line 49
    const-string v0, "pos"

    invoke-static {v0}, Ljava/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljava/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    return-void

    .line 42
    nop

    :array_2a
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 44
    nop

    :array_30
    .array-data 0x1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 100
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .parameter "is"
    .parameter "readChunks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 117
    if-eqz p2, :cond_1a

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 120
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .registers 3
    .parameter "man"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 111
    iget-object v0, p1, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 112
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 114
    return-void
.end method

.method private static exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B
    .registers 9
    .parameter "bais"

    .prologue
    .line 230
    monitor-enter p0

    .line 234
    :try_start_1
    sget-object v6, Ljava/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 235
    .local v2, buf:[B
    sget-object v6, Ljava/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_12} :catch_23

    move-result v5

    .line 239
    .local v5, pos:I
    :try_start_13
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 240
    .local v1, available:I
    if-nez v5, :cond_2d

    array-length v6, v2

    if-ne v6, v1, :cond_2d

    .line 241
    move-object v3, v2

    .line 246
    .local v3, buffer:[B
    :goto_1d
    int-to-long v6, v1

    invoke-virtual {p0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 247
    monitor-exit p0

    .line 248
    return-object v3

    .line 236
    .end local v1           #available:I
    .end local v2           #buf:[B
    .end local v3           #buffer:[B
    .end local v5           #pos:I
    :catch_23
    move-exception v4

    .line 237
    .local v4, iae:Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 247
    .end local v4           #iae:Ljava/lang/IllegalAccessException;
    :catchall_2a
    move-exception v6

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2a

    throw v6

    .line 243
    .restart local v1       #available:I
    .restart local v2       #buf:[B
    .restart local v5       #pos:I
    :cond_2d
    :try_start_2d
    new-array v3, v1, [B

    .line 244
    .restart local v3       #buffer:[B
    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    goto :goto_1d
.end method

.method private static getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .parameter "name"

    .prologue
    .line 53
    :try_start_0
    const-class v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 54
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 55
    return-object v1

    .line 56
    .end local v1           #f:Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 57
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .registers 12
    .parameter "manifest"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v8, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 309
    .local v2, encoder:Ljava/nio/charset/CharsetEncoder;
    const/16 v8, 0x48

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 311
    .local v1, buffer:Ljava/nio/ByteBuffer;
    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    sget-object v9, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, version:Ljava/lang/String;
    if-eqz v7, :cond_43

    .line 313
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v8, v7, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 314
    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v8}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 315
    .local v3, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 316
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 317
    .local v6, name:Ljava/util/jar/Attributes$Name;
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 318
    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v8, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v8, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_25

    .line 322
    .end local v3           #entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #name:Ljava/util/jar/Attributes$Name;
    :cond_43
    sget-object v8, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 323
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 324
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 325
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 326
    .local v5, key:Ljava/lang/String;
    sget-object v8, Ljava/util/jar/Manifest;->NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v8, v5, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 327
    iget-object v8, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 328
    .local v0, attrib:Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 329
    .restart local v3       #entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_89

    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 331
    .restart local v6       #name:Ljava/util/jar/Attributes$Name;
    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v8, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_75

    .line 333
    .end local v6           #name:Ljava/util/jar/Attributes$Name;
    :cond_89
    sget-object v8, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_54

    .line 335
    .end local v0           #attrib:Ljava/util/jar/Attributes;
    .end local v3           #entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #key:Ljava/lang/String;
    :cond_8f
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .registers 11
    .parameter "os"
    .parameter "name"
    .parameter "value"
    .parameter "encoder"
    .parameter "bBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->getName()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, nameString:Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 341
    sget-object v3, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 343
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 344
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x48

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 346
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 349
    .local v0, cBuf:Ljava/nio/CharBuffer;
    :goto_28
    const/4 v3, 0x1

    invoke-virtual {p3, v0, p4, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 350
    .local v2, r:Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_35

    .line 351
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 353
    :cond_35
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 354
    sget-object v3, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 355
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_4e

    .line 361
    return-void

    .line 358
    :cond_4e
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 359
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_28
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 129
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 130
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 173
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 272
    if-nez p1, :cond_5

    move v0, v1

    .line 281
    .end local p1
    :goto_4
    return v0

    .line 275
    .restart local p1
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_11

    move v0, v1

    .line 276
    goto :goto_4

    .line 278
    :cond_11
    iget-object v2, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    move-object v0, p1

    check-cast v0, Ljava/util/jar/Manifest;

    iget-object v0, v0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    .line 279
    goto :goto_4

    .line 281
    :cond_20
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast p1, Ljava/util/jar/Manifest;

    .end local p1
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 3
    .parameter "name"

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;
    .registers 3
    .parameter "name"

    .prologue
    .line 285
    iget-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Manifest$Chunk;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getMainAttributesEnd()I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Ljava/util/jar/Manifest;->mainEnd:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    instance-of v3, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v3, :cond_e

    .line 200
    check-cast p1, Ljava/io/ByteArrayInputStream;

    .end local p1
    invoke-static {p1}, Ljava/util/jar/Manifest;->exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B

    move-result-object v1

    .line 205
    .local v1, buf:[B
    :goto_a
    array-length v3, v1

    if-nez v3, :cond_13

    .line 222
    :goto_d
    return-void

    .line 202
    .end local v1           #buf:[B
    .restart local p1
    :cond_e
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v1

    .restart local v1       #buf:[B
    goto :goto_a

    .line 212
    .end local p1
    :cond_13
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v1, v3

    .line 213
    .local v0, b:B
    if-eqz v0, :cond_1e

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_25

    .line 214
    :cond_1e
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v3

    .line 219
    :cond_25
    new-instance v2, Ljava/util/jar/InitManifest;

    iget-object v3, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Ljava/util/jar/InitManifest;-><init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V

    .line 220
    .local v2, im:Ljava/util/jar/InitManifest;
    invoke-virtual {v2}, Ljava/util/jar/InitManifest;->getPos()I

    move-result v3

    iput v3, p0, Ljava/util/jar/Manifest;->mainEnd:I

    .line 221
    iget-object v3, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    iget-object v4, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/InitManifest;->initEntries(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_d
.end method

.method removeChunks()V
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 290
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1}, Ljava/util/jar/Manifest;->write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    .line 187
    return-void
.end method
