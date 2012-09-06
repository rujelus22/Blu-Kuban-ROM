.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE64_DECODE:[I = null

.field private static final BASE64_PAD:B = 0x3dt

.field private static final ENCODED_BUFFER_SIZE:I = 0x600

.field private static final EOF:I = -0x1

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private closed:Z

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private position:I

.field private final q:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private final singleByte:[B

.field private size:I

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x100

    const/4 v1, 0x0

    const-class v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    const-class v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    move v0, v1

    :goto_1b
    if-ge v0, v4, :cond_27

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_25
    move v0, v1

    goto :goto_c

    :cond_27
    :goto_27
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v0, v0

    if-ge v1, v0, :cond_39

    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_39
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    const/16 v0, 0x600

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    if-nez p1, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_24
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    return-void
.end method

.method private decodePad(II[BII)I
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_17

    ushr-int/lit8 v0, p1, 0x4

    int-to-byte v1, v0

    if-ge p4, p5, :cond_11

    add-int/lit8 v0, p4, 0x1

    aput-byte v1, p3, p4

    move p4, v0

    :goto_10
    return p4

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_10

    :cond_17
    const/4 v0, 0x3

    if-ne p2, v0, :cond_47

    ushr-int/lit8 v0, p1, 0xa

    int-to-byte v1, v0

    ushr-int/lit8 v0, p1, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v2, v0

    add-int/lit8 v0, p5, -0x1

    if-ge p4, v0, :cond_2f

    add-int/lit8 v0, p4, 0x1

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    aput-byte v2, p3, v0

    goto :goto_10

    :cond_2f
    if-ge p4, p5, :cond_3c

    add-int/lit8 v0, p4, 0x1

    aput-byte v1, p3, p4

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move p4, v0

    goto :goto_10

    :cond_3c
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_10

    :cond_47
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    goto :goto_10
.end method

.method private handleUnexpecedPad(I)V
    .registers 5

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected padding character"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected padding character; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method private handleUnexpectedEof(I)V
    .registers 5

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of file; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method private read0([BII)I
    .registers 12

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v1

    move v4, p2

    :goto_9
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1c

    if-ge v4, p3, :cond_1c

    add-int/lit8 v1, v4, 0x1

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v5

    aput-byte v5, p1, v4

    move v4, v1

    move v1, v2

    goto :goto_9

    :cond_1c
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v1, :cond_26

    if-ne v4, p2, :cond_23

    :cond_22
    :goto_22
    return v0

    :cond_23
    sub-int v0, v4, p2

    goto :goto_22

    :cond_26
    move v2, v3

    move v1, v3

    :cond_28
    if-ge v4, p3, :cond_e8

    :cond_2a
    :goto_2a
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ne v5, v6, :cond_63

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iget-object v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v0, :cond_4a

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v2, :cond_45

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    :cond_45
    if-eq v4, p2, :cond_22

    sub-int v0, v4, p2

    goto :goto_22

    :cond_4a
    if-lez v5, :cond_51

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iput v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_2a

    :cond_51
    sget-boolean v6, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v6, :cond_2a

    if-eqz v5, :cond_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5d
    sget-object v6, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v5, v6, v5

    if-gez v5, :cond_84

    :cond_63
    :goto_63
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ge v5, v6, :cond_28

    if-ge v4, p3, :cond_28

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_5d

    move-object v0, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result v0

    sub-int/2addr v0, p2

    goto :goto_22

    :cond_84
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_63

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    int-to-byte v6, v1

    add-int/lit8 v7, p3, -0x2

    if-ge v4, v7, :cond_a5

    add-int/lit8 v7, v4, 0x1

    aput-byte v2, p1, v4

    add-int/lit8 v2, v7, 0x1

    aput-byte v5, p1, v7

    add-int/lit8 v4, v2, 0x1

    aput-byte v6, p1, v2

    move v2, v3

    goto :goto_63

    :cond_a5
    add-int/lit8 v0, p3, -0x1

    if-ge v4, v0, :cond_c2

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p1, v4

    add-int/lit8 v4, v0, 0x1

    aput-byte v5, p1, v0

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    :goto_b6
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_e4

    if-eq v4, p3, :cond_e4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c2
    if-ge v4, p3, :cond_d4

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p1, v4

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move v4, v0

    goto :goto_b6

    :cond_d4
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_b6

    :cond_e4
    sub-int v0, p3, p2

    goto/16 :goto_22

    :cond_e8
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_f4

    if-eqz v2, :cond_f4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f4
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_100

    if-eq v4, p3, :cond_100

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_100
    sub-int v0, p3, p2

    goto/16 :goto_22
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    goto :goto_4
.end method

.method public read()I
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v1

    if-ne v1, v0, :cond_18

    :goto_17
    return v0

    :cond_18
    if-ne v1, v3, :cond_f

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_17
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_15
    array-length v1, p1

    if-nez v1, :cond_19

    :goto_18
    return v0

    :cond_19
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_18
.end method

.method public read([BII)I
    .registers 6

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

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
    if-nez p3, :cond_27

    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_26
.end method
