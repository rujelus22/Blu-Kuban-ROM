.class public Lcom/google/android/maps/driveabout/vector/VectorMapView;
.super Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/K;
.implements Lcom/google/android/maps/driveabout/vector/cg;
.implements Lcom/google/android/maps/driveabout/vector/dS;
.implements Lcom/google/android/maps/driveabout/vector/dX;
.implements Ln/A;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/vector/dI;

.field private final b:Lcom/google/android/maps/driveabout/vector/G;

.field private c:Lcom/google/android/maps/driveabout/vector/cy;

.field private d:Landroid/view/GestureDetector;

.field private e:Laj/g;

.field private f:Lcom/google/android/maps/driveabout/vector/dW;

.field private g:Lcom/google/android/maps/driveabout/vector/dV;

.field private h:Lcom/google/android/maps/driveabout/vector/dQ;

.field private i:Laj/i;

.field private j:Lcom/google/android/maps/driveabout/vector/aD;

.field private k:Z

.field private l:Lcom/google/android/maps/driveabout/vector/l;

.field private m:J

.field private n:Z

.field private o:Lcom/google/android/maps/driveabout/vector/bZ;

.field private p:Lcom/google/android/maps/driveabout/vector/I;

.field private q:Lz/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/google/android/maps/driveabout/vector/G;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/G;

    .line 93
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:J

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n:Z

    .line 198
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a()V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lcom/google/android/maps/driveabout/vector/G;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/G;

    .line 93
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:J

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n:Z

    .line 194
    return-void
.end method

.method private a()V
    .registers 14

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setPreserveEGLContextOnPause(Z)V

    .line 211
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/dQ;-><init>(Lcom/google/android/maps/driveabout/vector/dS;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    .line 212
    new-instance v0, Laj/i;

    invoke-direct {v0}, Laj/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Laj/i;

    .line 213
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Laj/i;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, v1, v2}, Laj/i;->a(Landroid/content/Context;Laj/m;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Laj/i;

    invoke-virtual {v0}, Laj/i;->a()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 215
    new-instance v0, Laj/g;

    invoke-direct {v0}, Laj/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Laj/g;

    .line 216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Laj/g;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, v1, v2, v3}, Laj/g;->a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 223
    :goto_39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setFocusable(Z)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setClickable(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 226
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 228
    const/16 v10, 0x100

    .line 229
    const/16 v11, 0x100

    .line 232
    new-instance v0, Lcom/google/android/maps/driveabout/vector/I;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/I;-><init>(Lcom/google/android/maps/driveabout/vector/K;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p:Lcom/google/android/maps/driveabout/vector/I;

    .line 235
    const/4 v1, 0x5

    .line 236
    const/4 v2, 0x6

    .line 237
    const/4 v3, 0x5

    .line 238
    const/4 v4, 0x0

    .line 239
    const/16 v5, 0x10

    .line 240
    const/16 v6, 0x8

    .line 242
    const/4 v0, 0x2

    new-array v7, v0, [Lcom/google/android/maps/driveabout/vector/bf;

    .line 245
    const/4 v12, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bf;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bf;-><init>(IIIIII)V

    aput-object v0, v7, v12

    .line 252
    const/4 v6, 0x0

    .line 253
    const/4 v12, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bf;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bf;-><init>(IIIIII)V

    aput-object v0, v7, v12

    .line 259
    new-instance v0, Lcom/google/android/maps/driveabout/vector/be;

    invoke-direct {v0, v7}, Lcom/google/android/maps/driveabout/vector/be;-><init>([Lcom/google/android/maps/driveabout/vector/bf;)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setEGLConfigChooser(Lcom/google/android/maps/driveabout/vector/bl;)V

    .line 263
    const/4 v7, 0x0

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->q:Lz/j;

    .line 287
    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/k;->b:Lcom/google/android/maps/driveabout/vector/l;

    const/4 v5, 0x0

    move v2, v10

    move v3, v11

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIFLjava/lang/Thread;)V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v5

    .line 293
    new-instance v1, Lcom/google/android/maps/driveabout/vector/cy;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p:Lcom/google/android/maps/driveabout/vector/I;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->q:Lz/j;

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/cy;-><init>(Lcom/google/android/maps/driveabout/vector/I;Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/db;Lz/j;Lz/p;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    .line 344
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setRenderer(Lcom/google/android/maps/driveabout/vector/bt;)V

    .line 346
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 350
    :cond_ad
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setRenderMode(I)V

    .line 352
    return-void

    .line 219
    :cond_b2
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    .line 220
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto/16 :goto_39
.end method


# virtual methods
.method public A()Laj/g;
    .registers 2

    .prologue
    .line 1145
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 1146
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Laj/g;

    return-object v0
.end method

.method public B()Lcom/google/android/maps/driveabout/vector/db;
    .registers 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->o()Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/google/android/maps/driveabout/vector/bM;
    .registers 2

    .prologue
    .line 1163
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)Lcom/google/android/maps/driveabout/vector/aB;
    .registers 3
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->b(I)Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v0

    return-object v0
.end method

.method public a(Lat/B;)Ln/B;
    .registers 4
    .parameter

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->C()Lcom/google/android/maps/driveabout/vector/bM;

    move-result-object v0

    .line 1169
    if-eqz v0, :cond_f

    .line 1170
    invoke-static {p1}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v1

    .line 1171
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bM;->a(Ln/Q;)Ln/B;

    move-result-object v0

    .line 1173
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(FF)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    if-nez v0, :cond_5

    .line 934
    :cond_4
    :goto_4
    return-void

    .line 919
    :cond_5
    new-instance v2, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 924
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->g()Ljava/util/ArrayList;

    move-result-object v3

    .line 925
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 926
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_29
    if-ltz v1, :cond_4

    .line 927
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 928
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/maps/driveabout/vector/aD;->a(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 929
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    .line 930
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d_()V

    goto :goto_4

    .line 926
    :cond_3d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_29
.end method

.method public a(FFF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    if-eqz v0, :cond_9

    .line 850
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/dW;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V

    .line 852
    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 3
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 397
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cu;)V
    .registers 3
    .parameter

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    if-eqz v0, :cond_9

    .line 1038
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/cu;)V

    .line 1040
    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:Z

    .line 1002
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V

    .line 1003
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/db;)V
    .registers 3
    .parameter

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/db;)V

    .line 1187
    return-void
.end method

.method public a(Ly/a;)V
    .registers 3
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->n()Ly/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/b;->a(Ly/a;)V

    .line 401
    return-void
.end method

.method public a(ZZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 356
    return-void
.end method

.method public a(Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 680
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    if-nez v0, :cond_9

    move v0, v2

    .line 715
    :goto_8
    return v0

    .line 688
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->n()Ly/b;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ly/b;->q_()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Ly/b;->b(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 691
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n()V

    move v0, v3

    .line 692
    goto :goto_8

    .line 696
    :cond_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->g()Ljava/util/ArrayList;

    move-result-object v5

    .line 697
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 698
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_35
    if-ltz v4, :cond_73

    .line 699
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 700
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->q_()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 702
    if-nez v1, :cond_5c

    .line 703
    new-instance v1, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v9

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 706
    :cond_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0, v6, v7, v1}, Lcom/google/android/maps/driveabout/vector/aD;->b(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 709
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n()V

    move v0, v3

    .line 710
    goto :goto_8

    .line 698
    :cond_6f
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_35

    :cond_73
    move v0, v2

    .line 715
    goto :goto_8
.end method

.method public b()V
    .registers 2

    .prologue
    .line 496
    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b()V

    .line 497
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->f()V

    .line 498
    return-void
.end method

.method protected b(I)V
    .registers 3
    .parameter

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)V

    .line 582
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 3
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    if-ne v0, p1, :cond_c

    .line 411
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    .line 413
    :cond_c
    return-void
.end method

.method public b(Ly/a;)V
    .registers 3
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->n()Ly/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/b;->b(Ly/a;)V

    .line 405
    return-void
.end method

.method public b(FF)Z
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 942
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    if-nez v0, :cond_9

    move v0, v3

    .line 975
    :goto_8
    return v0

    .line 946
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->g()Ljava/util/ArrayList;

    move-result-object v6

    .line 947
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 952
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cy;->n()Ly/b;

    move-result-object v2

    .line 953
    invoke-virtual {v2}, Ly/b;->q_()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 954
    invoke-virtual {v2, p1, p2, v1, v1}, Ly/b;->d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 955
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n()V

    move v0, v4

    .line 956
    goto :goto_8

    .line 960
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-object v2, v1

    :goto_2e
    if-ltz v5, :cond_65

    .line 961
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 962
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->q_()Z

    move-result v7

    if-eqz v7, :cond_61

    .line 964
    if-nez v2, :cond_59

    .line 965
    new-instance v2, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v9

    invoke-direct {v2, v1, v7, v8, v9}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 968
    invoke-virtual {v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v1

    .line 970
    :cond_59
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/aD;->d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_61

    move v0, v4

    .line 971
    goto :goto_8

    .line 960
    :cond_61
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_2e

    :cond_65
    move v0, v3

    .line 975
    goto :goto_8
.end method

.method public b_()V
    .registers 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    .line 483
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->g()V

    .line 484
    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b_()V

    .line 488
    invoke-static {}, Lj/a;->a()Lj/a;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    if-eqz v1, :cond_1e

    .line 490
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cy;->p()Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 492
    :cond_1e
    return-void
.end method

.method public c(Z)Lcom/google/android/maps/driveabout/vector/cl;
    .registers 4
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/vector/cl;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 1181
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method public c(FF)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 757
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    if-nez v0, :cond_6

    .line 841
    :goto_5
    return-void

    .line 764
    :cond_6
    new-instance v4, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 768
    invoke-virtual {v4, p1, p2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v3

    .line 772
    const/4 v0, 0x0

    .line 778
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:Z

    .line 781
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cy;->n()Ly/b;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 782
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->n()Ly/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Ly/b;->a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    .line 786
    :cond_36
    if-nez v0, :cond_4a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 787
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/S;->a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    .line 792
    :cond_4a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/dV;

    if-eqz v1, :cond_56

    if-nez v0, :cond_56

    .line 793
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/dV;

    invoke-interface {v0, p0, v3}, Lcom/google/android/maps/driveabout/vector/dV;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)Z

    move-result v0

    .line 796
    :cond_56
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cy;->g()Ljava/util/ArrayList;

    move-result-object v8

    .line 797
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 798
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 800
    add-int/lit8 v1, v1, -0x1

    move v6, v0

    :goto_68
    if-nez v6, :cond_98

    if-ltz v1, :cond_98

    .line 801
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 802
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->l()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 803
    check-cast v0, Lcom/google/android/maps/driveabout/vector/e;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    .line 800
    :goto_7e
    add-int/lit8 v1, v1, -0x1

    move v6, v0

    goto :goto_68

    .line 804
    :cond_82
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d6

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v9

    if-eq v0, v9, :cond_d6

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aD;->a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_d6

    move v0, v7

    .line 811
    goto :goto_7e

    .line 814
    :cond_98
    if-nez v6, :cond_be

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_be

    .line 815
    if-eqz v2, :cond_b0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 827
    :cond_b0
    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setShouldUpdateFeatureCluster(Z)V

    .line 829
    :cond_b3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/G;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/G;->a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_be

    move v6, v7

    .line 835
    :cond_be
    if-nez v6, :cond_c9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    if-eqz v0, :cond_c9

    .line 836
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    invoke-interface {v0, p0, v3}, Lcom/google/android/maps/driveabout/vector/dW;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)V

    .line 838
    :cond_c9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:Lcom/google/android/maps/driveabout/vector/l;

    .line 840
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d_()V

    goto/16 :goto_5

    :cond_d6
    move v0, v6

    goto :goto_7e
.end method

.method public c_()Lcom/google/android/maps/driveabout/vector/dI;
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->b()V

    .line 503
    return-void
.end method

.method public d(FF)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 738
    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 742
    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v1

    .line 745
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/google/android/maps/driveabout/vector/S;->b(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    .line 747
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 530
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 531
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n:Z

    if-eqz v0, :cond_f

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n:Z

    .line 533
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->d()V

    .line 535
    :cond_f
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_f

    .line 985
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->t_()V

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Lcom/google/android/maps/driveabout/vector/aD;

    .line 987
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d_()V

    .line 989
    :cond_f
    return-void
.end method

.method public e(FF)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    if-nez v0, :cond_5

    .line 905
    :goto_4
    return-void

    .line 867
    :cond_5
    new-instance v3, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 871
    invoke-virtual {v3, p1, p2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v4

    .line 875
    const/4 v0, 0x0

    .line 878
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 879
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/google/android/maps/driveabout/vector/S;->c(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    .line 884
    :cond_33
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/dV;

    if-eqz v1, :cond_77

    if-nez v0, :cond_77

    .line 885
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/dV;

    invoke-interface {v0, p0, v4}, Lcom/google/android/maps/driveabout/vector/dV;->b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)Z

    move-result v0

    move v1, v0

    .line 888
    :goto_40
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->g()Ljava/util/ArrayList;

    move-result-object v5

    .line 889
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 890
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4d
    if-ltz v2, :cond_64

    .line 891
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 893
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/cy;->m()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v6

    if-eq v0, v6, :cond_73

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/google/android/maps/driveabout/vector/aD;->c(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 895
    const/4 v1, 0x1

    .line 900
    :cond_64
    if-nez v1, :cond_6f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    if-eqz v0, :cond_6f

    .line 901
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    invoke-interface {v0, p0, v4}, Lcom/google/android/maps/driveabout/vector/dW;->b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)V

    .line 904
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d_()V

    goto :goto_4

    .line 890
    :cond_73
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4d

    :cond_77
    move v1, v0

    goto :goto_40
.end method

.method public f(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    if-eqz v0, :cond_9

    .line 725
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dW;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V

    .line 727
    :cond_9
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->f()V

    .line 363
    return-void
.end method

.method public h()Ly/b;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->n()Ly/b;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Ljava/util/List;)V

    .line 459
    return-void
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .registers 7

    .prologue
    .line 507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 508
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    .line 509
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cy;->b(Z)V

    .line 513
    :goto_14
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:J

    .line 514
    return-void

    .line 511
    :cond_17
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cy;->b(Z)V

    goto :goto_14
.end method

.method public k()V
    .registers 2

    .prologue
    .line 522
    invoke-static {}, Lcom/google/googlenav/android/E;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 523
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->c()V

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n:Z

    .line 526
    :cond_e
    return-void
.end method

.method public l()Lcom/google/android/maps/driveabout/vector/D;
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->j()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 588
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    monitor-enter v1

    .line 589
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d_()V

    .line 590
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 591
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public n()V
    .registers 3

    .prologue
    .line 605
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(ZZ)V

    .line 606
    return-void
.end method

.method public o()Lcom/google/android/maps/driveabout/vector/k;
    .registers 6

    .prologue
    .line 614
    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    return-object v0
.end method

.method public onFinishInflate()V
    .registers 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->onFinishInflate()V

    .line 204
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a()V

    .line 205
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 629
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 630
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Laj/i;

    invoke-virtual {v1}, Laj/i;->a()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 634
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Laj/g;

    invoke-virtual {v1, p1}, Laj/g;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 667
    :cond_1d
    :goto_1d
    return v0

    .line 638
    :cond_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Laj/i;

    invoke-virtual {v1, p1}, Laj/i;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5d

    .line 644
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Laj/g;

    invoke-virtual {v0, p1}, Laj/g;->g(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1d

    .line 647
    :cond_33
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_47

    .line 654
    const-wide/16 v1, 0x14

    :try_start_44
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_54

    .line 659
    :cond_47
    :goto_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1d

    .line 662
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1d

    .line 655
    :catch_54
    move-exception v1

    .line 656
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_47

    .line 667
    :cond_5d
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 463
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->onWindowFocusChanged(Z)V

    .line 464
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Z)V

    .line 465
    return-void

    .line 464
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public p()Ln/aK;
    .registers 6

    .prologue
    .line 623
    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .registers 2

    .prologue
    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:Z

    .line 1008
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->k()V

    .line 1009
    return-void
.end method

.method public r()Lcom/google/android/maps/driveabout/vector/ay;
    .registers 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->l()Lcom/google/android/maps/driveabout/vector/ay;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .registers 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    if-eqz v0, :cond_9

    .line 1059
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->q()V

    .line 1061
    :cond_9
    return-void
.end method

.method public setAllowLongPressGesture(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->g(Z)V

    .line 1094
    return-void
.end method

.method public setAllowNonCenteredRotate(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->f(Z)V

    .line 1114
    return-void
.end method

.method public setAllowNonCenteredZoom(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->e(Z)V

    .line 1109
    return-void
.end method

.method public setAllowRotateGesture(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->d(Z)V

    .line 1104
    return-void
.end method

.method public setAllowScroll(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->a(Z)V

    .line 1079
    return-void
.end method

.method public setAllowSingleTapGesture(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->h(Z)V

    .line 1099
    return-void
.end method

.method public setAllowTiltGesture(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->c(Z)V

    .line 1089
    return-void
.end method

.method public setAllowZoomGestures(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dQ;->b(Z)V

    .line 1084
    return-void
.end method

.method public setBaseDistancePenaltyFactorForLabelOverlay(I)V
    .registers 3
    .parameter

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->c(I)V

    .line 1027
    return-void
.end method

.method public setBubbleTapListener(Lcom/google/android/maps/driveabout/vector/T;)V
    .registers 3
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/T;)V

    .line 443
    return-void
.end method

.method public setController(Lcom/google/android/maps/driveabout/vector/dI;)V
    .registers 4
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    .line 381
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/cH;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/b;)V

    .line 384
    return-void
.end method

.method public setCopyrightPadding(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cy;->a(II)V

    .line 573
    return-void
.end method

.method public setDefaultLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V
    .registers 2
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/bZ;

    .line 1135
    return-void
.end method

.method public setDrawMode(Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->b(Lcom/google/android/maps/driveabout/vector/D;)V

    .line 549
    return-void
.end method

.method public setImportantLabelFeatures(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Ljava/util/List;)V

    .line 452
    return-void
.end method

.method public setInterceptingOnMapGestureListener(Lcom/google/android/maps/driveabout/vector/dV;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/dV;

    .line 388
    return-void
.end method

.method public setLabelTapListener(Lcom/google/android/maps/driveabout/vector/f;)V
    .registers 3
    .parameter

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 1019
    return-void
.end method

.method public setLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V
    .registers 3
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 565
    return-void
.end method

.method public setModelChanged()V
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cy;->e()V

    .line 474
    return-void
.end method

.method public setOnMapGestureListener(Lcom/google/android/maps/driveabout/vector/dW;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dW;

    .line 392
    return-void
.end method

.method public setShouldUpdateFeatureCluster(Z)V
    .registers 3
    .parameter

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/G;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/G;->a(Z)V

    .line 997
    return-void
.end method

.method public t()F
    .registers 2

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public u()V
    .registers 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dQ;->a()V

    .line 1070
    return-void
.end method

.method public v()V
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dQ;->b()V

    .line 1074
    return-void
.end method

.method public w()Lcom/google/android/maps/driveabout/vector/cy;
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/cy;

    return-object v0
.end method

.method public x()V
    .registers 2

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->y()Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 1127
    return-void
.end method

.method public y()Lcom/google/android/maps/driveabout/vector/bZ;
    .registers 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/bZ;

    return-object v0
.end method

.method public z()Landroid/view/GestureDetector;
    .registers 2

    .prologue
    .line 1139
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 1140
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    return-object v0
.end method
