.class public Lcom/google/android/maps/driveabout/vector/cp;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/google/android/maps/driveabout/vector/cp;


# instance fields
.field protected a:I

.field c:[I

.field d:I

.field e:I

.field f:Ljava/nio/Buffer;

.field protected final g:I

.field protected final h:I

.field protected final i:I

.field j:I

.field protected k:LA/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cq;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>([I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    return-void

    nop

    :array_10
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:I

    const/16 v0, 0x140c

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cp;->d:I

    const/16 v0, 0x140c

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->i:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cp;->e()V

    return-void
.end method

.method protected constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cp;->d:I

    sparse-switch p2, :sswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "glNativeType must be one of GL_FIXED, GL_SHORT or GL_BYTE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_13
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    :goto_16
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cp;->g:I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cp;->i:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cp;->e()V

    return-void

    :sswitch_1e
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    goto :goto_16

    :sswitch_22
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    goto :goto_16

    :sswitch_data_26
    .sparse-switch
        0x1400 -> :sswitch_22
        0x1402 -> :sswitch_1e
        0x140c -> :sswitch_13
    .end sparse-switch
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    if-nez v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->d:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-ge v0, v1, :cond_19

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    :cond_13
    :goto_13
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    return-void

    :cond_19
    new-instance v1, LA/f;

    invoke-direct {v1, v0}, LA/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    goto :goto_13

    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    invoke-virtual {v0}, LA/f;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    goto :goto_13
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    invoke-virtual {v0, v1}, LA/f;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget-object v0, v0, LA/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget v0, v0, LA/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    :cond_19
    return-void
.end method

.method public a(FF)V
    .registers 7

    const/high16 v3, 0x4780

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    mul-float v2, p1, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    mul-float v2, p2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_31

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    :cond_31
    return-void
.end method

.method public a(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->d:I

    if-le p1, v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->d:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-nez v2, :cond_44

    const/16 v2, 0x400

    if-ge v0, v2, :cond_25

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    :goto_22
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->d:I

    :cond_24
    return-void

    :cond_25
    new-instance v2, LA/f;

    invoke-direct {v2, v0}, LA/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    invoke-virtual {v0, v2, v3}, LA/f;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget-object v0, v0, LA/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget v0, v0, LA/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    goto :goto_22

    :cond_44
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    invoke-virtual {v2, v0}, LA/f;->c(I)V

    goto :goto_22
.end method

.method public a(II)V
    .registers 6

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    aput p2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_23

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    :cond_23
    return-void
.end method

.method public a(III)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_23

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    aput p1, v1, v2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    aput p2, v1, v2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cp;->e()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;I)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->g:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected a(Ljava/nio/ByteBuffer;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->i:I

    div-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method protected a(Ljava/nio/ShortBuffer;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->i:I

    div-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public a([I)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a([III)V

    return-void
.end method

.method public a([III)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/2addr v0, p3

    const/16 v1, 0x400

    if-ge v0, v1, :cond_1f

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    :cond_17
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    return-void

    :cond_1f
    add-int v0, p2, p3

    :goto_21
    if-ge p2, v0, :cond_17

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    rsub-int v2, v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->j:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    goto :goto_21
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:I

    return v0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    invoke-virtual {v0}, LA/f;->c()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    return-void
.end method

.method public d()I
    .registers 4

    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    invoke-virtual {v1}, LA/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1d
    return v0

    :cond_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->g:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    invoke-interface {v0, v1, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->e:I

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->h:I

    mul-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/bV;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->g:I

    const/16 v3, 0x1402

    if-ne v2, v3, :cond_4b

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/nio/ShortBuffer;I)V

    :goto_2e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    invoke-virtual {v0}, LA/f;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    :cond_39
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    return-void

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->i:I

    invoke-virtual {v1, v0, v2}, LA/f;->a(Ljava/nio/ShortBuffer;I)V

    goto :goto_2e

    :cond_4b
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->g:I

    const/16 v3, 0x1400

    if-ne v2, v3, :cond_6e

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_2e

    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->i:I

    invoke-virtual {v1, v0, v2}, LA/f;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_2e

    :cond_6e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cp;->c:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    goto :goto_2e

    :cond_83
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cp;->a()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cp;->k:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, LA/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_2e
.end method
