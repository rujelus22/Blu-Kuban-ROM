.class Lbc/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:LK/H;

.field private b:I

.field private c:I

.field private final d:Lau/b;

.field private e:Lcom/google/googlenav/ui/view/android/rideabout/i;

.field private f:Lcom/google/googlenav/ui/view/android/rideabout/i;

.field private g:I


# direct methods
.method public constructor <init>(Lau/b;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/H;->g()LK/H;

    move-result-object v0

    iput-object v0, p0, Lbc/f;->a:LK/H;

    iput v1, p0, Lbc/f;->b:I

    iput v1, p0, Lbc/f;->c:I

    iput-object p1, p0, Lbc/f;->d:Lau/b;

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->a:Lcom/google/googlenav/ui/view/android/rideabout/i;

    iput-object v0, p0, Lbc/f;->f:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-direct {p0}, Lbc/f;->o()V

    invoke-direct {p0}, Lbc/f;->m()V

    return-void
.end method

.method private static a(Lau/s;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lau/s;->o()LaJ/B;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lau/s;->k()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lau/s;->O()[Lau/t;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_21

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lau/t;->d()LaJ/B;

    move-result-object v4

    if-eqz v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_21
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private c(I)Lau/s;
    .registers 5

    if-ltz p1, :cond_a

    iget-object v0, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v0}, Lau/b;->ag()I

    move-result v0

    if-lt p1, v0, :cond_29

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v0, p1}, Lau/b;->n(I)Lau/s;

    move-result-object v0

    return-object v0
.end method

.method private d(I)I
    .registers 3

    invoke-direct {p0, p1}, Lbc/f;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lbc/f;->e(I)I

    move-result v0

    return v0
.end method

.method private e(I)I
    .registers 4

    invoke-virtual {p0, p1}, Lbc/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0, p1}, Lbc/f;->c(I)Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    invoke-virtual {p0, p1}, Lbc/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_26

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    add-int/lit8 p1, p1, 0x1

    :cond_26
    return p1
.end method

.method private f(I)I
    .registers 4

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p0, p1}, Lbc/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lbc/f;->b()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    if-ne v0, v1, :cond_26

    invoke-virtual {p0, p1}, Lbc/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_26

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    if-ne v0, v1, :cond_26

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_26
    return p1
.end method

.method private g(I)Z
    .registers 4

    iget-object v0, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v0}, Lau/b;->ag()I

    move-result v0

    if-ge p1, v0, :cond_13

    invoke-direct {p0, p1}, Lbc/f;->c(I)Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private l()I
    .registers 4

    invoke-virtual {p0}, Lbc/f;->j()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lbc/f;->b()Lau/s;

    move-result-object v2

    iget v0, p0, Lbc/f;->c:I

    move v1, v0

    :goto_d
    iget-object v0, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v0}, Lau/b;->f()I

    move-result v0

    if-ge v1, v0, :cond_2c

    iget-object v0, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v0, v1}, Lau/b;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->m()Lau/s;

    move-result-object v0

    if-ne v0, v2, :cond_28

    iput v1, p0, Lbc/f;->c:I

    iget v0, p0, Lbc/f;->c:I

    :goto_27
    return v0

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_2c
    iget-object v0, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v0}, Lau/b;->f()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v0}, Lau/b;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_3d
    const/4 v0, -0x1

    goto :goto_27
.end method

.method private m()V
    .registers 4

    invoke-virtual {p0}, Lbc/f;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lbc/f;->b()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    invoke-direct {p0}, Lbc/f;->n()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lbc/f;->d:Lau/b;

    iget v1, p0, Lbc/f;->b:I

    iget v2, p0, Lbc/f;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lau/b;->a(II)[LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbc/f;->d:Lau/b;

    iget v2, p0, Lbc/f;->b:I

    invoke-virtual {v1, v2}, Lau/b;->n(I)Lau/s;

    move-result-object v1

    invoke-static {v1}, Lbc/f;->a(Lau/s;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbc/f;->a:LK/H;

    invoke-static {v0, v1, v2}, Lbc/x;->a([LaJ/B;Lau/s;LK/H;)V

    goto :goto_6
.end method

.method private n()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lbc/f;->a:LK/H;

    invoke-virtual {v0}, LK/H;->e()V

    iget v0, p0, Lbc/f;->b:I

    :goto_8
    invoke-direct {p0, v0}, Lbc/f;->g(I)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->C()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    iget v1, p0, Lbc/f;->b:I

    if-eq v0, v1, :cond_30

    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->o()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v2, p0, Lbc/f;->a:LK/H;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, LK/H;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_30
    iget-object v1, p0, Lbc/f;->d:Lau/b;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Lau/b;->a(II)[LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v2, p0, Lbc/f;->a:LK/H;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, LK/H;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4a
    return-void
.end method

.method private o()V
    .registers 3

    invoke-virtual {p0}, Lbc/f;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->a:Lcom/google/googlenav/ui/view/android/rideabout/i;

    :goto_8
    iput-object v0, p0, Lbc/f;->e:Lcom/google/googlenav/ui/view/android/rideabout/i;

    return-void

    :cond_b
    invoke-virtual {p0}, Lbc/f;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    goto :goto_8

    :cond_15
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    goto :goto_8
.end method


# virtual methods
.method public a()Lau/s;
    .registers 3

    iget v0, p0, Lbc/f;->b:I

    invoke-direct {p0, v0}, Lbc/f;->d(I)I

    move-result v0

    iget-object v1, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v1}, Lau/b;->ag()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v0

    goto :goto_f
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, Lbc/f;->d:Lau/b;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lbc/f;->g(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b()Lau/s;
    .registers 2

    iget v0, p0, Lbc/f;->b:I

    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lbc/f;->g(I)Z

    move-result v0

    return v0
.end method

.method public c()Lau/s;
    .registers 2

    iget v0, p0, Lbc/f;->g:I

    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    invoke-virtual {p0}, Lbc/f;->b()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lbc/f;->b:I

    :goto_3
    iget-object v2, p0, Lbc/f;->d:Lau/b;

    invoke-virtual {v2}, Lau/b;->ag()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_27

    invoke-direct {p0, v0}, Lbc/f;->c(I)Lau/s;

    move-result-object v2

    invoke-virtual {v2}, Lau/s;->C()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lbc/f;->g(I)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    goto :goto_19

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_27
    move v0, v1

    goto :goto_19
.end method

.method public f()I
    .registers 2

    invoke-direct {p0}, Lbc/f;->l()I

    move-result v0

    return v0
.end method

.method public g()I
    .registers 2

    invoke-virtual {p0}, Lbc/f;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    return v0
.end method

.method public h()V
    .registers 2

    iget v0, p0, Lbc/f;->b:I

    iput v0, p0, Lbc/f;->g:I

    iget v0, p0, Lbc/f;->b:I

    invoke-direct {p0, v0}, Lbc/f;->d(I)I

    move-result v0

    iput v0, p0, Lbc/f;->b:I

    iget-object v0, p0, Lbc/f;->e:Lcom/google/googlenav/ui/view/android/rideabout/i;

    iput-object v0, p0, Lbc/f;->f:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-direct {p0}, Lbc/f;->o()V

    invoke-direct {p0}, Lbc/f;->m()V

    return-void
.end method

.method public i()LK/H;
    .registers 2

    iget-object v0, p0, Lbc/f;->a:LK/H;

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget v0, p0, Lbc/f;->b:I

    invoke-virtual {p0, v0}, Lbc/f;->a(I)Z

    move-result v0

    return v0
.end method

.method public k()Lcom/google/googlenav/ui/view/android/rideabout/i;
    .registers 2

    iget-object v0, p0, Lbc/f;->f:Lcom/google/googlenav/ui/view/android/rideabout/i;

    return-object v0
.end method
