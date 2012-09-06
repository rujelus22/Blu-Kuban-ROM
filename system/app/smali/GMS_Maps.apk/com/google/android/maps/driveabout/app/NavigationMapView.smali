.class public Lcom/google/android/maps/driveabout/app/NavigationMapView;
.super Lcom/google/android/maps/driveabout/vector/VectorMapView;
.source "SourceFile"


# static fields
.field private static A:I


# instance fields
.field private volatile b:Lm/b;

.field private volatile c:Landroid/location/Location;

.field private d:[Lo/x;

.field private e:Lo/x;

.field private f:Lcom/google/android/maps/driveabout/app/cW;

.field private g:[Lcom/google/android/maps/driveabout/app/cW;

.field private final h:Lcom/google/android/maps/driveabout/vector/cl;

.field private final i:Lcom/google/android/maps/driveabout/app/bN;

.field private final j:Lcom/google/android/maps/driveabout/vector/aB;

.field private k:Lcom/google/android/maps/driveabout/vector/w;

.field private final l:Lcom/google/android/maps/driveabout/vector/aB;

.field private final m:Lcom/google/android/maps/driveabout/vector/aT;

.field private n:Lcom/google/android/maps/driveabout/app/dC;

.field private o:Lcom/google/android/maps/driveabout/vector/db;

.field private p:Lcom/google/android/maps/driveabout/vector/db;

.field private final q:Lcom/google/android/maps/driveabout/vector/dy;

.field private r:Lcom/google/android/maps/driveabout/app/bw;

.field private s:Lcom/google/android/maps/driveabout/app/bE;

.field private final t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/Bitmap;

.field private w:Lcom/google/android/maps/driveabout/vector/ay;

.field private x:Lcom/google/android/maps/driveabout/app/cn;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput v0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;-><init>(Landroid/content/Context;)V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    .line 117
    iput v7, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->z:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020128

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    .line 124
    new-instance v0, Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/z;->a:Lcom/google/android/maps/driveabout/vector/z;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/w;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/z;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    .line 125
    const v0, 0x7a120

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(I)Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aB;

    .line 127
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c(Z)Lcom/google/android/maps/driveabout/vector/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/cl;

    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/cl;

    new-array v1, v7, [Lcom/google/android/maps/driveabout/vector/cn;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/co;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    const v3, 0x7f020165

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/co;->a(I)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/co;->b()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    const v3, 0x7f020164

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/co;->a(I)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a([Lcom/google/android/maps/driveabout/vector/cn;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/cl;

    const v2, 0x7f0b000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0c0001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(FII)V

    .line 148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/cl;

    const v1, 0x64190

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->b(I)V

    .line 149
    new-instance v0, Lcom/google/android/maps/driveabout/app/bN;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bN;-><init>(Lcom/google/android/maps/driveabout/vector/cl;Lcom/google/googlenav/common/a;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/bN;

    .line 151
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aT;

    const v1, 0x31128

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    .line 153
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->b(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    const/high16 v2, 0x6000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aT;->a(Lcom/google/android/maps/driveabout/vector/D;I)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->g:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/dy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    .line 158
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 162
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setTrafficMode(I)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aB;

    .line 173
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/aB;->b_(I)V

    .line 174
    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setBaseDistancePenaltyFactorForLabelOverlay(I)V

    .line 176
    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setFocusable(Z)V

    .line 177
    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setFocusableInTouchMode(Z)V

    .line 178
    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setEnabled(Z)V

    .line 179
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setAllowTiltGesture(Z)V

    .line 180
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setAllowRotateGesture(Z)V

    .line 181
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    .line 182
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bZ;->s:Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setDefaultLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 183
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y()Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a_()V

    .line 185
    return-void
.end method

.method private D()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->z:I

    if-ne v2, v0, :cond_19

    .line 422
    :goto_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    if-eqz v2, :cond_1b

    .line 424
    :goto_a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 425
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/cW;->b(Z)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    move v0, v1

    .line 421
    goto :goto_6

    .line 428
    :cond_1b
    return-void
.end method

.method private a(Lo/I;Lo/I;Ln/U;)Ln/ac;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 609
    invoke-virtual {p1}, Lo/I;->w()Lo/K;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    :cond_15
    move-object v0, v1

    .line 629
    :goto_16
    return-object v0

    .line 616
    :cond_17
    invoke-virtual {p1}, Lo/I;->y()I

    move-result v2

    .line 617
    invoke-virtual {p2}, Lo/I;->y()I

    move-result v3

    .line 618
    new-instance v4, Ln/ai;

    invoke-direct {v4, p3, v2, v3}, Ln/ai;-><init>(Ln/U;II)V

    invoke-virtual {v4}, Ln/ai;->e()Ln/U;

    move-result-object v2

    .line 622
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 623
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v7

    .line 624
    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 625
    invoke-virtual {v0}, Lo/K;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 626
    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 628
    :cond_48
    new-array v10, v7, [I

    .line 629
    new-instance v0, Ln/ac;

    invoke-static {}, Ln/ag;->a()Ln/ag;

    move-result-object v4

    const/4 v5, -0x1

    move-object v3, v1

    move-object v6, v1

    move v8, v7

    move v9, v7

    invoke-direct/range {v0 .. v10}, Ln/ac;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;III[I)V

    goto :goto_16
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/d;)Lcom/google/android/maps/driveabout/vector/g;
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0xa

    .line 638
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 640
    const v1, 0x7f040039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 643
    const v1, 0x7f1000f7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 644
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    const v1, 0x7f1000f8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 646
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_52

    .line 647
    :cond_47
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    :goto_4c
    new-instance v1, Lcom/google/android/maps/driveabout/vector/g;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/g;-><init>(Landroid/view/View;)V

    return-object v1

    .line 649
    :cond_52
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method

.method public static setDefaultTrafficMode(I)V
    .registers 1
    .parameter

    .prologue
    .line 407
    sput p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->A:I

    .line 408
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lo/x;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lo/x;

    invoke-virtual {v0}, Lo/x;->d()I

    move-result v0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 3
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/d;)Lcom/google/android/maps/driveabout/vector/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V

    .line 571
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dd;)V
    .registers 3
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dy;->a(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 279
    return-void
.end method

.method public a(Lo/x;)V
    .registers 8
    .parameter

    .prologue
    .line 461
    invoke-virtual {p1}, Lo/x;->p()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v1, v0

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1}, Lo/x;->k()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3a

    .line 465
    invoke-virtual {p1, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v3

    .line 466
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Lo/x;->a(I)Lo/I;

    move-result-object v4

    .line 467
    invoke-virtual {v4}, Lo/I;->e()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_37

    .line 468
    invoke-virtual {p1}, Lo/x;->n()Ln/U;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lo/I;Lo/I;Ln/U;)Ln/ac;

    move-result-object v3

    .line 470
    if-eqz v3, :cond_37

    .line 471
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 475
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setImportantLabelFeatures(Ljava/util/List;)V

    .line 476
    return-void
.end method

.method public a(Lo/x;[Lo/x;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lo/x;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[Lo/x;

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 368
    :cond_c
    :goto_c
    return-void

    .line 334
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Z)V

    .line 335
    if-eqz p2, :cond_c

    .line 336
    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/cW;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    .line 337
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[Lo/x;

    .line 338
    const/4 v0, 0x0

    :goto_1b
    array-length v1, p2

    if-ge v0, v1, :cond_5b

    .line 339
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    new-instance v2, Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cW;-><init>(Landroid/content/res/Resources;Lo/x;)V

    aput-object v2, v1, v0

    .line 340
    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_37

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_45

    :cond_37
    aget-object v1, p2, v0

    if-ne v1, p1, :cond_45

    .line 343
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    aget-object v1, v1, v0

    const v2, 0x31510

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/cW;->c(I)V

    .line 346
    :cond_45
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 347
    aget-object v1, p2, v0

    if-ne p1, v1, :cond_58

    .line 348
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    .line 349
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lo/x;

    .line 338
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 352
    :cond_5b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->D()V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 355
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 357
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 359
    new-instance v0, Lcom/google/android/maps/driveabout/app/cm;

    invoke-virtual {p1}, Lo/x;->m()Lo/P;

    move-result-object v1

    invoke-virtual {v1}, Lo/P;->c()Ln/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0006

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lo/x;->m()Lo/P;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cm;-><init>(Ln/s;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/vector/ay;

    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/ay;)V

    goto/16 :goto_c
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 441
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    if-eqz v0, :cond_1d

    .line 442
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 443
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 445
    :cond_15
    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/cW;

    .line 446
    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    .line 447
    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[Lo/x;

    .line 448
    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:Lo/x;

    .line 450
    :cond_1d
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/vector/ay;

    if-eqz v0, :cond_2c

    .line 451
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aB;->b(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 452
    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/vector/ay;

    .line 454
    :cond_2c
    return-void
.end method

.method public a_()V
    .registers 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 581
    new-instance v0, Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/z;->a:Lcom/google/android/maps/driveabout/vector/z;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/w;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/z;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    .line 582
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    .line 583
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 585
    :cond_1c
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/dd;)V
    .registers 3
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dy;->b(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 283
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Lm/b;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setMyLocation(Lm/b;Z)V

    .line 524
    return-void
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 656
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->onSizeChanged(IIII)V

    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:Lcom/google/android/maps/driveabout/app/cn;

    if-eqz v0, :cond_2a

    .line 191
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 194
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 195
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:Lcom/google/android/maps/driveabout/app/cn;

    move v1, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/cn;->a(IIFIIII)V

    .line 198
    :cond_2a
    return-void
.end method

.method public setBaseMapOverlays(Lcom/google/android/maps/driveabout/vector/D;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setDrawMode(Lcom/google/android/maps/driveabout/vector/D;)V

    .line 505
    if-eqz p2, :cond_21

    .line 506
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/db;

    if-nez v0, :cond_20

    .line 507
    const/4 v0, 0x1

    .line 508
    const/4 v1, 0x0

    .line 509
    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;ZZLandroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/db;

    .line 511
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 520
    :cond_20
    :goto_20
    return-void

    .line 514
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v0, :cond_20

    .line 515
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/db;

    goto :goto_20
.end method

.method public setCompassMargins(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/w;->a(II)V

    .line 458
    return-void
.end method

.method public setCompassTapListener(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 3
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 589
    return-void
.end method

.method public setController(Lcom/google/android/maps/driveabout/vector/dI;)V
    .registers 3
    .parameter

    .prologue
    .line 597
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setController(Lcom/google/android/maps/driveabout/vector/dI;)V

    .line 598
    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/ci;

    if-eqz v0, :cond_e

    .line 599
    check-cast p1, Lcom/google/android/maps/driveabout/app/ci;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/bN;)V

    .line 602
    :cond_e
    return-void
.end method

.method public setDrawMode(Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 4
    .parameter

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p1, v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    if-eq v0, p1, :cond_1c

    .line 483
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 487
    :cond_1c
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p1, v0, :cond_3d

    .line 488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/db;

    if-nez v0, :cond_39

    .line 489
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->b(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/db;

    .line 491
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 499
    :cond_39
    :goto_39
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setDrawMode(Lcom/google/android/maps/driveabout/vector/D;)V

    .line 500
    return-void

    .line 494
    :cond_3d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v0, :cond_39

    .line 495
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/db;

    goto :goto_39
.end method

.method public setLayerManager(Lcom/google/android/maps/driveabout/app/bw;)V
    .registers 5
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bw;

    if-eq p1, v0, :cond_29

    .line 287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Lcom/google/android/maps/driveabout/app/bE;

    if-eqz v0, :cond_d

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Lcom/google/android/maps/driveabout/app/bE;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 290
    :cond_d
    new-instance v0, Lcom/google/android/maps/driveabout/app/bE;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aB;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->h:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/bE;-><init>(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/android/maps/driveabout/app/NavigationMapView;Lcom/google/android/maps/driveabout/vector/aB;Lcom/google/android/maps/driveabout/vector/dg;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Lcom/google/android/maps/driveabout/app/bE;

    .line 291
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->z:I

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bw;->a(I)V

    .line 292
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Lcom/google/android/maps/driveabout/app/bE;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bw;->a(Lcom/google/android/maps/driveabout/app/bz;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Lcom/google/android/maps/driveabout/app/bE;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 294
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bw;

    .line 296
    :cond_29
    return-void
.end method

.method public setMarkerTapListener(Lcom/google/android/maps/driveabout/vector/f;)V
    .registers 3
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 593
    return-void
.end method

.method public setMyLocation(Lm/b;Z)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 527
    if-eqz p1, :cond_14

    .line 528
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bN;->a(Z)V

    .line 529
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Lm/b;

    if-eq p1, v0, :cond_14

    .line 530
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bN;->a(Lm/b;)V

    .line 531
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Lm/b;

    .line 534
    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aB;

    if-eqz v0, :cond_a6

    .line 539
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v9

    .line 540
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/high16 v1, 0x44fa

    invoke-static {v0, v1}, Ln/Q;->a(FF)Ln/Q;

    move-result-object v0

    .line 541
    invoke-virtual {v9, v0}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 542
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 543
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aB;->e()V

    .line 544
    const/high16 v0, 0x7f0b

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 545
    const v0, 0x7f0b0001

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 546
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_63

    .line 547
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200f8

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    .line 549
    :cond_63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Landroid/graphics/Bitmap;

    if-nez v0, :cond_74

    .line 550
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200f0

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Landroid/graphics/Bitmap;

    .line 553
    :cond_74
    iget-object v11, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aB;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    const-string v6, ""

    const-string v7, ""

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v0}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 555
    const v0, 0x7f0b0002

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 556
    const v0, 0x7f0b0003

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 557
    iget-object v10, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/aB;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Landroid/graphics/Bitmap;

    const-string v6, ""

    const-string v7, ""

    move-object v1, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v0}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 559
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setModelChanged()V

    .line 562
    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d_()V

    .line 563
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/google/android/maps/driveabout/app/cn;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:Lcom/google/android/maps/driveabout/app/cn;

    .line 202
    return-void
.end method

.method public setRawLocation(Landroid/location/Location;)V
    .registers 2
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    .line 567
    return-void
.end method

.method public setTrafficMode(I)V
    .registers 4
    .parameter

    .prologue
    .line 378
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 379
    sget p1, Lcom/google/android/maps/driveabout/app/NavigationMapView;->A:I

    .line 381
    :cond_5
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->z:I

    if-eq p1, v0, :cond_29

    .line 382
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bw;

    if-eqz v0, :cond_12

    .line 383
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bw;->a(I)V

    .line 385
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2a

    .line 386
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 390
    :goto_1a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 391
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dy;->a(F)V

    .line 395
    :goto_24
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->z:I

    .line 396
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->D()V

    .line 398
    :cond_29
    return-void

    .line 388
    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_1a

    .line 393
    :cond_30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/vector/dy;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dy;->a(F)V

    goto :goto_24
.end method

.method public setTurnArrowOverlay(Lo/x;Lo/I;Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 312
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    if-nez v0, :cond_1f

    .line 313
    new-instance v0, Lcom/google/android/maps/driveabout/app/dC;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/dC;-><init>(Lo/x;Lo/I;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    .line 317
    :goto_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/dC;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 318
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 326
    :goto_1e
    return-void

    .line 315
    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/dC;->a(Lo/x;Lo/I;)V

    goto :goto_f

    .line 321
    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_1e

    .line 324
    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_1e
.end method

.method public setViewMode(I)V
    .registers 9
    .parameter

    .prologue
    const v4, 0x249f0

    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 209
    .line 210
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-ne v0, v5, :cond_a8

    if-eq p1, v5, :cond_a8

    .line 213
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setAllowScroll(Z)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setAllowZoomGestures(Z)V

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    if-eqz v0, :cond_a6

    .line 218
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/cW;->c(I)V

    move v0, v1

    .line 222
    :goto_27
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    if-eqz v3, :cond_30

    .line 223
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 226
    :cond_30
    :goto_30
    iget v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-ne v3, v6, :cond_4d

    if-eq p1, v6, :cond_4d

    .line 229
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 230
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    if-eqz v3, :cond_45

    .line 231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/cW;->c(I)V

    move v0, v1

    .line 236
    :cond_45
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    const v4, 0x31128

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/aT;->c(I)V

    .line 239
    :cond_4d
    iget v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-eq v3, v5, :cond_75

    if-ne p1, v5, :cond_75

    .line 242
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 243
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 244
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    if-eqz v3, :cond_6a

    .line 245
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    const v3, 0x31510

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/cW;->c(I)V

    move v0, v1

    .line 249
    :cond_6a
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setAllowScroll(Z)V

    .line 250
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setAllowZoomGestures(Z)V

    .line 251
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/dC;

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 253
    :cond_75
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-eq v2, v6, :cond_8d

    if-ne p1, v6, :cond_8d

    .line 256
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    if-eqz v2, :cond_9c

    .line 257
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    const v2, 0x31510

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/cW;->c(I)V

    .line 264
    :goto_87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    move v0, v1

    .line 267
    :cond_8d
    if-eqz v0, :cond_99

    .line 270
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 274
    :cond_99
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    .line 275
    return-void

    .line 262
    :cond_9c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/aT;

    const v2, 0x249ef

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aT;->c(I)V

    move v1, v0

    goto :goto_87

    :cond_a6
    move v0, v2

    goto :goto_27

    :cond_a8
    move v0, v2

    goto :goto_30
.end method
