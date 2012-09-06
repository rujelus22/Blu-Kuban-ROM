.class Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iput v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 8

    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    :goto_6
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    aget v3, p0, v2

    if-ge v3, p3, :cond_15

    move v1, v2

    goto :goto_6

    :cond_15
    move v0, v2

    goto :goto_6

    :cond_17
    add-int v1, p1, p2

    if-ne v0, v1, :cond_20

    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    aget v1, p0, v0

    if-eq v1, p3, :cond_1f

    xor-int/lit8 v0, v0, -0x1

    goto :goto_1f
.end method

.method private gc()V
    .registers 9

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    :goto_9
    if-ge v1, v3, :cond_1e

    aget-object v6, v5, v1

    sget-object v7, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1b

    if-eq v1, v0, :cond_19

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    iput-boolean v2, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return-void
.end method

.method static idealByteArraySize(I)I
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    :cond_10
    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static idealIntArraySize(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 9

    const/4 v5, 0x0

    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_13

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_21
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_46

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    :cond_46
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto :goto_12
.end method

.method public clear()V
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_e

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    iput v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    return-void
.end method

.method public delete(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_1c

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    :cond_1c
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    :cond_13
    :goto_13
    return-object p2

    :cond_14
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_13
.end method

.method public indexOfKey(I)I
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public keyAt(I)I
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_10

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    :goto_f
    return-void

    :cond_10
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_27

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_f

    :cond_27
    iget-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3f

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3f
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_66

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    :cond_66
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_83

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_83
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_7
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
