.class public Lt/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/L;

.field private final b:I

.field private final c:F

.field private final d:Lt/L;

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method public constructor <init>(Lt/L;IFLt/L;FFF)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/a;->a:Lt/L;

    iput p2, p0, Lt/a;->b:I

    iput p3, p0, Lt/a;->c:F

    iput-object p4, p0, Lt/a;->d:Lt/L;

    iput p5, p0, Lt/a;->e:F

    iput p6, p0, Lt/a;->f:F

    iput p7, p0, Lt/a;->g:F

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lt/af;I)Lt/a;
    .registers 11

    const/high16 v0, 0x7fc0

    invoke-static {p0, p1}, Lt/L;->a(Ljava/io/DataInput;Lt/af;)Lt/L;

    move-result-object v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, Lt/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {v3}, Lt/H;->d(I)F

    move-result v3

    :goto_18
    const/4 v4, 0x0

    invoke-static {v2}, Lt/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-static {p0, p1}, Lt/L;->a(Ljava/io/DataInput;Lt/af;)Lt/L;

    move-result-object v4

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lt/H;->d(I)F

    move-result v5

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lt/H;->a(I)F

    move-result v6

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lt/H;->a(I)F

    move-result v7

    :goto_3b
    new-instance v0, Lt/a;

    invoke-direct/range {v0 .. v7}, Lt/a;-><init>(Lt/L;IFLt/L;FFF)V

    return-object v0

    :cond_41
    move v7, v0

    move v6, v0

    move v5, v0

    goto :goto_3b

    :cond_45
    move v3, v0

    goto :goto_18
.end method

.method private static a(I)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Lt/a;->b:I

    invoke-static {v0}, Lt/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Lt/L;
    .registers 2

    iget-object v0, p0, Lt/a;->a:Lt/L;

    return-object v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lt/a;->c:F

    return v0
.end method

.method public d()I
    .registers 3

    iget-object v0, p0, Lt/a;->a:Lt/L;

    invoke-static {v0}, Lt/H;->a(Lt/L;)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iget-object v1, p0, Lt/a;->d:Lt/L;

    invoke-static {v1}, Lt/H;->a(Lt/L;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    move v1, v0

    :cond_5
    :goto_5
    return v1

    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    check-cast p1, Lt/a;

    iget-object v2, p0, Lt/a;->d:Lt/L;

    if-nez v2, :cond_64

    iget-object v2, p1, Lt/a;->d:Lt/L;

    if-nez v2, :cond_5

    :cond_1c
    iget v2, p0, Lt/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lt/a;->f:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lt/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lt/a;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lt/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lt/a;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lt/a;->b:I

    iget v3, p1, Lt/a;->b:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lt/a;->a:Lt/L;

    if-nez v2, :cond_6f

    iget-object v2, p1, Lt/a;->a:Lt/L;

    if-nez v2, :cond_5

    :cond_54
    iget v2, p0, Lt/a;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lt/a;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_7a

    :goto_62
    move v1, v0

    goto :goto_5

    :cond_64
    iget-object v2, p0, Lt/a;->d:Lt/L;

    iget-object v3, p1, Lt/a;->d:Lt/L;

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_6f
    iget-object v2, p0, Lt/a;->a:Lt/L;

    iget-object v3, p1, Lt/a;->a:Lt/L;

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_5

    :cond_7a
    move v0, v1

    goto :goto_62
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lt/a;->d:Lt/L;

    if-nez v0, :cond_39

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/a;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt/a;->a:Lt/L;

    if-nez v2, :cond_40

    :goto_2e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lt/a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_39
    iget-object v0, p0, Lt/a;->d:Lt/L;

    invoke-virtual {v0}, Lt/L;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_40
    iget-object v1, p0, Lt/a;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->hashCode()I

    move-result v1

    goto :goto_2e
.end method
