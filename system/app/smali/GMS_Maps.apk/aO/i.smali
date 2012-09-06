.class public LaO/i;
.super LaO/a;
.source "SourceFile"


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

    .prologue
    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, LaO/i;->g:[C

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

.method public constructor <init>(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 24
    const/16 v0, 0x12

    iput-byte v0, p0, LaO/i;->c:B

    .line 52
    sget-object v0, LaO/i;->g:[C

    array-length v0, v0

    new-array v0, v0, [Lcom/google/googlenav/e;

    iput-object v0, p0, LaO/i;->e:[Lcom/google/googlenav/e;

    .line 53
    sget-object v0, LaO/i;->g:[C

    array-length v0, v0

    new-array v0, v0, [Lcom/google/googlenav/e;

    iput-object v0, p0, LaO/i;->f:[Lcom/google/googlenav/e;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaO/i;->c(I)V

    .line 58
    return-void
.end method

.method private a(IZZ)Lcom/google/googlenav/e;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, LaO/i;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->i()LS/g;

    move-result-object v6

    .line 161
    invoke-static {p1}, LaO/i;->d(I)I

    .line 162
    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v3, p0, LaO/i;->d:I

    move v0, p2

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/aN;->a(ZZIIIZ)C

    move-result v0

    .line 164
    invoke-interface {v6, v0}, LS/g;->e(C)LS/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/e;->a(LS/f;)Lcom/google/googlenav/e;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/google/googlenav/ui/bn;->Q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/e;->a(Z)V

    .line 166
    return-object v0
.end method

.method private c()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, LaO/i;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ax()Z

    move-result v2

    .line 149
    sget-object v3, LaO/i;->g:[C

    array-length v4, v3

    move v0, v1

    :goto_b
    if-ge v0, v4, :cond_27

    aget-char v5, v3, v0

    .line 150
    invoke-static {v5}, LaO/i;->d(I)I

    move-result v6

    .line 152
    iget-object v7, p0, LaO/i;->e:[Lcom/google/googlenav/e;

    invoke-direct {p0, v5, v2, v1}, LaO/i;->a(IZZ)Lcom/google/googlenav/e;

    move-result-object v8

    aput-object v8, v7, v6

    .line 154
    const/4 v7, 0x1

    .line 155
    iget-object v8, p0, LaO/i;->f:[Lcom/google/googlenav/e;

    invoke-direct {p0, v5, v2, v7}, LaO/i;->a(IZZ)Lcom/google/googlenav/e;

    move-result-object v5

    aput-object v5, v8, v6

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 157
    :cond_27
    return-void
.end method

.method private static d(I)I
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x12

    .line 77
    const/16 v1, 0x10

    if-eq p0, v1, :cond_11

    const/16 v1, 0x11

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_11

    const/16 v1, 0x13

    if-eq p0, v1, :cond_11

    move p0, v0

    .line 84
    :cond_11
    add-int/lit8 v0, p0, -0x10

    return v0
.end method


# virtual methods
.method public a(ZBI)C
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, LaO/i;->a:LaM/i;

    move-object v1, v0

    check-cast v1, LaM/bj;

    .line 67
    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v2, -0x1

    .line 69
    :goto_10
    invoke-virtual {v1}, LaM/bj;->ax()Z

    move-result v0

    invoke-virtual {v1}, LaM/bj;->e()I

    move-result v3

    invoke-virtual {p0, p3}, LaO/i;->a(I)Z

    move-result v5

    move v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/aN;->a(ZZIIIZ)C

    move-result v0

    return v0

    .line 67
    :cond_23
    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/aW;->f(I)I

    move-result v2

    goto :goto_10
.end method

.method public a()Z
    .registers 7

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0xf

    const/16 v3, 0xc

    .line 117
    invoke-super {p0}, LaO/a;->a()Z

    move-result v0

    .line 118
    iget-byte v1, p0, LaO/i;->c:B

    .line 119
    iget-object v2, p0, LaO/i;->a:LaM/i;

    invoke-virtual {v2}, LaM/i;->aw()Lat/Y;

    move-result-object v2

    invoke-virtual {v2}, Lat/Y;->a()I

    move-result v2

    .line 120
    if-ge v2, v3, :cond_24

    .line 121
    const/16 v2, 0x10

    iput-byte v2, p0, LaO/i;->c:B

    .line 129
    :goto_1c
    if-nez v0, :cond_22

    iget-byte v0, p0, LaO/i;->c:B

    if-eq v1, v0, :cond_39

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    .line 122
    :cond_24
    if-lt v2, v3, :cond_2d

    if-ge v2, v4, :cond_2d

    .line 123
    const/16 v2, 0x11

    iput-byte v2, p0, LaO/i;->c:B

    goto :goto_1c

    .line 124
    :cond_2d
    if-lt v2, v4, :cond_36

    if-ge v2, v5, :cond_36

    .line 125
    const/16 v2, 0x12

    iput-byte v2, p0, LaO/i;->c:B

    goto :goto_1c

    .line 127
    :cond_36
    iput-byte v5, p0, LaO/i;->c:B

    goto :goto_1c

    .line 129
    :cond_39
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public b()B
    .registers 2

    .prologue
    .line 143
    iget-byte v0, p0, LaO/i;->c:B

    return v0
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LaO/i;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 94
    if-nez v0, :cond_10

    .line 95
    const/4 v0, 0x0

    .line 109
    :goto_f
    return-object v0

    .line 97
    :cond_10
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 98
    invoke-super {p0, p1}, LaO/a;->b(I)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_f

    .line 103
    :cond_1b
    invoke-virtual {p0, p1}, LaO/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 104
    iget-object v0, p0, LaO/i;->f:[Lcom/google/googlenav/e;

    .line 109
    :goto_23
    iget-byte v1, p0, LaO/i;->c:B

    invoke-static {v1}, LaO/i;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_f

    .line 106
    :cond_2c
    iget-object v0, p0, LaO/i;->e:[Lcom/google/googlenav/e;

    goto :goto_23
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput p1, p0, LaO/i;->d:I

    .line 139
    invoke-direct {p0}, LaO/i;->c()V

    .line 140
    return-void
.end method
