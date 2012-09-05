.class public LaY/az;
.super LaY/i;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lau/x;

.field private D:Lau/x;

.field private E:Lau/y;

.field private F:Lcom/google/googlenav/aW;

.field private G:I

.field private final H:LaY/aA;

.field w:Lau/b;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;I)V
    .registers 8

    invoke-direct/range {p0 .. p5}, LaY/i;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    const/4 v0, 0x0

    iput v0, p0, LaY/az;->G:I

    iput p6, p0, LaY/az;->G:I

    const-string v0, "locationMemory"

    invoke-static {v0}, Lau/y;->b(Ljava/lang/String;)Lau/y;

    move-result-object v0

    iput-object v0, p0, LaY/az;->E:Lau/y;

    new-instance v0, LaY/aA;

    invoke-direct {v0, p0}, LaY/aA;-><init>(LaY/az;)V

    iput-object v0, p0, LaY/az;->H:LaY/aA;

    return-void
.end method

.method private bk()V
    .registers 13

    const/4 v9, 0x0

    const/4 v11, -0x1

    iget-boolean v0, p0, LaY/az;->A:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, LaY/az;->w:Lau/b;

    invoke-virtual {v0}, Lau/b;->D()[Lau/x;

    move-result-object v0

    move-object v7, v0

    :goto_d
    array-length v0, v7

    new-array v10, v0, [Lcom/google/googlenav/ah;

    move v8, v9

    :goto_11
    array-length v0, v7

    if-ge v8, v0, :cond_3e

    new-instance v0, Lcom/google/googlenav/ah;

    aget-object v1, v7, v8

    invoke-virtual {v1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    aget-object v2, v7, v8

    invoke-virtual {v2}, Lau/x;->h()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v7, v8

    invoke-virtual {v3}, Lau/x;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    aput-object v0, v10, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_11

    :cond_36
    iget-object v0, p0, LaY/az;->w:Lau/b;

    invoke-virtual {v0}, Lau/b;->E()[Lau/x;

    move-result-object v0

    move-object v7, v0

    goto :goto_d

    :cond_3e
    const/4 v0, 0x0

    invoke-static {v10, v0, v11, v11}, Lcom/google/googlenav/aV;->a([Lcom/google/googlenav/ah;LaJ/H;II)Lcom/google/googlenav/aV;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aV;->d(I)V

    iget v1, p0, LaY/az;->x:I

    invoke-virtual {p0, v0, v9, v1}, LaY/az;->a(Lcom/google/googlenav/aV;ZI)V

    return-void
.end method

.method private bl()V
    .registers 8

    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    :goto_8
    iget-object v5, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v5}, Lcom/google/googlenav/E;->f()I

    move-result v5

    if-ge v0, v5, :cond_3f

    iget-object v5, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v5, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v5

    if-eqz v5, :cond_3c

    invoke-virtual {v5}, LaJ/B;->c()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v5}, LaJ/B;->c()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, LaJ/B;->e()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v5}, LaJ/B;->e()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_3f
    sub-int v0, v3, v4

    iput v0, p0, LaY/az;->y:I

    sub-int v0, v1, v2

    iput v0, p0, LaY/az;->z:I

    return-void
.end method

.method private bm()V
    .registers 8

    iget v0, p0, LaY/az;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4d

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->G()[Lcom/google/googlenav/ah;

    move-result-object v0

    array-length v0, v0

    :goto_e
    const/16 v1, 0x38

    const-string v2, "s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, LaY/az;->bn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_4d
    iget-object v0, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    goto :goto_e
.end method

.method private bn()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, LaY/az;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, LaY/az;->x:I

    if-nez v0, :cond_d

    const-string v0, "s"

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "m"

    goto :goto_c

    :cond_10
    const-string v0, "w"

    goto :goto_c
.end method

.method private bo()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, LaY/az;->h(I)V

    return-void
.end method

.method private h(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->t()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, LaY/az;->ae()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, LaY/az;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4f

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aV;->e(I)V

    :cond_1d
    :goto_1d
    invoke-virtual {p0}, LaY/az;->e()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-boolean v0, p0, LaY/az;->A:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, LaY/az;->w:Lau/b;

    invoke-virtual {v0}, Lau/b;->D()[Lau/x;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, LaY/az;->C:Lau/x;

    :goto_31
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lau/x;->c()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, LaY/az;->E:Lau/y;

    invoke-virtual {v1, v0}, Lau/y;->a(Lau/x;)Z

    :cond_3e
    iget-boolean v0, p0, LaY/az;->B:Z

    if-nez v0, :cond_5e

    iget-boolean v0, p0, LaY/az;->A:Z

    if-eqz v0, :cond_5e

    invoke-direct {p0, v2}, LaY/az;->i(Z)V

    iput-boolean v2, p0, LaY/az;->A:Z

    invoke-direct {p0}, LaY/az;->bk()V

    :goto_4e
    return-void

    :cond_4f
    invoke-virtual {p0, p1}, LaY/az;->b(I)V

    goto :goto_1d

    :cond_53
    iget-object v0, p0, LaY/az;->w:Lau/b;

    invoke-virtual {v0}, Lau/b;->E()[Lau/x;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, LaY/az;->D:Lau/x;

    goto :goto_31

    :cond_5e
    iget-object v0, p0, LaY/az;->C:Lau/x;

    if-eqz v0, :cond_69

    iget-object v0, p0, LaY/az;->w:Lau/b;

    iget-object v1, p0, LaY/az;->C:Lau/x;

    invoke-virtual {v0, v1}, Lau/b;->a(Lau/x;)V

    :cond_69
    iget-object v0, p0, LaY/az;->D:Lau/x;

    if-eqz v0, :cond_74

    iget-object v0, p0, LaY/az;->w:Lau/b;

    iget-object v1, p0, LaY/az;->D:Lau/x;

    invoke-virtual {v0, v1}, Lau/b;->b(Lau/x;)V

    :cond_74
    iget-object v0, p0, LaY/az;->w:Lau/b;

    invoke-virtual {v0}, Lau/b;->x()V

    :cond_79
    invoke-direct {p0, v2}, LaY/az;->i(Z)V

    iget-object v0, p0, LaY/az;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/az;)V

    iget-object v0, p0, LaY/az;->F:Lcom/google/googlenav/aW;

    if-eqz v0, :cond_9b

    iget v0, p0, LaY/az;->x:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9b

    iget-object v1, p0, LaY/az;->F:Lcom/google/googlenav/aW;

    iget-object v0, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/aW;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/aV;)V

    :cond_9b
    iget-object v0, p0, LaY/az;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    goto :goto_4e
.end method

.method private i(Z)V
    .registers 9

    iget v0, p0, LaY/az;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_50

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    const/16 v1, 0x38

    const-string v2, "e"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, LaY/az;->bn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_50
    if-eqz p1, :cond_55

    const-string v0, "b"

    goto :goto_11

    :cond_55
    iget-object v0, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method protected U()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public a()I
    .registers 2

    iget v0, p0, LaY/az;->x:I

    return v0
.end method

.method public a(Lau/b;I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, LaY/az;->w:Lau/b;

    iput p2, p0, LaY/az;->x:I

    iput-object v0, p0, LaY/az;->C:Lau/x;

    iput-object v0, p0, LaY/az;->D:Lau/x;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2e

    move v0, v1

    :goto_f
    iput-boolean v0, p0, LaY/az;->A:Z

    if-ne p2, v1, :cond_34

    invoke-virtual {p1}, Lau/b;->D()[Lau/x;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v1

    :goto_1a
    invoke-virtual {p1}, Lau/b;->E()[Lau/x;

    move-result-object v3

    if-eqz v3, :cond_32

    move v3, v1

    :goto_21
    iput-boolean v0, p0, LaY/az;->A:Z

    if-eqz v0, :cond_27

    if-nez v3, :cond_28

    :cond_27
    move v2, v1

    :cond_28
    iput-boolean v2, p0, LaY/az;->B:Z

    :goto_2a
    invoke-direct {p0}, LaY/az;->bk()V

    return-void

    :cond_2e
    move v0, v2

    goto :goto_f

    :cond_30
    move v0, v2

    goto :goto_1a

    :cond_32
    move v3, v2

    goto :goto_21

    :cond_34
    iput-boolean v1, p0, LaY/az;->B:Z

    goto :goto_2a
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 5

    iput-object p1, p0, LaY/az;->f:Lcom/google/googlenav/E;

    instance-of v0, p1, Lcom/google/googlenav/aV;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-interface {p1, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/D;->c()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    invoke-virtual {p0}, LaY/az;->x()V

    goto :goto_6
.end method

.method public a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aW;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, LaY/az;->a(Lcom/google/googlenav/aV;ZI)V

    iput-object p2, p0, LaY/az;->F:Lcom/google/googlenav/aW;

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;ZI)V
    .registers 7

    iput p3, p0, LaY/az;->x:I

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p1}, LaY/az;->b(Lcom/google/googlenav/E;)V

    invoke-direct {p0}, LaY/az;->bm()V

    const/4 v0, 0x5

    if-eq p3, v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/az;->b(I)V

    :cond_12
    if-eqz p2, :cond_32

    invoke-direct {p0}, LaY/az;->bl()V

    iget-object v0, p0, LaY/az;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->T()V

    iget-object v0, p0, LaY/az;->d:LaJ/u;

    invoke-virtual {p0}, LaY/az;->s()Lcom/google/googlenav/D;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/u;->c(LaJ/B;)V

    iget-object v0, p0, LaY/az;->d:LaJ/u;

    iget v1, p0, LaY/az;->y:I

    iget v2, p0, LaY/az;->z:I

    invoke-virtual {v0, v1, v2}, LaJ/u;->d(II)V

    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, LaY/az;->F:Lcom/google/googlenav/aW;

    const/4 v0, 0x6

    if-ne p3, v0, :cond_3c

    invoke-direct {p0}, LaY/az;->bo()V

    goto :goto_4

    :cond_3c
    invoke-virtual {p0}, LaY/az;->am()V

    invoke-virtual {p0}, LaY/az;->k()V

    goto :goto_4
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, LaY/az;->ae()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    packed-switch p1, :pswitch_data_26

    goto :goto_8

    :pswitch_d
    invoke-direct {p0, p2}, LaY/az;->h(I)V

    move v0, v1

    goto :goto_8

    :pswitch_12
    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aV;->a(Z)V

    iget-object v0, p0, LaY/az;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    iget-object v0, p0, LaY/az;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->b(LaY/az;)V

    move v0, v1

    goto :goto_8

    nop

    :pswitch_data_26
    .packed-switch 0x64
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method protected aq()V
    .registers 1

    return-void
.end method

.method protected ar()V
    .registers 2

    iget-object v0, p0, LaY/az;->H:LaY/aA;

    invoke-virtual {v0}, LaY/aA;->a()Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    iput-object v0, p0, LaY/az;->r:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method public av()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ax()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 3

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->F()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, LaY/az;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bg()Lcom/google/googlenav/ah;
    .registers 3

    iget v0, p0, LaY/az;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->G()[Lcom/google/googlenav/ah;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->H()I

    move-result v0

    aget-object v0, v1, v0

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    goto :goto_13
.end method

.method public bh()Lau/b;
    .registers 2

    iget-object v0, p0, LaY/az;->w:Lau/b;

    return-object v0
.end method

.method public bi()Z
    .registers 2

    iget-boolean v0, p0, LaY/az;->A:Z

    return v0
.end method

.method public bj()I
    .registers 2

    iget v0, p0, LaY/az;->G:I

    return v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, LaY/az;->x:I

    if-eqz v0, :cond_9

    iget v0, p0, LaY/az;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, LaY/az;->x:I

    if-eq v1, v0, :cond_f

    iget v1, p0, LaY/az;->x:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, LaY/az;->x:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/h;

    invoke-direct {v0, p0}, Lba/h;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    invoke-virtual {p0}, LaY/az;->o()V

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Laq/b;->e()C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_c

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public i()Lcom/google/googlenav/aV;
    .registers 2

    iget-object v0, p0, LaY/az;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/aV;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->t()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->E()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    iget-object v1, p0, LaY/az;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method protected l()V
    .registers 1

    return-void
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method public o()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, LaY/az;->i(Z)V

    invoke-virtual {p0}, LaY/az;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, LaY/az;->B:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, LaY/az;->A:Z

    if-nez v0, :cond_18

    iput-boolean v1, p0, LaY/az;->A:Z

    invoke-direct {p0}, LaY/az;->bk()V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, LaY/az;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    iget-object v0, p0, LaY/az;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->c(LaY/az;)V

    goto :goto_17
.end method
