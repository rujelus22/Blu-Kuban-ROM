.class public Lcom/google/android/maps/driveabout/vector/dl;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lat/h;

.field private b:Lt/L;

.field private c:I

.field private final d:Lt/L;

.field private e:Lcom/google/android/maps/driveabout/vector/dm;

.field private f:Lcom/google/android/maps/driveabout/vector/dn;


# direct methods
.method public constructor <init>(Lat/h;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0, v1, v1}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->b:Lt/L;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->c:I

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->d:Lt/L;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/dl;->e:Lcom/google/android/maps/driveabout/vector/dm;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/dl;->f:Lcom/google/android/maps/driveabout/vector/dn;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dl;->a:Lat/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/t;Lt/L;)Lt/L;
    .registers 13

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v2

    invoke-virtual {p2}, Lt/L;->f()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v4

    div-float/2addr v2, v4

    float-to-int v5, v2

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v2

    invoke-virtual {p2}, Lt/L;->g()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v4

    div-float/2addr v2, v4

    float-to-int v6, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v2

    div-int/lit8 v7, v4, 0x2

    div-int/lit8 v8, v2, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v4, :cond_3e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v2, :cond_40

    :cond_3e
    move-object v0, v1

    :cond_3f
    :goto_3f
    return-object v0

    :cond_40
    neg-int v1, v7

    if-ge v5, v1, :cond_67

    neg-int v1, v4

    move v4, v1

    :cond_45
    :goto_45
    neg-int v1, v8

    if-ge v6, v1, :cond_6b

    neg-int v1, v2

    :goto_49
    if-nez v1, :cond_4d

    if-eqz v4, :cond_3f

    :cond_4d
    int-to-float v0, v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dl;->d:Lt/L;

    invoke-virtual {v2, v0, v1}, Lt/L;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->d:Lt/L;

    invoke-virtual {p2, v0}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v0

    goto :goto_3f

    :cond_67
    if-gt v5, v7, :cond_45

    move v4, v3

    goto :goto_45

    :cond_6b
    if-le v6, v8, :cond_6f

    move v1, v2

    goto :goto_49

    :cond_6f
    move v1, v3

    goto :goto_49
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dl;->e:Lcom/google/android/maps/driveabout/vector/dm;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dl;->f:Lcom/google/android/maps/driveabout/vector/dn;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dl;->c:I

    if-eq v1, v2, :cond_27

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v2

    invoke-virtual {v2}, Lt/at;->a()Lt/au;

    move-result-object v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dl;->a(Lt/L;Lt/L;ILt/au;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dl;->b:Lt/L;

    invoke-virtual {v2, v0}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dl;->b:Lt/L;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/maps/driveabout/vector/dl;->a(Lcom/google/android/maps/driveabout/vector/t;Lt/L;)Lt/L;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dl;->b:Lt/L;

    if-eqz v3, :cond_49

    invoke-virtual {v0, v2}, Lt/L;->d(Lt/L;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/dl;->b:Lt/L;

    invoke-virtual {v0, v4}, Lt/L;->d(Lt/L;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_26

    :cond_49
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v3

    invoke-virtual {v3}, Lt/at;->a()Lt/au;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/dl;->a(Lt/L;Lt/L;ILt/au;)V

    goto :goto_26
.end method

.method a(Lt/L;Lt/L;ILt/au;)V
    .registers 14

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dl;->b:Lt/L;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/dl;->c:I

    invoke-virtual {p1}, Lt/L;->a()I

    move-result v1

    invoke-virtual {p1}, Lt/L;->c()I

    move-result v2

    invoke-virtual {p4}, Lt/au;->e()I

    move-result v0

    int-to-double v3, v0

    int-to-double v5, v1

    const-wide v7, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v5, v7

    const-wide v7, 0x3f91df46a2529d39L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x3fd5752a00000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p4}, Lt/au;->d()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3fd5752a00000000L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->f:Lcom/google/android/maps/driveabout/vector/dn;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->f:Lcom/google/android/maps/driveabout/vector/dn;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dn;->a()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_42
    const/4 v0, 0x1

    :goto_43
    const/4 v5, 0x1

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_4e
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lt/L;->a()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lt/L;->c()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->a:Lat/h;

    const/4 v1, 0x7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lat/h;->a(I[BZZZ)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->e:Lcom/google/android/maps/driveabout/vector/dm;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dl;->e:Lcom/google/android/maps/driveabout/vector/dm;

    invoke-interface {v0, p1, p3}, Lcom/google/android/maps/driveabout/vector/dm;->a(Lt/L;I)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_87} :catch_8a

    :cond_87
    :goto_87
    return-void

    :cond_88
    const/4 v0, 0x0

    goto :goto_43

    :catch_8a
    move-exception v0

    const-string v1, "view point"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_87
.end method
