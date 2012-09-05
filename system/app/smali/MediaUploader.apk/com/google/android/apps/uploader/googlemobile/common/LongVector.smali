.class public Lcom/google/android/apps/uploader/googlemobile/common/LongVector;
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

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    return-void
.end method

.method public static unmarshal([B)Lcom/google/android/apps/uploader/googlemobile/common/LongVector;
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

    div-int/lit8 v0, v0, 0x8

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;

    invoke-direct {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;-><init>(I)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v0, :cond_2c

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->addElement(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2c
    return-object v1
.end method

.method private verifyArrayIndex(I)V
    .registers 3

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

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

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public capacity()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    array-length v0, v0

    return v0
.end method

.method public contains(J)Z
    .registers 7

    const/4 v3, 0x1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    sub-int/2addr v0, v3

    :goto_4
    if-ltz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    move v0, v3

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

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public elementAt(I)J
    .registers 4

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-lt p1, v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public ensureCapacity(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    array-length v0, v0

    if-le p1, v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    if-ge v0, p1, :cond_e

    move v0, p1

    :cond_e
    new-array v0, v0, [J

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    :cond_19
    return-void
.end method

.method public firstElement()J
    .registers 3

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public indexOf(J)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

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
    .registers 8

    const/4 v3, -0x1

    invoke-direct {p0, p3}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->verifyArrayIndex(I)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-lt p3, v0, :cond_1b

    move v0, v3

    :goto_9
    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    :goto_c
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_a

    goto :goto_9

    :cond_19
    move v0, v3

    goto :goto_9

    :cond_1b
    move v0, p3

    goto :goto_c
.end method

.method public insertElementAt(JI)V
    .registers 8

    invoke-direct {p0, p3}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->verifyArrayIndex(I)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->ensureCapacity(I)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge p3, v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    sub-int/2addr v3, p3

    invoke-static {v0, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aput-wide p1, v0, p3

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public lastElement()J
    .registers 4

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public lastIndexOf(J)I
    .registers 6

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

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
    .registers 7

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-lt p3, v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    move v0, p3

    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_14

    :goto_13
    return v0

    :cond_14
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_b

    const/4 v0, -0x1

    goto :goto_13
.end method

.method public marshal()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :goto_f
    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v2, v3, :cond_1d

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v3, v3, v2

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public max()J
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    const-wide/high16 v0, -0x8000

    const/4 v2, 0x0

    move v5, v2

    move-wide v6, v0

    move-wide v1, v6

    move v0, v5

    :goto_13
    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v0, v3, :cond_26

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    cmp-long v3, v1, v3

    if-gez v3, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    return-wide v1
.end method

.method public min()J
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move v5, v2

    move-wide v6, v0

    move-wide v1, v6

    move v0, v5

    :goto_16
    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v0, v3, :cond_29

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    cmp-long v3, v1, v3

    if-lez v3, :cond_26

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_29
    return-wide v1
.end method

.method public removeAllElements()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    return-void
.end method

.method public removeElement(J)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v3, 0x0

    move v0, v3

    :goto_3
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_22

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget v4, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v5

    :goto_21
    return v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_25
    move v0, v3

    goto :goto_21
.end method

.method public removeElementAt(I)V
    .registers 6

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-lt p1, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setElementAt(JI)V
    .registers 5

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-lt p3, v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

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
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->ensureCapacity(I)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    :goto_d
    if-ge v0, p1, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    return v0
.end method

.method public sum()J
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v5, v2

    move-wide v6, v0

    move-wide v1, v6

    move v0, v5

    :goto_7
    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v0, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_21

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_15

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/LongVector;->elements:[J

    :cond_15
    return-void
.end method
