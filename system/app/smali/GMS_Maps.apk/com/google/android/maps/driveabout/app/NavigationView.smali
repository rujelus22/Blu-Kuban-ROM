.class public Lcom/google/android/maps/driveabout/app/NavigationView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/cU;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/widget/TextView;

.field private G:Lcom/google/android/maps/driveabout/app/cS;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/google/android/maps/driveabout/app/cS;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Ljava/lang/Runnable;

.field private U:J

.field private V:Landroid/widget/ImageView;

.field private W:Landroid/location/Location;

.field private Z:Z

.field private a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

.field private aa:I

.field private final ab:Lcom/google/android/maps/driveabout/app/dA;

.field private ac:Landroid/view/View$OnClickListener;

.field private ad:Landroid/view/View$OnClickListener;

.field private final ae:I

.field private af:Landroid/content/DialogInterface$OnClickListener;

.field private ag:Landroid/view/View$OnTouchListener;

.field private final b:Lcom/google/android/maps/driveabout/app/aH;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

.field private e:Lcom/google/android/maps/driveabout/app/am;

.field private f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

.field private g:Lcom/google/android/maps/driveabout/app/cS;

.field private h:Lcom/google/android/maps/driveabout/app/TopBarView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:I

    invoke-static {}, Lcom/google/android/maps/driveabout/app/dA;->a()Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ab:Lcom/google/android/maps/driveabout/app/dA;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aH;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/aH;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:I

    const-string v0, "/"

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private G()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method private H()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q()Lcom/google/android/maps/driveabout/vector/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lt/L;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private I()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->e()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private J()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private K()V
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/cO;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cO;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private L()V
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0f00da

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v1, 0x7f0f00c4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/ci;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6c

    if-eqz v0, :cond_51

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6c
    if-eqz v0, :cond_71

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_71
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_56
.end method

.method private M()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->h()Z

    move-result v1

    if-eqz v1, :cond_41

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_1a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_37

    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_37
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(II)V

    :cond_40
    return-void

    :cond_41
    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_1a
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ac:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v0, "Navigation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationView;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->U:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->W:Landroid/location/Location;

    return-object v0
.end method

.method private e(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/TopBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->c(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/eG;->c(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->M()V

    return-void
.end method

.method private f(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_e

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    goto :goto_4

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    goto :goto_4

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public A()V
    .registers 4

    const/4 v0, 0x4

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v2, 0x7f040009

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->d(Landroid/view/View;I)V

    return-void
.end method

.method public B()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->d(Landroid/view/View;I)V

    return-void
.end method

.method public C()V
    .registers 5

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->L()V

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->c(Landroid/view/View;I)V

    :goto_43
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->c(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->M()V

    return-void

    :cond_4c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/app/eG;->c(Landroid/view/View;I)V

    goto :goto_43
.end method

.method public D()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cS;->a(Z)V

    return-void
.end method

.method public E()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t()V

    return-void
.end method

.method public F()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i()V

    return-void
.end method

.method public a()Lcom/google/android/maps/driveabout/app/NavigationMapView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/am;->a(I)V

    return-void
.end method

.method public a(IF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/am;->a(IF)V

    return-void
.end method

.method public a(II)V
    .registers 5

    const v0, 0x7f0b0045

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(IIILandroid/content/Intent;)V

    return-void
.end method

.method public a(IIILandroid/content/Intent;)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/cK;

    invoke-direct {v5, p0, p4}, Lcom/google/android/maps/driveabout/app/cK;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    new-instance v6, Lcom/google/android/maps/driveabout/app/cL;

    invoke-direct {v6, p0, p4}, Lcom/google/android/maps/driveabout/app/cL;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/am;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/google/android/maps/driveabout/app/cM;

    invoke-direct {v0, p0, p3}, Lcom/google/android/maps/driveabout/app/cM;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/maps/driveabout/app/am;->a(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(IIZ)V
    .registers 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x3

    if-ne p2, v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02024b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :cond_18
    if-nez p3, :cond_23

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :cond_23
    packed-switch p1, :pswitch_data_54

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02037d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02037e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :pswitch_38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02037f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :pswitch_41
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f020381

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :pswitch_4a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f020380

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4a
        :pswitch_41
        :pswitch_38
        :pswitch_2f
    .end packed-switch
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/am;->a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(IZIZ)V
    .registers 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-ltz p1, :cond_30

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_29

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ab:Lcom/google/android/maps/driveabout/app/dA;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(J)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_23
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ab:Lcom/google/android/maps/driveabout/app/dA;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/app/dA;->a(IZ)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_23

    :cond_30
    if-nez p2, :cond_7b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p3, :cond_6a

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_53
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f19999a

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_28

    :cond_6a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_53

    :cond_7b
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_28

    :cond_8d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/am;->c(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/am;->b(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 8

    const/4 v5, 0x0

    if-eqz p1, :cond_73

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->W:Landroid/location/Location;

    move-object v0, p1

    check-cast v0, Ls/b;

    invoke-virtual {v0}, Ls/b;->h()Lt/X;

    move-result-object v1

    invoke-virtual {v0}, Ls/b;->e()Z

    move-result v0

    if-eqz v0, :cond_73

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lt/X;->c()I

    move-result v0

    if-lez v0, :cond_73

    const/4 v0, 0x0

    invoke-virtual {v1, v5}, Lt/X;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v2

    invoke-virtual {v1, v5}, Lt/X;->b(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/maps/driveabout/app/cP;

    invoke-direct {v4, p0, p1}, Lcom/google/android/maps/driveabout/app/cP;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/location/Location;)V

    invoke-virtual {v2, v3, v4}, Lx/ag;->a(Ljava/lang/String;Lx/af;)Lx/ad;

    move-result-object v2

    invoke-virtual {v2}, Lx/ad;->c()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    invoke-virtual {v2}, Lx/ad;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3d
    if-eqz v0, :cond_63

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v5}, Lt/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/dn;

    const/high16 v3, 0x3f80

    invoke-direct {v1, v0, v3}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v2, v1, v5, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :goto_62
    return-void

    :cond_63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ab:Lcom/google/android/maps/driveabout/app/dA;

    invoke-virtual {v1, v5}, Lt/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_62

    :cond_73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_62
.end method

.method public a(Landroid/location/Location;Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    check-cast p1, Ls/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Ls/b;Z)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/maps/driveabout/app/dk;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->d()Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Lcom/google/android/maps/driveabout/app/dk;)V

    return-void
.end method

.method public a(Landroid/view/View$OnKeyListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationMapView;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lcom/google/android/maps/driveabout/app/aL;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(I)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;Lu/I;ZZ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cS;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cS;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p4, 0x0

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lcom/google/android/maps/driveabout/app/aL;Lu/I;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->M()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/am;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZLcom/google/android/maps/driveabout/app/bo;)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/am;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZLcom/google/android/maps/driveabout/app/bo;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bv;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/app/bv;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/V;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/V;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aF;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aF;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cK;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cK;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cV;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cV;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Lcom/google/android/maps/driveabout/app/cS;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cS;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/cR;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/cR;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->M()V

    return-void
.end method

.method public a(Lu/I;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lu/I;)V

    return-void
.end method

.method public a(Lu/x;Lu/I;Lcom/google/android/maps/driveabout/vector/aF;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lu/x;Lu/I;Lcom/google/android/maps/driveabout/vector/aF;)V

    return-void
.end method

.method public a(Lu/x;[Lu/x;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lu/x;[Lu/x;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(I)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    if-eqz p1, :cond_b

    const v0, 0x7f02012d

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_b
    const v0, 0x7f02012b

    goto :goto_7
.end method

.method public a(ZZ)V
    .registers 6

    const v2, 0x7f0200e3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;

    if-eqz p1, :cond_27

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(Ljava/lang/String;)V

    :goto_26
    return-void

    :cond_27
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    const v2, 0x7f0200e9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public a(ZZZ)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(ZZZ)V

    if-eqz p3, :cond_30

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->J()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->H()Z

    move-result v0

    if-nez v0, :cond_3e

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->I()Z

    move-result v3

    if-nez v3, :cond_40

    :goto_23
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->U:J

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    if-nez v0, :cond_3d

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->K()V

    :cond_3d
    return-void

    :cond_3e
    move v0, v2

    goto :goto_18

    :cond_40
    move v1, v2

    goto :goto_23
.end method

.method public a([Lu/P;ZZLcom/google/android/maps/driveabout/app/cV;)V
    .registers 7

    if-eqz p3, :cond_8

    new-instance v0, Lcom/google/android/maps/driveabout/app/cJ;

    invoke-direct {v0, p0, p4}, Lcom/google/android/maps/driveabout/app/cJ;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Lcom/google/android/maps/driveabout/app/cV;)V

    move-object p4, v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p4}, Lcom/google/android/maps/driveabout/app/am;->a([Lu/P;ILcom/google/android/maps/driveabout/app/cV;)V

    return-void
.end method

.method public a([Lu/b;Lcom/google/android/maps/driveabout/app/aC;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/am;->a([Lu/b;Lcom/google/android/maps/driveabout/app/aC;)V

    return-void
.end method

.method public a(FF)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    :goto_c
    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_4d

    int-to-float v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_4d

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_4d

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_4d

    move v0, v1

    :goto_35
    move v2, v0

    :cond_36
    return v2

    :cond_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    goto :goto_c

    :cond_42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    goto :goto_c

    :cond_4d
    move v0, v2

    goto :goto_35
.end method

.method public a(Ljava/io/OutputStream;)Z
    .registers 13

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/NavigationView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_a7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x1

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x2

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v4, v1, v3

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v3, v9

    const/4 v9, 0x1

    add-float v10, v4, v5

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v3, v9

    const/4 v9, 0x3

    aput v5, v3, v9

    const/4 v9, 0x4

    aput v2, v3, v9

    const/4 v9, 0x5

    add-float/2addr v4, v5

    aput v4, v3, v9

    const/4 v4, 0x6

    aput v2, v3, v4

    const/4 v2, 0x7

    aput v5, v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_b2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_a7
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v6, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v0, 0x1

    goto/16 :goto_d

    nop

    :array_b2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public a(Lu/x;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lu/x;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_17
    return-void
.end method

.method public b(I)V
    .registers 9

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:I

    if-ne p1, v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_37

    if-ne p1, v3, :cond_47

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v0, :cond_2d

    new-instance v3, Lcom/google/android/maps/driveabout/app/bg;

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/app/bg;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-ne v1, v0, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(I)V

    :cond_44
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:I

    goto :goto_9

    :cond_47
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:I

    if-ne v2, v3, :cond_59

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    const v2, 0x7f04000d

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    if-eqz v1, :cond_37

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    :cond_59
    if-ne p1, v5, :cond_6b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eq v0, v2, :cond_64

    if-eqz v0, :cond_64

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_64
    const v0, 0x7f040007

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    goto :goto_37

    :cond_6b
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:I

    if-ne v2, v5, :cond_7b

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_37

    const v2, 0x7f040008

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    goto :goto_37

    :cond_7b
    if-eqz v1, :cond_80

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_80
    if-eqz v0, :cond_37

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->af:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ag:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Lu/x;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cS;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cS;->a(I)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cK;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cK;)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/o;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "__route_status"

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_11
.end method

.method public b(Lu/I;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lu/I;)V

    return-void
.end method

.method public b(Lu/x;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lu/x;)V

    return-void
.end method

.method public b(Lu/x;[Lu/x;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lu/x;[Lu/x;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/am;->a(Z)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_16
    return-void
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(I)V

    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .registers 4

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method public c(Z)V
    .registers 4

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Lcom/google/android/maps/driveabout/app/cS;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cS;->a(I)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_17
    return-void
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_16
    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cN;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/cN;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_17
    return-void
.end method

.method public f(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_16
    return-void
.end method

.method public g(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Z)V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->b()V

    return-void
.end method

.method public h(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Z)V
    .registers 6

    const v1, 0x7f040008

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v2, v2, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(ZZZ)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    if-eqz p1, :cond_25

    move v0, v1

    :goto_e
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    if-eqz p1, :cond_27

    :goto_15
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    :cond_24
    return-void

    :cond_25
    move v0, v2

    goto :goto_e

    :cond_27
    move v1, v2

    goto :goto_15
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->d()V

    return-void
.end method

.method public i(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->e()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public i(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->M()V

    return-void
.end method

.method public j()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->af:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public j(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->f()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Z)V

    return-void
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->p()V

    return-void
.end method

.method public k(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->g()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ac:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public k(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i(Z)V

    return-void
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Lcom/google/android/maps/driveabout/app/cS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cS;->a(Z)V

    return-void
.end method

.method public l(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public l(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Z)V

    return-void
.end method

.method public m()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Lcom/google/android/maps/driveabout/app/cS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cS;->a(Z)V

    return-void
.end method

.method public m(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->o:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public n()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    return-void
.end method

.method public n(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->m:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public o()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    return-void
.end method

.method public o(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->n:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/TopBarView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    const v0, 0x7f0f00e0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00e2

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v0, 0x7f0f00dc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    const v0, 0x7f0f00df

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const v0, 0x7f0f00e4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v0, 0x7f0f00d7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6e

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6e
    const v0, 0x7f0f0112

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    const v0, 0x7f0f00e3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cS;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/cS;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cS;

    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v0, 0x7f0f0115

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    const v0, 0x7f0f0116

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const v0, 0x7f0f0117

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    const v0, 0x7f0f00e5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/widget/TextView;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cS;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v3}, Lcom/google/android/maps/driveabout/app/cS;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Lcom/google/android/maps/driveabout/app/cS;

    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cS;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v3}, Lcom/google/android/maps/driveabout/app/cS;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Lcom/google/android/maps/driveabout/app/cS;

    const v0, 0x7f0f00dd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    const v0, 0x7f0f00a0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    const v0, 0x7f0f00a1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    const v0, 0x7f0f00a2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    const v0, 0x7f0f00a3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    const v0, 0x7f0f009e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    const v0, 0x7f0f00e1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:Landroid/widget/ImageView;

    const v0, 0x7f0f00e8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f0f00e9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    const v0, 0x7f0f00ea

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->G()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "User interaction"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ag:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ag:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onLayout(ZIIII)V
    .registers 9

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setMaxWidth(I)V

    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:Z

    :cond_27
    return-void
.end method

.method public p()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    return-void
.end method

.method public p(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public q()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    return-void
.end method

.method public r()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    return-void
.end method

.method public s()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    return-void
.end method

.method public t()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->e(Landroid/view/View;I)V

    return-void
.end method

.method public u()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->e(Landroid/view/View;I)V

    return-void
.end method

.method public v()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    return-void
.end method

.method public w()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    return-void
.end method

.method public x()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    return-void
.end method

.method public y()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    return-void
.end method

.method public z()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
