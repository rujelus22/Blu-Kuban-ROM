.class public Lcom/google/android/maps/driveabout/app/NavigationMapView;
.super Lcom/google/android/maps/driveabout/vector/VectorMapView;


# instance fields
.field private volatile b:Ls/b;

.field private volatile c:Landroid/location/Location;

.field private d:[Lu/x;

.field private e:Lu/x;

.field private f:Lcom/google/android/maps/driveabout/app/di;

.field private g:[Lcom/google/android/maps/driveabout/app/di;

.field private final h:Lcom/google/android/maps/driveabout/vector/bR;

.field private final i:Lcom/google/android/maps/driveabout/app/bT;

.field private final j:Lcom/google/android/maps/driveabout/vector/aD;

.field private k:Lcom/google/android/maps/driveabout/vector/E;

.field private final l:Lcom/google/android/maps/driveabout/vector/aD;

.field private final m:Lcom/google/android/maps/driveabout/vector/aS;

.field private n:Lcom/google/android/maps/driveabout/app/dN;

.field private o:Lcom/google/android/maps/driveabout/vector/cI;

.field private final p:Lcom/google/android/maps/driveabout/vector/cM;

.field private q:Lcom/google/android/maps/driveabout/app/bv;

.field private r:Lcom/google/android/maps/driveabout/app/bD;

.field private final s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Lcom/google/android/maps/driveabout/vector/aA;

.field private w:Lcom/google/android/maps/driveabout/app/cz;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020105

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/G;->a:Lcom/google/android/maps/driveabout/vector/G;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/E;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/G;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    const v0, 0x7a120

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d(I)Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c(Z)Lcom/google/android/maps/driveabout/vector/bR;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bR;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bR;

    new-array v1, v7, [Lcom/google/android/maps/driveabout/vector/bT;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bU;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    const v3, 0x7f020144

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bU;->b()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    const v3, 0x7f020143

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->a([Lcom/google/android/maps/driveabout/vector/bT;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bR;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x7f0a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0a0001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/bR;->a(FII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bR;

    const v1, 0x64190

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->b(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bT;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bT;-><init>(Lcom/google/android/maps/driveabout/vector/bR;Laf/a;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/bT;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aS;

    const v1, 0x31128

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aS;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aS;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    const/high16 v2, 0x6000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aS;->a(Lcom/google/android/maps/driveabout/vector/I;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/aD;->a(I)V

    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f(I)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g(Z)V

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bG;->q:Lcom/google/android/maps/driveabout/vector/bG;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/bG;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->A()Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/bG;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a()V

    return-void
.end method

.method private C()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-ne v2, v0, :cond_19

    :goto_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    if-eqz v2, :cond_1b

    :goto_a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/di;->b(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    move v0, v1

    goto :goto_6

    :cond_1b
    return-void
.end method

.method private a(Lu/I;Lu/I;Lt/P;)Lt/X;
    .registers 15

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lu/I;->w()Lu/K;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Lu/K;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    :cond_15
    move-object v0, v1

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p1}, Lu/I;->y()I

    move-result v2

    invoke-virtual {p2}, Lu/I;->y()I

    move-result v3

    new-instance v4, Lt/ab;

    invoke-direct {v4, p3, v2, v3}, Lt/ab;-><init>(Lt/P;II)V

    invoke-virtual {v4}, Lt/ab;->e()Lt/P;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lu/K;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_48

    invoke-virtual {v0}, Lu/K;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    :cond_48
    new-array v10, v7, [I

    new-instance v0, Lt/X;

    invoke-static {}, Lt/Z;->a()Lt/Z;

    move-result-object v4

    const/4 v5, -0x1

    move-object v3, v1

    move-object v6, v1

    move v8, v7

    move v9, v7

    invoke-direct/range {v0 .. v10}, Lt/X;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;III[I)V

    goto :goto_16
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/m;)Lcom/google/android/maps/driveabout/vector/p;
    .registers 7

    const/16 v4, 0x20

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f00d0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f00d1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_52

    :cond_47
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4c
    new-instance v1, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_52
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/G;->a:Lcom/google/android/maps/driveabout/vector/G;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/E;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/G;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_1c
    return-void
.end method

.method public a(I)V
    .registers 9

    const v4, 0x249f0

    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-ne v0, v5, :cond_a8

    if-eq p1, v5, :cond_a8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e(Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/di;->b(I)V

    move v0, v1

    :goto_27
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_30
    :goto_30
    iget v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-ne v3, v6, :cond_4d

    if-eq p1, v6, :cond_4d

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    if-eqz v3, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/di;->b(I)V

    move v0, v1

    :cond_45
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    const v4, 0x31128

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/aS;->b(I)V

    :cond_4d
    iget v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-eq v3, v5, :cond_75

    if-ne p1, v5, :cond_75

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    if-eqz v3, :cond_6a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    const v3, 0x31510

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/di;->b(I)V

    move v0, v1

    :cond_6a
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e(Z)V

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f(Z)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_75
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-eq v2, v6, :cond_8d

    if-ne p1, v6, :cond_8d

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    if-eqz v2, :cond_9c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    const v2, 0x31510

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/di;->b(I)V

    :goto_87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    move v0, v1

    :cond_8d
    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_99
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    return-void

    :cond_9c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aS;

    const v2, 0x249ef

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aS;->b(I)V

    move v1, v0

    goto :goto_87

    :cond_a6
    move v0, v2

    goto :goto_27

    :cond_a8
    move v0, v2

    goto :goto_30
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/E;->a(II)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/bv;

    if-eq p1, v0, :cond_29

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bD;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bD;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_d
    new-instance v0, Lcom/google/android/maps/driveabout/app/bD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aD;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->e:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/bD;-><init>(Lcom/google/android/maps/driveabout/app/bv;Lcom/google/android/maps/driveabout/vector/VectorMapView;Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/cU;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bD;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bv;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bD;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bv;->a(Lcom/google/android/maps/driveabout/app/by;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bD;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/bv;

    :cond_29
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/cz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/app/cz;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p1, v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    if-eq v0, p1, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_1c
    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p1, v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/cI;

    if-nez v0, :cond_39

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->b(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/cI;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_39
    :goto_39
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/cI;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/cI;

    goto :goto_39
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aF;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/E;->a(Lcom/google/android/maps/driveabout/vector/aF;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cK;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/cK;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cV;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cV;)V

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/cu;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/android/maps/driveabout/app/cu;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/bT;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/bT;)V

    :cond_e
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/m;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    return-void
.end method

.method public a(Ls/b;Z)V
    .registers 15

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/bR;->d(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Ls/b;

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/bT;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bT;->a(Ls/b;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Ls/b;

    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lt/L;->a(DD)Lt/L;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/high16 v1, 0x44fa

    invoke-static {v0, v1}, Lt/L;->a(FF)Lt/L;

    move-result-object v0

    invoke-virtual {v9, v0}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->e()V

    const/high16 v0, 0x7f09

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v0, 0x7f090001

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200d2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    :cond_63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_74

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200c3

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    :cond_74
    iget-object v11, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aA;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    const-string v6, ""

    const-string v7, ""

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/aA;-><init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v0}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aA;)V

    const v0, 0x7f090002

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v0, 0x7f090003

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v10, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aA;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    const-string v6, ""

    const-string v7, ""

    move-object v1, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/aA;-><init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v0}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aA;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j()V

    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e()V

    return-void
.end method

.method public a(Lu/x;)V
    .registers 8

    invoke-virtual {p1}, Lu/x;->p()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1}, Lu/x;->k()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3a

    invoke-virtual {p1, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Lu/x;->a(I)Lu/I;

    move-result-object v4

    invoke-virtual {v4}, Lu/I;->e()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_37

    invoke-virtual {p1}, Lu/x;->n()Lt/P;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lu/I;Lu/I;Lt/P;)Lt/X;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_3a
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lu/x;Lu/I;Lcom/google/android/maps/driveabout/vector/aF;)V
    .registers 6

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/android/maps/driveabout/app/dN;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/dN;-><init>(Lu/x;Lu/I;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    :goto_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/dN;->a(Lcom/google/android/maps/driveabout/vector/aF;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/dN;->a(Lu/x;Lu/I;)V

    goto :goto_f

    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_1e

    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dN;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_1e
.end method

.method public a(Lu/x;[Lu/x;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lu/x;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[Lu/x;

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Z)V

    if-eqz p2, :cond_c

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/di;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[Lu/x;

    const/4 v0, 0x0

    :goto_1b
    array-length v1, p2

    if-ge v0, v1, :cond_5b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    new-instance v2, Lcom/google/android/maps/driveabout/app/di;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/di;-><init>(Landroid/content/res/Resources;Lu/x;)V

    aput-object v2, v1, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_37

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_45

    :cond_37
    aget-object v1, p2, v0

    if-ne v1, p1, :cond_45

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    aget-object v1, v1, v0

    const v2, 0x31510

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/di;->b(I)V

    :cond_45
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    aget-object v1, p2, v0

    if-ne p1, v1, :cond_58

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lu/x;

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_5b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->C()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    new-instance v0, Lcom/google/android/maps/driveabout/app/cy;

    invoke-virtual {p1}, Lu/x;->m()Lu/P;

    move-result-object v1

    invoke-virtual {v1}, Lu/P;->c()Lt/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0006

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lu/x;->m()Lu/P;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cy;-><init>(Lt/o;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/aA;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aA;)V

    goto/16 :goto_c
.end method

.method public a(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/di;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/di;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[Lu/x;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lu/x;

    :cond_1d
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/aA;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aD;->b(Lcom/google/android/maps/driveabout/vector/aA;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/aA;

    :cond_2c
    return-void
.end method

.method public b(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-eq p1, v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/bv;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/bv;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bv;->a(I)V

    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    :goto_15
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(F)V

    :goto_1f
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->C()V

    :cond_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_15

    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(F)V

    goto :goto_1f
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cK;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/cK;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Ls/b;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Ls/b;Z)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 13

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/app/cz;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/app/cz;

    move v1, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/cz;->a(IIFIIII)V

    :cond_2a
    return-void
.end method
