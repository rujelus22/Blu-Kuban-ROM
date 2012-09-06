.class public LaN/o;
.super LaM/bD;
.source "SourceFile"


# instance fields
.field private final C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private D:Lcom/google/android/maps/driveabout/vector/dy;

.field private E:Lcom/google/android/maps/driveabout/vector/dd;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, LaM/bD;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 33
    new-instance v0, LaN/p;

    invoke-direct {v0, p0}, LaN/p;-><init>(LaN/o;)V

    iput-object v0, p0, LaN/o;->E:Lcom/google/android/maps/driveabout/vector/dd;

    .line 54
    iput-object p7, p0, LaN/o;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    .line 55
    return-void
.end method

.method static synthetic a(LaN/o;)Lat/u;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LaN/o;->d:Lat/u;

    return-object v0
.end method

.method static synthetic b(LaN/o;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LaN/o;->b:Lcom/google/googlenav/ui/v;

    return-object v0
.end method


# virtual methods
.method protected bI()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, LaN/o;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v0, :cond_5

    .line 77
    :goto_4
    return-void

    .line 73
    :cond_5
    iget-object v0, p0, LaN/o;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->f:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/dy;

    move-result-object v0

    iput-object v0, p0, LaN/o;->D:Lcom/google/android/maps/driveabout/vector/dy;

    .line 75
    iget-object v0, p0, LaN/o;->D:Lcom/google/android/maps/driveabout/vector/dy;

    iget-object v1, p0, LaN/o;->E:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dy;->a(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 76
    iget-object v0, p0, LaN/o;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/o;->D:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_4
.end method

.method protected bJ()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, LaN/o;->D:Lcom/google/android/maps/driveabout/vector/dy;

    if-eqz v0, :cond_b

    .line 91
    iget-object v0, p0, LaN/o;->D:Lcom/google/android/maps/driveabout/vector/dy;

    iget-object v1, p0, LaN/o;->E:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dy;->b(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 93
    :cond_b
    iget-object v0, p0, LaN/o;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_16

    .line 95
    iget-object v0, p0, LaN/o;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/o;->D:Lcom/google/android/maps/driveabout/vector/dy;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 97
    :cond_16
    return-void
.end method
