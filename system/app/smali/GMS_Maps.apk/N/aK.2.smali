.class public final Ln/aK;
.super Ln/aM;
.source "SourceFile"


# instance fields
.field private b:[Ln/Q;

.field private c:[Ln/Q;

.field private d:Ln/r;

.field private e:Ln/aL;

.field private f:Ln/aa;

.field private g:[[Ln/Q;


# direct methods
.method private constructor <init>([Ln/Q;)V
    .registers 5
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ln/aM;-><init>()V

    .line 24
    array-length v0, p1

    new-array v0, v0, [Ln/Q;

    iput-object v0, p0, Ln/aK;->c:[Ln/Q;

    .line 25
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x4

    if-ge v0, v1, :cond_21

    .line 26
    iget-object v1, p0, Ln/aK;->c:[Ln/Q;

    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    aput-object v2, v1, v0

    .line 27
    aget-object v1, p1, v0

    iget-object v2, p0, Ln/aK;->c:[Ln/Q;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ln/Q;->i(Ln/Q;)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 30
    :cond_21
    iput-object p1, p0, Ln/aK;->b:[Ln/Q;

    .line 31
    new-instance v0, Ln/r;

    invoke-direct {v0, p1}, Ln/r;-><init>([Ln/Q;)V

    iput-object v0, p0, Ln/aK;->d:Ln/r;

    .line 32
    iget-object v0, p0, Ln/aK;->d:Ln/r;

    invoke-virtual {v0}, Ln/r;->a()Ln/aa;

    move-result-object v0

    iput-object v0, p0, Ln/aK;->f:Ln/aa;

    .line 33
    iget-object v0, p0, Ln/aK;->f:Ln/aa;

    invoke-static {v0}, Ln/aL;->a(Ln/aa;)Ln/aL;

    move-result-object v0

    iput-object v0, p0, Ln/aK;->e:Ln/aL;

    .line 34
    iget-object v0, p0, Ln/aK;->e:Ln/aL;

    iget-boolean v0, v0, Ln/aL;->a:Z

    iput-boolean v0, p0, Ln/aK;->a:Z

    .line 35
    iget-boolean v0, p0, Ln/aK;->a:Z

    if-eqz v0, :cond_47

    .line 36
    invoke-direct {p0}, Ln/aK;->i()V

    .line 38
    :cond_47
    return-void
.end method

.method public static a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Ln/aK;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Ln/Q;

    .line 99
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 100
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 101
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 102
    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 103
    new-instance v1, Ln/aK;

    invoke-direct {v1, v0}, Ln/aK;-><init>([Ln/Q;)V

    return-object v1
.end method

.method private a(Ln/Q;Ln/Q;I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v1, 0x20000001

    const v2, -0x20000001

    .line 73
    iget v0, p2, Ln/Q;->a:I

    if-lez v0, :cond_30

    move v0, v1

    .line 74
    :goto_d
    invoke-direct {p0, p1, p2, v0}, Ln/aK;->b(Ln/Q;Ln/Q;I)I

    move-result v0

    .line 76
    iget v3, p1, Ln/Q;->a:I

    iget v4, p2, Ln/Q;->a:I

    if-le v3, v4, :cond_32

    .line 78
    iget-object v3, p0, Ln/aK;->g:[[Ln/Q;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Ln/Q;

    invoke-direct {v4, v2, v0}, Ln/Q;-><init>(II)V

    aput-object v4, v3, v6

    .line 79
    iget-object v2, p0, Ln/aK;->g:[[Ln/Q;

    aget-object v2, v2, p3

    new-instance v3, Ln/Q;

    invoke-direct {v3, v1, v0}, Ln/Q;-><init>(II)V

    aput-object v3, v2, v5

    .line 85
    :goto_2f
    return-void

    :cond_30
    move v0, v2

    .line 73
    goto :goto_d

    .line 82
    :cond_32
    iget-object v3, p0, Ln/aK;->g:[[Ln/Q;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Ln/Q;

    invoke-direct {v4, v1, v0}, Ln/Q;-><init>(II)V

    aput-object v4, v3, v6

    .line 83
    iget-object v1, p0, Ln/aK;->g:[[Ln/Q;

    aget-object v1, v1, p3

    new-instance v3, Ln/Q;

    invoke-direct {v3, v2, v0}, Ln/Q;-><init>(II)V

    aput-object v3, v1, v5

    goto :goto_2f
.end method

.method private b(Ln/Q;Ln/Q;I)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget v0, p1, Ln/Q;->a:I

    sub-int v0, p3, v0

    int-to-double v0, v0

    iget v2, p2, Ln/Q;->a:I

    iget v3, p1, Ln/Q;->a:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p2, Ln/Q;->b:I

    iget v3, p1, Ln/Q;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p1, Ln/Q;->b:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private i()V
    .registers 9

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x2

    filled-new-array {v7, v0}, [I

    move-result-object v0

    const-class v1, Ln/Q;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ln/Q;

    iput-object v0, p0, Ln/aK;->g:[[Ln/Q;

    move v5, v4

    move v0, v4

    move v2, v4

    .line 49
    :goto_15
    const/4 v1, 0x4

    if-ge v5, v1, :cond_5c

    .line 50
    iget-object v1, p0, Ln/aK;->c:[Ln/Q;

    aget-object v1, v1, v5

    iget-object v6, p0, Ln/aK;->b:[Ln/Q;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    move v1, v3

    .line 51
    :goto_27
    if-eq v1, v2, :cond_78

    .line 52
    if-lez v5, :cond_3a

    .line 53
    iget-object v2, p0, Ln/aK;->b:[Ln/Q;

    add-int/lit8 v6, v5, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Ln/aK;->b:[Ln/Q;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, v6, v0}, Ln/aK;->a(Ln/Q;Ln/Q;I)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_3a
    :goto_3a
    if-lez v5, :cond_48

    .line 60
    iget-object v2, p0, Ln/aK;->g:[[Ln/Q;

    add-int/lit8 v6, v0, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Ln/aK;->c:[Ln/Q;

    aget-object v6, v6, v5

    aput-object v6, v2, v3

    .line 62
    :cond_48
    iget-object v2, p0, Ln/aK;->g:[[Ln/Q;

    aget-object v2, v2, v0

    iget-object v6, p0, Ln/aK;->c:[Ln/Q;

    aget-object v6, v6, v5

    aput-object v6, v2, v4

    .line 63
    add-int/lit8 v2, v0, 0x1

    .line 49
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    move v2, v1

    goto :goto_15

    :cond_5a
    move v1, v4

    .line 50
    goto :goto_27

    .line 65
    :cond_5c
    if-ge v0, v7, :cond_6c

    .line 66
    iget-object v1, p0, Ln/aK;->b:[Ln/Q;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Ln/aK;->b:[Ln/Q;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2, v0}, Ln/aK;->a(Ln/Q;Ln/Q;I)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_6c
    iget-object v0, p0, Ln/aK;->g:[[Ln/Q;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Ln/aK;->c:[Ln/Q;

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    .line 70
    return-void

    :cond_78
    move v1, v2

    goto :goto_3a
.end method


# virtual methods
.method public a(I)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Ln/aK;->c:[Ln/Q;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Ln/aL;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Ln/aK;->e:Ln/aL;

    return-object v0
.end method

.method public a(I[Ln/Q;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    iget-boolean v0, p0, Ln/aK;->a:Z

    if-eqz v0, :cond_17

    .line 176
    iget-object v0, p0, Ln/aK;->g:[[Ln/Q;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    aput-object v0, p2, v1

    .line 177
    iget-object v0, p0, Ln/aK;->g:[[Ln/Q;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    aput-object v0, p2, v2

    .line 182
    :goto_16
    return-void

    .line 179
    :cond_17
    invoke-virtual {p0, p1}, Ln/aK;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v1

    .line 180
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ln/aK;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v2

    goto :goto_16
.end method

.method public a(Ln/Q;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    iget-boolean v0, p0, Ln/aK;->a:Z

    if-nez v0, :cond_d

    .line 210
    iget-object v0, p0, Ln/aK;->d:Ln/r;

    invoke-virtual {v0, p1}, Ln/r;->a(Ln/Q;)Z

    move-result v0

    .line 218
    :goto_c
    return v0

    :cond_d
    move v3, v2

    move v0, v2

    .line 213
    :goto_f
    const/4 v4, 0x6

    if-ge v3, v4, :cond_29

    .line 214
    iget-object v4, p0, Ln/aK;->g:[[Ln/Q;

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    iget-object v5, p0, Ln/aK;->g:[[Ln/Q;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-static {v4, v5, p1}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 215
    add-int/lit8 v0, v0, 0x1

    .line 213
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 218
    :cond_29
    if-ne v0, v1, :cond_2d

    move v0, v1

    goto :goto_c

    :cond_2d
    move v0, v2

    goto :goto_c
.end method

.method public a(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0}, Ln/aK;->a()Ln/aL;

    move-result-object v0

    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln/aL;->b(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 236
    :cond_f
    :goto_f
    return v1

    :cond_10
    move v0, v1

    .line 231
    :goto_11
    invoke-virtual {p1}, Ln/ab;->b()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 232
    invoke-virtual {p1, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v2

    invoke-virtual {p0, v2}, Ln/aK;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 236
    :cond_24
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public b()Ln/aa;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Ln/aK;->f:Ln/aa;

    return-object v0
.end method

.method public c()Ln/ab;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ln/aK;->d:Ln/r;

    return-object v0
.end method

.method public d()Ln/Q;
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Ln/aK;->c:[Ln/Q;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Ln/Q;
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Ln/aK;->c:[Ln/Q;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 191
    if-ne p0, p1, :cond_4

    .line 192
    const/4 v0, 0x1

    .line 198
    :goto_3
    return v0

    .line 194
    :cond_4
    instance-of v0, p1, Ln/aK;

    if-eqz v0, :cond_13

    .line 195
    check-cast p1, Ln/aK;

    .line 196
    iget-object v0, p0, Ln/aK;->b:[Ln/Q;

    iget-object v1, p1, Ln/aK;->b:[Ln/Q;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 198
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Ln/Q;
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Ln/aK;->c:[Ln/Q;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()Ln/Q;
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Ln/aK;->c:[Ln/Q;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Ln/aK;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Ln/aK;->b:[Ln/Q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/aK;->b:[Ln/Q;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/aK;->b:[Ln/Q;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/aK;->b:[Ln/Q;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/aK;->b:[Ln/Q;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
