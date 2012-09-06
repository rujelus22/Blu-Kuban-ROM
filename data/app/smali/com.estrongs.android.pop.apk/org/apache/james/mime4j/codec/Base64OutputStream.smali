.class public Lorg/apache/james/mime4j/codec/Base64OutputStream;
.super Ljava/io/FilterOutputStream;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE64_CHARS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASE64_PAD:B = 0x3dt

.field static final BASE64_TABLE:[B = null

.field private static final CRLF_SEPARATOR:[B = null

.field private static final DEFAULT_LINE_LENGTH:I = 0x4c

.field private static final ENCODED_BUFFER_SIZE:I = 0x800

.field private static final MASK_6BITS:I = 0x3f


# instance fields
.field private closed:Z

.field private data:I

.field private final encoded:[B

.field private final lineLength:I

.field private linePosition:I

.field private final lineSeparator:[B

.field private modulus:I

.field private position:I

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    const-class v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->$assertionsDisabled:Z

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_46

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->CRLF_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v2, v0

    :goto_27
    if-ge v1, v2, :cond_39

    aget-byte v3, v0, v1

    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_37
    move v0, v1

    goto :goto_a

    :cond_39
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_46
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/james/mime4j/codec/Base64OutputStream;->CRLF_SEPARATOR:[B

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->CRLF_SEPARATOR:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I[B)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    iput-boolean v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    if-nez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    if-gez p2, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_23
    invoke-direct {p0, p3}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->checkLineSeparator([B)V

    iput p2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    return-void
.end method

.method private checkLineSeparator([B)V
    .registers 7

    array-length v0, p1

    const/16 v1, 0x800

    if-le v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "line separator length exceeds 2048"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    array-length v1, p1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_44

    aget-byte v2, p1, v0

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line separator must not contain base64 character \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_44
    return-void
.end method

.method private close0()V
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writePad()V

    :cond_7
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_12

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    if-lez v0, :cond_12

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writeLineSeparator()V

    :cond_12
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    return-void
.end method

.method private flush0()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    :cond_10
    return-void
.end method

.method private write0([BII)V
    .registers 12

    const/4 v1, 0x0

    :goto_1
    if-ge p2, p3, :cond_ac

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a8

    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_48

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lt v0, v2, :cond_48

    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v0, v0

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v2, v2

    if-ge v0, v2, :cond_33

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    :cond_33
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v3, v2

    move v0, v1

    :goto_37
    if-ge v0, v3, :cond_48

    aget-byte v4, v2, v0

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_48
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v0, v0

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v0, v2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_54

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    :cond_54
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v4, v4, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v4, v4, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    :cond_a8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    :cond_ac
    return-void
.end method

.method private writeLineSeparator()V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v2, v2

    if-ge v1, v2, :cond_11

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    :cond_11
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v2, v1

    :goto_14
    if-ge v0, v2, :cond_25

    aget-byte v3, v1, v0

    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_25
    return-void
.end method

.method private writePad()V
    .registers 6

    const/16 v4, 0x3d

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_f

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lt v0, v1, :cond_f

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writeLineSeparator()V

    :cond_f
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    :cond_1b
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v0, v1

    :goto_5c
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    return-void

    :cond_63
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_72

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_72

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_72
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v0, v1

    goto :goto_5c
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->close0()V

    goto :goto_4
.end method

.method public flush()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    return-void
.end method

.method public final write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_14
    array-length v0, p1

    if-nez v0, :cond_18

    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    goto :goto_17
.end method

.method public final write([BII)V
    .registers 6

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_14
    if-ltz p2, :cond_1d

    if-ltz p3, :cond_1d

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_23

    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_23
    if-nez p3, :cond_26

    :goto_25
    return-void

    :cond_26
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    goto :goto_25
.end method
