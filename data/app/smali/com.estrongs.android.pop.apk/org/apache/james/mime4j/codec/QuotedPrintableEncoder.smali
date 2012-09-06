.class final Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final CR:B = 0xdt

.field private static final EQUALS:B = 0x3dt

.field private static final HEX_DIGITS:[B = null

.field private static final LF:B = 0xat

.field private static final QUOTED_PRINTABLE_LAST_PLAIN:B = 0x7et

.field private static final QUOTED_PRINTABLE_MAX_LINE_LENGTH:I = 0x4c

.field private static final QUOTED_PRINTABLE_OCTETS_PER_ESCAPE:I = 0x3

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# instance fields
.field private final binary:Z

.field private final inBuffer:[B

.field private nextSoftBreak:I

.field private out:Ljava/io/OutputStream;

.field private final outBuffer:[B

.field private outputIndex:I

.field private pendingCR:Z

.field private pendingSpace:Z

.field private pendingTab:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    return-void

    :array_a
    .array-data 0x1
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    return-void
.end method

.method private clearPending()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    return-void
.end method

.method private encode(B)V
    .registers 6

    const/16 v3, 0x9

    const/16 v2, 0x20

    const/4 v1, 0x1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_35

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    :goto_13
    return-void

    :cond_14
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_26

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    goto :goto_13

    :cond_26
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1f

    :cond_2e
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_13

    :cond_35
    const/16 v0, 0xd

    if-ne p1, v0, :cond_44

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_41

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_13

    :cond_41
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    goto :goto_13

    :cond_44
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    if-ne p1, v2, :cond_54

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_51

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_13

    :cond_51
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    goto :goto_13

    :cond_54
    if-ne p1, v3, :cond_61

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_5e

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_13

    :cond_5e
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    goto :goto_13

    :cond_61
    if-ge p1, v2, :cond_67

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_13

    :cond_67
    const/16 v0, 0x7e

    if-le p1, v0, :cond_6f

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_13

    :cond_6f
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_77

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_13

    :cond_77
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_13
.end method

.method private escape(B)V
    .registers 5

    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_c

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    :cond_c
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    rem-int/lit8 v0, v0, 0x10

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    return-void
.end method

.method private lineBreak()V
    .registers 2

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    return-void
.end method

.method private plain(B)V
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    :cond_c
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    return-void
.end method

.method private softBreak()V
    .registers 2

    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    return-void
.end method

.method private write(B)V
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    :cond_14
    return-void
.end method

.method private writePending()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    :cond_9
    :goto_9
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    return-void

    :cond_d
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_9

    :cond_17
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_9
.end method


# virtual methods
.method completeEncoding()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    return-void
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    :goto_3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_13

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encodeChunk([BII)V

    goto :goto_3

    :cond_13
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->completeEncoding()V

    return-void
.end method

.method encodeChunk([BII)V
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p3, p2

    if-ge v0, v1, :cond_d

    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encode(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method flushOutput()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_11
    iput v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    return-void

    :cond_14
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_11
.end method

.method initEncoding(Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    return-void
.end method
