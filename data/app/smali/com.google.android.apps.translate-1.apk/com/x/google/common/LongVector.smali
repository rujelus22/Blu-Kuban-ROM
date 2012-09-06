.class public Lcom/x/google/common/LongVector;
.super Ljava/lang/Object;


# static fields
.field public static final CAPACITY_INCREMENT:I = 0x10

.field public static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private elements:[J

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    return-void
.end method

.method public static unmarshal([B)Lcom/x/google/common/LongVector;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer length not divisible by 8."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    array-length v0, p0

    div-int/lit8 v1, v0, 0x8

    new-instance v2, Lcom/x/google/common/LongVector;

    invoke-direct {v2, v1}, Lcom/x/google/common/LongVector;-><init>(I)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_2c

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/x/google/common/LongVector;->addElement(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2c
    return-object v2
.end method

.method private verifyArrayIndex(I)V
    .registers 3

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-le p1, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public addElement(J)V
    .registers 6

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/x/google/common/LongVector;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/LongVector;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public capacity()I
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v0, v0

    return v0
.end method

.method public contains(J)Z
    .registers 6

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_13

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public copyInto([J)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public elementAt(I)J
    .registers 4

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p1, v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public ensureCapacity(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v0, v0

    if-le p1, v0, :cond_18

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    if-ge v0, p1, :cond_19

    :goto_d
    new-array v0, p1, [J

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    :cond_18
    return-void

    :cond_19
    move p1, v0

    goto :goto_d
.end method

.method public firstElement()J
    .registers 3

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public indexOf(J)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public indexOf(JI)I
    .registers 7

    const/4 v0, -0x1

    invoke-direct {p0, p3}, Lcom/x/google/common/LongVector;->verifyArrayIndex(I)V

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p3, v1, :cond_c

    move p3, v0

    :goto_9
    return p3

    :cond_a
    add-int/lit8 p3, p3, 0x1

    :cond_c
    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge p3, v1, :cond_19

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, p3

    cmp-long v1, v1, p1

    if-nez v1, :cond_a

    goto :goto_9

    :cond_19
    move p3, v0

    goto :goto_9
.end method

.method public insertElementAt(JI)V
    .registers 8

    invoke-direct {p0, p3}, Lcom/x/google/common/LongVector;->verifyArrayIndex(I)V

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/x/google/common/LongVector;->ensureCapacity(I)V

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge p3, v0, :cond_1a

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    sub-int/2addr v3, p3

    invoke-static {v0, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aput-wide p1, v0, p3

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/common/LongVector;->size:I

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public lastElement()J
    .registers 3

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public lastIndexOf(J)I
    .registers 6

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_12

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_f

    :goto_e
    return v0

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public lastIndexOf(JI)I
    .registers 6

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p3, v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v0, v0, p3

    cmp-long v0, v0, p1

    if-nez v0, :cond_13

    :goto_12
    return p3

    :cond_13
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_a

    const/4 p3, -0x1

    goto :goto_12
.end method

.method public marshal()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_f
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_1d

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public max()J
    .registers 6

    invoke-virtual {p0}, Lcom/x/google/common/LongVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    :goto_f
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_22

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1f

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_22
    return-wide v1
.end method

.method public min()J
    .registers 6

    invoke-virtual {p0}, Lcom/x/google/common/LongVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    const-wide v1, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_12
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_25

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    cmp-long v3, v1, v3

    if-lez v3, :cond_22

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_25
    return-wide v1
.end method

.method public removeAllElements()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/LongVector;->size:I

    return-void
.end method

.method public removeElement(J)Z
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_22

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/x/google/common/LongVector;->size:I

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v4, p0, Lcom/x/google/common/LongVector;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    :cond_21
    return v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public removeElementAt(I)V
    .registers 6

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p1, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/x/google/common/LongVector;->size:I

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setElementAt(JI)V
    .registers 5

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p3, v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aput-wide p1, v0, p3

    return-void
.end method

.method public setSize(I)V
    .registers 6

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/x/google/common/LongVector;->ensureCapacity(I)V

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    :goto_d
    if-ge v0, p1, :cond_18

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    iput p1, p0, Lcom/x/google/common/LongVector;->size:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    return v0
.end method

.method public sum()J
    .registers 6

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_3
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_b
    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_21

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_24
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_15

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    :cond_15
    return-void
.end method
