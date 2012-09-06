.class public Lcom/google/googlenav/ui/android/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/android/D;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final s:Lcom/google/android/maps/driveabout/vector/dY;

.field private static final t:Lcom/google/android/maps/driveabout/vector/bI;

.field private static final u:Lcom/google/android/maps/driveabout/vector/bI;

.field private static final v:Lcom/google/android/maps/driveabout/vector/bI;

.field private static final w:Lcom/google/android/maps/driveabout/vector/dY;

.field private static final x:Lcom/google/android/maps/driveabout/vector/bI;


# instance fields
.field private final A:Lcom/google/android/maps/driveabout/vector/cM;

.field private final B:Lcom/google/android/maps/driveabout/vector/cR;

.field private final C:Lcom/google/googlenav/ui/android/w;

.field private D:Lcom/google/android/maps/driveabout/vector/k;

.field private E:LaM/ah;

.field private volatile F:Z

.field private G:Z

.field private volatile e:Landroid/graphics/Point;

.field private volatile f:Landroid/graphics/Point;

.field private g:Lcom/google/googlenav/ui/android/y;

.field private h:Lcom/google/googlenav/ui/android/B;

.field private i:Lcom/google/googlenav/ui/android/A;

.field private j:Lcom/google/googlenav/ui/android/x;

.field private k:Lcom/google/googlenav/ui/ax;

.field private l:Lcom/google/googlenav/ui/android/AndroidVectorView;

.field private m:Lcom/google/android/maps/MapsActivity;

.field private n:Lat/u;

.field private o:Z

.field private p:I

.field private volatile q:I

.field private volatile r:I

.field private y:[F

.field private z:Lcom/google/android/maps/driveabout/vector/cV;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 68
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/r;->a:I

    .line 73
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/r;->b:I

    .line 78
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/r;->c:I

    .line 93
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/r;->d:I

    .line 217
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {v0, v4}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/ui/android/r;->t:Lcom/google/android/maps/driveabout/vector/bI;

    .line 218
    sget-object v0, Lcom/google/googlenav/ui/android/r;->t:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 219
    sget-object v0, Lcom/google/googlenav/ui/android/r;->t:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x7

    invoke-virtual {v0, v6, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 220
    sget-object v0, Lcom/google/googlenav/ui/android/r;->t:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 222
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {v0, v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/ui/android/r;->u:Lcom/google/android/maps/driveabout/vector/bI;

    .line 223
    sget-object v0, Lcom/google/googlenav/ui/android/r;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 224
    sget-object v0, Lcom/google/googlenav/ui/android/r;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 225
    sget-object v0, Lcom/google/googlenav/ui/android/r;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 226
    sget-object v0, Lcom/google/googlenav/ui/android/r;->u:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 228
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    .line 229
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 230
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 231
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 232
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 233
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0x9

    const/16 v2, 0xa

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 234
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0xa

    const/4 v2, 0x7

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 235
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0xa

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 236
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 238
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {v0, v4}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/ui/android/r;->x:Lcom/google/android/maps/driveabout/vector/bI;

    .line 239
    sget-object v0, Lcom/google/googlenav/ui/android/r;->x:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v3, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 240
    sget-object v0, Lcom/google/googlenav/ui/android/r;->x:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 242
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    invoke-direct {v0, v5}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/ui/android/r;->w:Lcom/google/android/maps/driveabout/vector/dY;

    .line 244
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->A:Lcom/google/android/maps/driveabout/vector/cM;

    .line 196
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cR;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cR;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->B:Lcom/google/android/maps/driveabout/vector/cR;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/r;->F:Z

    .line 302
    iput-object p1, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    .line 303
    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->h()Lat/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->n:Lat/u;

    .line 304
    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    .line 305
    new-instance v0, Lcom/google/googlenav/ui/android/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/android/w;-><init>(Lcom/google/googlenav/ui/android/r;Lcom/google/googlenav/ui/android/s;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->C:Lcom/google/googlenav/ui/android/w;

    .line 306
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/r;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/google/googlenav/ui/android/r;->p:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/r;)LaM/ah;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->E:LaM/ah;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/r;Lcom/google/android/maps/driveabout/vector/cV;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/googlenav/ui/android/r;->z:Lcom/google/android/maps/driveabout/vector/cV;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/r;Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/k;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/googlenav/ui/android/r;->D:Lcom/google/android/maps/driveabout/vector/k;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    if-eqz v0, :cond_e

    .line 389
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/r;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/r;->o:Z

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/r;[F)[F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/r;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->t()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/r;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/r;->F:Z

    return p1
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/r;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->s()V

    return-void
.end method

.method static synthetic d()Lcom/google/android/maps/driveabout/vector/dY;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->C:Lcom/google/googlenav/ui/android/w;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/MapsActivity;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/maps/driveabout/vector/bI;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/googlenav/ui/android/r;->v:Lcom/google/android/maps/driveabout/vector/bI;

    return-object v0
.end method

.method static synthetic f()I
    .registers 1

    .prologue
    .line 63
    sget v0, Lcom/google/googlenav/ui/android/r;->a:I

    return v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/k;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->D:Lcom/google/android/maps/driveabout/vector/k;

    return-object v0
.end method

.method static synthetic g()Lcom/google/android/maps/driveabout/vector/bI;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/googlenav/ui/android/r;->t:Lcom/google/android/maps/driveabout/vector/bI;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/android/r;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->u()V

    return-void
.end method

.method static synthetic h()Lcom/google/android/maps/driveabout/vector/bI;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/googlenav/ui/android/r;->u:Lcom/google/android/maps/driveabout/vector/bI;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->z:Lcom/google/android/maps/driveabout/vector/cV;

    return-object v0
.end method

.method static synthetic i()I
    .registers 1

    .prologue
    .line 63
    sget v0, Lcom/google/googlenav/ui/android/r;->d:I

    return v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cR;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->B:Lcom/google/android/maps/driveabout/vector/cR;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cM;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->A:Lcom/google/android/maps/driveabout/vector/cM;

    return-object v0
.end method

.method static synthetic j()Lcom/google/android/maps/driveabout/vector/dY;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/googlenav/ui/android/r;->w:Lcom/google/android/maps/driveabout/vector/dY;

    return-object v0
.end method

.method static synthetic k()Lcom/google/android/maps/driveabout/vector/bI;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/googlenav/ui/android/r;->x:Lcom/google/android/maps/driveabout/vector/bI;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/ui/android/r;)[F
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    return-object v0
.end method

.method static synthetic l()I
    .registers 1

    .prologue
    .line 63
    sget v0, Lcom/google/googlenav/ui/android/r;->c:I

    return v0
.end method

.method static synthetic l(Lcom/google/googlenav/ui/android/r;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/r;->o:Z

    return v0
.end method

.method static synthetic m()I
    .registers 1

    .prologue
    .line 63
    sget v0, Lcom/google/googlenav/ui/android/r;->b:I

    return v0
.end method

.method static synthetic m(Lcom/google/googlenav/ui/android/r;)I
    .registers 2
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/google/googlenav/ui/android/r;->p:I

    return v0
.end method

.method static synthetic n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    return-object v0
.end method

.method private n()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    .line 313
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setAllowRotateGesture(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setAllowTiltGesture(Z)V

    .line 317
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setAllowLongPressGesture(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setAllowSingleTapGesture(Z)V

    .line 321
    return-void
.end method

.method static synthetic o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    return-object v0
.end method

.method private o()V
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->v()V

    .line 325
    return-void
.end method

.method static synthetic p(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/x;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->j:Lcom/google/googlenav/ui/android/x;

    return-object v0
.end method

.method private p()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 394
    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/r;->G:Z

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getButtonContainer()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/ButtonContainer;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->p()V

    .line 399
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->g:Lcom/google/googlenav/ui/android/y;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Ly/a;)V

    .line 400
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->b(Lcom/google/googlenav/ui/android/D;)V

    .line 403
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 404
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/bZ;->a(Lcom/google/googlenav/ui/ax;)V

    .line 410
    :goto_43
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 411
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->d()Z

    .line 426
    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->o()V

    .line 427
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->j:Lcom/google/googlenav/ui/android/x;

    if-eqz v0, :cond_62

    .line 428
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->j:Lcom/google/googlenav/ui/android/x;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/x;->c()V

    .line 429
    iput-object v4, p0, Lcom/google/googlenav/ui/android/r;->j:Lcom/google/googlenav/ui/android/x;

    .line 431
    :cond_62
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->E:LaM/ah;

    if-eqz v0, :cond_72

    .line 435
    new-instance v0, Lcom/google/googlenav/ui/android/s;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/android/s;-><init>(Lcom/google/googlenav/ui/android/r;LY/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/s;->g()V

    .line 441
    :cond_72
    return-void

    .line 406
    :cond_73
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMapViewMenuController()Lcom/google/googlenav/ui/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->k:Lcom/google/googlenav/ui/ax;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/av;->a(Lcom/google/googlenav/ui/ax;)V

    goto :goto_43

    .line 412
    :cond_7f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 413
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->j()V

    goto :goto_54

    .line 415
    :cond_91
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBottomBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 416
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_54

    .line 421
    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_54
.end method

.method private q()V
    .registers 9

    .prologue
    const v7, 0x7f020219

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x34f

    .line 451
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 454
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v7, v1, v2, v6}, Lcom/google/googlenav/actionbar/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 479
    :cond_1f
    :goto_1f
    return-void

    .line 456
    :cond_20
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 459
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 460
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 461
    const v0, 0x7f10001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v7, v2, v3, v6}, Lcom/google/googlenav/actionbar/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 465
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1f

    .line 469
    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_1f

    .line 473
    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 474
    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 475
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method static synthetic q(Lcom/google/googlenav/ui/android/r;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->v()V

    return-void
.end method

.method static synthetic r(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/AndroidVectorView;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    return-object v0
.end method

.method private r()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 484
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_57

    .line 485
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBottomBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 487
    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 488
    const/16 v2, 0x34e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 490
    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->C:Lcom/google/googlenav/ui/android/w;

    iget-boolean v2, v2, Lcom/google/googlenav/ui/android/w;->i:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    new-instance v2, Lcom/google/googlenav/ui/android/t;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/android/t;-><init>(Lcom/google/googlenav/ui/android/r;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 498
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    new-instance v1, Lcom/google/googlenav/ui/android/u;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/u;-><init>(Lcom/google/googlenav/ui/android/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    :cond_57
    return-void
.end method

.method private s()V
    .registers 2

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->p()V

    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->h:Lcom/google/googlenav/ui/android/B;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/B;->a()V

    .line 512
    return-void
.end method

.method private t()V
    .registers 7

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->p()V

    .line 516
    const-string v0, "s"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lh/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->i:Lcom/google/googlenav/ui/android/A;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->w()Lat/B;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->x()Lat/B;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/android/A;->a(Lat/B;Lat/B;Landroid/graphics/Bitmap;)V

    .line 527
    return-void
.end method

.method private u()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 635
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/r;->F:Z

    if-nez v0, :cond_6

    .line 658
    :goto_5
    return-void

    .line 638
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/r;->F:Z

    .line 639
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 640
    iget v1, p0, Lcom/google/googlenav/ui/android/r;->r:I

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 641
    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 642
    iget v3, p0, Lcom/google/googlenav/ui/android/r;->r:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    .line 645
    sget-object v4, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/vector/dY;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 646
    sget-object v4, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    iget v5, p0, Lcom/google/googlenav/ui/android/r;->r:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 647
    sget-object v4, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v5, v0

    iget v6, p0, Lcom/google/googlenav/ui/android/r;->r:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 648
    sget-object v4, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v5, v2

    iget v6, p0, Lcom/google/googlenav/ui/android/r;->r:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 649
    sget-object v4, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    iget v5, p0, Lcom/google/googlenav/ui/android/r;->q:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/googlenav/ui/android/r;->r:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 650
    sget-object v4, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 651
    sget-object v4, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v5, v2

    int-to-float v1, v1

    invoke-virtual {v4, v5, v1, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 652
    sget-object v1, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v4, v0

    int-to-float v5, v3

    invoke-virtual {v1, v4, v5, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 653
    sget-object v1, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v4, v2

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 654
    sget-object v1, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, v7, v7, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 655
    sget-object v1, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v0, v0

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 656
    sget-object v0, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    int-to-float v1, v2

    invoke-virtual {v0, v1, v7, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 657
    sget-object v0, Lcom/google/googlenav/ui/android/r;->s:Lcom/google/android/maps/driveabout/vector/dY;

    iget v1, p0, Lcom/google/googlenav/ui/android/r;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v7, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    goto :goto_5
.end method

.method private v()V
    .registers 4

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/android/v;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/v;-><init>(Lcom/google/googlenav/ui/android/r;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 674
    return-void
.end method

.method private w()Lat/B;
    .registers 4

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->D:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method private x()Lat/B;
    .registers 4

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->D:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/android/B;Lcom/google/googlenav/ui/android/A;Lcom/google/googlenav/ui/android/x;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 336
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/r;->G:Z

    .line 337
    iput-object p1, p0, Lcom/google/googlenav/ui/android/r;->h:Lcom/google/googlenav/ui/android/B;

    .line 338
    iput-object p2, p0, Lcom/google/googlenav/ui/android/r;->i:Lcom/google/googlenav/ui/android/A;

    .line 339
    iput-object p3, p0, Lcom/google/googlenav/ui/android/r;->j:Lcom/google/googlenav/ui/android/x;

    .line 340
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->u()LaM/bj;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_e0

    invoke-virtual {v0}, LaM/bj;->bF()LaM/ah;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->E:LaM/ah;

    .line 343
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->E:LaM/ah;

    if-eqz v0, :cond_2e

    .line 344
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->E:LaM/ah;

    invoke-virtual {v0, v1}, LaM/ah;->a(Z)V

    .line 348
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->D()V

    .line 349
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, v5}, LaM/am;->b(Z)V

    .line 350
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, v6}, LaM/am;->a(Ljava/lang/String;)LaM/aL;

    .line 354
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMapViewMenuController()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->a()Lcom/google/googlenav/ui/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->k:Lcom/google/googlenav/ui/ax;

    .line 355
    new-instance v0, Lcom/google/googlenav/ui/android/z;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/z;-><init>(Lcom/google/googlenav/ui/android/r;)V

    .line 356
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 357
    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bZ;->a(Lcom/google/googlenav/ui/ax;)V

    .line 362
    :goto_81
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->q()V

    .line 363
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->r()V

    .line 365
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/googlenav/ui/android/D;)V

    .line 366
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a()V

    .line 367
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->n()V

    .line 370
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->B:Lcom/google/android/maps/driveabout/vector/cR;

    const/16 v1, 0x362

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    sget v4, Lcom/google/googlenav/ui/android/r;->d:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    .line 374
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->n:Lat/u;

    invoke-virtual {v0}, Lat/u;->m()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->n:Lat/u;

    invoke-virtual {v1}, Lat/u;->n()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/r;->b(II)V

    .line 376
    iput-boolean v5, p0, Lcom/google/googlenav/ui/android/r;->o:Z

    .line 379
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getButtonContainer()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->setVisibility(I)V

    .line 382
    new-instance v0, Lcom/google/googlenav/ui/android/y;

    invoke-direct {v0, p0, v6}, Lcom/google/googlenav/ui/android/y;-><init>(Lcom/google/googlenav/ui/android/r;Lcom/google/googlenav/ui/android/s;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->g:Lcom/google/googlenav/ui/android/y;

    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->l:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->g:Lcom/google/googlenav/ui/android/y;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Ly/a;)V

    .line 384
    const/16 v0, 0x353

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/r;->a(Ljava/lang/String;)V

    .line 385
    return-void

    :cond_e0
    move-object v0, v6

    .line 342
    goto/16 :goto_23

    .line 359
    :cond_e3
    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->getMapViewMenuController()Lcom/google/googlenav/ui/av;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/av;->a(Lcom/google/googlenav/ui/ax;)V

    goto :goto_81
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/r;->G:Z

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->s()V

    .line 534
    return-void
.end method

.method public b(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 590
    iput p2, p0, Lcom/google/googlenav/ui/android/r;->r:I

    .line 591
    iput p1, p0, Lcom/google/googlenav/ui/android/r;->q:I

    .line 594
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_7f

    move v0, v1

    .line 601
    :goto_15
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->ar()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 602
    if-eqz v0, :cond_81

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_81

    .line 605
    int-to-float v0, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    aget v2, v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 606
    int-to-float v2, p2

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 620
    :goto_45
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_af

    const/16 v2, 0x46

    :goto_55
    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    .line 623
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/google/googlenav/ui/android/r;->q:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/googlenav/ui/android/r;->r:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/google/googlenav/ui/android/r;->e:Landroid/graphics/Point;

    .line 625
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/google/googlenav/ui/android/r;->q:I

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/googlenav/ui/android/r;->r:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/google/googlenav/ui/android/r;->f:Landroid/graphics/Point;

    .line 627
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/r;->F:Z

    .line 628
    return-void

    :cond_7f
    move v0, v2

    .line 594
    goto :goto_15

    .line 610
    :cond_81
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    aget v2, v2, v1

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 611
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    aget v3, v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    sub-int v2, p2, v2

    goto :goto_45

    .line 617
    :cond_a0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    aget v0, v0, v1

    float-to-int v0, v0

    sub-int v0, v2, v0

    .line 618
    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->y:[F

    aget v2, v2, v1

    float-to-int v2, v2

    sub-int v2, p2, v2

    goto :goto_45

    .line 620
    :cond_af
    const/16 v2, 0x5a

    goto :goto_55
.end method

.method public c()V
    .registers 8

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->C:Lcom/google/googlenav/ui/android/w;

    iget-boolean v6, v0, Lcom/google/googlenav/ui/android/w;->i:Z

    .line 678
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->j:Lcom/google/googlenav/ui/android/x;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->w()Lat/B;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->x()Lat/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/r;->m:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v3}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/android/i;->h()Lat/u;

    move-result-object v3

    invoke-virtual {v3}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/r;->D:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/android/r;->C:Lcom/google/googlenav/ui/android/w;

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/ui/android/x;->a(Lat/B;Lat/B;IFLcom/google/googlenav/ui/android/w;)V

    .line 682
    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->C:Lcom/google/googlenav/ui/android/w;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/android/w;->i:Z

    if-eq v6, v0, :cond_34

    .line 683
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/r;->v()V

    .line 685
    :cond_34
    return-void
.end method
