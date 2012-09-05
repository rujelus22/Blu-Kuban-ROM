.class public final Lorg/codehaus/jackson/util/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lorg/codehaus/jackson/util/BufferRecycler;

.field private final c:Ljava/util/LinkedList;

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/a;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/a;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .registers 4
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/a;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->c:Ljava/util/LinkedList;

    .line 79
    iput-object p1, p0, Lorg/codehaus/jackson/util/a;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 80
    if-nez p1, :cond_15

    .line 81
    const/16 v0, 0x1f4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    .line 85
    :goto_14
    return-void

    .line 83
    :cond_15
    sget-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    goto :goto_14
.end method

.method private a()V
    .registers 4

    .prologue
    const/high16 v0, 0x4

    .line 275
    iget v1, p0, Lorg/codehaus/jackson/util/a;->d:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/a;->e:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/a;->d:I

    .line 283
    iget v1, p0, Lorg/codehaus/jackson/util/a;->d:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 285
    if-le v1, v0, :cond_25

    .line 288
    :goto_16
    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/a;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/a;->f:I

    .line 291
    return-void

    :cond_25
    move v0, v1

    goto :goto_16
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public final flush()V
    .registers 1

    .prologue
    .line 265
    return-void
.end method

.method public final write(I)V
    .registers 5
    .parameter

    .prologue
    .line 260
    iget v0, p0, Lorg/codehaus/jackson/util/a;->f:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    invoke-direct {p0}, Lorg/codehaus/jackson/util/a;->a()V

    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/a;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 261
    return-void
.end method

.method public final write([B)V
    .registers 4
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/util/a;->write([BII)V

    .line 239
    return-void
.end method

.method public final write([BII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    sub-int/2addr v0, v1

    .line 246
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    if-lez v0, :cond_1a

    .line 248
    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->e:[B

    iget v2, p0, Lorg/codehaus/jackson/util/a;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    add-int/2addr p2, v0

    .line 250
    iget v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    .line 251
    sub-int/2addr p3, v0

    .line 253
    :cond_1a
    if-lez p3, :cond_20

    .line 254
    invoke-direct {p0}, Lorg/codehaus/jackson/util/a;->a()V

    goto :goto_0

    .line 256
    :cond_20
    return-void
.end method
