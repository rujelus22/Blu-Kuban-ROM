.class public Lt/B;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:F

.field private final e:Ljava/lang/String;

.field private final f:Lt/Z;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:F


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lt/Z;ILjava/lang/String;F)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/B;->a:I

    iput-object p2, p0, Lt/B;->b:Ljava/lang/String;

    iput p3, p0, Lt/B;->c:I

    const/high16 v0, 0x3f80

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lt/B;->d:F

    iput-object p4, p0, Lt/B;->e:Ljava/lang/String;

    iput-object p5, p0, Lt/B;->f:Lt/Z;

    iput p6, p0, Lt/B;->g:I

    iput-object p7, p0, Lt/B;->h:Ljava/lang/String;

    iput p8, p0, Lt/B;->i:F

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/aa;[Ljava/lang/String;Lt/Z;Ljava/lang/String;Ljava/util/List;)V
    .registers 16

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1}, Lt/B;->b(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    :cond_18
    const/4 v4, 0x0

    invoke-static {v1}, Lt/B;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/co;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_2b
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-static {v1}, Lt/B;->d(I)Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-virtual {p2, v5}, Lt/aa;->a(I)Lt/Z;

    move-result-object v5

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v6

    invoke-static {v6, p3}, Lt/H;->a(I[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    aget-object v0, p3, v6

    :cond_48
    move-object v7, v0

    :goto_49
    const/4 v8, 0x0

    invoke-static {v1}, Lt/B;->e(I)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lt/H;->a(I)F

    move-result v8

    :cond_58
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lt/H;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v0, 0x8

    if-eq v1, v0, :cond_8a

    new-instance v0, Lt/B;

    xor-int/lit8 v1, v1, 0x8

    invoke-direct/range {v0 .. v8}, Lt/B;-><init>(ILjava/lang/String;ILjava/lang/String;Lt/Z;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lt/B;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Lt/B;-><init>(ILjava/lang/String;ILjava/lang/String;Lt/Z;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_80
    return-void

    :cond_81
    invoke-static {v1}, Lt/B;->a(I)Z

    move-result v7

    if-eqz v7, :cond_93

    move-object v7, p5

    move-object v5, p4

    goto :goto_49

    :cond_8a
    new-instance v0, Lt/B;

    invoke-direct/range {v0 .. v8}, Lt/B;-><init>(ILjava/lang/String;ILjava/lang/String;Lt/Z;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_93
    move-object v7, v0

    goto :goto_49
.end method

.method private static a(I)Z
    .registers 2

    invoke-static {p0}, Lt/B;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lt/B;->b(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static b(I)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static d(I)Z
    .registers 2

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .registers 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .registers 2

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Lt/B;->a:I

    invoke-static {v0}, Lt/B;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lt/B;->a:I

    invoke-static {v0}, Lt/B;->b(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    iget v0, p0, Lt/B;->a:I

    invoke-static {v0}, Lt/B;->c(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    iget v0, p0, Lt/B;->a:I

    invoke-static {v0}, Lt/B;->d(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget v0, p0, Lt/B;->a:I

    invoke-static {v0}, Lt/B;->e(I)Z

    move-result v0

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

    check-cast p1, Lt/B;

    iget v2, p0, Lt/B;->a:I

    iget v3, p1, Lt/B;->a:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lt/B;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lt/B;->i:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lt/B;->b:Ljava/lang/String;

    if-nez v2, :cond_5a

    iget-object v2, p1, Lt/B;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_30
    iget-object v2, p0, Lt/B;->f:Lt/Z;

    if-nez v2, :cond_65

    iget-object v2, p1, Lt/B;->f:Lt/Z;

    if-nez v2, :cond_5

    :cond_38
    iget-object v2, p0, Lt/B;->h:Ljava/lang/String;

    if-nez v2, :cond_70

    iget-object v2, p1, Lt/B;->h:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_40
    iget v2, p0, Lt/B;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lt/B;->c:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lt/B;->e:Ljava/lang/String;

    if-nez v2, :cond_7d

    iget-object v2, p1, Lt/B;->e:Ljava/lang/String;

    if-nez v2, :cond_7b

    :goto_58
    move v1, v0

    goto :goto_5

    :cond_5a
    iget-object v2, p0, Lt/B;->b:Ljava/lang/String;

    iget-object v3, p1, Lt/B;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_5

    :cond_65
    iget-object v2, p0, Lt/B;->f:Lt/Z;

    iget-object v3, p1, Lt/B;->f:Lt/Z;

    invoke-virtual {v2, v3}, Lt/Z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_5

    :cond_70
    iget-object v2, p0, Lt/B;->h:Ljava/lang/String;

    iget-object v3, p1, Lt/B;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_5

    :cond_7b
    move v0, v1

    goto :goto_58

    :cond_7d
    iget-object v0, p0, Lt/B;->e:Ljava/lang/String;

    iget-object v1, p1, Lt/B;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_58
.end method

.method public f()Z
    .registers 2

    iget v0, p0, Lt/B;->a:I

    invoke-static {v0}, Lt/B;->f(I)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/B;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()F
    .registers 2

    iget v0, p0, Lt/B;->d:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lt/B;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/B;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt/B;->b:Ljava/lang/String;

    if-nez v0, :cond_38

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt/B;->f:Lt/Z;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt/B;->h:Ljava/lang/String;

    if-nez v0, :cond_46

    move v0, v1

    :goto_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt/B;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt/B;->e:Ljava/lang/String;

    if-nez v2, :cond_4d

    :goto_36
    add-int/2addr v0, v1

    return v0

    :cond_38
    iget-object v0, p0, Lt/B;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_3f
    iget-object v0, p0, Lt/B;->f:Lt/Z;

    invoke-virtual {v0}, Lt/Z;->hashCode()I

    move-result v0

    goto :goto_1d

    :cond_46
    iget-object v0, p0, Lt/B;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_25

    :cond_4d
    iget-object v1, p0, Lt/B;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_36
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/B;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/B;->f:Lt/Z;

    return-object v0
.end method

.method public k()F
    .registers 2

    iget v0, p0, Lt/B;->i:F

    return v0
.end method

.method public l()I
    .registers 3

    iget-object v0, p0, Lt/B;->b:Ljava/lang/String;

    invoke-static {v0}, Lt/H;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    iget-object v1, p0, Lt/B;->e:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/B;->h:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/B;->f:Lt/Z;

    invoke-static {v1}, Lt/H;->a(Lt/Z;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
