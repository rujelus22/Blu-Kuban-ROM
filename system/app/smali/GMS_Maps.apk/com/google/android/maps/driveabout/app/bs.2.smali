.class public Lcom/google/android/maps/driveabout/app/bs;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lam/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lam/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bs;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bs;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bs;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/16 v1, 0x77

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lam/g;->a(Lam/b;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/16 v1, 0x7c

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .registers 5

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    invoke-virtual {v0, v3}, Lam/b;->l(I)I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    invoke-virtual {v2, v3, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->l(I)I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public g()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    goto :goto_b
.end method

.method public h()F
    .registers 5

    const/4 v3, 0x1

    const/high16 v0, -0x4080

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/16 v2, 0x76

    invoke-static {v1, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v3}, Lam/b;->d(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    goto :goto_d
.end method

.method public i()[Ljava/lang/String;
    .registers 15

    const/4 v0, 0x0

    const/4 v13, 0x5

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/16 v3, 0x97

    invoke-static {v1, v3}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v1, v13}, Lam/b;->l(I)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz v3, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_25
    if-ge v0, v3, :cond_5c

    if-lez v0, :cond_2e

    const-string v6, " ... "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v1, v13, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    invoke-static {v6, v11}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4c

    iget-object v8, p0, Lcom/google/android/maps/driveabout/app/bs;->a:Landroid/content/Context;

    const v9, 0x7f0b00ca

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    invoke-static {v6, v12}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_62
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_83

    if-lez v1, :cond_76

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->a:Landroid/content/Context;

    const v6, 0x7f0b000a

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    :cond_83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    goto/16 :goto_f
.end method

.method public j()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bs;->d:Lam/b;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/16 v1, 0x5d

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method
