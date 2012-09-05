.class public Lcom/google/android/maps/driveabout/vector/bu;
.super Ljava/lang/Object;


# instance fields
.field protected a:[S

.field protected b:I

.field c:I

.field d:Ljava/nio/ShortBuffer;

.field e:I

.field protected f:I

.field protected g:LA/h;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->f:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bu;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bu;->f()V

    return-void
.end method

.method private a([SII)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    :cond_10
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    return-void

    :cond_16
    add-int v0, p2, p3

    :goto_18
    if-ge p2, v0, :cond_10

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    rsub-int v2, v2, 0x800

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bu;->e()V

    goto :goto_18
.end method

.method private e()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    :cond_9
    return-void
.end method

.method private f()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    if-nez v0, :cond_26

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->b:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->b:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    :cond_13
    :goto_13
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    return-void

    :cond_19
    new-instance v0, LA/h;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->b:I

    invoke-direct {v0, v1}, LA/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    goto :goto_13

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    invoke-virtual {v0}, LA/h;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    goto :goto_13
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    invoke-virtual {v0, v1}, LA/h;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget-object v0, v0, LA/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget v0, v0, LA/h;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    :cond_19
    return-void
.end method

.method public a(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->b:I

    if-le p1, v0, :cond_22

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-nez v0, :cond_42

    const/16 v0, 0x800

    if-ge v1, v0, :cond_23

    new-array v0, v1, [S

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    :goto_20
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->b:I

    :cond_22
    return-void

    :cond_23
    new-instance v0, LA/h;

    invoke-direct {v0, v1}, LA/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    invoke-virtual {v0, v2, v3}, LA/h;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget-object v0, v0, LA/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget v0, v0, LA/h;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    goto :goto_20

    :cond_42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    invoke-virtual {v0, v1}, LA/h;->c(I)V

    goto :goto_20
.end method

.method public a(III)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_30

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    :cond_30
    return-void
.end method

.method public a(IIII)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    int-to-short v2, p4

    aput-short v2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_51

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    :cond_51
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bu;->f()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->f:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p2, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bu;II)V
    .registers 9

    const/4 v2, 0x1

    const/16 v4, 0x800

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    if-ge v0, v4, :cond_35

    :cond_c
    move v0, v2

    :goto_d
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/2addr v3, p3

    if-gt v3, v4, :cond_37

    :cond_16
    :goto_16
    if-eqz v0, :cond_39

    if-eqz v2, :cond_39

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    if-lt v0, v4, :cond_34

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    move v0, v1

    goto :goto_d

    :cond_37
    move v2, v1

    goto :goto_16

    :cond_39
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-nez v0, :cond_43

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/maps/driveabout/vector/bu;->a([SII)V

    goto :goto_34

    :cond_43
    invoke-direct {p1}, Lcom/google/android/maps/driveabout/vector/bu;->e()V

    shr-int/lit8 v2, p2, 0xb

    and-int/lit16 v0, p2, 0x7ff

    move v3, v2

    move v2, v0

    :goto_4c
    if-lez p3, :cond_34

    rsub-int v0, v2, 0x800

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    invoke-virtual {v0, v3}, LA/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    invoke-direct {p0, v0, v2, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a([SII)V

    add-int/lit8 v0, v3, 0x1

    sub-int/2addr p3, v4

    move v2, v1

    move v3, v0

    goto :goto_4c
.end method

.method public a(S)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    aput-short p1, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    :cond_19
    return-void
.end method

.method public a(SS)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    aput-short p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    aput-short p2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_23

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    :cond_23
    return-void
.end method

.method public a(SSS)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    aput-short p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    aput-short p2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    aput-short p3, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    :cond_2d
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->f:I

    return v0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    invoke-virtual {v0}, LA/h;->c()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    return-void
.end method

.method public d()I
    .registers 3

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    invoke-virtual {v1}, LA/h;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1c
    return v0

    :cond_1d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bu;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :goto_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bu;->a:[S

    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bu;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bu;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, LA/h;->a(Ljava/nio/ShortBuffer;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    invoke-virtual {v0}, LA/h;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bu;->g:LA/h;

    goto :goto_28
.end method
