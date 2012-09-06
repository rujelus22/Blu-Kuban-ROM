.class public Lcom/google/android/maps/driveabout/app/NavigationView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/cI;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/widget/TextView;

.field private G:Lcom/google/android/maps/driveabout/app/cG;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/google/android/maps/driveabout/app/cG;

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

.field private V:Landroid/location/Location;

.field private W:Z

.field private Z:I

.field private a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

.field private final aa:Lcom/google/android/maps/driveabout/app/dp;

.field private ab:Landroid/view/View$OnClickListener;

.field private ac:Landroid/view/View$OnClickListener;

.field private final ad:I

.field private ae:Landroid/content/DialogInterface$OnClickListener;

.field private af:Landroid/view/View$OnTouchListener;

.field private final b:Lcom/google/android/maps/driveabout/app/aF;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

.field private e:Lcom/google/android/maps/driveabout/app/al;

.field private f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

.field private g:Lcom/google/android/maps/driveabout/app/cG;

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
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->W:Z

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:I

    .line 210
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dp;->a()Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:Lcom/google/android/maps/driveabout/app/dp;

    .line 211
    new-instance v0, Lcom/google/android/maps/driveabout/app/aF;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/aF;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aF;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:I

    .line 213
    const-string v0, "/"

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method private I()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 351
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setDrawingCacheEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 368
    return-void
.end method

.method private J()Z
    .registers 4

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->g()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    .line 894
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o()Lcom/google/android/maps/driveabout/vector/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Ln/Q;)F

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

.method private K()Z
    .registers 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->g()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->e()F

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

.method private L()V
    .registers 4

    .prologue
    .line 908
    new-instance v0, Lcom/google/android/maps/driveabout/app/cC;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cC;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    .line 921
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 922
    return-void
.end method

.method private M()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1010
    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    .line 1012
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v1, 0x7f1000eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1014
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f1000ec

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    .line 1016
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f1000ed

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    .line 1017
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f1000ea

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/ca;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1020
    if-eqz v0, :cond_51

    .line 1021
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    :cond_51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    :goto_56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    return-void

    .line 1025
    :cond_6c
    if-eqz v0, :cond_71

    .line 1026
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    :cond_71
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_56
.end method

.method private N()V
    .registers 5

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1077
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->i()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1078
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1080
    const v2, 0x7f0b0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1092
    :goto_1a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_37

    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1096
    add-int/2addr v0, v2

    .line 1098
    :cond_37
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v2, :cond_40

    .line 1099
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setCompassMargins(II)V

    .line 1101
    :cond_40
    return-void

    .line 1083
    :cond_41
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1085
    const v2, 0x7f0b0014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_1a
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ab:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 625
    :goto_7
    return-void

    .line 622
    :catch_8
    move-exception v0

    .line 623
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

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ac:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private b(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1044
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 1045
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1047
    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    .line 1048
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/TopBarView;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->c(Landroid/view/View;I)V

    .line 1053
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/es;->c(Landroid/view/View;I)V

    .line 1054
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->N()V

    .line 1055
    return-void
.end method

.method private c(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1105
    packed-switch p1, :pswitch_data_e

    .line 1118
    :goto_4
    return-object v0

    .line 1109
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    goto :goto_4

    .line 1112
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    goto :goto_4

    .line 1115
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    goto :goto_4

    .line 1105
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationView;)J
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->U:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:Landroid/location/Location;

    return-object v0
.end method


# virtual methods
.method public A()V
    .registers 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 804
    return-void
.end method

.method public B()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 808
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 809
    return-void
.end method

.method public C()V
    .registers 4

    .prologue
    .line 813
    const/4 v0, 0x4

    .line 814
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 815
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 817
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setCopyrightPadding(II)V

    .line 818
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    :cond_23
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v2, 0x7f050008

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 822
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->d(Landroid/view/View;I)V

    .line 823
    return-void
.end method

.method public D()V
    .registers 4

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 829
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 830
    add-int/lit8 v0, v0, 0x4

    .line 831
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 833
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setCopyrightPadding(II)V

    .line 834
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_2f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v2, 0x7f05000d

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 838
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->d(Landroid/view/View;I)V

    .line 839
    return-void
.end method

.method public E()V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 984
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 985
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    .line 989
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_21

    .line 990
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->M()V

    .line 992
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 993
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 996
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 998
    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    .line 999
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->c(Landroid/view/View;I)V

    .line 1004
    :goto_43
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->c(Landroid/view/View;I)V

    .line 1005
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->N()V

    .line 1006
    return-void

    .line 1001
    :cond_4c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/app/es;->c(Landroid/view/View;I)V

    goto :goto_43
.end method

.method public F()V
    .registers 3

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cG;->a(Z)V

    .line 1289
    return-void
.end method

.method public G()V
    .registers 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q()V

    .line 1299
    return-void
.end method

.method public H()V
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i()V

    .line 1314
    return-void
.end method

.method public a()Lcom/google/android/maps/driveabout/app/NavigationMapView;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    return-object v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/al;->a(I)V

    .line 536
    return-void
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 572
    const v0, 0x7f0d0046

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(IIILandroid/content/Intent;)V

    .line 573
    return-void
.end method

.method public a(IIILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/cy;

    invoke-direct {v5, p0, p4}, Lcom/google/android/maps/driveabout/app/cy;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    new-instance v6, Lcom/google/android/maps/driveabout/app/cz;

    invoke-direct {v6, p0, p4}, Lcom/google/android/maps/driveabout/app/cz;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/al;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 601
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 605
    new-instance v0, Lcom/google/android/maps/driveabout/app/cA;

    invoke-direct {v0, p0, p3}, Lcom/google/android/maps/driveabout/app/cA;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    .line 616
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/maps/driveabout/app/al;->a(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 617
    return-void
.end method

.method public a(IIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1429
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 1430
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1454
    :goto_b
    return-void

    .line 1431
    :cond_c
    const/4 v0, 0x3

    if-ne p2, v0, :cond_18

    .line 1432
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f0202b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1433
    :cond_18
    if-nez p3, :cond_23

    .line 1434
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1436
    :cond_23
    packed-switch p1, :pswitch_data_54

    .line 1451
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02041d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1438
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02041e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1441
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02041f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1444
    :pswitch_41
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f020421

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1448
    :pswitch_4a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f020420

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1436
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/al;->a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 500
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/al;->c(Landroid/content/DialogInterface$OnClickListener;)V

    .line 681
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/al;->b(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 676
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 4
    .parameter

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lcom/google/android/maps/driveabout/app/aN;)V

    .line 938
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 939
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(I)V

    .line 940
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;Lo/I;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cG;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cG;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 957
    const/4 p4, 0x0

    .line 959
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lcom/google/android/maps/driveabout/app/aN;Lo/I;ZZ)V

    .line 961
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 962
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(I)V

    .line 963
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->N()V

    .line 964
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZLcom/google/android/maps/driveabout/app/bs;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZLcom/google/android/maps/driveabout/app/bs;)V

    .line 665
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 3
    .parameter

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 1294
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dd;)V
    .registers 3
    .parameter

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 1674
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Lcom/google/android/maps/driveabout/app/cG;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cG;->a(I)V

    .line 692
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Ljava/lang/String;I)V

    .line 1334
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1338
    .line 1340
    new-instance v0, Lcom/google/android/maps/driveabout/app/cF;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/cF;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->post(Ljava/lang/Runnable;)Z

    .line 1346
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/String;Z)V

    .line 969
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 970
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(I)V

    .line 971
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->N()V

    .line 972
    return-void
.end method

.method public a(Ln/m;)V
    .registers 3
    .parameter

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/bl;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cI;Ln/m;)V

    .line 686
    return-void
.end method

.method public a(Lo/x;[Lo/x;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lo/x;[Lo/x;)V

    .line 946
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 947
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(I)V

    .line 948
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/al;->a(Z)V

    .line 506
    return-void
.end method

.method public a(ZZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const v3, 0x7f020111

    const v2, 0x7f02010d

    .line 1414
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    const v1, 0x7f100117

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;

    .line 1416
    if-eqz p1, :cond_2a

    .line 1417
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1418
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setIcon(I)V

    .line 1419
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setText(Ljava/lang/String;)V

    .line 1425
    :goto_29
    return-void

    .line 1421
    :cond_2a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1422
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setIcon(I)V

    .line 1423
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setText(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public a(ZZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 856
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/maps/driveabout/app/TopBarView;->setButtonVisibility(ZZZ)V

    .line 858
    if-eqz p3, :cond_2a

    .line 859
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->J()Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v1

    :goto_12
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 860
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->K()Z

    move-result v3

    if-nez v3, :cond_3a

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 861
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 862
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 864
    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->U:J

    .line 865
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    if-nez v0, :cond_37

    .line 866
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->L()V

    .line 868
    :cond_37
    return-void

    :cond_38
    move v0, v2

    .line 859
    goto :goto_12

    :cond_3a
    move v1, v2

    .line 860
    goto :goto_1d
.end method

.method public a([Lo/P;ZZLcom/google/android/maps/driveabout/app/cJ;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    .line 548
    if-eqz p3, :cond_8

    .line 550
    new-instance v0, Lcom/google/android/maps/driveabout/app/cx;

    invoke-direct {v0, p0, p4}, Lcom/google/android/maps/driveabout/app/cx;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Lcom/google/android/maps/driveabout/app/cJ;)V

    move-object p4, v0

    .line 561
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p4}, Lcom/google/android/maps/driveabout/app/al;->a([Lo/P;ILcom/google/android/maps/driveabout/app/cJ;)V

    .line 563
    return-void
.end method

.method public a([Lo/b;Lcom/google/android/maps/driveabout/app/aE;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/al;->a([Lo/b;Lcom/google/android/maps/driveabout/app/aE;)V

    .line 519
    return-void
.end method

.method public a(FF)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    .line 469
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    .line 470
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    .line 479
    :goto_c
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 480
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 481
    aget v4, v3, v2

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 483
    aget v3, v3, v1

    .line 484
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 486
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

    .line 491
    :cond_36
    return v2

    .line 471
    :cond_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    .line 472
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    goto :goto_c

    .line 473
    :cond_42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    .line 474
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    goto :goto_c

    :cond_4d
    move v0, v2

    goto :goto_35
.end method

.method public a(Ljava/io/OutputStream;)Z
    .registers 13
    .parameter

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getWidth()I

    move-result v0

    .line 1366
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getHeight()I

    move-result v1

    .line 1367
    if-eqz v0, :cond_c

    if-nez v1, :cond_e

    .line 1368
    :cond_c
    const/4 v0, 0x0

    .line 1409
    :goto_d
    return v0

    .line 1372
    :cond_e
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1373
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1374
    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/NavigationView;->draw(Landroid/graphics/Canvas;)V

    .line 1378
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1379
    if-eqz v8, :cond_a7

    .line 1382
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1383
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v2, v1

    .line 1384
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v4, v1

    .line 1385
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 1386
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

    .line 1387
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

    .line 1388
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1391
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_b2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 1400
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1401
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1402
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1405
    invoke-virtual {v7, v8, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1408
    :cond_a7
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v6, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1409
    const/4 v0, 0x1

    goto/16 :goto_d

    .line 1391
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

.method public a(Lo/x;)Z
    .registers 3
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aF;->a(Lo/x;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 4
    .parameter

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->setRoute(Lo/x;)V

    .line 1283
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cG;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cG;->a(I)V

    .line 1284
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/dd;)V
    .registers 3
    .parameter

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 1679
    return-void
.end method

.method public b(Lo/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lo/x;)V

    .line 1309
    return-void
.end method

.method public b(Lo/x;[Lo/x;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lo/x;[Lo/x;)V

    .line 1268
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 702
    if-eqz p1, :cond_12

    .line 703
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    const v1, 0x7f0d0076

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 707
    :goto_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Lcom/google/android/maps/driveabout/app/cG;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cG;->a(I)V

    .line 708
    return-void

    .line 705
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    const v1, 0x7f0d0077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public c()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    .line 410
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    :cond_17
    return-void
.end method

.method public c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 728
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 729
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 418
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    :cond_16
    return-void
.end method

.method public d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cB;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/cB;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method

.method public e(Z)V
    .registers 4
    .parameter

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 752
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 753
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public f()V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    .line 431
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 434
    :cond_17
    return-void
.end method

.method public f(Z)V
    .registers 3
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Z)V

    .line 878
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 439
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 442
    :cond_16
    return-void
.end method

.method public g(Z)V
    .registers 6
    .parameter

    .prologue
    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 926
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v2, v2, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setButtonVisibility(ZZZ)V

    .line 927
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    if-eqz p1, :cond_25

    move v0, v1

    :goto_e
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 928
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    if-eqz p1, :cond_27

    :goto_15
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 929
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    .line 930
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Ljava/lang/Runnable;

    .line 933
    :cond_24
    return-void

    :cond_25
    move v0, v2

    .line 927
    goto :goto_e

    :cond_27
    move v1, v2

    .line 928
    goto :goto_15
.end method

.method public h()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    .line 447
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    :cond_17
    return-void
.end method

.method public h(Z)V
    .registers 4
    .parameter

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->b(Z)V

    .line 977
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 978
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(I)V

    .line 979
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->N()V

    .line 980
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 455
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 458
    :cond_16
    return-void
.end method

.method public i(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Z)V

    .line 1273
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->b()V

    .line 541
    return-void
.end method

.method public j(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Z)V

    .line 1351
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->d()V

    .line 568
    return-void
.end method

.method public l()V
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/al;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 630
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->q()V

    .line 670
    return-void
.end method

.method public n()V
    .registers 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Lcom/google/android/maps/driveabout/app/cG;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cG;->a(Z)V

    .line 698
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Lcom/google/android/maps/driveabout/app/cG;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cG;->a(Z)V

    .line 713
    return-void
.end method

.method public onFinishInflate()V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 222
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 223
    const v0, 0x7f100101

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    .line 224
    const v0, 0x7f100104

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    .line 225
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aF;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/TopBarView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    .line 228
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100107

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setConnectedViews(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 231
    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    .line 232
    const v0, 0x7f100105

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    .line 235
    const v0, 0x7f1000fd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_6e

    .line 237
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_6e
    const v0, 0x7f10013c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    .line 240
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    .line 242
    new-instance v0, Lcom/google/android/maps/driveabout/app/cG;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v1, v4}, Lcom/google/android/maps/driveabout/app/cG;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/cG;

    .line 243
    const v0, 0x7f10013d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    .line 244
    const v0, 0x7f10013e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    .line 245
    const v0, 0x7f10013f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f100140

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    .line 248
    const v0, 0x7f100141

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/widget/TextView;

    .line 251
    new-instance v0, Lcom/google/android/maps/driveabout/app/cG;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/cG;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Lcom/google/android/maps/driveabout/app/cG;

    .line 252
    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    .line 254
    new-instance v0, Lcom/google/android/maps/driveabout/app/cG;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/cG;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Lcom/google/android/maps/driveabout/app/cG;

    .line 256
    const v0, 0x7f100103

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    .line 259
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/RelativeLayout;

    .line 260
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    .line 261
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    .line 262
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    .line 263
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    .line 264
    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    .line 265
    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    .line 266
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    .line 267
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    .line 268
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    .line 270
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/LinearLayout;

    .line 271
    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Landroid/view/View;

    .line 272
    const v0, 0x7f10011c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 273
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 274
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    move v0, v2

    .line 276
    :goto_183
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 277
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 280
    const v1, 0x7f100119

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/LinearLayout;

    .line 286
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/animation/Animation;

    .line 288
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/animation/Animation;

    .line 291
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->I()V

    .line 292
    return-void

    :cond_1c6
    move v0, v3

    .line 274
    goto :goto_183
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 1688
    const-string v0, "User interaction"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    .line 1690
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->af:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_10

    .line 1691
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->af:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1695
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onLayout(ZIIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 297
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->W:Z

    if-eqz v0, :cond_33

    .line 298
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_31

    .line 300
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 303
    const v0, 0x7f1000fe

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 304
    if-nez v0, :cond_34

    move v0, v1

    .line 305
    :goto_22
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v4, v2

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setMaxWidth(I)V

    .line 307
    :cond_31
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->W:Z

    .line 309
    :cond_33
    return-void

    .line 304
    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_22
.end method

.method public p()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 718
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 723
    return-void
.end method

.method public r()V
    .registers 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 734
    return-void
.end method

.method public s()V
    .registers 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 758
    return-void
.end method

.method public setAllowNonCenteredZoom(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setAllowNonCenteredZoom(Z)V

    .line 1329
    return-void
.end method

.method public setAlternateRouteButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1523
    return-void
.end method

.method public setAlternateRouteButtonTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1528
    return-void
.end method

.method public setBackToMyLocationButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    return-void
.end method

.method public setBaseMapOverlays(Lcom/google/android/maps/driveabout/vector/D;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setBaseMapOverlays(Lcom/google/android/maps/driveabout/vector/D;Z)V

    .line 1324
    return-void
.end method

.method public setBubbleTapListener(Lcom/google/android/maps/driveabout/vector/T;)V
    .registers 3
    .parameter

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setBubbleTapListener(Lcom/google/android/maps/driveabout/vector/T;)V

    .line 1490
    return-void
.end method

.method public setCloseActivityListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ac:Landroid/view/View$OnClickListener;

    .line 1574
    return-void
.end method

.method public setCompassTapListener(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 3
    .parameter

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setCompassTapListener(Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 1477
    return-void
.end method

.method public setCurrentDirectionsListStep(Lo/I;)V
    .registers 3
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/aF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aF;->a(Lo/I;)V

    .line 393
    return-void
.end method

.method public setCurrentRoadName(Landroid/location/Location;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1214
    if-eqz p1, :cond_73

    .line 1215
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:Landroid/location/Location;

    move-object v0, p1

    .line 1216
    check-cast v0, Lm/b;

    .line 1217
    invoke-virtual {v0}, Lm/b;->h()Ln/ac;

    move-result-object v1

    .line 1218
    invoke-virtual {v0}, Lm/b;->e()Z

    move-result v0

    if-eqz v0, :cond_73

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ln/ac;->c()I

    move-result v0

    if-lez v0, :cond_73

    .line 1221
    const/4 v0, 0x0

    .line 1222
    invoke-virtual {v1, v5}, Ln/ac;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1224
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v2

    invoke-virtual {v1, v5}, Ln/ac;->b(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/maps/driveabout/app/cD;

    invoke-direct {v4, p0, p1}, Lcom/google/android/maps/driveabout/app/cD;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/location/Location;)V

    invoke-virtual {v2, v3, v4}, Lr/af;->a(Ljava/lang/String;Lr/ae;)Lr/ac;

    move-result-object v2

    .line 1242
    invoke-virtual {v2}, Lr/ac;->c()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    .line 1243
    invoke-virtual {v2}, Lr/ac;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1246
    :cond_3d
    if-eqz v0, :cond_63

    .line 1248
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v5}, Ln/ac;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1249
    new-instance v1, Lcom/google/android/maps/driveabout/app/db;

    const/high16 v3, 0x3f80

    invoke-direct {v1, v0, v3}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v2, v1, v5, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1253
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1254
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1263
    :goto_62
    return-void

    .line 1256
    :cond_63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:Lcom/google/android/maps/driveabout/app/dp;

    invoke-virtual {v1, v5}, Ln/ac;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_62

    .line 1262
    :cond_73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_62
.end method

.method public setDestinationButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->o:Landroid/view/View$OnClickListener;

    .line 1578
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1579
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1581
    :cond_b
    return-void
.end method

.method public setDestinationInfoButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->g()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1565
    return-void
.end method

.method public setDestinationNotHereButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->f()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1561
    return-void
.end method

.method public setDialogManager(Lcom/google/android/maps/driveabout/app/al;)V
    .registers 2
    .parameter

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    .line 1603
    return-void
.end method

.method public setExitButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ab:Landroid/view/View$OnClickListener;

    .line 1570
    return-void
.end method

.method public setLabelTapListener(Lcom/google/android/maps/driveabout/vector/f;)V
    .registers 3
    .parameter

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setLabelTapListener(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 1485
    return-void
.end method

.method public setLayerManager(Lcom/google/android/maps/driveabout/app/bw;)V
    .registers 3
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setLayerManager(Lcom/google/android/maps/driveabout/app/bw;)V

    .line 324
    return-void
.end method

.method public setLayersButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->n:Landroid/view/View$OnClickListener;

    .line 1592
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1593
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1595
    :cond_b
    return-void
.end method

.method public setListItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1473
    return-void
.end method

.method public setListViewButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1547
    return-void
.end method

.method public setLoadingDialogListeners(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/al;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1458
    return-void
.end method

.method public setMapController(Lcom/google/android/maps/driveabout/vector/dI;)V
    .registers 3
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setController(Lcom/google/android/maps/driveabout/vector/dI;)V

    .line 320
    return-void
.end method

.method public setMapGestureListener(Lcom/google/android/maps/driveabout/vector/dW;)V
    .registers 3
    .parameter

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setOnMapGestureListener(Lcom/google/android/maps/driveabout/vector/dW;)V

    .line 1463
    return-void
.end method

.method public setMapView(Lcom/google/android/maps/driveabout/app/NavigationMapView;Landroid/view/ViewGroup;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    .line 332
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    .line 333
    return-void
.end method

.method public setMapViewKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1494
    return-void
.end method

.method public setMapViewVisibility(I)V
    .registers 3
    .parameter

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    .line 1319
    return-void
.end method

.method public setMarkerTapListener(Lcom/google/android/maps/driveabout/vector/f;)V
    .registers 3
    .parameter

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setMarkerTapListener(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 1481
    return-void
.end method

.method public setMuteButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1511
    return-void
.end method

.method public setMyLocation(Landroid/location/Location;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    check-cast p1, Lm/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setMyLocation(Lm/b;Z)V

    .line 1356
    return-void
.end method

.method public setNavigationImageStep(Lo/I;)V
    .registers 3
    .parameter

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->setStep(Lo/I;)V

    .line 1304
    return-void
.end method

.method public setNavigationImageViewClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->af:Landroid/view/View$OnTouchListener;

    .line 1684
    return-void
.end method

.method public setRawLocation(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setRawLocation(Landroid/location/Location;)V

    .line 1361
    return-void
.end method

.method public setRecordingSample(IF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/al;->a(IF)V

    .line 512
    return-void
.end method

.method public setRerouteToDestinationButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->e()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    return-void
.end method

.method public setRouteOptionsButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    return-void
.end method

.method public setRouteOverviewButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->setRouteOverviewButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1607
    return-void
.end method

.method public setSpeechInstallButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ae:Landroid/content/DialogInterface$OnClickListener;

    .line 1599
    return-void
.end method

.method public setStatusBarContent(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 843
    const-string v0, "__route_status"

    if-ne p1, v0, :cond_12

    .line 844
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :goto_11
    return-void

    .line 847
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_11
.end method

.method public setStreetViewButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1503
    return-void
.end method

.method public setStreetViewLaunchButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1507
    return-void
.end method

.method public setTimeRemaining(IZIZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1177
    if-ltz p1, :cond_30

    .line 1178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    if-eqz p4, :cond_29

    .line 1183
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:Lcom/google/android/maps/driveabout/app/dp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1188
    :goto_23
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1210
    :goto_28
    return-void

    .line 1186
    :cond_29
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->aa:Lcom/google/android/maps/driveabout/app/dp;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/app/dp;->a(IZ)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_23

    .line 1189
    :cond_30
    if-nez p2, :cond_7b

    .line 1190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1192
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1194
    if-nez p3, :cond_6a

    .line 1195
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1199
    :goto_53
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f19999a

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1201
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_28

    .line 1197
    :cond_6a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d003e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 1203
    :cond_7b
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->ad:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8d

    .line 1204
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1205
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_28

    .line 1207
    :cond_8d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28
.end method

.method public setTopBarClickListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/maps/driveabout/app/cY;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1541
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1542
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->d()Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->setListener(Lcom/google/android/maps/driveabout/app/cY;)V

    .line 1543
    return-void
.end method

.method public setTopOverlayText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 1064
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 1065
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1070
    :goto_f
    return-void

    .line 1067
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1068
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method public setTrafficButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1551
    return-void
.end method

.method public setTrafficButtonState(Z)V
    .registers 4
    .parameter

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    if-eqz p1, :cond_b

    const v0, 0x7f02014e

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 377
    return-void

    .line 374
    :cond_b
    const v0, 0x7f02014c

    goto :goto_7
.end method

.method public setTrafficMode(I)V
    .registers 3
    .parameter

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setTrafficMode(I)V

    .line 1278
    return-void
.end method

.method public setTurnArrowOverlay(Lo/x;Lo/I;Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setTurnArrowOverlay(Lo/x;Lo/I;Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 388
    return-void
.end method

.method public setViewMode(I)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1123
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:I

    if-ne p1, v0, :cond_a

    .line 1172
    :goto_9
    return-void

    .line 1126
    :cond_a
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1127
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1128
    if-eq v1, v0, :cond_28

    .line 1129
    if-ne p1, v4, :cond_38

    .line 1131
    if-eqz v0, :cond_20

    .line 1132
    const v2, 0x7f050008

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 1134
    :cond_20
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    const v2, 0x7f050007

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 1166
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-ne v1, v0, :cond_35

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_35

    .line 1169
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setViewMode(I)V

    .line 1171
    :cond_35
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:I

    goto :goto_9

    .line 1135
    :cond_38
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:I

    if-ne v2, v4, :cond_4d

    .line 1137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    const v2, 0x7f05000e

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 1138
    if-eqz v1, :cond_28

    .line 1139
    const v0, 0x7f05000d

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    goto :goto_28

    .line 1141
    :cond_4d
    if-ne p1, v5, :cond_5f

    .line 1145
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eq v0, v2, :cond_58

    if-eqz v0, :cond_58

    .line 1146
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    :cond_58
    const v0, 0x7f050010

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    goto :goto_28

    .line 1149
    :cond_5f
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Z:I

    if-ne v2, v5, :cond_6f

    .line 1151
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    if-eqz v0, :cond_28

    .line 1153
    const v2, 0x7f050011

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    goto :goto_28

    .line 1158
    :cond_6f
    if-eqz v1, :cond_74

    .line 1159
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    :cond_74
    if-eqz v0, :cond_28

    .line 1162
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28
.end method

.method public setVoiceSearchButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->m:Landroid/view/View$OnClickListener;

    .line 1585
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1586
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1588
    :cond_b
    return-void
.end method

.method public setZoomButtonClickListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    return-void
.end method

.method public t()V
    .registers 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 763
    return-void
.end method

.method public u()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 768
    return-void
.end method

.method public v()V
    .registers 4

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 776
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->e(Landroid/view/View;I)V

    .line 778
    return-void
.end method

.method public w()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 782
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 783
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->e(Landroid/view/View;I)V

    .line 784
    return-void
.end method

.method public x()V
    .registers 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 789
    return-void
.end method

.method public y()V
    .registers 3

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 794
    return-void
.end method

.method public z()V
    .registers 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 799
    return-void
.end method
