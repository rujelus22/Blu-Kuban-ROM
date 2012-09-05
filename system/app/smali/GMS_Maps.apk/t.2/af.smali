.class public Lt/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lt/m;


# direct methods
.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lt/af;-><init>(IIILt/m;)V

    return-void
.end method

.method public constructor <init>(IIILt/m;)V
    .registers 8

    const/high16 v2, 0x2000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/af;->d:I

    iput p2, p0, Lt/af;->e:I

    iput p3, p0, Lt/af;->f:I

    iput-object p4, p0, Lt/af;->g:Lt/m;

    rsub-int/lit8 v0, p1, 0x12

    iput v0, p0, Lt/af;->c:I

    const/high16 v0, 0x4000

    shr-int/2addr v0, p1

    iget v1, p0, Lt/af;->e:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lt/af;->a:I

    iget v1, p0, Lt/af;->f:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p0, Lt/af;->b:I

    return-void
.end method

.method public static a(Lt/au;I)Ljava/util/ArrayList;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lt/af;->a(Lt/au;ILt/m;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lt/au;ILt/m;)Ljava/util/ArrayList;
    .registers 14

    const/4 v10, 0x2

    const/4 v3, 0x0

    if-gez p1, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lt/au;->f()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v0

    invoke-virtual {p0}, Lt/au;->g()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v5

    invoke-virtual {p0}, Lt/au;->g()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lt/au;->f()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1, p2}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v6

    invoke-virtual {v5}, Lt/af;->c()I

    move-result v1

    invoke-virtual {v5}, Lt/af;->d()I

    move-result v2

    invoke-virtual {v6}, Lt/af;->c()I

    move-result v7

    invoke-virtual {v6}, Lt/af;->d()I

    move-result v8

    const/4 v0, 0x1

    shl-int v9, v0, p1

    if-le v1, v7, :cond_5e

    sub-int v0, v9, v1

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    :goto_56
    if-gez v4, :cond_69

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    :cond_5e
    sub-int v0, v7, v1

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    goto :goto_56

    :cond_69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-gt v4, v10, :cond_79

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, v10, :cond_9

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_79
    if-le v1, v7, :cond_a3

    move v4, v1

    :goto_7c
    if-ge v4, v9, :cond_93

    move v1, v2

    :goto_7f
    if-gt v1, v8, :cond_8c

    new-instance v5, Lt/af;

    invoke-direct {v5, p1, v4, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_8c
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7c

    :cond_90
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :cond_93
    if-gt v3, v7, :cond_9

    move v1, v2

    :goto_96
    if-gt v1, v8, :cond_90

    new-instance v4, Lt/af;

    invoke-direct {v4, p1, v3, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    :cond_a3
    move v3, v1

    :goto_a4
    if-gt v3, v7, :cond_9

    move v1, v2

    :goto_a7
    if-gt v1, v8, :cond_b4

    new-instance v4, Lt/af;

    invoke-direct {v4, p1, v3, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_b4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a4
.end method

.method public static a(IIILt/m;)Lt/af;
    .registers 9

    const/high16 v4, 0x2000

    const/16 v1, 0x1e

    const/4 v0, 0x0

    if-gtz p0, :cond_f

    new-instance v1, Lt/af;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v0, v2}, Lt/af;-><init>(IIILt/m;)V

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    if-le p0, v1, :cond_12

    move p0, v1

    :cond_12
    rsub-int/lit8 v1, p0, 0x1e

    add-int v2, p1, v4

    shr-int/2addr v2, v1

    neg-int v3, p2

    add-int/2addr v3, v4

    shr-int v1, v3, v1

    const/4 v3, 0x1

    shl-int/2addr v3, p0

    if-gez v2, :cond_29

    add-int/2addr v2, v3

    :cond_20
    :goto_20
    if-gez v1, :cond_2d

    :goto_22
    new-instance v1, Lt/af;

    invoke-direct {v1, p0, v2, v0, p3}, Lt/af;-><init>(IIILt/m;)V

    move-object v0, v1

    goto :goto_e

    :cond_29
    if-lt v2, v3, :cond_20

    sub-int/2addr v2, v3

    goto :goto_20

    :cond_2d
    if-lt v1, v3, :cond_32

    add-int/lit8 v0, v3, -0x1

    goto :goto_22

    :cond_32
    move v0, v1

    goto :goto_22
.end method

.method public static a(ILt/L;)Lt/af;
    .registers 4

    invoke-virtual {p1}, Lt/L;->f()I

    move-result v0

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v1

    invoke-static {p0, v0, v1}, Lt/af;->c(III)Lt/af;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lt/af;
    .registers 5

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    new-instance v3, Lt/af;

    invoke-direct {v3, v0, v1, v2}, Lt/af;-><init>(III)V

    return-object v3
.end method

.method public static b(Lt/au;ILt/m;)Ljava/util/ArrayList;
    .registers 11

    invoke-virtual {p0}, Lt/au;->f()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v0

    invoke-virtual {p0}, Lt/au;->g()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lt/af;->b(IIILt/m;)Lt/af;

    move-result-object v0

    invoke-virtual {p0}, Lt/au;->g()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lt/au;->f()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v1, v2, p2}, Lt/af;->b(IIILt/m;)Lt/af;

    move-result-object v2

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v1

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v3

    invoke-virtual {v2}, Lt/af;->c()I

    move-result v5

    invoke-virtual {v2}, Lt/af;->d()I

    move-result v6

    invoke-virtual {v0}, Lt/af;->f()I

    move-result v4

    invoke-virtual {v0}, Lt/af;->g()I

    move-result v0

    invoke-static {v4, v0}, Lt/L;->f(II)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {v2}, Lt/af;->f()I

    move-result v0

    invoke-virtual {v2}, Lt/af;->g()I

    move-result v2

    invoke-static {v0, v2}, Lt/L;->f(II)Z

    move-result v0

    if-nez v0, :cond_5e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5d
    return-object v0

    :cond_5e
    const/4 v0, 0x1

    shl-int v2, v0, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-le v1, v5, :cond_af

    move v4, v1

    :goto_69
    if-ge v4, v2, :cond_8b

    move v1, v3

    :goto_6c
    if-gez v1, :cond_79

    new-instance v7, Lt/af;

    invoke-direct {v7, p1, v4, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_79
    move v1, v2

    :goto_7a
    if-gt v1, v6, :cond_87

    new-instance v7, Lt/af;

    invoke-direct {v7, p1, v4, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_87
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_69

    :cond_8b
    const/4 v1, 0x0

    move v4, v1

    :goto_8d
    if-gt v4, v5, :cond_5d

    move v1, v3

    :goto_90
    if-gez v1, :cond_9d

    new-instance v7, Lt/af;

    invoke-direct {v7, p1, v4, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_9d
    move v1, v2

    :goto_9e
    if-gt v1, v6, :cond_ab

    new-instance v7, Lt/af;

    invoke-direct {v7, p1, v4, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    :cond_ab
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8d

    :cond_af
    move v4, v1

    :goto_b0
    if-gt v4, v5, :cond_5d

    move v1, v3

    :goto_b3
    if-gez v1, :cond_c0

    new-instance v7, Lt/af;

    invoke-direct {v7, p1, v4, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    :cond_c0
    move v1, v2

    :goto_c1
    if-gt v1, v6, :cond_ce

    new-instance v7, Lt/af;

    invoke-direct {v7, p1, v4, v1, p2}, Lt/af;-><init>(IIILt/m;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    :cond_ce
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_b0
.end method

.method private static b(IIILt/m;)Lt/af;
    .registers 8

    const/high16 v3, 0x2000

    const/16 v0, 0x1e

    const/4 v2, 0x0

    if-gtz p0, :cond_e

    new-instance v0, Lt/af;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lt/af;-><init>(IIILt/m;)V

    :goto_d
    return-object v0

    :cond_e
    if-le p0, v0, :cond_11

    move p0, v0

    :cond_11
    rsub-int/lit8 v0, p0, 0x1e

    add-int v1, p1, v3

    shr-int/2addr v1, v0

    neg-int v2, p2

    add-int/2addr v2, v3

    shr-int/2addr v2, v0

    new-instance v0, Lt/af;

    invoke-direct {v0, p0, v1, v2, p3}, Lt/af;-><init>(IIILt/m;)V

    goto :goto_d
.end method

.method public static c(III)Lt/af;
    .registers 7

    const/high16 v3, 0x2000

    if-ltz p0, :cond_e

    const/16 v0, 0x1e

    if-gt p0, v0, :cond_e

    const/high16 v0, -0x2000

    if-le p2, v0, :cond_e

    if-le p2, v3, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    rsub-int/lit8 v1, p0, 0x1e

    add-int v0, p1, v3

    shr-int/2addr v0, v1

    neg-int v2, p2

    add-int/2addr v2, v3

    shr-int/2addr v2, v1

    const/4 v1, 0x1

    shl-int/2addr v1, p0

    if-gez v0, :cond_24

    add-int/2addr v0, v1

    :cond_1d
    :goto_1d
    new-instance v1, Lt/af;

    invoke-direct {v1, p0, v0, v2}, Lt/af;-><init>(III)V

    move-object v0, v1

    goto :goto_f

    :cond_24
    if-lt v0, v1, :cond_1d

    sub-int/2addr v0, v1

    goto :goto_1d
.end method


# virtual methods
.method public a(Lt/af;)I
    .registers 4

    iget v0, p0, Lt/af;->d:I

    iget v1, p1, Lt/af;->d:I

    if-ne v0, v1, :cond_41

    iget v0, p0, Lt/af;->e:I

    iget v1, p1, Lt/af;->e:I

    if-ne v0, v1, :cond_3b

    iget v0, p0, Lt/af;->f:I

    iget v1, p1, Lt/af;->f:I

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lt/af;->g:Lt/m;

    if-nez v0, :cond_1e

    iget-object v0, p1, Lt/af;->g:Lt/m;

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, -0x1

    goto :goto_1b

    :cond_1e
    iget-object v0, p1, Lt/af;->g:Lt/m;

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_1b

    :cond_24
    iget-object v0, p0, Lt/af;->g:Lt/m;

    invoke-virtual {v0}, Lt/m;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lt/af;->g:Lt/m;

    invoke-virtual {v1}, Lt/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1b

    :cond_35
    iget v0, p0, Lt/af;->f:I

    iget v1, p1, Lt/af;->f:I

    sub-int/2addr v0, v1

    goto :goto_1b

    :cond_3b
    iget v0, p0, Lt/af;->e:I

    iget v1, p1, Lt/af;->e:I

    sub-int/2addr v0, v1

    goto :goto_1b

    :cond_41
    iget v0, p0, Lt/af;->d:I

    iget v1, p1, Lt/af;->d:I

    sub-int/2addr v0, v1

    goto :goto_1b
.end method

.method public a(I)Lt/af;
    .registers 5

    iget v0, p0, Lt/af;->d:I

    sub-int/2addr v0, p1

    if-gtz v0, :cond_6

    :goto_5
    return-object p0

    :cond_6
    iget v1, p0, Lt/af;->e:I

    shr-int/2addr v1, v0

    iget v2, p0, Lt/af;->f:I

    shr-int v0, v2, v0

    invoke-virtual {p0, p1, v1, v0}, Lt/af;->b(III)Lt/af;

    move-result-object p0

    goto :goto_5
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, Lt/af;->d:I

    invoke-static {p1, v0}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, Lt/af;->e:I

    invoke-static {p1, v0}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, Lt/af;->f:I

    invoke-static {p1, v0}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lt/af;->d:I

    return v0
.end method

.method public b(III)Lt/af;
    .registers 6

    new-instance v0, Lt/af;

    iget-object v1, p0, Lt/af;->g:Lt/m;

    invoke-direct {v0, p1, p2, p3, v1}, Lt/af;-><init>(IIILt/m;)V

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lt/af;->e:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lt/af;

    invoke-virtual {p0, p1}, Lt/af;->a(Lt/af;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lt/af;->f:I

    return v0
.end method

.method public e()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/af;->g:Lt/m;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v1, p1, Lt/af;

    if-eqz v1, :cond_4

    check-cast p1, Lt/af;

    iget v1, p0, Lt/af;->e:I

    iget v2, p1, Lt/af;->e:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lt/af;->f:I

    iget v2, p1, Lt/af;->f:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lt/af;->d:I

    iget v2, p1, Lt/af;->d:I

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lt/af;->g:Lt/m;

    iget-object v1, p1, Lt/af;->g:Lt/m;

    invoke-static {v0, v1}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lt/af;->a:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lt/af;->b:I

    return v0
.end method

.method public h()Lt/L;
    .registers 4

    new-instance v0, Lt/L;

    iget v1, p0, Lt/af;->a:I

    iget v2, p0, Lt/af;->b:I

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lt/af;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lt/af;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lt/af;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/af;->g:Lt/m;

    if-eqz v1, :cond_19

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt/af;->g:Lt/m;

    invoke-virtual {v1}, Lt/m;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    return v0
.end method

.method public i()Lt/V;
    .registers 7

    const/high16 v0, 0x4000

    iget v1, p0, Lt/af;->d:I

    shr-int/2addr v0, v1

    new-instance v1, Lt/V;

    new-instance v2, Lt/L;

    iget v3, p0, Lt/af;->a:I

    iget v4, p0, Lt/af;->b:I

    invoke-direct {v2, v3, v4}, Lt/L;-><init>(II)V

    new-instance v3, Lt/L;

    iget v4, p0, Lt/af;->a:I

    add-int/2addr v4, v0

    iget v5, p0, Lt/af;->b:I

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v0}, Lt/L;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lt/af;->g:Lt/m;

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/af;->g:Lt/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method
