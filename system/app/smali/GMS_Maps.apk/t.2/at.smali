.class public final Lt/at;
.super Lt/av;


# instance fields
.field private b:[Lt/L;

.field private c:[Lt/L;

.field private d:Lt/n;

.field private e:Lt/au;

.field private f:Lt/V;

.field private g:[[Lt/L;


# direct methods
.method private constructor <init>([Lt/L;)V
    .registers 5

    invoke-direct {p0}, Lt/av;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lt/L;

    iput-object v0, p0, Lt/at;->c:[Lt/L;

    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x4

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lt/at;->c:[Lt/L;

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    aput-object v2, v1, v0

    aget-object v1, p1, v0

    iget-object v2, p0, Lt/at;->c:[Lt/L;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lt/L;->i(Lt/L;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    iput-object p1, p0, Lt/at;->b:[Lt/L;

    new-instance v0, Lt/n;

    invoke-direct {v0, p1}, Lt/n;-><init>([Lt/L;)V

    iput-object v0, p0, Lt/at;->d:Lt/n;

    iget-object v0, p0, Lt/at;->d:Lt/n;

    invoke-virtual {v0}, Lt/n;->a()Lt/V;

    move-result-object v0

    iput-object v0, p0, Lt/at;->f:Lt/V;

    iget-object v0, p0, Lt/at;->f:Lt/V;

    invoke-static {v0}, Lt/au;->a(Lt/V;)Lt/au;

    move-result-object v0

    iput-object v0, p0, Lt/at;->e:Lt/au;

    iget-object v0, p0, Lt/at;->e:Lt/au;

    iget-boolean v0, v0, Lt/au;->a:Z

    iput-boolean v0, p0, Lt/at;->a:Z

    iget-boolean v0, p0, Lt/at;->a:Z

    if-eqz v0, :cond_47

    invoke-direct {p0}, Lt/at;->i()V

    :cond_47
    return-void
.end method

.method public static a(Lt/L;Lt/L;Lt/L;Lt/L;)Lt/at;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Lt/L;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance v1, Lt/at;

    invoke-direct {v1, v0}, Lt/at;-><init>([Lt/L;)V

    return-object v1
.end method

.method private a(Lt/L;Lt/L;I)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v1, 0x20000001

    const v2, -0x20000001

    iget v0, p2, Lt/L;->a:I

    if-lez v0, :cond_30

    move v0, v1

    :goto_d
    invoke-direct {p0, p1, p2, v0}, Lt/at;->b(Lt/L;Lt/L;I)I

    move-result v0

    iget v3, p1, Lt/L;->a:I

    iget v4, p2, Lt/L;->a:I

    if-le v3, v4, :cond_32

    iget-object v3, p0, Lt/at;->g:[[Lt/L;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lt/L;

    invoke-direct {v4, v2, v0}, Lt/L;-><init>(II)V

    aput-object v4, v3, v6

    iget-object v2, p0, Lt/at;->g:[[Lt/L;

    aget-object v2, v2, p3

    new-instance v3, Lt/L;

    invoke-direct {v3, v1, v0}, Lt/L;-><init>(II)V

    aput-object v3, v2, v5

    :goto_2f
    return-void

    :cond_30
    move v0, v2

    goto :goto_d

    :cond_32
    iget-object v3, p0, Lt/at;->g:[[Lt/L;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lt/L;

    invoke-direct {v4, v1, v0}, Lt/L;-><init>(II)V

    aput-object v4, v3, v6

    iget-object v1, p0, Lt/at;->g:[[Lt/L;

    aget-object v1, v1, p3

    new-instance v3, Lt/L;

    invoke-direct {v3, v2, v0}, Lt/L;-><init>(II)V

    aput-object v3, v1, v5

    goto :goto_2f
.end method

.method private b(Lt/L;Lt/L;I)I
    .registers 8

    iget v0, p1, Lt/L;->a:I

    sub-int v0, p3, v0

    int-to-double v0, v0

    iget v2, p2, Lt/L;->a:I

    iget v3, p1, Lt/L;->a:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p2, Lt/L;->b:I

    iget v3, p1, Lt/L;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p1, Lt/L;->b:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private i()V
    .registers 9

    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    filled-new-array {v7, v0}, [I

    move-result-object v0

    const-class v1, Lt/L;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lt/L;

    iput-object v0, p0, Lt/at;->g:[[Lt/L;

    move v5, v4

    move v0, v4

    move v2, v4

    :goto_15
    const/4 v1, 0x4

    if-ge v5, v1, :cond_5c

    iget-object v1, p0, Lt/at;->c:[Lt/L;

    aget-object v1, v1, v5

    iget-object v6, p0, Lt/at;->b:[Lt/L;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    move v1, v3

    :goto_27
    if-eq v1, v2, :cond_78

    if-lez v5, :cond_3a

    iget-object v2, p0, Lt/at;->b:[Lt/L;

    add-int/lit8 v6, v5, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lt/at;->b:[Lt/L;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, v6, v0}, Lt/at;->a(Lt/L;Lt/L;I)V

    add-int/lit8 v0, v0, 0x1

    :cond_3a
    :goto_3a
    if-lez v5, :cond_48

    iget-object v2, p0, Lt/at;->g:[[Lt/L;

    add-int/lit8 v6, v0, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lt/at;->c:[Lt/L;

    aget-object v6, v6, v5

    aput-object v6, v2, v3

    :cond_48
    iget-object v2, p0, Lt/at;->g:[[Lt/L;

    aget-object v2, v2, v0

    iget-object v6, p0, Lt/at;->c:[Lt/L;

    aget-object v6, v6, v5

    aput-object v6, v2, v4

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    move v2, v1

    goto :goto_15

    :cond_5a
    move v1, v4

    goto :goto_27

    :cond_5c
    if-ge v0, v7, :cond_6c

    iget-object v1, p0, Lt/at;->b:[Lt/L;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lt/at;->b:[Lt/L;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2, v0}, Lt/at;->a(Lt/L;Lt/L;I)V

    add-int/lit8 v0, v0, 0x1

    :cond_6c
    iget-object v0, p0, Lt/at;->g:[[Lt/L;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lt/at;->c:[Lt/L;

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    return-void

    :cond_78
    move v1, v2

    goto :goto_3a
.end method


# virtual methods
.method public a(I)Lt/L;
    .registers 3

    iget-object v0, p0, Lt/at;->c:[Lt/L;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Lt/au;
    .registers 2

    iget-object v0, p0, Lt/at;->e:Lt/au;

    return-object v0
.end method

.method public a(I[Lt/L;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lt/at;->a:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lt/at;->g:[[Lt/L;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    aput-object v0, p2, v1

    iget-object v0, p0, Lt/at;->g:[[Lt/L;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    aput-object v0, p2, v2

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0, p1}, Lt/at;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lt/at;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v2

    goto :goto_16
.end method

.method public a(Lt/L;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lt/at;->a:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lt/at;->d:Lt/n;

    invoke-virtual {v0, p1}, Lt/n;->a(Lt/L;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    move v3, v2

    move v0, v2

    :goto_f
    const/4 v4, 0x6

    if-ge v3, v4, :cond_29

    iget-object v4, p0, Lt/at;->g:[[Lt/L;

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    iget-object v5, p0, Lt/at;->g:[[Lt/L;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-static {v4, v5, p1}, Lt/N;->b(Lt/L;Lt/L;Lt/L;)Z

    move-result v4

    if-eqz v4, :cond_26

    add-int/lit8 v0, v0, 0x1

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_29
    if-ne v0, v1, :cond_2d

    move v0, v1

    goto :goto_c

    :cond_2d
    move v0, v2

    goto :goto_c
.end method

.method public a(Lt/W;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/at;->a()Lt/au;

    move-result-object v0

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/au;->b(Lt/W;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    move v0, v1

    :goto_11
    invoke-virtual {p1}, Lt/W;->b()I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-virtual {p1, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v2

    invoke-virtual {p0, v2}, Lt/at;->a(Lt/L;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public b()Lt/V;
    .registers 2

    iget-object v0, p0, Lt/at;->f:Lt/V;

    return-object v0
.end method

.method public c()Lt/W;
    .registers 2

    iget-object v0, p0, Lt/at;->d:Lt/n;

    return-object v0
.end method

.method public d()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/at;->c:[Lt/L;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/at;->c:[Lt/L;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lt/at;

    if-eqz v0, :cond_13

    check-cast p1, Lt/at;

    iget-object v0, p0, Lt/at;->b:[Lt/L;

    iget-object v1, p1, Lt/at;->b:[Lt/L;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/at;->c:[Lt/L;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/at;->c:[Lt/L;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()I
    .registers 2

    iget-boolean v0, p0, Lt/at;->a:Z

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

    iget-object v0, p0, Lt/at;->b:[Lt/L;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/at;->b:[Lt/L;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/at;->b:[Lt/L;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/at;->b:[Lt/L;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/at;->b:[Lt/L;

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
