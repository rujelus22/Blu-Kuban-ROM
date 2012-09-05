.class public Lcom/google/android/maps/driveabout/vector/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aU;


# instance fields
.field private final a:Lt/V;

.field private final b:Lt/af;

.field private final c:Lcom/google/android/maps/driveabout/vector/cU;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/vector/aO;

.field private h:Lcom/google/android/maps/driveabout/vector/af;


# direct methods
.method private constructor <init>(Lt/af;Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lt/af;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ad;->c:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {p1}, Lt/af;->i()Lt/V;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Lt/V;

    return-void
.end method

.method public static a(Lt/ae;)Lcom/google/android/maps/driveabout/vector/ad;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ad;

    invoke-interface {p0}, Lt/ae;->d()Lt/af;

    move-result-object v1

    invoke-interface {p0}, Lt/ae;->g()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ad;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/cU;)V

    instance-of v1, p0, Lt/p;

    if-eqz v1, :cond_17

    check-cast p0, Lt/p;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lt/p;)V

    :goto_16
    return-object v0

    :cond_17
    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ad;->k()V

    goto :goto_16
.end method

.method private k()V
    .registers 3

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->e:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;)I
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/android/maps/driveabout/vector/ce;->a:Z

    if-eqz v1, :cond_7

    const/high16 v0, -0x8000

    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-nez v0, :cond_c

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-ne v0, v3, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Lt/V;

    invoke-virtual {v1}, Lt/V;->d()Lt/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Lt/V;

    invoke-virtual {v2}, Lt/V;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v1

    if-ne v1, v3, :cond_30

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aO;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_b

    :cond_30
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_2c

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aV;->a:Lcom/google/android/maps/driveabout/vector/aV;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_2c
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/af;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;ILjava/util/Collection;)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;Ljava/util/Collection;)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->e:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public a(Lt/p;)V
    .registers 3

    invoke-virtual {p1}, Lt/p;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aO;->a([B)Lcom/google/android/maps/driveabout/vector/aO;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {p1}, Lt/p;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Lt/p;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->e:[Ljava/lang/String;

    invoke-virtual {p1}, Lt/p;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Laf/a;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bZ;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/af;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    :cond_15
    return-void
.end method

.method public b()Lt/af;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lt/af;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    :cond_15
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/aO;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V

    return-void
.end method

.method public b(Laf/a;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/cU;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->c:Lcom/google/android/maps/driveabout/vector/cU;

    return-object v0
.end method

.method public d()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public e()Lcom/google/android/maps/driveabout/vector/af;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Lcom/google/android/maps/driveabout/vector/af;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aO;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aO;->e()V

    :cond_9
    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    return v0
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aO;->a()I

    move-result v0

    goto :goto_5
.end method

.method public j()I
    .registers 3

    const/16 v0, 0x88

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aO;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method
