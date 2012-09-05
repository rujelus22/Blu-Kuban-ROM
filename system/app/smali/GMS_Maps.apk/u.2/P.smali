.class public Lu/P;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lu/Q;

.field private final b:Lt/o;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/b;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lu/P;->a(Lam/b;)Lu/Q;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, Lz/f;->a(Lam/b;)Lt/o;

    move-result-object v1

    if-eqz p2, :cond_25

    :goto_f
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lu/P;-><init>(Lu/Q;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lu/P;->c(Lam/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/P;->g:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lu/P;->f:I

    return-void

    :cond_25
    invoke-static {p1}, Lu/P;->b(Lam/b;)Ljava/lang/String;

    move-result-object p2

    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, p2, p3, p4}, Lu/P;-><init>(Lu/Q;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance v0, Lu/Q;

    invoke-direct {v0, p1}, Lu/Q;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public constructor <init>(Lt/o;)V
    .registers 4

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lu/Q;

    invoke-direct {p0, v0, p1, v1, v1}, Lu/P;-><init>(Lu/Q;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lu/P;)V
    .registers 3

    iget-object v0, p1, Lu/P;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lu/P;-><init>(Lu/P;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lu/P;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lu/P;->a:Lu/Q;

    iput-object v0, p0, Lu/P;->a:Lu/Q;

    iget-object v0, p1, Lu/P;->b:Lt/o;

    iput-object v0, p0, Lu/P;->b:Lt/o;

    iput-object p2, p0, Lu/P;->c:Ljava/lang/String;

    iget-object v0, p1, Lu/P;->d:Ljava/lang/String;

    iput-object v0, p0, Lu/P;->d:Ljava/lang/String;

    iget-object v0, p1, Lu/P;->e:Ljava/lang/String;

    iput-object v0, p0, Lu/P;->e:Ljava/lang/String;

    iget v0, p1, Lu/P;->f:I

    iput v0, p0, Lu/P;->f:I

    iget-object v0, p1, Lu/P;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/P;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/Q;Lt/o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1a

    if-eqz p3, :cond_1a

    invoke-virtual {p1}, Lu/Q;->a()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-virtual {p1, v2}, Lu/Q;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object p3, v0

    :cond_1a
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lu/Q;->a()I

    move-result v1

    if-eqz v1, :cond_2d

    :goto_22
    iput-object p1, p0, Lu/P;->a:Lu/Q;

    iput-object p2, p0, Lu/P;->b:Lt/o;

    iput-object p3, p0, Lu/P;->c:Ljava/lang/String;

    iput-object p4, p0, Lu/P;->d:Ljava/lang/String;

    iput v2, p0, Lu/P;->f:I

    return-void

    :cond_2d
    move-object p1, v0

    goto :goto_22
.end method

.method private static a(Lam/b;)Lu/Q;
    .registers 8

    const/4 v6, 0x4

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_24

    invoke-virtual {v1, v6, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    new-instance v1, Lu/Q;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lu/Q;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Lu/Q;

    invoke-direct {v0, v1}, Lu/Q;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    :cond_4e
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private static b(Lam/b;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static c(Lam/b;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x77

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v3}, Lam/b;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ax;->a(J)Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lu/P;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lu/P;->e:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Lu/P;->f:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lu/P;->f:I

    return v0
.end method

.method public c()Lt/o;
    .registers 2

    iget-object v0, p0, Lu/P;->b:Lt/o;

    return-object v0
.end method

.method public d()Lu/Q;
    .registers 2

    iget-object v0, p0, Lu/P;->a:Lu/Q;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/P;->c:Ljava/lang/String;

    return-object v0
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
    check-cast p1, Lu/P;

    iget-object v2, p0, Lu/P;->a:Lu/Q;

    if-nez v2, :cond_21

    iget-object v2, p1, Lu/P;->a:Lu/Q;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lu/P;->a:Lu/Q;

    iget-object v3, p1, Lu/P;->a:Lu/Q;

    invoke-virtual {v2, v3}, Lu/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget v2, p0, Lu/P;->f:I

    iget v3, p1, Lu/P;->f:I

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lu/P;->b:Lt/o;

    if-nez v2, :cond_3f

    iget-object v2, p1, Lu/P;->b:Lt/o;

    if-eqz v2, :cond_4b

    move v0, v1

    goto :goto_4

    :cond_3f
    iget-object v2, p0, Lu/P;->b:Lt/o;

    iget-object v3, p1, Lu/P;->b:Lt/o;

    invoke-virtual {v2, v3}, Lt/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    move v0, v1

    goto :goto_4

    :cond_4b
    iget-object v2, p0, Lu/P;->c:Ljava/lang/String;

    if-nez v2, :cond_55

    iget-object v2, p1, Lu/P;->c:Ljava/lang/String;

    if-eqz v2, :cond_61

    move v0, v1

    goto :goto_4

    :cond_55
    iget-object v2, p0, Lu/P;->c:Ljava/lang/String;

    iget-object v3, p1, Lu/P;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    move v0, v1

    goto :goto_4

    :cond_61
    iget-object v2, p0, Lu/P;->d:Ljava/lang/String;

    if-nez v2, :cond_6b

    iget-object v2, p1, Lu/P;->d:Ljava/lang/String;

    if-eqz v2, :cond_77

    move v0, v1

    goto :goto_4

    :cond_6b
    iget-object v2, p0, Lu/P;->d:Ljava/lang/String;

    iget-object v3, p1, Lu/P;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    move v0, v1

    goto :goto_4

    :cond_77
    iget-object v2, p0, Lu/P;->g:Ljava/lang/String;

    if-nez v2, :cond_81

    iget-object v2, p1, Lu/P;->g:Ljava/lang/String;

    if-eqz v2, :cond_8e

    move v0, v1

    goto :goto_4

    :cond_81
    iget-object v2, p0, Lu/P;->g:Ljava/lang/String;

    iget-object v3, p1, Lu/P;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    move v0, v1

    goto/16 :goto_4

    :cond_8e
    iget-object v2, p0, Lu/P;->e:Ljava/lang/String;

    if-nez v2, :cond_99

    iget-object v2, p1, Lu/P;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    :cond_99
    iget-object v2, p0, Lu/P;->e:Ljava/lang/String;

    iget-object v3, p1, Lu/P;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/P;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/P;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/aR;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lu/P;->a:Lu/Q;

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    iget-object v2, p0, Lu/P;->a:Lu/Q;

    invoke-virtual {v2}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_15
    iget-object v1, p0, Lu/P;->b:Lt/o;

    if-eqz v1, :cond_29

    const/4 v1, 0x2

    iget-object v2, p0, Lu/P;->b:Lt/o;

    invoke-static {v2}, Lz/f;->a(Lt/o;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x5

    iget v2, p0, Lu/P;->f:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_29
    iget-object v1, p0, Lu/P;->d:Ljava/lang/String;

    if-eqz v1, :cond_33

    const/4 v1, 0x3

    iget-object v2, p0, Lu/P;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_33
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lu/P;->a:Lu/Q;

    if-nez v0, :cond_35

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lu/P;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lu/P;->b:Lt/o;

    if-nez v0, :cond_3c

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lu/P;->c:Ljava/lang/String;

    if-nez v0, :cond_43

    move v0, v1

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lu/P;->d:Ljava/lang/String;

    if-nez v0, :cond_4a

    move v0, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lu/P;->g:Ljava/lang/String;

    if-nez v0, :cond_51

    move v0, v1

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lu/P;->e:Ljava/lang/String;

    if-nez v2, :cond_58

    :goto_33
    add-int/2addr v0, v1

    return v0

    :cond_35
    iget-object v0, p0, Lu/P;->a:Lu/Q;

    invoke-virtual {v0}, Lu/Q;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_3c
    iget-object v0, p0, Lu/P;->b:Lt/o;

    invoke-virtual {v0}, Lt/o;->hashCode()I

    move-result v0

    goto :goto_14

    :cond_43
    iget-object v0, p0, Lu/P;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1c

    :cond_4a
    iget-object v0, p0, Lu/P;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_24

    :cond_51
    iget-object v0, p0, Lu/P;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2c

    :cond_58
    iget-object v1, p0, Lu/P;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/P;->a:Lu/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/P;->b:Lt/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/P;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/P;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/P;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/P;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
