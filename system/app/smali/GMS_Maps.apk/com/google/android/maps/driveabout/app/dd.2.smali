.class public Lcom/google/android/maps/driveabout/app/dD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private c:Lcom/google/android/maps/driveabout/app/cK;

.field private d:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private e:Lcom/google/android/maps/driveabout/app/cI;

.field private f:Lcom/google/android/maps/driveabout/app/cI;

.field private g:Lcom/google/android/maps/driveabout/app/aN;

.field private h:Ls/n;

.field private i:LA/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/android/maps/driveabout/app/eq;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/eq;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->a:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/NavigationActivity;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .registers 6
    .parameter

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->k()Lcom/google/android/maps/driveabout/app/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setLayerManager(Lcom/google/android/maps/driveabout/app/bw;)V

    .line 712
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/ei;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ei;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setOnSizeChangedListener(Lcom/google/android/maps/driveabout/app/cn;)V

    .line 725
    new-instance v0, Lcom/google/android/maps/driveabout/app/ej;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ej;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setMapGestureListener(Lcom/google/android/maps/driveabout/vector/dW;)V

    .line 749
    new-instance v0, Lcom/google/android/maps/driveabout/app/ek;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ek;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setNavigationImageViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    new-instance v0, Lcom/google/android/maps/driveabout/app/el;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/el;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setLoadingDialogListeners(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 766
    new-instance v0, Lcom/google/android/maps/driveabout/app/em;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/em;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setListItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 777
    new-instance v0, Lcom/google/android/maps/driveabout/app/en;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/en;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    .line 784
    new-instance v1, Lcom/google/android/maps/driveabout/app/dF;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dF;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    .line 794
    new-instance v2, Lcom/google/android/maps/driveabout/app/dG;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dG;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    .line 804
    new-instance v3, Lcom/google/android/maps/driveabout/app/dH;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/dH;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    .line 812
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->setTopBarClickListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/maps/driveabout/app/cY;)V

    .line 815
    new-instance v0, Lcom/google/android/maps/driveabout/app/dI;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dI;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setMuteButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    new-instance v0, Lcom/google/android/maps/driveabout/app/dJ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dJ;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/dK;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dK;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->setZoomButtonClickListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 839
    new-instance v0, Lcom/google/android/maps/driveabout/app/dL;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dL;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setAlternateRouteButtonTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 889
    new-instance v0, Lcom/google/android/maps/driveabout/app/dM;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dM;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setRouteOptionsButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    new-instance v0, Lcom/google/android/maps/driveabout/app/dN;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dN;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setStreetViewButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    new-instance v0, Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dO;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setStreetViewLaunchButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    new-instance v0, Lcom/google/android/maps/driveabout/app/dQ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dQ;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setCompassTapListener(Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 919
    new-instance v0, Lcom/google/android/maps/driveabout/app/dR;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dR;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setMarkerTapListener(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 926
    new-instance v0, Lcom/google/android/maps/driveabout/app/dS;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dS;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setLabelTapListener(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 933
    new-instance v0, Lcom/google/android/maps/driveabout/app/dT;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dT;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setBubbleTapListener(Lcom/google/android/maps/driveabout/vector/T;)V

    .line 946
    new-instance v0, Lcom/google/android/maps/driveabout/app/dU;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dU;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setBackToMyLocationButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    new-instance v0, Lcom/google/android/maps/driveabout/app/dV;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dV;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setListViewButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    new-instance v0, Lcom/google/android/maps/driveabout/app/ep;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/ep;-><init>(Lcom/google/android/maps/driveabout/app/dD;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setMapViewKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 963
    new-instance v0, Lcom/google/android/maps/driveabout/app/dW;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dW;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setTrafficButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    new-instance v0, Lcom/google/android/maps/driveabout/app/dX;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dX;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setRerouteToDestinationButtonListener(Landroid/view/View$OnClickListener;)V

    .line 979
    new-instance v0, Lcom/google/android/maps/driveabout/app/dY;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dY;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setDestinationNotHereButtonListener(Landroid/view/View$OnClickListener;)V

    .line 987
    new-instance v0, Lcom/google/android/maps/driveabout/app/dZ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dZ;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setDestinationInfoButtonListener(Landroid/view/View$OnClickListener;)V

    .line 995
    new-instance v0, Lcom/google/android/maps/driveabout/app/eb;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eb;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setRouteOverviewButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    new-instance v0, Lcom/google/android/maps/driveabout/app/ec;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ec;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setExitButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    new-instance v0, Lcom/google/android/maps/driveabout/app/ed;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ed;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setCloseActivityListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    new-instance v0, Lcom/google/android/maps/driveabout/app/ee;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ee;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setDestinationButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    new-instance v0, Lcom/google/android/maps/driveabout/app/ef;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ef;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setLayersButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    new-instance v0, Lcom/google/android/maps/driveabout/app/eg;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eg;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setVoiceSearchButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    new-instance v0, Lcom/google/android/maps/driveabout/app/eh;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eh;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setSpeechInstallButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1046
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/NavigationView;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/cK;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/aN;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    return-object v0
.end method

.method private x()V
    .registers 4

    .prologue
    .line 500
    new-instance v0, Lcom/google/android/maps/driveabout/app/dE;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dE;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    .line 506
    new-instance v1, Lcom/google/android/maps/driveabout/app/dP;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dP;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    .line 514
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    invoke-interface {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 515
    return-void
.end method

.method private final y()V
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->j()V

    .line 1074
    return-void
.end method


# virtual methods
.method public a()Ls/n;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;LA/f;Ls/n;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    .line 111
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    .line 112
    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/dD;->i:LA/f;

    .line 113
    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    .line 114
    new-instance v0, Lcom/google/android/maps/driveabout/app/dn;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dn;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->f:Lcom/google/android/maps/driveabout/app/cI;

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->f:Lcom/google/android/maps/driveabout/app/cI;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    .line 117
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    sget-object v1, Ls/w;->b:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 118
    return-void
.end method

.method public a(Landroid/os/Bundle;Ln/ab;Lcom/google/android/maps/driveabout/app/er;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 663
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ls/q;->a(Landroid/os/Bundle;Ln/ab;Lcom/google/android/maps/driveabout/app/er;)V

    .line 665
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 3
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->a(Landroid/view/ViewGroup;)V

    .line 258
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    .line 144
    if-eqz p1, :cond_18

    .line 145
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a()Lcom/google/android/maps/driveabout/app/NavigationView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 148
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setRequestedOrientation(I)V

    .line 154
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    sget-object v1, Ls/w;->e:Ls/w;

    invoke-virtual {v0, v1}, Ls/n;->b(Ls/w;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 155
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 157
    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->P()V

    .line 158
    return-void

    .line 150
    :cond_30
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setRequestedOrientation(I)V

    goto :goto_18
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .registers 4
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eq p1, v0, :cond_b

    .line 188
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    .line 189
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    .line 191
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->p()V

    .line 192
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    .line 193
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setMapController(Lcom/google/android/maps/driveabout/vector/dI;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    invoke-virtual {v0, v1}, Ls/n;->a(Lcom/google/android/maps/driveabout/app/cI;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->b()V

    .line 196
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->q()V

    .line 197
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->F()V

    .line 198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->E()V

    .line 199
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bM;)V
    .registers 3
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->b(Lcom/google/android/maps/driveabout/app/bM;)V

    .line 267
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/by;)V
    .registers 3
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 386
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 387
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->k()Lcom/google/android/maps/driveabout/app/bw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bw;->b(Lcom/google/android/maps/driveabout/app/by;)V

    .line 391
    :goto_12
    return-void

    .line 389
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->k()Lcom/google/android/maps/driveabout/app/bw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bw;->a(Lcom/google/android/maps/driveabout/app/by;)V

    goto :goto_12
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1053
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1060
    return-void
.end method

.method public a(Ln/aL;)V
    .registers 4
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 363
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/eo;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/eo;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {v0, p1, v1}, Ls/q;->a(Ln/aL;Lcom/google/android/maps/driveabout/app/bs;)V

    .line 365
    return-void
.end method

.method public a(Lo/I;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 477
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ls/q;->b(Lo/I;Z)V

    .line 478
    return-void
.end method

.method public a(Lo/P;)V
    .registers 4
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ls/q;->a(Lo/P;Z)V

    .line 670
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 284
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->c(Z)V

    .line 285
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->B()Z

    move-result v0

    if-nez v0, :cond_12

    .line 168
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    .line 176
    :goto_11
    return-void

    .line 170
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->O()V

    .line 171
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->e()V

    .line 172
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->f:Lcom/google/android/maps/driveabout/app/cI;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    .line 173
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setMapController(Lcom/google/android/maps/driveabout/vector/dI;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Lcom/google/android/maps/driveabout/app/cI;

    invoke-virtual {v0, v1}, Ls/n;->a(Lcom/google/android/maps/driveabout/app/cI;)V

    goto :goto_11
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1067
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 376
    if-eqz p1, :cond_c

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->c(Z)V

    .line 378
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->d(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->l()V

    .line 381
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->k()V

    .line 382
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .registers 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    .line 207
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    .line 208
    return-void
.end method

.method public c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 406
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->e(Z)V

    .line 407
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Z)V

    .line 275
    return-void

    .line 274
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 417
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_12

    .line 418
    if-eqz p1, :cond_13

    const/4 v0, 0x1

    .line 420
    :goto_a
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setDefaultTrafficMode(I)V

    .line 421
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->setTrafficMode(I)V

    .line 423
    :cond_12
    return-void

    .line 418
    :cond_13
    const/4 v0, 0x2

    goto :goto_a
.end method

.method public e()V
    .registers 2

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->N()V

    .line 294
    return-void
.end method

.method public e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 433
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->d(Z)V

    .line 434
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 301
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->ac()V

    .line 302
    return-void
.end method

.method public f(Z)V
    .registers 3
    .parameter

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 443
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->f(Z)V

    .line 444
    return-void
.end method

.method public g()V
    .registers 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    .line 309
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    .line 310
    if-nez v0, :cond_20

    .line 311
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 313
    invoke-virtual {v1}, Lo/x;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    .line 319
    :cond_20
    invoke-virtual {v0}, Lo/I;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3e

    .line 320
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v1}, Lo/x;->m()Lo/P;

    move-result-object v1

    invoke-virtual {v1}, Lo/P;->c()Ln/s;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/dm;->a(Landroid/content/Context;Lo/I;Ln/s;)V

    .line 324
    :goto_35
    return-void

    .line 315
    :cond_36
    const-string v0, "UIEventHandler"

    const-string v1, "Unable to show street view: no step"

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 322
    :cond_3e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dm;->a(Landroid/content/Context;Lo/I;)V

    goto :goto_35
.end method

.method public g(Z)V
    .registers 3
    .parameter

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 452
    if-eqz p1, :cond_b

    .line 453
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->M()V

    .line 457
    :goto_a
    return-void

    .line 455
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->N()V

    goto :goto_a
.end method

.method public h()V
    .registers 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 332
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->O()V

    .line 333
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->P()V

    .line 351
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->M()V

    .line 359
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_15

    .line 369
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p()Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->a()Ln/aL;

    move-result-object v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Ln/aL;)V

    .line 373
    :cond_15
    return-void
.end method

.method public l()V
    .registers 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 395
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->k()Lcom/google/android/maps/driveabout/app/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bw;->f()V

    .line 396
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 465
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->I()V

    .line 466
    return-void
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 486
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->i:LA/f;

    invoke-virtual {v0, v1}, Ls/q;->a(LA/f;)V

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public o()V
    .registers 2

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 523
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 524
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->r()V

    .line 525
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->q()V

    .line 539
    :cond_15
    :goto_15
    return-void

    .line 526
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 527
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->r()V

    goto :goto_15

    .line 528
    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->L()Z

    move-result v0

    if-nez v0, :cond_15

    .line 529
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 530
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->x()V

    goto :goto_15

    .line 531
    :cond_3e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    if-eqz v0, :cond_15

    .line 536
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    goto :goto_15
.end method

.method public p()V
    .registers 2

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 546
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_12

    .line 547
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b()Z

    move-result v0

    if-nez v0, :cond_13

    .line 548
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->q()V

    .line 553
    :cond_12
    :goto_12
    return-void

    .line 550
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->r()V

    goto :goto_12
.end method

.method public q()V
    .registers 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-nez v0, :cond_5

    .line 583
    :goto_4
    return-void

    .line 566
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 567
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c()V

    .line 572
    :goto_12
    const-string v0, "UIEventHandler"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ea;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ea;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    .line 569
    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->h()V

    goto :goto_12
.end method

.method public r()V
    .registers 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-nez v0, :cond_5

    .line 601
    :goto_4
    return-void

    .line 596
    :cond_5
    const-string v0, "UIEventHandler"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 598
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->d()V

    .line 599
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->g()V

    .line 600
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->i()V

    goto :goto_4
.end method

.method public s()V
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-nez v0, :cond_5

    .line 618
    :goto_4
    return-void

    .line 614
    :cond_5
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 615
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->d()V

    .line 616
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->i()V

    .line 617
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f()V

    goto :goto_4
.end method

.method public t()V
    .registers 2

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 627
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->A()Z

    move-result v0

    if-nez v0, :cond_12

    .line 632
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->x()V

    .line 634
    :cond_12
    return-void
.end method

.method public u()V
    .registers 2

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 639
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->K()V

    .line 640
    return-void
.end method

.method public v()V
    .registers 2

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->y()V

    .line 645
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->J()V

    .line 646
    return-void
.end method

.method public final w()V
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->ae()V

    .line 675
    return-void
.end method
