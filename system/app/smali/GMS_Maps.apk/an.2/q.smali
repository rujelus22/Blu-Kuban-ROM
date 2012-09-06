.class public LaN/q;
.super LaM/y;
.source "SourceFile"


# instance fields
.field private final C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private D:Lcom/google/android/maps/driveabout/vector/db;

.field private E:Ln/ax;

.field private F:Ln/m;

.field private G:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 44
    iput-object p7, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    .line 45
    new-instance v0, Ln/ay;

    invoke-direct {v0}, Ln/ay;-><init>()V

    invoke-virtual {v0}, Ln/ay;->b()Ln/ax;

    move-result-object v0

    iput-object v0, p0, LaN/q;->E:Ln/ax;

    .line 46
    iput-boolean p8, p0, LaN/q;->G:Z

    .line 47
    return-void
.end method

.method private bI()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v0, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_14

    .line 108
    iget-object v0, p0, LaN/q;->D:Lcom/google/android/maps/driveabout/vector/db;

    iget-object v1, p0, LaN/q;->E:Ln/ax;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Ln/ao;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 109
    iget-object v0, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(ZZ)V

    .line 112
    :cond_14
    return-void
.end method

.method private bJ()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, LaN/q;->F:Ln/m;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ab;)V
    .registers 4
    .parameter

    .prologue
    .line 101
    new-instance v0, Ln/ay;

    invoke-direct {v0}, Ln/ay;-><init>()V

    iget-object v1, p0, LaN/q;->E:Ln/ax;

    invoke-virtual {v0, v1}, Ln/ay;->a(Ln/ax;)Ln/ay;

    move-result-object v0

    invoke-virtual {v0}, Ln/ay;->a()Ln/ay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ab;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ln/ay;->a(I)Ln/ay;

    move-result-object v0

    invoke-virtual {v0}, Ln/ay;->b()Ln/ax;

    move-result-object v0

    iput-object v0, p0, LaN/q;->E:Ln/ax;

    .line 103
    invoke-direct {p0}, LaN/q;->bI()V

    .line 104
    return-void
.end method

.method public a(Ln/m;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    new-instance v0, Ln/ay;

    invoke-direct {v0}, Ln/ay;-><init>()V

    iget-object v1, p0, LaN/q;->E:Ln/ax;

    invoke-virtual {v0, v1}, Ln/ay;->a(Ln/ax;)Ln/ay;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln/ay;->a(Ln/m;)Ln/ay;

    move-result-object v0

    invoke-virtual {v0}, Ln/ay;->b()Ln/ax;

    move-result-object v0

    iput-object v0, p0, LaN/q;->E:Ln/ax;

    .line 77
    invoke-direct {p0}, LaN/q;->bI()V

    .line 78
    iput-object p1, p0, LaN/q;->F:Ln/m;

    .line 79
    return-void
.end method

.method public aE()Z
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public aT()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0}, LaN/q;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->q()Ln/m;

    move-result-object v0

    iput-object v0, p0, LaN/q;->F:Ln/m;

    .line 53
    iget-object v0, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_31

    .line 54
    iget-object v0, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, LaN/q;->D:Lcom/google/android/maps/driveabout/vector/db;

    .line 55
    invoke-virtual {p0}, LaN/q;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->q()Ln/m;

    move-result-object v0

    invoke-virtual {p0, v0}, LaN/q;->a(Ln/m;)V

    .line 56
    iget-object v0, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, LaN/q;->D:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 58
    :cond_31
    invoke-direct {p0}, LaN/q;->bJ()Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    :goto_38
    invoke-virtual {p0, v0}, LaN/q;->k(Z)V

    .line 59
    return v1

    .line 58
    :cond_3c
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public aU()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_b

    .line 66
    iget-object v0, p0, LaN/q;->C:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/q;->D:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 68
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaN/q;->k(Z)V

    .line 69
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_8

    .line 87
    const/4 v0, 0x0

    check-cast v0, Ln/m;

    invoke-virtual {p0, v0}, LaN/q;->a(Ln/m;)V

    .line 90
    :cond_8
    :try_start_8
    invoke-static {p1}, Ln/m;->a(Ljava/lang/String;)Ln/m;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, LaN/q;->a(Ln/m;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_10

    .line 95
    :goto_f
    return-void

    .line 92
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public bH()Z
    .registers 2

    .prologue
    .line 116
    invoke-direct {p0}, LaN/q;->bJ()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected k(Z)V
    .registers 4
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1}, LaM/y;->k(Z)V

    .line 132
    iget-object v0, p0, LaN/q;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p0}, LaN/q;->bF()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->g(Z)V

    .line 135
    iget-object v0, p0, LaN/q;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->x()LaM/bU;

    move-result-object v0

    .line 136
    if-eqz p1, :cond_24

    if-nez v0, :cond_24

    .line 138
    iget-boolean v0, p0, LaN/q;->G:Z

    if-nez v0, :cond_23

    .line 139
    iget-object v0, p0, LaN/q;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ax()V

    .line 145
    :cond_23
    :goto_23
    return-void

    .line 141
    :cond_24
    if-nez p1, :cond_23

    if-eqz v0, :cond_23

    .line 142
    invoke-virtual {v0}, LaM/bU;->bH()V

    goto :goto_23
.end method
