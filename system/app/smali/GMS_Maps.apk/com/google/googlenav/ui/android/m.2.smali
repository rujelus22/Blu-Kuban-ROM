.class Lcom/google/googlenav/ui/android/m;
.super Lcom/google/android/maps/driveabout/vector/VectorMapView;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/android/AndroidVectorView;

.field private c:LaK/a;

.field private d:Lcom/google/android/maps/driveabout/vector/bx;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;LaK/a;)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/ui/android/m;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/googlenav/ui/android/m;->c:LaK/a;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/m;->a()Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/m;->b(Lcom/google/android/maps/driveabout/vector/bG;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/m;->C()V

    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/m;->e(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/m;->y()Lcom/google/android/maps/driveabout/vector/bs;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->n()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->o()Lcom/google/android/maps/driveabout/vector/cB;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/m;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/Context;Landroid/content/res/Resources;Lr/l;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bx;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/m;->d:Lcom/google/android/maps/driveabout/vector/bx;

    :cond_46
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;LaK/a;Lcom/google/googlenav/ui/android/g;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/android/m;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;LaK/a;)V

    return-void
.end method

.method private C()V
    .registers 6

    sget-object v0, LaB/a;->a:LaB/a;

    invoke-virtual {v0}, LaB/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/m;->A()Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3e4ccccd

    const/4 v3, 0x0

    sget-object v4, LaB/a;->b:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bG;->a(Lcom/google/android/maps/driveabout/vector/bG;IFFLcom/google/android/maps/driveabout/vector/cu;)Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/m;->a(Lcom/google/android/maps/driveabout/vector/bG;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/m;->A()Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/m;->a(Lcom/google/android/maps/driveabout/vector/bG;)V

    goto :goto_1a
.end method

.method private a()Lcom/google/android/maps/driveabout/vector/bG;
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bG;->s:Lcom/google/android/maps/driveabout/vector/bG;

    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->x()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1e

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bG;->t:Lcom/google/android/maps/driveabout/vector/bG;

    goto :goto_c

    :cond_1e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bG;->r:Lcom/google/android/maps/driveabout/vector/bG;

    goto :goto_c
.end method


# virtual methods
.method public B()Lcom/google/android/maps/driveabout/vector/bx;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/m;->d:Lcom/google/android/maps/driveabout/vector/bx;

    return-object v0
.end method

.method public d()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/m;->c:LaK/a;

    invoke-virtual {v0}, LaK/a;->v()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/m;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/googlenav/login/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->b(Lcom/google/googlenav/login/i;)V

    return-void
.end method
