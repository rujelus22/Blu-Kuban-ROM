.class public Lba/i;
.super Lba/a;


# static fields
.field private static final g:[C


# instance fields
.field private c:B

.field private d:I

.field private e:[Lcom/google/googlenav/e;

.field private f:[Lcom/google/googlenav/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lba/i;->g:[C

    return-void

    nop

    :array_a
    .array-data 0x2
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
    .end array-data
.end method

.method public constructor <init>(LaY/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    const/16 v0, 0x12

    iput-byte v0, p0, Lba/i;->c:B

    sget-object v0, Lba/i;->g:[C

    array-length v0, v0

    new-array v0, v0, [Lcom/google/googlenav/e;

    iput-object v0, p0, Lba/i;->e:[Lcom/google/googlenav/e;

    sget-object v0, Lba/i;->g:[C

    array-length v0, v0

    new-array v0, v0, [Lcom/google/googlenav/e;

    iput-object v0, p0, Lba/i;->f:[Lcom/google/googlenav/e;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lba/i;->c(I)V

    return-void
.end method

.method private a(IZZ)Lcom/google/googlenav/e;
    .registers 11

    iget-object v0, p0, Lba/i;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->i()Lah/g;

    move-result-object v6

    invoke-static {p1}, Lba/i;->d(I)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v3, p0, Lba/i;->d:I

    move v0, p2

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/aY;->a(ZZIIIZ)C

    move-result v0

    invoke-interface {v6, v0}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/e;->a(Lah/f;)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/e;->a(Z)V

    return-object v0
.end method

.method private c()V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lba/i;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->az()Z

    move-result v2

    sget-object v3, Lba/i;->g:[C

    array-length v4, v3

    move v0, v1

    :goto_b
    if-ge v0, v4, :cond_27

    aget-char v5, v3, v0

    invoke-static {v5}, Lba/i;->d(I)I

    move-result v6

    iget-object v7, p0, Lba/i;->e:[Lcom/google/googlenav/e;

    invoke-direct {p0, v5, v2, v1}, Lba/i;->a(IZZ)Lcom/google/googlenav/e;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v7, 0x1

    iget-object v8, p0, Lba/i;->f:[Lcom/google/googlenav/e;

    invoke-direct {p0, v5, v2, v7}, Lba/i;->a(IZZ)Lcom/google/googlenav/e;

    move-result-object v5

    aput-object v5, v8, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    return-void
.end method

.method private static d(I)I
    .registers 3

    const/16 v0, 0x12

    const/16 v1, 0x10

    if-eq p0, v1, :cond_11

    const/16 v1, 0x11

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_11

    const/16 v1, 0x13

    if-eq p0, v1, :cond_11

    move p0, v0

    :cond_11
    add-int/lit8 v0, p0, -0x10

    return v0
.end method


# virtual methods
.method public a(ZBI)C
    .registers 10

    iget-object v0, p0, Lba/i;->a:LaY/i;

    move-object v1, v0

    check-cast v1, LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->am()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v2, -0x1

    :goto_10
    invoke-virtual {v1}, LaY/aG;->az()Z

    move-result v0

    invoke-virtual {v1}, LaY/aG;->bN()I

    move-result v3

    invoke-virtual {p0, p3}, Lba/i;->a(I)Z

    move-result v5

    move v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/aY;->a(ZZIIIZ)C

    move-result v0

    return v0

    :cond_23
    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/aV;->f(I)I

    move-result v2

    goto :goto_10
.end method

.method public a()Z
    .registers 7

    const/16 v5, 0x13

    const/16 v4, 0xf

    const/16 v3, 0xc

    invoke-super {p0}, Lba/a;->a()Z

    move-result v0

    iget-byte v1, p0, Lba/i;->c:B

    iget-object v2, p0, Lba/i;->a:LaY/i;

    invoke-virtual {v2}, LaY/i;->ay()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    if-ge v2, v3, :cond_24

    const/16 v2, 0x10

    iput-byte v2, p0, Lba/i;->c:B

    :goto_1c
    if-nez v0, :cond_22

    iget-byte v0, p0, Lba/i;->c:B

    if-eq v1, v0, :cond_39

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    if-lt v2, v3, :cond_2d

    if-ge v2, v4, :cond_2d

    const/16 v2, 0x11

    iput-byte v2, p0, Lba/i;->c:B

    goto :goto_1c

    :cond_2d
    if-lt v2, v4, :cond_36

    if-ge v2, v5, :cond_36

    const/16 v2, 0x12

    iput-byte v2, p0, Lba/i;->c:B

    goto :goto_1c

    :cond_36
    iput-byte v5, p0, Lba/i;->c:B

    goto :goto_1c

    :cond_39
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public b()B
    .registers 2

    iget-byte v0, p0, Lba/i;->c:B

    return v0
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 4

    iget-object v0, p0, Lba/i;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Lcom/google/googlenav/ah;->h()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-super {p0, p1}, Lba/a;->b(I)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_f

    :cond_1b
    invoke-virtual {p0, p1}, Lba/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lba/i;->f:[Lcom/google/googlenav/e;

    :goto_23
    iget-byte v1, p0, Lba/i;->c:B

    invoke-static {v1}, Lba/i;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_f

    :cond_2c
    iget-object v0, p0, Lba/i;->e:[Lcom/google/googlenav/e;

    goto :goto_23
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lba/i;->d:I

    invoke-direct {p0}, Lba/i;->c()V

    return-void
.end method
