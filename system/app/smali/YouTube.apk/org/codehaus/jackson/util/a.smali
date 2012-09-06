.class public final Lorg/codehaus/jackson/util/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private c:I

.field private d:[B

.field private e:I


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

.method private a()V
    .registers 4

    .prologue
    const/high16 v0, 0x4

    .line 275
    iget v1, p0, Lorg/codehaus/jackson/util/a;->c:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/a;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/a;->c:I

    .line 283
    iget v1, p0, Lorg/codehaus/jackson/util/a;->c:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 285
    if-le v1, v0, :cond_25

    .line 288
    :goto_16
    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->b:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/a;->d:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->d:[B

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/a;->e:I

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
    iget v0, p0, Lorg/codehaus/jackson/util/a;->e:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->d:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    invoke-direct {p0}, Lorg/codehaus/jackson/util/a;->a()V

    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/util/a;->d:[B

    iget v1, p0, Lorg/codehaus/jackson/util/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/a;->e:I

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
    iget-object v0, p0, Lorg/codehaus/jackson/util/a;->d:[B

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/util/a;->e:I

    sub-int/2addr v0, v1

    .line 246
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    if-lez v0, :cond_1a

    .line 248
    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->d:[B

    iget v2, p0, Lorg/codehaus/jackson/util/a;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    add-int/2addr p2, v0

    .line 250
    iget v1, p0, Lorg/codehaus/jackson/util/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/a;->e:I

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
