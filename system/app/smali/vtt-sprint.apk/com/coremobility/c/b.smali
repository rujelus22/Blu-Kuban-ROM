.class public final Lcom/coremobility/c/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/coremobility/integration/file/a;

.field protected b:Ljava/lang/String;

.field protected c:[B

.field protected d:I

.field e:Lcom/coremobility/integration/h;

.field protected f:I

.field protected g:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/integration/h;

    invoke-direct {v0}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v0, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    iput-object v1, p0, Lcom/coremobility/c/b;->a:Lcom/coremobility/integration/file/a;

    iput-object v1, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/coremobility/c/b;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/c/b;->d:I

    return-void
.end method

.method private a(B)V
    .registers 5

    iget-boolean v0, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/coremobility/c/b;->c:[B

    iget v1, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/c/b;->d:I

    aput-byte p1, v0, v1

    goto :goto_a
.end method

.method private a(I)V
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1d

    iget-boolean v0, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/coremobility/c/b;->c:[B

    iget v1, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/c/b;->d:I

    or-int/lit16 v2, p1, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_e

    :cond_1d
    invoke-direct {p0, p1}, Lcom/coremobility/c/b;->b(I)V

    goto :goto_e
.end method

.method private a(Lcom/coremobility/c/am;)V
    .registers 6

    const/4 v1, 0x0

    const/16 v3, -0x7e

    iget v0, p1, Lcom/coremobility/c/am;->g:I

    if-ltz v0, :cond_87

    const/4 v2, 0x5

    if-ge v0, v2, :cond_87

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v0, -0x80

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->g:I

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget-byte v0, p1, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-eqz v0, :cond_2c

    const/16 v2, -0x60

    invoke-direct {p0, v2}, Lcom/coremobility/c/b;->a(B)V

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_2c
    iget-byte v0, p1, Lcom/coremobility/c/am;->h:B

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_3a

    const/16 v2, -0x5f

    invoke-direct {p0, v2}, Lcom/coremobility/c/b;->a(B)V

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_3a
    const/16 v0, -0x7f

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    sget-object v0, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    iget v2, p1, Lcom/coremobility/c/am;->f:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->g:I

    if-nez v0, :cond_89

    iget v0, p1, Lcom/coremobility/c/am;->d:I

    if-eqz v0, :cond_60

    invoke-direct {p0, v3}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->d:I

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->b(I)V

    :cond_60
    const/16 v0, -0x7d

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget-short v0, p1, Lcom/coremobility/c/am;->b:S

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    iget-short v0, p1, Lcom/coremobility/c/am;->b:S

    if-eqz v0, :cond_78

    const/16 v0, -0x7c

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->c:I

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_78
    :goto_78
    iget-byte v0, p1, Lcom/coremobility/c/am;->i:B

    if-eqz v0, :cond_86

    const/16 v0, -0x79

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget-byte v0, p1, Lcom/coremobility/c/am;->i:B

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_86
    return-void

    :cond_87
    move v0, v1

    goto :goto_b

    :cond_89
    iget v0, p1, Lcom/coremobility/c/am;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_78

    invoke-direct {p0, v3}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->d:I

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->b(I)V

    goto :goto_78
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/c/b;->c:[B

    iget v3, p0, Lcom/coremobility/c/b;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/coremobility/c/b;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/c/b;->d:I

    goto :goto_d
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_13
    return-void
.end method

.method private b(I)V
    .registers 6

    const/4 v0, 0x1

    move v1, p1

    :goto_2
    shr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/coremobility/c/b;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :cond_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/coremobility/c/b;->c:[B

    iget v2, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/c/b;->d:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    :goto_20
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/coremobility/c/b;->c:[B

    iget v2, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v3, v0, 0x3

    shr-int v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_20
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/b;->a:Lcom/coremobility/integration/file/a;

    return-void
.end method

.method public final a(Lcom/coremobility/c/al;Lcom/coremobility/integration/h/d;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_45

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    invoke-static {v0}, Lcom/coremobility/c/an;->e(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-object v0, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-object v0, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_47

    move v0, v1

    :goto_2a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    if-nez v0, :cond_49

    move v0, v1

    :goto_32
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p1}, Lcom/coremobility/c/al;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v0, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_44
    return v2

    :cond_45
    move v0, v2

    goto :goto_5

    :cond_47
    move v0, v2

    goto :goto_2a

    :cond_49
    move v0, v2

    goto :goto_32

    :cond_4b
    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0}, Lcom/coremobility/integration/r;-><init>()V

    iput v2, v0, Lcom/coremobility/integration/r;->a:I

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v3, v2, v1}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v3

    if-nez v3, :cond_62

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v3, v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    if-eqz v0, :cond_69

    :cond_62
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/c/b;->b()V

    goto :goto_44

    :cond_69
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iput-short v2, v0, Lcom/coremobility/c/am;->a:S

    iput v2, p0, Lcom/coremobility/c/b;->f:I

    iput-boolean v1, p0, Lcom/coremobility/c/b;->g:Z

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Lcom/coremobility/c/am;)V

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremobility/c/b;->c:[B

    iput v2, p0, Lcom/coremobility/c/b;->d:I

    iput-boolean v2, p0, Lcom/coremobility/c/b;->g:Z

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Lcom/coremobility/c/am;)V

    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0}, Lcom/coremobility/integration/r;-><init>()V

    iget v3, p0, Lcom/coremobility/c/b;->f:I

    iput v3, v0, Lcom/coremobility/integration/r;->a:I

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    iget-object v4, p0, Lcom/coremobility/c/b;->c:[B

    invoke-static {v3, v4, v0}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v3

    if-eqz v3, :cond_ac

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, v0, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->e(I)V

    invoke-direct {p0}, Lcom/coremobility/c/b;->b()V

    goto :goto_44

    :cond_ac
    iget v0, v0, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->e(I)V

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;)V

    invoke-direct {p0}, Lcom/coremobility/c/b;->b()V

    move v2, v1

    goto :goto_44
.end method
