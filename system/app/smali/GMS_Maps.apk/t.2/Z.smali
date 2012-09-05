.class public final Lt/Z;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[F

.field private static c:Lt/Z;


# instance fields
.field private final d:I

.field private final e:[I

.field private final f:[I

.field private final g:[F

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:[Lt/Y;

.field private final l:Lt/ad;

.field private final m:Lt/ac;

.field private final n:Lt/Y;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lt/Z;->a:[I

    new-array v0, v1, [F

    sput-object v0, Lt/Z;->b:[F

    new-instance v0, Lt/Z;

    sget-object v2, Lt/Z;->a:[I

    sget-object v3, Lt/Z;->a:[I

    sget-object v4, Lt/Z;->b:[F

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lt/Z;-><init>(I[I[I[FII)V

    sput-object v0, Lt/Z;->c:Lt/Z;

    return-void
.end method

.method public constructor <init>(II[I[Lt/Y;Lt/ad;Lt/ac;Lt/Y;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/Z;->d:I

    iput p2, p0, Lt/Z;->j:I

    iput-object p3, p0, Lt/Z;->e:[I

    iput-object p4, p0, Lt/Z;->k:[Lt/Y;

    iput-object p5, p0, Lt/Z;->l:Lt/ad;

    iput-object p6, p0, Lt/Z;->m:Lt/ac;

    iput-object p7, p0, Lt/Z;->n:Lt/Y;

    iput-object v1, p0, Lt/Z;->f:[I

    iput-object v1, p0, Lt/Z;->g:[F

    iput v0, p0, Lt/Z;->h:I

    iput v0, p0, Lt/Z;->i:I

    return-void
.end method

.method public constructor <init>(I[I[I[FII)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/Z;->d:I

    iput-object p2, p0, Lt/Z;->e:[I

    iput-object p3, p0, Lt/Z;->f:[I

    iput-object p4, p0, Lt/Z;->g:[F

    iput p5, p0, Lt/Z;->h:I

    iput p6, p0, Lt/Z;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lt/Z;->j:I

    iput-object v1, p0, Lt/Z;->k:[Lt/Y;

    iput-object v1, p0, Lt/Z;->l:Lt/ad;

    iput-object v1, p0, Lt/Z;->m:Lt/ac;

    iput-object v1, p0, Lt/Z;->n:Lt/Y;

    return-void
.end method

.method public static a()Lt/Z;
    .registers 1

    sget-object v0, Lt/Z;->c:Lt/Z;

    return-object v0
.end method

.method public static a(ILjava/io/DataInput;I)Lt/Z;
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v2, 0x9

    if-ge p2, v2, :cond_53

    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    if-lez v3, :cond_1a

    new-array v2, v3, [I

    :goto_e
    move v0, v1

    :goto_f
    if-ge v0, v3, :cond_1d

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    sget-object v2, Lt/Z;->a:[I

    goto :goto_e

    :cond_1d
    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    if-lez v0, :cond_3e

    new-array v3, v0, [I

    :goto_25
    if-lez v0, :cond_41

    new-array v4, v0, [F

    :goto_29
    if-ge v1, v0, :cond_44

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    aput v5, v3, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-static {v5}, Lt/H;->a(I)F

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3e
    sget-object v3, Lt/Z;->a:[I

    goto :goto_25

    :cond_41
    sget-object v4, Lt/Z;->b:[F

    goto :goto_29

    :cond_44
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    new-instance v0, Lt/Z;

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lt/Z;-><init>(I[I[I[FII)V

    :goto_52
    return-object v0

    :cond_53
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, Lt/Z;->e(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v3, v5, [I

    move v4, v1

    :goto_64
    if-ge v4, v5, :cond_70

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_6f
    move-object v3, v0

    :cond_70
    invoke-static {v2}, Lt/Z;->f(I)Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v4, v5, [Lt/Y;

    :goto_7c
    if-ge v1, v5, :cond_88

    invoke-static {p1, p2}, Lt/Y;->a(Ljava/io/DataInput;I)Lt/Y;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_87
    move-object v4, v0

    :cond_88
    invoke-static {v2}, Lt/Z;->g(I)Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-static {p1, p2}, Lt/ad;->a(Ljava/io/DataInput;I)Lt/ad;

    move-result-object v5

    :goto_92
    invoke-static {v2}, Lt/Z;->h(I)Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-static {p1, p2}, Lt/ac;->a(Ljava/io/DataInput;I)Lt/ac;

    move-result-object v6

    :goto_9c
    invoke-static {v2}, Lt/Z;->i(I)Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-static {p1, p2}, Lt/Y;->a(Ljava/io/DataInput;I)Lt/Y;

    move-result-object v7

    :goto_a6
    new-instance v0, Lt/Z;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lt/Z;-><init>(II[I[Lt/Y;Lt/ad;Lt/ac;Lt/Y;)V

    goto :goto_52

    :cond_ad
    move-object v7, v0

    goto :goto_a6

    :cond_af
    move-object v6, v0

    goto :goto_9c

    :cond_b1
    move-object v5, v0

    goto :goto_92
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_10

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_f
    return-void

    :cond_10
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    array-length v3, p1

    move v2, v1

    :goto_18
    if-ge v2, v3, :cond_2f

    aget v4, p1, v2

    if-eqz v0, :cond_29

    move v0, v1

    :goto_1f
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_2f
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f
.end method

.method private static e(I)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static g(I)Z
    .registers 2

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static h(I)Z
    .registers 2

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static i(I)Z
    .registers 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)I
    .registers 3

    invoke-virtual {p0}, Lt/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lt/Y;->a()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lt/Z;->f:[I

    aget v0, v0, p1

    goto :goto_e
.end method

.method public b(I)F
    .registers 3

    invoke-virtual {p0}, Lt/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lt/Y;->b()F

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lt/Z;->g:[F

    aget v0, v0, p1

    goto :goto_e
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lt/Z;->j:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()I
    .registers 2

    invoke-virtual {p0}, Lt/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    array-length v0, v0

    goto :goto_b

    :cond_10
    iget-object v0, p0, Lt/Z;->f:[I

    array-length v0, v0

    goto :goto_b
.end method

.method public c(I)I
    .registers 3

    iget-object v0, p0, Lt/Z;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lt/Z;->e:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lt/Z;->e:[I

    array-length v0, v0

    goto :goto_5
.end method

.method public d(I)Lt/Y;
    .registers 3

    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lt/Z;->h:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lt/Z;

    iget-object v2, p0, Lt/Z;->n:Lt/Y;

    if-nez v2, :cond_21

    iget-object v2, p1, Lt/Z;->n:Lt/Y;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lt/Z;->n:Lt/Y;

    iget-object v3, p1, Lt/Z;->n:Lt/Y;

    invoke-virtual {v2, v3}, Lt/Y;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget v2, p0, Lt/Z;->j:I

    iget v3, p1, Lt/Z;->j:I

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lt/Z;->e:[I

    iget-object v3, p1, Lt/Z;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_41

    move v0, v1

    goto :goto_4

    :cond_41
    iget v2, p0, Lt/Z;->d:I

    iget v3, p1, Lt/Z;->d:I

    if-eq v2, v3, :cond_49

    move v0, v1

    goto :goto_4

    :cond_49
    iget-object v2, p0, Lt/Z;->f:[I

    iget-object v3, p1, Lt/Z;->f:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_55

    move v0, v1

    goto :goto_4

    :cond_55
    iget-object v2, p0, Lt/Z;->g:[F

    iget-object v3, p1, Lt/Z;->g:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_61

    move v0, v1

    goto :goto_4

    :cond_61
    iget-object v2, p0, Lt/Z;->k:[Lt/Y;

    iget-object v3, p1, Lt/Z;->k:[Lt/Y;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    move v0, v1

    goto :goto_4

    :cond_6d
    iget-object v2, p0, Lt/Z;->m:Lt/ac;

    if-nez v2, :cond_77

    iget-object v2, p1, Lt/Z;->m:Lt/ac;

    if-eqz v2, :cond_83

    move v0, v1

    goto :goto_4

    :cond_77
    iget-object v2, p0, Lt/Z;->m:Lt/ac;

    iget-object v3, p1, Lt/Z;->m:Lt/ac;

    invoke-virtual {v2, v3}, Lt/ac;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    move v0, v1

    goto :goto_4

    :cond_83
    iget v2, p0, Lt/Z;->h:I

    iget v3, p1, Lt/Z;->h:I

    if-eq v2, v3, :cond_8c

    move v0, v1

    goto/16 :goto_4

    :cond_8c
    iget v2, p0, Lt/Z;->i:I

    iget v3, p1, Lt/Z;->i:I

    if-eq v2, v3, :cond_95

    move v0, v1

    goto/16 :goto_4

    :cond_95
    iget-object v2, p0, Lt/Z;->l:Lt/ad;

    if-nez v2, :cond_a0

    iget-object v2, p1, Lt/Z;->l:Lt/ad;

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    :cond_a0
    iget-object v2, p0, Lt/Z;->l:Lt/ad;

    iget-object v3, p1, Lt/Z;->l:Lt/ad;

    invoke-virtual {v2, v3}, Lt/ad;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lt/Z;->i:I

    return v0
.end method

.method public g()Z
    .registers 2

    iget v0, p0, Lt/Z;->j:I

    invoke-static {v0}, Lt/Z;->f(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 2

    iget v0, p0, Lt/Z;->j:I

    invoke-static {v0}, Lt/Z;->g(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lt/Z;->n:Lt/Y;

    if-nez v0, :cond_50

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/Z;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt/Z;->e:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/Z;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt/Z;->f:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt/Z;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt/Z;->k:[Lt/Y;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt/Z;->m:Lt/ac;

    if-nez v0, :cond_57

    move v0, v1

    :goto_3d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/Z;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/Z;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt/Z;->l:Lt/ad;

    if-nez v2, :cond_5e

    :goto_4e
    add-int/2addr v0, v1

    return v0

    :cond_50
    iget-object v0, p0, Lt/Z;->n:Lt/Y;

    invoke-virtual {v0}, Lt/Y;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_57
    iget-object v0, p0, Lt/Z;->m:Lt/ac;

    invoke-virtual {v0}, Lt/ac;->hashCode()I

    move-result v0

    goto :goto_3d

    :cond_5e
    iget-object v1, p0, Lt/Z;->l:Lt/ad;

    invoke-virtual {v1}, Lt/ad;->hashCode()I

    move-result v1

    goto :goto_4e
.end method

.method public i()Z
    .registers 2

    iget v0, p0, Lt/Z;->j:I

    invoke-static {v0}, Lt/Z;->h(I)Z

    move-result v0

    return v0
.end method

.method public j()I
    .registers 2

    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    array-length v0, v0

    return v0
.end method

.method public k()Lt/ad;
    .registers 2

    iget-object v0, p0, Lt/Z;->l:Lt/ad;

    return-object v0
.end method

.method public l()Lt/ac;
    .registers 2

    iget-object v0, p0, Lt/Z;->m:Lt/ac;

    return-object v0
.end method

.method public m()I
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lt/Z;->e:[I

    if-nez v0, :cond_26

    move v0, v1

    :goto_6
    iget-object v2, p0, Lt/Z;->f:[I

    if-nez v2, :cond_2c

    move v2, v1

    :goto_b
    iget-object v3, p0, Lt/Z;->g:[F

    if-nez v3, :cond_32

    move v3, v1

    :goto_10
    iget-object v4, p0, Lt/Z;->k:[Lt/Y;

    if-eqz v4, :cond_38

    iget-object v6, p0, Lt/Z;->k:[Lt/Y;

    array-length v7, v6

    move v4, v1

    :goto_18
    if-ge v4, v7, :cond_38

    aget-object v5, v6, v4

    invoke-virtual {v5}, Lt/Y;->f()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto :goto_18

    :cond_26
    iget-object v0, p0, Lt/Z;->e:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_6

    :cond_2c
    iget-object v2, p0, Lt/Z;->f:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    goto :goto_b

    :cond_32
    iget-object v3, p0, Lt/Z;->g:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    goto :goto_10

    :cond_38
    iget-object v4, p0, Lt/Z;->n:Lt/Y;

    invoke-static {v4}, Lt/H;->a(Lt/Y;)I

    move-result v4

    add-int/lit8 v0, v0, 0x38

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Style{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lt/Z;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fillColors"

    iget-object v2, p0, Lt/Z;->e:[I

    invoke-static {v0, v2, v1}, Lt/Z;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "strokeColors"

    iget-object v2, p0, Lt/Z;->f:[I

    invoke-static {v0, v2, v1}, Lt/Z;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    const-string v0, ", strokeWidths="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lt/Z;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lt/Z;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lt/Z;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", components="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lt/Z;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", strokes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    if-nez v0, :cond_a4

    const/4 v0, 0x0

    :goto_72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lt/Z;->l:Lt/ad;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textBoxStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lt/Z;->m:Lt/ac;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", arrowStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lt/Z;->n:Lt/Y;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a4
    iget-object v0, p0, Lt/Z;->k:[Lt/Y;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_72
.end method
