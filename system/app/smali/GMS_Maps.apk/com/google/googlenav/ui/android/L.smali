.class Lcom/google/googlenav/ui/android/l;
.super Lcom/google/android/maps/driveabout/vector/VectorMapView;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/android/AndroidVectorView;

.field private final c:Lau/a;

.field private d:Lcom/google/android/maps/driveabout/vector/db;

.field private final e:Lcom/google/android/maps/driveabout/vector/db;

.field private f:Lcom/google/android/maps/driveabout/vector/bM;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;Lau/a;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/googlenav/ui/android/l;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    .line 100
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object p3, p0, Lcom/google/googlenav/ui/android/l;->c:Lau/a;

    .line 102
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/l;->a()Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->setDefaultLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 103
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/l;->D()V

    .line 104
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->b(I)V

    .line 106
    invoke-virtual {p3}, Lau/a;->p()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 107
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->c:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    .line 110
    invoke-super {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/db;)V

    .line 116
    :cond_28
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/l;->w()Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->o()Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->p()Lcom/google/android/maps/driveabout/vector/da;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/da;Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/l;->e:Lcom/google/android/maps/driveabout/vector/db;

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->e:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 126
    invoke-virtual {p3}, Lau/a;->p()Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->p:Lcom/google/android/maps/driveabout/vector/dg;

    :goto_4d
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 131
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/Context;Landroid/content/res/Resources;Ll/q;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bM;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/l;->f:Lcom/google/android/maps/driveabout/vector/bM;

    .line 141
    :cond_72
    return-void

    .line 126
    :cond_73
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->o:Lcom/google/android/maps/driveabout/vector/dg;

    goto :goto_4d
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;Lau/a;Lcom/google/googlenav/ui/android/f;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/android/l;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;Lau/a;)V

    return-void
.end method

.method private D()V
    .registers 6

    .prologue
    .line 157
    sget-object v0, Lak/a;->a:Lak/a;

    invoke-virtual {v0}, Lak/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 158
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/l;->y()Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3e4ccccd

    const/4 v3, 0x0

    sget-object v4, Lak/a;->b:Lcom/google/android/maps/driveabout/vector/cT;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bZ;->a(Lcom/google/android/maps/driveabout/vector/bZ;IFFLcom/google/android/maps/driveabout/vector/cT;)Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->setLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 164
    :goto_1a
    return-void

    .line 162
    :cond_1b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/l;->y()Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->setLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V

    goto :goto_1a
.end method

.method private a()Lcom/google/android/maps/driveabout/vector/bZ;
    .registers 5

    .prologue
    .line 145
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 146
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bZ;->u:Lcom/google/android/maps/driveabout/vector/bZ;

    .line 153
    :goto_c
    return-object v0

    .line 149
    :cond_d
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->w()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1e

    .line 150
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bZ;->v:Lcom/google/android/maps/driveabout/vector/bZ;

    goto :goto_c

    .line 153
    :cond_1e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bZ;->t:Lcom/google/android/maps/driveabout/vector/bZ;

    goto :goto_c
.end method


# virtual methods
.method public C()Lcom/google/android/maps/driveabout/vector/bM;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->f:Lcom/google/android/maps/driveabout/vector/bM;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/db;)V
    .registers 4
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->c:Lau/a;

    invoke-virtual {v0}, Lau/a;->p()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 190
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->o:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v1, :cond_2c

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 192
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->p:Lcom/google/android/maps/driveabout/vector/dg;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/l;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 204
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/db;)V

    .line 205
    return-void

    .line 196
    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->p:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v1, :cond_2c

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 198
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->o:Lcom/google/android/maps/driveabout/vector/dg;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/l;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->d:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/l;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_2c
.end method

.method public d()V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->c:Lau/a;

    invoke-virtual {v0}, Lau/a;->x()V

    .line 175
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k()V

    .line 216
    invoke-static {}, LN/e;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 217
    invoke-static {}, LN/e;->b()LN/e;

    move-result-object v0

    invoke-virtual {v0}, LN/e;->d()V

    .line 219
    :cond_10
    return-void
.end method
