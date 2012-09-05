.class public Lcom/google/googlenav/ui/android/N;
.super Lcom/google/android/maps/driveabout/vector/p;


# instance fields
.field private final a:Ljava/util/Map;

.field private volatile b:Landroid/view/View$OnClickListener;

.field private volatile c:Landroid/view/View$OnClickListener;

.field private volatile d:F

.field private volatile e:F

.field private volatile f:F

.field private volatile g:F

.field private volatile h:F

.field private volatile i:Lcom/google/googlenav/ui/android/P;

.field private volatile j:Lcom/google/googlenav/ui/android/P;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Landroid/view/View;)V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/N;->a:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/N;->b:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/N;->c:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/P;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/N;->i:Lcom/google/googlenav/ui/android/P;

    sget-object v0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/P;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/N;->j:Lcom/google/googlenav/ui/android/P;

    return-void
.end method

.method private static a(II)Lcom/google/android/maps/driveabout/vector/q;
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/q;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/q;-><init>()V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/dj;

    const/16 v2, 0xc

    new-array v2, v2, [I

    aput p0, v2, v4

    aput v4, v2, v6

    aput v5, v2, v7

    aput p0, v2, v8

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput p1, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput p1, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/dj;-><init>([I)V

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/q;->a:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cq;

    const/16 v2, 0x8

    new-array v2, v2, [I

    aput p0, v2, v4

    aput v4, v2, v6

    aput p0, v2, v7

    aput v5, v2, v8

    const/4 v3, 0x4

    aput p1, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput p1, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/cq;-><init>([I)V

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/q;->b:Lcom/google/android/maps/driveabout/vector/cp;

    return-object v0
.end method

.method private a(F)Z
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->g:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->g:F

    iget v1, p0, Lcom/google/googlenav/ui/android/N;->e:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private b(F)Z
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->h:F

    iget v1, p0, Lcom/google/googlenav/ui/android/N;->f:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->h:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private c(F)Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->g:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->h:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private d(F)Lcom/google/googlenav/ui/android/P;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/N;->c(F)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/N;->a(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/googlenav/ui/android/P;->b:Lcom/google/googlenav/ui/android/P;

    :goto_12
    return-object v0

    :cond_13
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/N;->b(F)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/googlenav/ui/android/P;->d:Lcom/google/googlenav/ui/android/P;

    goto :goto_12

    :cond_20
    sget-object v0, Lcom/google/googlenav/ui/android/P;->c:Lcom/google/googlenav/ui/android/P;

    goto :goto_12

    :cond_23
    sget-object v0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/P;

    goto :goto_12
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/q;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/N;->i:Lcom/google/googlenav/ui/android/P;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/q;

    return-object v0
.end method

.method public a(FF)V
    .registers 5

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->d:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/N;->g:F

    iget v0, p0, Lcom/google/googlenav/ui/android/N;->g:F

    iget v1, p0, Lcom/google/googlenav/ui/android/N;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/android/N;->h:F

    return-void
.end method

.method public b()V
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/P;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/N;->i:Lcom/google/googlenav/ui/android/P;

    return-void
.end method

.method public b(FF)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/N;->d(F)Lcom/google/googlenav/ui/android/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/N;->j:Lcom/google/googlenav/ui/android/P;

    return-void
.end method

.method public c(FF)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/N;->d(F)Lcom/google/googlenav/ui/android/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/N;->i:Lcom/google/googlenav/ui/android/P;

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/android/O;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/N;->j:Lcom/google/googlenav/ui/android/P;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/P;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    :cond_d
    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/N;->e()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_d

    :pswitch_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/N;->e()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_d

    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/N;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_d

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_e
        :pswitch_1c
        :pswitch_2a
    .end packed-switch
.end method

.method public d(FF)V
    .registers 13

    const/4 v2, 0x0

    const/high16 v9, 0x4780

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/N;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f0002

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/BubbleButton;

    const v1, 0x7f0f002b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/BubbleButton;

    const v4, 0x7f0f0028

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0f002a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/N;->e()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/google/googlenav/ui/android/N;->d:F

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, p0, Lcom/google/googlenav/ui/android/N;->e:F

    iget v4, p0, Lcom/google/googlenav/ui/android/N;->d:F

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v7

    int-to-float v5, v5

    add-float/2addr v3, v5

    sub-float v3, v4, v3

    iput v3, p0, Lcom/google/googlenav/ui/android/N;->f:F

    iget v3, p0, Lcom/google/googlenav/ui/android/N;->d:F

    sub-float v3, p1, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, p0, Lcom/google/googlenav/ui/android/N;->d:F

    add-float/2addr v4, v3

    mul-float/2addr v3, v9

    div-float/2addr v3, p1

    float-to-int v3, v3

    iget v5, p0, Lcom/google/googlenav/ui/android/N;->e:F

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    div-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v5, v3

    iget v6, p0, Lcom/google/googlenav/ui/android/N;->f:F

    sub-float v6, v4, v6

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v9

    div-float/2addr v6, p1

    float-to-int v6, v6

    mul-float/2addr v4, v9

    div-float/2addr v4, p1

    float-to-int v4, v4

    iget-object v7, p0, Lcom/google/googlenav/ui/android/N;->a:Ljava/util/Map;

    sget-object v8, Lcom/google/googlenav/ui/android/P;->b:Lcom/google/googlenav/ui/android/P;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/android/N;->a(II)Lcom/google/android/maps/driveabout/vector/q;

    move-result-object v3

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/N;->a:Ljava/util/Map;

    sget-object v7, Lcom/google/googlenav/ui/android/P;->c:Lcom/google/googlenav/ui/android/P;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/android/N;->a(II)Lcom/google/android/maps/driveabout/vector/q;

    move-result-object v5

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/N;->a:Ljava/util/Map;

    sget-object v5, Lcom/google/googlenav/ui/android/P;->d:Lcom/google/googlenav/ui/android/P;

    invoke-static {v6, v4}, Lcom/google/googlenav/ui/android/N;->a(II)Lcom/google/android/maps/driveabout/vector/q;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BubbleButton;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_ac
    iput-object v0, p0, Lcom/google/googlenav/ui/android/N;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BubbleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BubbleButton;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    :cond_b8
    iput-object v2, p0, Lcom/google/googlenav/ui/android/N;->c:Landroid/view/View$OnClickListener;

    return-void

    :cond_bb
    move-object v0, v2

    goto :goto_ac
.end method
