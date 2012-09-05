.class public Lcom/google/android/maps/rideabout/view/NavigationView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/maps/rideabout/view/j;


# instance fields
.field private a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

.field private b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ViewFlipper;

.field private e:Landroid/widget/ViewFlipper;

.field private f:I

.field private final g:Lau/v;

.field private final h:Lbc/d;

.field private final i:Lcom/google/googlenav/ui/p;

.field private final j:Lcom/google/googlenav/ui/x;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

.field private m:Z

.field private n:Landroid/widget/ViewSwitcher;

.field private volatile o:Z

.field private p:Lcom/google/android/maps/rideabout/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lau/v;Lbc/d;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/x;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->g:Lau/v;

    iput-object p3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->h:Lbc/d;

    iput-object p4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/p;

    iput-object p5, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->j:Lcom/google/googlenav/ui/x;

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/view/NavigationView;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030182

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f03c1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    const v0, 0x7f0f03c6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    const v0, 0x7f0f03c9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    const v0, 0x7f0f03cc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    const v0, 0x7f0f03c8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0f03ca

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->g:Lau/v;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->h:Lbc/d;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/p;

    iget-object v5, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->j:Lcom/google/googlenav/ui/x;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;-><init>(Landroid/content/Context;Lau/v;Lbc/d;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/x;Z)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v0, 0x7f0f01ff

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9e
    const v0, 0x7f0f03bc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->l:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-void

    :cond_aa
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/rideabout/view/k;

    invoke-direct {v1, p0}, Lcom/google/android/maps/rideabout/view/k;-><init>(Lcom/google/android/maps/rideabout/view/NavigationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9e
.end method

.method private a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;Lcom/google/android/maps/rideabout/view/l;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Lcom/google/android/maps/rideabout/view/l;)V

    return-void
.end method

.method private k()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/widget/ViewSwitcher;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_48

    const v0, 0x7f0f03c4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/content/res/Configuration;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->k()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->b()V

    :cond_48
    return-void
.end method

.method public a(Landroid/widget/ViewSwitcher;Lcom/google/android/maps/rideabout/view/l;)V
    .registers 5

    const v0, 0x7f0f03c1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;Lcom/google/android/maps/rideabout/view/l;)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->k()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;Lcom/google/android/maps/rideabout/view/l;)V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->k()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    return-void
.end method

.method public a(Lbc/a;)V
    .registers 7

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v3, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/a;)I

    move-result v3

    iget v4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :cond_18
    return-void
.end method

.method public a(Lbc/a;Z)V
    .registers 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    if-ne v1, v0, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    move p2, v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b(Lbc/a;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a()V

    :goto_14
    return-void

    :cond_15
    if-eqz p2, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->c(Lbc/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(I)V

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    goto :goto_14

    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lbc/a;)V

    goto :goto_20
.end method

.method public a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(Lcom/google/android/maps/rideabout/view/c;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/h;)V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    return-void
.end method

.method public a(I)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->scrollTo(II)V

    return-void
.end method

.method public b(Lbc/a;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->c(Lbc/a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->b(I)V

    return-void
.end method

.method public b(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b(Lcom/google/googlenav/ui/view/android/rideabout/h;)V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    return-void
.end method

.method public c(Lbc/a;)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/a;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d()V

    return-void
.end method

.method public d(Lbc/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c(Lbc/a;)V

    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    return-void
.end method

.method public e(Lbc/a;)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lbc/a;Z)V

    :goto_6
    return-void

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    goto :goto_6
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    return-void
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public h()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/i;

    return-object v0
.end method

.method public i()Lcom/google/android/maps/rideabout/view/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->l:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-object v0
.end method

.method public j()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_1b
.end method
