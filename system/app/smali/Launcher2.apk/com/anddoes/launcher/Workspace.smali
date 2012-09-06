.class public Lcom/anddoes/launcher/Workspace;
.super Lcom/anddoes/launcher/SmoothPagedView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/anddoes/launcher/bn;
.implements Lcom/anddoes/launcher/bv;
.implements Lcom/anddoes/launcher/bw;
.implements Lcom/anddoes/launcher/cb;


# static fields
.field private static co:J

.field private static cp:J


# instance fields
.field aA:Z

.field public aB:[F

.field private aC:Lcom/anddoes/launcher/preference/h;

.field private aD:Landroid/animation/ObjectAnimator;

.field private aE:Landroid/animation/ObjectAnimator;

.field private aF:F

.field private aG:Landroid/animation/ValueAnimator;

.field private aH:Landroid/animation/ValueAnimator;

.field private aI:Landroid/graphics/drawable/Drawable;

.field private aJ:F

.field private aK:F

.field private aL:I

.field private aM:F

.field private final aN:Landroid/app/WallpaperManager;

.field private aO:Landroid/os/IBinder;

.field private aP:Z

.field private aQ:Lcom/anddoes/launcher/az;

.field private aR:[I

.field private aS:Lcom/anddoes/launcher/CellLayout;

.field private aT:Lcom/anddoes/launcher/Launcher;

.field private aU:Lcom/anddoes/launcher/ds;

.field private aV:Lcom/anddoes/launcher/bm;

.field private aW:[I

.field private aX:[I

.field private aY:[F

.field private aZ:[F

.field av:Z

.field aw:Z

.field ax:I

.field ay:I

.field az:Lcom/anddoes/launcher/lw;

.field b:Z

.field private bA:Z

.field private final bB:Lcom/anddoes/launcher/g;

.field private bC:Lcom/anddoes/launcher/cx;

.field private bD:Landroid/view/View;

.field private bE:Z

.field private bF:F

.field private bG:F

.field private bH:I

.field private bI:F

.field private bJ:F

.field private bK:F

.field private bL:F

.field private bM:F

.field private bN:F

.field private bO:F

.field private bP:[F

.field private bQ:[F

.field private bR:[F

.field private bS:[F

.field private bT:[F

.field private bU:[F

.field private bV:[F

.field private bW:[F

.field private bX:[F

.field private bY:[F

.field private bZ:[F

.field private ba:[F

.field private bb:[F

.field private bc:Landroid/graphics/Matrix;

.field private bd:Lcom/anddoes/launcher/kl;

.field private be:F

.field private bf:Lcom/anddoes/launcher/lv;

.field private bg:Z

.field private bh:Z

.field private bi:Lcom/anddoes/launcher/lv;

.field private bj:Landroid/animation/AnimatorSet;

.field private bk:Landroid/animation/Animator$AnimatorListener;

.field private bl:Z

.field private final bm:Lcom/anddoes/launcher/do;

.field private bn:Landroid/graphics/Bitmap;

.field private final bo:Landroid/graphics/Rect;

.field private final bp:[I

.field private bq:I

.field private br:F

.field private final bs:Landroid/graphics/Paint;

.field private final bt:Landroid/graphics/Matrix;

.field private final bu:Landroid/graphics/Camera;

.field private final bv:[F

.field private bw:Ljava/lang/Runnable;

.field private bx:I

.field private by:I

.field private bz:I

.field protected c:Z

.field private cA:Z

.field private ca:[F

.field private cb:[F

.field private cc:[F

.field private cd:[F

.field private ce:F

.field private cf:Z

.field private cg:J

.field private ch:F

.field private ci:F

.field private cj:F

.field private ck:F

.field private cl:F

.field private cm:F

.field private cn:J

.field private cq:Z

.field private cr:Z

.field private cs:Z

.field private ct:J

.field private cu:I

.field private final cv:[[I

.field private final cw:[F

.field private cx:F

.field private cy:Landroid/graphics/Paint;

.field private final cz:Lcom/anddoes/launcher/lx;

.field protected d:D

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x190

    .line 263
    sput-wide v0, Lcom/anddoes/launcher/Workspace;->co:J

    .line 264
    sput-wide v0, Lcom/anddoes/launcher/Workspace;->cp:J

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/anddoes/launcher/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aF:F

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->b:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aJ:F

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aK:F

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aL:I

    .line 113
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aM:F

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aP:Z

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anddoes/launcher/Workspace;->d:D

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aW:[I

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aX:[I

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aZ:[F

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->ba:[F

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bb:[F

    .line 151
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bc:Landroid/graphics/Matrix;

    .line 166
    sget-object v0, Lcom/anddoes/launcher/lv;->a:Lcom/anddoes/launcher/lv;

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bh:Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->e:Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->av:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aw:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bl:Z

    .line 181
    new-instance v0, Lcom/anddoes/launcher/do;

    invoke-direct {v0}, Lcom/anddoes/launcher/do;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bm:Lcom/anddoes/launcher/do;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bo:Landroid/graphics/Rect;

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bp:[I

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->br:F

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bs:Landroid/graphics/Paint;

    .line 192
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bt:Landroid/graphics/Matrix;

    .line 193
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bu:Landroid/graphics/Camera;

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bv:[F

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aA:Z

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bA:Z

    .line 213
    new-instance v0, Lcom/anddoes/launcher/g;

    invoke-direct {v0}, Lcom/anddoes/launcher/g;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bB:Lcom/anddoes/launcher/g;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bC:Lcom/anddoes/launcher/cx;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cf:Z

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anddoes/launcher/Workspace;->cg:J

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anddoes/launcher/Workspace;->cn:J

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cq:Z

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    .line 275
    const/4 v0, 0x4

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    .line 277
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2b8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2c0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 278
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2c8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2d2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2dc

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2e6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2f0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->cv:[[I

    .line 279
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_2fa

    .line 280
    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->cw:[F

    .line 281
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->cx:F

    .line 2355
    new-instance v0, Lcom/anddoes/launcher/lx;

    invoke-direct {v0}, Lcom/anddoes/launcher/lx;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->cz:Lcom/anddoes/launcher/lx;

    .line 2437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cA:Z

    move-object v0, p1

    .line 310
    check-cast v0, Lcom/anddoes/launcher/Launcher;

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 311
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aC:Lcom/anddoes/launcher/preference/h;

    .line 312
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->f:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29a

    const/4 v0, 0x0

    :goto_150
    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    .line 313
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->g:Z

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->a(Z)V

    .line 314
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->h:Z

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->ai:Z

    .line 315
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->U:Z

    .line 319
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->u()V

    .line 321
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 322
    const v1, 0x7f0a0004

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->V:Z

    .line 323
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    .line 325
    invoke-static {p1}, Lcom/anddoes/launcher/LauncherApplication;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 329
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aC:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->h()I

    move-result v1

    .line 330
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aC:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->g()I

    move-result v0

    .line 336
    :goto_196
    const/4 v2, 0x4

    .line 337
    const/4 v3, 0x4

    .line 338
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->e()V

    .line 341
    sget-object v4, Lcom/anddoes/launcher/kd;->j:[I

    const/4 v5, 0x0

    .line 340
    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 344
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v6

    if-eqz v6, :cond_1e8

    .line 350
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v6, 0x10102eb

    aput v6, v2, v3

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 349
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 351
    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 354
    const v2, 0x7f0c0034

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 355
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v8, v2

    .line 356
    const/4 v2, 0x1

    .line 357
    :goto_1ce
    add-int/lit8 v3, v2, 0x1

    invoke-static {v5, v3}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/content/res/Resources;I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v8

    if-lez v3, :cond_2ab

    .line 361
    const/4 v3, 0x1

    .line 363
    :goto_1da
    add-int/lit8 v9, v3, 0x1

    invoke-static {v5, v9}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/content/res/Resources;I)I

    move-result v9

    int-to-float v9, v9

    .line 362
    add-float/2addr v9, v6

    .line 363
    sub-float v10, v8, v7

    cmpg-float v9, v9, v10

    if-lez v9, :cond_2af

    .line 370
    :cond_1e8
    const v6, 0x7f0b0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    .line 369
    iput v6, p0, Lcom/anddoes/launcher/Workspace;->be:F

    .line 371
    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/anddoes/launcher/Workspace;->bq:I

    .line 377
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    invoke-static {v1, v0, v2, v3}, Lcom/anddoes/launcher/LauncherModel;->a(IIII)V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->m:I

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->n:I

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-static {v1}, Lcom/anddoes/launcher/Launcher;->a(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->a()Lcom/anddoes/launcher/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aU:Lcom/anddoes/launcher/ds;

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bs:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_2b3

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->n:Z

    if-nez v0, :cond_2b3

    const/4 v0, 0x0

    :goto_23c
    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    :try_start_23e
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aI:Landroid/graphics/drawable/Drawable;
    :try_end_24b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23e .. :try_end_24b} :catch_2b5

    :goto_24b
    new-instance v0, Lcom/anddoes/launcher/lf;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/lf;-><init>(Lcom/anddoes/launcher/Workspace;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bk:Landroid/animation/Animator$AnimatorListener;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->h:I

    new-instance v0, Lcom/anddoes/launcher/lw;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/lw;-><init>(Lcom/anddoes/launcher/Workspace;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->bx:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->by:I

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->bx:I

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->by:I

    invoke-static {v1, v2}, Lcom/anddoes/launcher/Workspace;->d(II)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bz:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->cy:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->cy:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->cy:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 385
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 386
    return-void

    .line 312
    :cond_29a
    const/4 v0, 0x1

    goto/16 :goto_150

    .line 332
    :cond_29d
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aC:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->e()I

    move-result v1

    .line 333
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aC:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->d()I

    move-result v0

    goto/16 :goto_196

    .line 358
    :cond_2ab
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1ce

    .line 365
    :cond_2af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1da

    .line 382
    :cond_2b3
    const/4 v0, 0x1

    goto :goto_23c

    :catch_2b5
    move-exception v0

    goto :goto_24b

    .line 277
    nop

    :array_2b8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2c0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 278
    :array_2c8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2dc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 279
    :array_2fa
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0xd7t 0xa3t 0xf0t 0x3et
        0xd7t 0xa3t 0xf0t 0x3et
        0xd7t 0xa3t 0xf0t 0x3et
        0x52t 0xb8t 0x9et 0x3et
        0x52t 0xb8t 0x9et 0x3et
        0x52t 0xb8t 0x9et 0x3et
        0x52t 0xb8t 0x9et 0x3et
        0x52t 0xb8t 0x9et 0x3et
    .end array-data
.end method

.method private R()Z
    .registers 3

    .prologue
    .line 853
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 854
    const-string v0, "DO_NOTHING"

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 855
    const-string v0, "DO_NOTHING"

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    .line 853
    goto :goto_25
.end method

.method private S()Z
    .registers 3

    .prologue
    .line 1315
    const/4 v0, 0x0

    .line 1316
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v1, :cond_15

    .line 1317
    const-string v0, "MULTIPLE_SCREEN"

    .line 1318
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1320
    :cond_15
    return v0
.end method

.method private T()V
    .registers 5

    .prologue
    .line 1537
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_38

    .line 1538
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_13

    .line 1539
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1540
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aD:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1c

    .line 1541
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aD:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1543
    :cond_1c
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 1542
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aD:Landroid/animation/ObjectAnimator;

    .line 1544
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aD:Landroid/animation/ObjectAnimator;

    .line 1545
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1546
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aD:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1548
    :cond_38
    return-void
.end method

.method private U()V
    .registers 5

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_3e

    .line 1552
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aD:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_13

    .line 1553
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aD:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1554
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1c

    .line 1555
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1557
    :cond_1c
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1556
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    .line 1558
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    .line 1559
    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1560
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    .line 1561
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1562
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aE:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1564
    :cond_3e
    return-void
.end method

.method private V()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2000
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aw:Z

    if-eqz v0, :cond_1b

    .line 2001
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->O:[I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->b([I)V

    .line 2002
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->O:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2003
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->O:[I

    aget v2, v1, v4

    .line 2004
    if-eq v0, v3, :cond_1b

    if-eq v2, v3, :cond_1b

    move v1, v0

    .line 2005
    :goto_19
    if-le v1, v2, :cond_1c

    .line 2015
    :cond_1b
    return-void

    .line 2006
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2007
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3c

    .line 2008
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const v3, 0x3caaaaab

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3c

    .line 2009
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2010
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 2005
    :cond_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19
.end method

.method private W()Z
    .registers 3

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    sget-object v1, Lcom/anddoes/launcher/lv;->c:Lcom/anddoes/launcher/lv;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    sget-object v1, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private X()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2276
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_31

    move v0, v1

    .line 2277
    :goto_d
    iget-boolean v3, p0, Lcom/anddoes/launcher/Workspace;->e:Z

    if-nez v3, :cond_33

    iget-boolean v3, p0, Lcom/anddoes/launcher/Workspace;->av:Z

    if-nez v3, :cond_33

    move v3, v1

    .line 2278
    :goto_16
    if-nez v0, :cond_21

    if-nez v3, :cond_21

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->A()Z

    move-result v0

    if-nez v0, :cond_21

    move v2, v1

    .line 2280
    :cond_21
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aw:Z

    if-eq v2, v0, :cond_30

    .line 2281
    iput-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->aw:Z

    .line 2287
    if-nez v2, :cond_30

    move v2, v1

    .line 2288
    :goto_2a
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-lt v2, v0, :cond_35

    .line 2293
    :cond_30
    return-void

    :cond_31
    move v0, v2

    .line 2276
    goto :goto_d

    :cond_33
    move v3, v2

    .line 2277
    goto :goto_16

    .line 2289
    :cond_35
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 2288
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a
.end method

.method private Y()V
    .registers 2

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bC:Lcom/anddoes/launcher/cx;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    if-eqz v0, :cond_d

    .line 3889
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bC:Lcom/anddoes/launcher/cx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/cx;->b()V

    .line 3891
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    .line 3892
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bB:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 3893
    return-void
.end method

.method private Z()Ljava/util/ArrayList;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 4413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4414
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v4

    move v2, v1

    .line 4415
    :goto_b
    if-lt v2, v4, :cond_22

    .line 4418
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 4419
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v2

    .line 4420
    :goto_1f
    if-lt v1, v2, :cond_2f

    .line 4424
    :cond_21
    return-object v3

    .line 4416
    :cond_22
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4415
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 4421
    :cond_2f
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f
.end method

.method private a(FII)F
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 1649
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bt:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1650
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bu:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 1651
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bu:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1652
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bu:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bt:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1653
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bu:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 1655
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bt:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    neg-int v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1656
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bt:Landroid/graphics/Matrix;

    int-to-float v1, p2

    mul-float/2addr v1, v3

    int-to-float v2, p3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1657
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bv:[F

    int-to-float v1, p2

    aput v1, v0, v4

    .line 1658
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bv:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 1659
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bt:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bv:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1660
    int-to-float v0, p2

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bv:[F

    aget v1, v1, v4

    sub-float v1, v0, v1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_58

    const/high16 v0, 0x3f80

    :goto_56
    mul-float/2addr v0, v1

    return v0

    :cond_58
    const/high16 v0, -0x4080

    goto :goto_56
.end method

.method private a(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/ec;IIII)Landroid/graphics/RectF;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 493
    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(IIIILandroid/graphics/RectF;)V

    .line 494
    instance-of v0, p2, Lcom/anddoes/launcher/jo;

    if-eqz v0, :cond_3c

    .line 495
    check-cast p2, Lcom/anddoes/launcher/jo;

    .line 496
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    .line 497
    iget v1, v5, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v5, Landroid/graphics/RectF;->top:F

    .line 498
    iget v1, v5, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v5, Landroid/graphics/RectF;->left:F

    .line 499
    iget v1, v5, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v5, Landroid/graphics/RectF;->right:F

    .line 500
    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 502
    :cond_3c
    return-object v5
.end method

.method private a(Landroid/view/DragEvent;)Landroid/util/Pair;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3381
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->w()Lcom/anddoes/launcher/LauncherModel;

    .line 3382
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 3383
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v4

    .line 3384
    const/4 v0, 0x0

    move v2, v0

    :goto_10
    if-lt v2, v4, :cond_14

    move-object v0, v1

    .line 3398
    :goto_13
    return-object v0

    .line 3385
    :cond_14
    invoke-virtual {v3, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 3386
    const-string v5, "com.android.launcher/shortcut"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3387
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 3390
    :cond_2a
    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 3392
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 3393
    new-instance v0, Landroid/util/Pair;

    .line 3394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3393
    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 3384
    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10
.end method

.method private a(FZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1593
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aI:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 1625
    :cond_5
    :goto_5
    return-void

    .line 1595
    :cond_6
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aG:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    .line 1596
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aG:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1597
    iput-object v1, p0, Lcom/anddoes/launcher/Workspace;->aG:Landroid/animation/ValueAnimator;

    .line 1599
    :cond_11
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1c

    .line 1600
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1601
    iput-object v1, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    .line 1603
    :cond_1c
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1604
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_5

    .line 1605
    if-eqz p2, :cond_58

    .line 1606
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    .line 1607
    aput p1, v1, v0

    .line 1606
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    .line 1608
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    .line 1609
    new-instance v1, Lcom/anddoes/launcher/lm;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/lm;-><init>(Lcom/anddoes/launcher/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1616
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    .line 1617
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1618
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    .line 1619
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1620
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aH:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 1622
    :cond_58
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->setBackgroundAlpha(F)V

    goto :goto_5
.end method

.method private a(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2686
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->bo:Landroid/graphics/Rect;

    .line 2687
    invoke-virtual {p1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2691
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2692
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 2693
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 2694
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, p3

    .line 2695
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p3

    .line 2694
    invoke-virtual {v3, v2, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2696
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2697
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2729
    :cond_2f
    :goto_2f
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2730
    return-void

    .line 2699
    :cond_33
    instance-of v0, p1, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_6c

    move-object v0, p1

    .line 2704
    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderIcon;->d()Z

    move-result v0

    if-eqz v0, :cond_a1

    move-object v0, p1

    .line 2705
    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/FolderIcon;->a(Z)V

    move v0, v1

    .line 2719
    :goto_47
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    .line 2720
    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 2719
    invoke-virtual {p2, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2721
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2722
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2725
    if-eqz v0, :cond_2f

    .line 2726
    check-cast p1, Lcom/anddoes/launcher/FolderIcon;

    invoke-virtual {p1, v1}, Lcom/anddoes/launcher/FolderIcon;->a(Z)V

    goto :goto_2f

    .line 2708
    :cond_6c
    instance-of v0, p1, Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_86

    move-object v0, p1

    .line 2709
    check-cast v0, Lcom/anddoes/launcher/BubbleTextView;

    .line 2710
    invoke-virtual {v0}, Lcom/anddoes/launcher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v4

    .line 2711
    add-int/lit8 v4, v4, -0x3

    .line 2712
    invoke-virtual {v0}, Lcom/anddoes/launcher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 2710
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    goto :goto_47

    .line 2713
    :cond_86
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_a1

    move-object v0, p1

    .line 2714
    check-cast v0, Landroid/widget/TextView;

    .line 2715
    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    .line 2716
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2717
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 2715
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    :cond_a1
    move v0, v2

    goto :goto_47
.end method

.method private static a(Landroid/view/View;[F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3557
    aget v0, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 3558
    aget v0, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 3559
    return-void
.end method

.method private a(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3543
    if-nez p3, :cond_f

    .line 3544
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bc:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3545
    iget-object p3, p0, Lcom/anddoes/launcher/Workspace;->bc:Landroid/graphics/Matrix;

    .line 3547
    :cond_f
    aget v0, p2, v2

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 3548
    aget v0, p2, v3

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mScrollY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 3549
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3550
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Workspace;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 252
    iput p1, p0, Lcom/anddoes/launcher/Workspace;->ce:F

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/cx;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/anddoes/launcher/Workspace;->bC:Lcom/anddoes/launcher/cx;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Workspace;Ljava/lang/Runnable;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/anddoes/launcher/Workspace;->bw:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Workspace;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    return-void
.end method

.method private a([ILjava/lang/Object;Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/cc;)V
    .registers 30
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3960
    new-instance v24, Lcom/anddoes/launcher/li;

    invoke-direct/range {v24 .. v25}, Lcom/anddoes/launcher/li;-><init>(Lcom/anddoes/launcher/Workspace;)V

    move-object/from16 v3, p2

    .line 3967
    check-cast v3, Lcom/anddoes/launcher/ec;

    .line 3968
    iget v5, v3, Lcom/anddoes/launcher/ec;->n:I

    .line 3969
    iget v6, v3, Lcom/anddoes/launcher/ec;->o:I

    .line 3970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v4, :cond_1f

    .line 3971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v5, v4, Lcom/anddoes/launcher/az;->d:I

    .line 3972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v6, v4, Lcom/anddoes/launcher/az;->e:I

    .line 3975
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_17a

    const/16 v4, -0x65

    :goto_2d
    int-to-long v10, v4

    .line 3977
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 3978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 3979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v4}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v7, v8}, Lcom/anddoes/launcher/Hotseat;->a(Lcom/anddoes/launcher/CellLayout;II)I

    move-result v12

    .line 3984
    :cond_5e
    :goto_5e
    instance-of v4, v3, Lcom/anddoes/launcher/jn;

    if-eqz v4, :cond_193

    .line 3985
    check-cast p2, Lcom/anddoes/launcher/jn;

    .line 3987
    const/4 v9, 0x1

    .line 3988
    move-object/from16 v0, p2

    iget v3, v0, Lcom/anddoes/launcher/jn;->i:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c6

    .line 3989
    const/4 v3, 0x0

    aget v3, p1, v3

    .line 3990
    const/4 v4, 0x1

    aget v4, p1, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    move-object/from16 v7, p3

    .line 3989
    invoke-static/range {v3 .. v8}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 3991
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v3, Lcom/anddoes/launcher/ec;

    .line 3992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v8, 0x1

    .line 3991
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/CellLayout;[IZ)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 3993
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v3, Lcom/anddoes/launcher/ec;

    .line 3994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 3993
    invoke-static {v3, v4, v7}, Lcom/anddoes/launcher/Workspace;->a(Ljava/lang/Object;Lcom/anddoes/launcher/CellLayout;[I)Z

    move-result v3

    if-eqz v3, :cond_2c6

    .line 3995
    :cond_ab
    const/4 v3, 0x0

    .line 3998
    :goto_ac
    if-eqz v3, :cond_c3

    .line 3999
    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget v4, p1, v4

    .line 4000
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    move-object/from16 v8, p3

    .line 3999
    invoke-static/range {v3 .. v9}, Lcom/anddoes/launcher/Workspace;->a(IIIILandroid/view/View;Lcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 4004
    :cond_c3
    new-instance v7, Lcom/anddoes/launcher/lj;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/anddoes/launcher/lj;-><init>(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/jn;JILcom/anddoes/launcher/CellLayout;)V

    .line 4037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v4, 0x0

    aget v11, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v4, 0x1

    aget v12, v3, v4

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move v13, v5

    move v14, v6

    .line 4036
    invoke-direct/range {v8 .. v14}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/ec;IIII)Landroid/graphics/RectF;

    move-result-object v3

    .line 4038
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 4039
    const/4 v5, 0x0

    iget v6, v3, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    aput v6, v4, v5

    .line 4040
    const/4 v5, 0x1

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    aput v6, v4, v5

    .line 4041
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;)V

    .line 4042
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v5}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v5

    .line 4043
    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v4}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;[I)F

    move-result v5

    .line 4044
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/CellLayout;)V

    .line 4047
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v8}, Lcom/anddoes/launcher/bx;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 4048
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v9}, Lcom/anddoes/launcher/bx;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 4046
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 4052
    const/4 v8, 0x0

    aget v9, v4, v8

    int-to-float v9, v9

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v10}, Lcom/anddoes/launcher/bx;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    .line 4053
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    .line 4052
    sub-float/2addr v9, v10

    float-to-int v9, v9

    aput v9, v4, v8

    .line 4054
    const/4 v8, 0x1

    aget v9, v4, v8

    int-to-float v9, v9

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v10}, Lcom/anddoes/launcher/bx;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    .line 4055
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float v3, v10, v3

    const/high16 v10, 0x4000

    div-float/2addr v3, v10

    .line 4054
    sub-float v3, v9, v3

    float-to-int v3, v3

    aput v3, v4, v8

    .line 4057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    .line 4058
    mul-float/2addr v5, v6

    .line 4057
    invoke-virtual {v3, v8, v4, v5, v7}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/bx;[IFLjava/lang/Runnable;)V

    .line 4129
    :cond_179
    :goto_179
    return-void

    .line 3976
    :cond_17a
    const/16 v4, -0x64

    goto/16 :goto_2d

    .line 3980
    :cond_17e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/anddoes/launcher/Workspace;->n:I

    if-eq v12, v4, :cond_5e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    sget-object v7, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    if-eq v4, v7, :cond_5e

    .line 3981
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/anddoes/launcher/Workspace;->s(I)V

    goto/16 :goto_5e

    .line 4062
    :cond_193
    iget v4, v3, Lcom/anddoes/launcher/ec;->i:I

    packed-switch v4, :pswitch_data_2ca

    .line 4079
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown item type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4080
    iget v3, v3, Lcom/anddoes/launcher/ec;->i:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4079
    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4067
    :pswitch_1af
    iget-wide v7, v3, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v13, -0x1

    cmp-long v4, v7, v13

    if-nez v4, :cond_2c3

    instance-of v4, v3, Lcom/anddoes/launcher/y;

    if-eqz v4, :cond_2c3

    .line 4069
    new-instance v4, Lcom/anddoes/launcher/kj;

    check-cast v3, Lcom/anddoes/launcher/y;

    invoke-direct {v4, v3}, Lcom/anddoes/launcher/kj;-><init>(Lcom/anddoes/launcher/y;)V

    .line 4071
    :goto_1c2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    move-object v3, v4

    .line 4072
    check-cast v3, Lcom/anddoes/launcher/kj;

    .line 4071
    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v3}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/ViewGroup;Lcom/anddoes/launcher/kj;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v23, v4

    .line 4086
    :goto_1d1
    if-eqz p1, :cond_21d

    .line 4087
    const/4 v3, 0x0

    aget v3, p1, v3

    .line 4088
    const/4 v4, 0x1

    aget v4, p1, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    move-object/from16 v7, p3

    .line 4087
    invoke-static/range {v3 .. v8}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 4089
    move-object/from16 v0, v24

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/anddoes/launcher/cc;->i:Ljava/lang/Runnable;

    .line 4091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    move-object/from16 v20, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/anddoes/launcher/cc;->i:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v13, p0

    move-wide v15, v10

    move-object/from16 v17, p3

    .line 4090
    invoke-virtual/range {v13 .. v21}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JLcom/anddoes/launcher/CellLayout;[IZLcom/anddoes/launcher/bx;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_179

    .line 4095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v4, 0x1

    .line 4094
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;[ILcom/anddoes/launcher/cc;Z)Z

    move-result v3

    if-nez v3, :cond_179

    .line 4100
    :cond_21d
    if-eqz p1, :cond_2b6

    .line 4102
    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x1

    .line 4103
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    move-object/from16 v8, p3

    .line 4102
    invoke-static/range {v3 .. v9}, Lcom/anddoes/launcher/Workspace;->a(IIIILandroid/view/View;Lcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 4107
    :goto_236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v4, 0x0

    aget v18, v3, v4

    .line 4108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v4, 0x1

    aget v19, v3, v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/anddoes/launcher/ec;->n:I

    move/from16 v20, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/anddoes/launcher/ec;->o:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v13, p0

    move-wide v15, v10

    move/from16 v17, v12

    .line 4107
    invoke-virtual/range {v13 .. v22}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    .line 4109
    invoke-static {v14}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;)V

    .line 4111
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v4, v3

    .line 4110
    check-cast v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 4112
    invoke-virtual/range {p3 .. p3}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/anddoes/launcher/ba;->a(Landroid/view/View;)V

    .line 4114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 4115
    iget v8, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v9, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    move-object/from16 v4, v23

    move-wide v5, v10

    move v7, v12

    .line 4114
    invoke-static/range {v3 .. v9}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    .line 4117
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    if-eqz v3, :cond_179

    .line 4123
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;)V

    .line 4124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v14, v0}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/bx;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4126
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/CellLayout;)V

    goto/16 :goto_179

    .line 4075
    :pswitch_2a1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    move-object v4, v3

    .line 4076
    check-cast v4, Lcom/anddoes/launcher/dd;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aU:Lcom/anddoes/launcher/ds;

    .line 4075
    move-object/from16 v0, p3

    invoke-static {v7, v0, v4}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/Launcher;Landroid/view/ViewGroup;Lcom/anddoes/launcher/dd;)Lcom/anddoes/launcher/FolderIcon;

    move-result-object v14

    move-object/from16 v23, v3

    .line 4077
    goto/16 :goto_1d1

    .line 4105
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    goto/16 :goto_236

    :cond_2c3
    move-object v4, v3

    goto/16 :goto_1c2

    :cond_2c6
    move v3, v9

    goto/16 :goto_ac

    .line 4062
    nop

    :pswitch_data_2ca
    .packed-switch 0x0
        :pswitch_1af
        :pswitch_1af
        :pswitch_2a1
    .end packed-switch
.end method

.method private a(IFFZ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 776
    iget-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    if-eqz v1, :cond_10

    .line 777
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    .line 778
    if-gez p1, :cond_d

    .line 779
    add-int/lit8 p1, v1, -0x1

    .line 781
    :cond_d
    if-lt p1, v1, :cond_10

    move p1, v0

    .line 785
    :cond_10
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 786
    if-eqz v1, :cond_41

    .line 787
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_41

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_41

    if-eqz p4, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_40

    .line 788
    :cond_2f
    if-nez p4, :cond_41

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_41

    .line 789
    :cond_40
    const/4 v0, 0x1

    .line 796
    :cond_41
    return v0
.end method

.method static synthetic a(Lcom/anddoes/launcher/Workspace;)Z
    .registers 2
    .parameter

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    return v0
.end method

.method private a(Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/CellLayout;[IZ)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3013
    aget v0, p3, v2

    aget v3, p3, v1

    invoke-virtual {p2, v0, v3}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v3

    .line 3016
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v0, :cond_4d

    .line 3017
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Workspace;->f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3018
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v4, v4, Lcom/anddoes/launcher/az;->b:I

    aget v5, p3, v2

    if-ne v4, v5, :cond_34

    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v4, v4, Lcom/anddoes/launcher/az;->c:I

    aget v5, p3, v1

    if-ne v4, v5, :cond_34

    .line 3019
    if-ne v0, p2, :cond_34

    move v0, v1

    .line 3022
    :goto_29
    if-eqz v3, :cond_33

    if-nez v0, :cond_33

    .line 3023
    if-eqz p4, :cond_36

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    if-nez v0, :cond_36

    .line 3030
    :cond_33
    :goto_33
    return v2

    :cond_34
    move v0, v2

    .line 3019
    goto :goto_29

    .line 3027
    :cond_36
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/anddoes/launcher/kj;

    .line 3028
    iget v0, p1, Lcom/anddoes/launcher/ec;->i:I

    if-eqz v0, :cond_4b

    iget v0, p1, Lcom/anddoes/launcher/ec;->i:I

    if-eq v0, v1, :cond_4b

    move v0, v2

    .line 3030
    :goto_45
    if-eqz v3, :cond_33

    if-eqz v0, :cond_33

    move v2, v1

    goto :goto_33

    :cond_4b
    move v0, v1

    .line 3028
    goto :goto_45

    :cond_4d
    move v0, v2

    goto :goto_29
.end method

.method private static a(Ljava/lang/Object;Lcom/anddoes/launcher/CellLayout;[I)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3035
    aget v0, p2, v2

    aget v3, p2, v1

    invoke-virtual {p1, v0, v3}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v0

    .line 3036
    instance-of v3, v0, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v3, :cond_18

    .line 3037
    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    .line 3038
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/FolderIcon;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 3042
    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method

.method private a(IIIILcom/anddoes/launcher/bx;[F)[F
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3692
    if-nez p6, :cond_5

    .line 3693
    const/4 v0, 0x2

    new-array p6, v0, [F

    .line 3695
    :cond_5
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 3702
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 3710
    sub-int/2addr v0, p3

    .line 3711
    sub-int/2addr v1, p4

    .line 3714
    const/4 v2, 0x0

    invoke-virtual {p5}, Lcom/anddoes/launcher/bx;->b()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, p6, v2

    .line 3715
    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/anddoes/launcher/bx;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p6, v0

    .line 3717
    return-object p6
.end method

.method private static a(IIIILandroid/view/View;Lcom/anddoes/launcher/CellLayout;[I)[I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4188
    move-object v0, p5

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/anddoes/launcher/CellLayout;->a(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static a(IIIILcom/anddoes/launcher/CellLayout;[I)[I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4199
    move-object v0, p4

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->b(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 2766
    const v1, 0x1060012

    const-string v2, "outline_color"

    .line 2765
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v0

    .line 2767
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    .line 2768
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2767
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2770
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2771
    invoke-direct {p0, p1, p2, p3}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2772
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->bm:Lcom/anddoes/launcher/do;

    invoke-virtual {v2, v1, p2, v0, v0}, Lcom/anddoes/launcher/do;->c(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2774
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2775
    return-object v1
.end method

.method static synthetic b(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/cx;
    .registers 2
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bC:Lcom/anddoes/launcher/cx;

    return-object v0
.end method

.method private c(FF)Lcom/anddoes/launcher/CellLayout;
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 3639
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v5

    .line 3640
    const/4 v3, 0x0

    .line 3641
    const v2, 0x7f7fffff

    .line 3643
    const/4 v0, 0x0

    move v4, v0

    :goto_a
    if-lt v4, v5, :cond_e

    move-object v0, v3

    .line 3679
    :cond_d
    return-object v0

    .line 3644
    :cond_e
    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 3646
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v6, 0x0

    aput p1, v1, v6

    const/4 v6, 0x1

    aput p2, v1, v6

    .line 3651
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/anddoes/launcher/Workspace;->bc:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3652
    iget-object v6, p0, Lcom/anddoes/launcher/Workspace;->bc:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1, v6}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3654
    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_53

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_53

    .line 3655
    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_53

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-lez v6, :cond_d

    .line 3659
    :cond_53
    iget-object v6, p0, Lcom/anddoes/launcher/Workspace;->ba:[F

    .line 3662
    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 3663
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 3664
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v7, 0x0

    aget v8, v6, v7

    iget v9, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x1

    aget v8, v6, v7

    iget v9, p0, Lcom/anddoes/launcher/Workspace;->mScrollY:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 3666
    const/4 v7, 0x0

    aput p1, v1, v7

    .line 3667
    const/4 v7, 0x1

    aput p2, v1, v7

    .line 3671
    const/4 v7, 0x0

    aget v1, v1, v7

    const/4 v7, 0x0

    aget v7, v6, v7

    sub-float/2addr v1, v7

    const/4 v7, 0x1

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v6, v6, v8

    sub-float v6, v7, v6

    mul-float/2addr v1, v1

    mul-float/2addr v6, v6

    add-float/2addr v1, v6

    .line 3673
    cmpg-float v6, v1, v2

    if-gez v6, :cond_b2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 3643
    :goto_ab
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto/16 :goto_a

    :cond_b2
    move v0, v2

    move-object v1, v3

    goto :goto_ab
.end method

.method static synthetic c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;
    .registers 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    return-object v0
.end method

.method private static d(II)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1171
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 1181
    const v1, 0x3e9d89d7

    mul-float/2addr v0, v1

    const v1, 0x3f80fc10

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    return-void
.end method

.method private e(Landroid/view/View;)Landroid/graphics/RectF;
    .registers 14
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2151
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 2152
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWidth()I

    move-result v5

    .line 2153
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getHeight()I

    move-result v2

    .line 2154
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getScrollX()I

    move-result v6

    .line 2156
    add-int/lit8 v7, v0, -0x1

    .line 2159
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/anddoes/launcher/Workspace;->cx:F

    mul-float/2addr v0, v3

    float-to-int v8, v0

    .line 2160
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/anddoes/launcher/Workspace;->cx:F

    mul-float/2addr v0, v3

    float-to-int v9, v0

    .line 2165
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->cv:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    div-int v10, v2, v0

    move v0, v1

    move v2, v1

    .line 2167
    :goto_2e
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->cv:[[I

    aget-object v3, v3, v7

    array-length v3, v3

    if-lt v0, v3, :cond_3b

    .line 2185
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :goto_3a
    return-object v0

    .line 2168
    :cond_3b
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->cv:[[I

    aget-object v3, v3, v7

    aget v3, v3, v0

    div-int v11, v5, v3

    move v3, v1

    .line 2170
    :goto_44
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->cv:[[I

    aget-object v4, v4, v7

    aget v4, v4, v0

    if-lt v3, v4, :cond_4f

    .line 2167
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 2171
    :cond_4f
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_4c

    .line 2172
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2174
    if-ne p1, v4, :cond_86

    .line 2175
    new-instance v1, Landroid/graphics/RectF;

    mul-int v2, v11, v3

    add-int/2addr v2, v6

    .line 2176
    sub-int v4, v11, v8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-int v4, v10, v0

    .line 2177
    sub-int v5, v10, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 2178
    mul-int/2addr v3, v11

    add-int/2addr v3, v6

    sub-int v5, v11, v8

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 2179
    add-int/2addr v3, v8

    int-to-float v3, v3

    mul-int/2addr v0, v10

    .line 2180
    sub-int v5, v10, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    add-int/2addr v0, v9

    int-to-float v0, v0

    .line 2175
    invoke-direct {v1, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    goto :goto_3a

    .line 2182
    :cond_86
    add-int/lit8 v4, v2, 0x1

    .line 2170
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_44
.end method

.method private e(F)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v1, 0x3f00

    .line 4656
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->I()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4674
    :goto_a
    return-void

    .line 4659
    :cond_b
    iput p1, p0, Lcom/anddoes/launcher/Workspace;->br:F

    .line 4660
    sub-float v0, v4, p1

    mul-float/2addr v0, v1

    add-float v2, v1, v0

    .line 4661
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4663
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4662
    check-cast v1, Landroid/widget/ImageView;

    .line 4665
    const v3, 0x7f08003a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4664
    check-cast v0, Landroid/widget/ImageView;

    .line 4666
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->H()Landroid/widget/ImageView;

    move-result-object v3

    .line 4668
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->J()V

    .line 4669
    if-eqz v1, :cond_36

    .line 4670
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4671
    :cond_36
    if-eqz v0, :cond_3b

    .line 4672
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4673
    :cond_3b
    sub-float v0, v4, p1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_a
.end method

.method private e(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2244
    if-le p1, p2, :cond_26

    .line 2250
    :goto_3
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    .line 2252
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2253
    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    .line 2255
    :goto_13
    if-le v1, v2, :cond_16

    .line 2260
    return-void

    .line 2256
    :cond_16
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 2257
    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2258
    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 2255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_26
    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_3
.end method

.method static synthetic e(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;
    .registers 5
    .parameter

    .prologue
    .line 4400
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->Z()Ljava/util/ArrayList;

    move-result-object v0

    .line 4401
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4406
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 4401
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 4402
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/anddoes/launcher/ba;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_8

    goto :goto_f
.end method

.method private f(I)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 1397
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->Q:F

    .line 1398
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->o(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->p(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1399
    iput v4, p0, Lcom/anddoes/launcher/Workspace;->Q:F

    .line 1400
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->o(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->p(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1401
    iput v0, p0, Lcom/anddoes/launcher/Workspace;->Q:F

    .line 1402
    if-lez v1, :cond_24

    .line 1403
    mul-float v0, v4, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aM:F

    .line 1407
    :goto_23
    return-void

    .line 1405
    :cond_24
    iput v4, p0, Lcom/anddoes/launcher/Workspace;->aM:F

    goto :goto_23
.end method

.method private f(II)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 4734
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/anddoes/launcher/CellLayout;

    .line 4735
    invoke-virtual {v7}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v9

    .line 4736
    const/4 v0, 0x0

    move v8, v0

    :goto_11
    if-lt v8, v9, :cond_14

    .line 4744
    return-void

    .line 4737
    :cond_14
    invoke-virtual {v7}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4738
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4739
    check-cast v1, Lcom/anddoes/launcher/ec;

    .line 4740
    if-eqz v1, :cond_30

    .line 4741
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-wide v2, v1, Lcom/anddoes/launcher/ec;->j:J

    iget v5, v1, Lcom/anddoes/launcher/ec;->l:I

    iget v6, v1, Lcom/anddoes/launcher/ec;->m:I

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    .line 4736
    :cond_30
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_11
.end method

.method static synthetic f(Lcom/anddoes/launcher/Workspace;)V
    .registers 1
    .parameter

    .prologue
    .line 2275
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->X()V

    return-void
.end method

.method private f(Lcom/anddoes/launcher/cc;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3348
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Workspace;->i(Lcom/anddoes/launcher/cc;)V

    .line 3351
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    :cond_10
    iput-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->bl:Z

    .line 3353
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_20

    .line 3354
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 3355
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 3357
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    .line 3358
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bd:Lcom/anddoes/launcher/kl;

    iget-object v0, v0, Lcom/anddoes/launcher/kl;->d:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 3360
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aa:Z

    if-nez v0, :cond_31

    .line 3361
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->U()V

    .line 3363
    :cond_31
    return-void
.end method

.method static synthetic g(Lcom/anddoes/launcher/Workspace;)Landroid/app/WallpaperManager;
    .registers 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static g(Lcom/anddoes/launcher/cc;)Z
    .registers 2
    .parameter

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/anddoes/launcher/gn;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/anddoes/launcher/jo;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static synthetic h(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/lv;
    .registers 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bi:Lcom/anddoes/launcher/lv;

    return-object v0
.end method

.method private static h(Lcom/anddoes/launcher/cc;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3729
    invoke-static {p0}, Lcom/anddoes/launcher/Workspace;->g(Lcom/anddoes/launcher/cc;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3730
    iget-object v0, p0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 3731
    iget v3, v0, Lcom/anddoes/launcher/ec;->n:I

    if-ne v3, v1, :cond_16

    iget v0, v0, Lcom/anddoes/launcher/ec;->o:I

    if-ne v0, v1, :cond_16

    move v0, v1

    .line 3733
    :goto_15
    return v0

    :cond_16
    move v0, v2

    .line 3731
    goto :goto_15

    :cond_18
    move v0, v2

    .line 3733
    goto :goto_15
.end method

.method private i(I)V
    .registers 15
    .parameter

    .prologue
    const/4 v4, 0x1

    const v12, 0x3dcccccd

    const/high16 v11, 0x4148

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 1688
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-eqz v0, :cond_e

    .line 1764
    :goto_d
    return-void

    :cond_e
    move v1, v2

    move v3, v2

    .line 1692
    :goto_10
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_69

    .line 1735
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    if-eqz v0, :cond_47

    .line 1736
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->P:I

    if-gez v0, :cond_144

    .line 1737
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1738
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->q(I)F

    move-result v1

    .line 1739
    mul-float v4, v11, v1

    .line 1740
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationY(F)V

    .line 1741
    iget-boolean v4, p0, Lcom/anddoes/launcher/Workspace;->V:Z

    if-eqz v4, :cond_44

    .line 1742
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v6, v1

    .line 1743
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1745
    :cond_44
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1758
    :cond_47
    :goto_47
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_65

    if-nez v3, :cond_65

    .line 1759
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->f()V

    .line 1760
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 1761
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->f()V

    .line 1763
    :cond_65
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    goto :goto_d

    .line 1693
    :cond_69
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 1694
    if-eqz v0, :cond_10f

    .line 1695
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 1696
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->b(Landroid/view/View;)V

    .line 1698
    :cond_7a
    invoke-virtual {p0, p1, v0, v1}, Lcom/anddoes/launcher/Workspace;->a(ILandroid/view/View;I)F

    move-result v8

    .line 1699
    mul-float v7, v11, v8

    .line 1701
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getHeight()I

    move-result v9

    .line 1700
    invoke-direct {p0, v7, v5, v9}, Lcom/anddoes/launcher/Workspace;->a(FII)F

    move-result v9

    .line 1706
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v5

    if-nez v5, :cond_132

    .line 1707
    iget v5, p0, Lcom/anddoes/launcher/Workspace;->P:I

    if-gez v5, :cond_98

    if-eqz v1, :cond_a6

    .line 1708
    :cond_98
    iget v5, p0, Lcom/anddoes/launcher/Workspace;->P:I

    iget v10, p0, Lcom/anddoes/launcher/Workspace;->p:I

    if-le v5, v10, :cond_122

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_122

    .line 1709
    :cond_a6
    iget-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    if-nez v5, :cond_132

    iget-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->ai:Z

    if-eqz v5, :cond_132

    .line 1711
    const/high16 v3, -0x4080

    mul-float v5, v7, v3

    .line 1713
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1712
    iget v7, p0, Lcom/anddoes/launcher/Workspace;->aK:F

    cmpl-float v7, v3, v7

    if-lez v7, :cond_114

    iput v3, p0, Lcom/anddoes/launcher/Workspace;->aK:F

    :cond_be
    :goto_be
    const v7, 0x3da3d70a

    div-float/2addr v3, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->b(F)V

    .line 1714
    iput v1, p0, Lcom/anddoes/launcher/Workspace;->aL:I

    .line 1715
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    if-nez v1, :cond_11d

    move v3, v4

    :goto_d2
    invoke-virtual {v0, v7, v3}, Lcom/anddoes/launcher/CellLayout;->a(FZ)V

    .line 1716
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v7, v3

    .line 1717
    if-nez v1, :cond_11f

    const/high16 v3, 0x3f40

    :goto_de
    mul-float/2addr v3, v7

    .line 1716
    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->setPivotX(F)V

    .line 1718
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->setPivotY(F)V

    .line 1719
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->e()V

    move v3, v5

    move v5, v4

    .line 1726
    :goto_f2
    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    .line 1727
    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 1728
    iget-boolean v3, p0, Lcom/anddoes/launcher/Workspace;->V:Z

    if-eqz v3, :cond_10b

    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v3

    if-nez v3, :cond_10b

    .line 1729
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v6, v3

    .line 1730
    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/CellLayout;->c(F)V

    .line 1732
    :cond_10b
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    move v3, v5

    .line 1692
    :cond_10f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_10

    .line 1712
    :cond_114
    iget v7, p0, Lcom/anddoes/launcher/Workspace;->aK:F

    cmpg-float v7, v3, v7

    if-gez v7, :cond_be

    iget v3, p0, Lcom/anddoes/launcher/Workspace;->aK:F

    goto :goto_be

    :cond_11d
    move v3, v2

    .line 1715
    goto :goto_d2

    .line 1717
    :cond_11f
    const/high16 v3, 0x3e80

    goto :goto_de

    .line 1721
    :cond_122
    iget v5, p0, Lcom/anddoes/launcher/Workspace;->aL:I

    if-eq v5, v1, :cond_132

    .line 1723
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1722
    cmpg-float v10, v5, v12

    if-gez v10, :cond_135

    const/4 v5, 0x0

    :goto_12f
    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/CellLayout;->b(F)V

    :cond_132
    move v5, v3

    move v3, v7

    goto :goto_f2

    :cond_135
    const v10, 0x3ecccccd

    cmpl-float v10, v5, v10

    if-lez v10, :cond_13e

    move v5, v6

    goto :goto_12f

    :cond_13e
    sub-float/2addr v5, v12

    const v10, 0x3e99999a

    div-float/2addr v5, v10

    goto :goto_12f

    .line 1746
    :cond_144
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->P:I

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->p:I

    if-le v0, v1, :cond_47

    .line 1747
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1748
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->r(I)F

    move-result v1

    .line 1749
    mul-float v4, v11, v1

    .line 1750
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationY(F)V

    .line 1751
    iget-boolean v4, p0, Lcom/anddoes/launcher/Workspace;->V:Z

    if-eqz v4, :cond_164

    .line 1752
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v6, v1

    .line 1753
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1755
    :cond_164
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_47
.end method

.method private i(Lcom/anddoes/launcher/cc;)V
    .registers 4
    .parameter

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bC:Lcom/anddoes/launcher/cx;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    if-eqz v0, :cond_d

    .line 3876
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bC:Lcom/anddoes/launcher/cx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/cx;->b()V

    .line 3878
    :cond_d
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 3879
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    instance-of v0, v0, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_22

    .line 3880
    if-eqz p1, :cond_22

    .line 3881
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    iget-object v1, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderIcon;->c(Ljava/lang/Object;)V

    .line 3884
    :cond_22
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bB:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 3885
    return-void
.end method

.method static synthetic i(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bW:[F

    return-object v0
.end method

.method static synthetic j(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bP:[F

    return-object v0
.end method

.method static synthetic k(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bX:[F

    return-object v0
.end method

.method static synthetic l(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bQ:[F

    return-object v0
.end method

.method static synthetic m(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bY:[F

    return-object v0
.end method

.method static synthetic n(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bR:[F

    return-object v0
.end method

.method static synthetic o(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bZ:[F

    return-object v0
.end method

.method static synthetic p(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bS:[F

    return-object v0
.end method

.method static synthetic q(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->ca:[F

    return-object v0
.end method

.method static synthetic r(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bT:[F

    return-object v0
.end method

.method static synthetic s(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->cb:[F

    return-object v0
.end method

.method static synthetic t(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bU:[F

    return-object v0
.end method

.method static synthetic u(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->cc:[F

    return-object v0
.end method

.method static synthetic v(Lcom/anddoes/launcher/Workspace;)V
    .registers 1
    .parameter

    .prologue
    .line 1999
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->V()V

    return-void
.end method

.method static synthetic w(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bV:[F

    return-object v0
.end method

.method static synthetic x(Lcom/anddoes/launcher/Workspace;)[F
    .registers 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->cd:[F

    return-object v0
.end method

.method static synthetic y(Lcom/anddoes/launcher/Workspace;)[I
    .registers 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    return-object v0
.end method

.method static synthetic z(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/bm;
    .registers 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    return-object v0
.end method


# virtual methods
.method public final F()Z
    .registers 3

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->A:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected final I()Z
    .registers 3

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    sget-object v1, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final L()Z
    .registers 3

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->aJ:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->b:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final M()V
    .registers 2

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    .line 2404
    invoke-virtual {v0}, Lcom/anddoes/launcher/DragLayer;->a()V

    .line 2405
    return-void
.end method

.method public final N()Lcom/anddoes/launcher/CellLayout;
    .registers 3

    .prologue
    .line 4167
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    :goto_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    return-object v0

    .line 4168
    :cond_f
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    goto :goto_8
.end method

.method final O()Ljava/util/ArrayList;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 4432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4433
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v4

    move v2, v1

    .line 4434
    :goto_b
    if-lt v2, v4, :cond_22

    .line 4438
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 4439
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v2

    .line 4440
    :goto_1f
    if-lt v1, v2, :cond_33

    .line 4445
    :cond_21
    return-object v3

    .line 4435
    :cond_22
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 4436
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    .line 4435
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4434
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 4441
    :cond_33
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 4442
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    .line 4441
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4440
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f
.end method

.method final P()V
    .registers 7

    .prologue
    .line 4480
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->O()Ljava/util/ArrayList;

    move-result-object v0

    .line 4481
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4490
    return-void

    .line 4481
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/anddoes/launcher/ba;

    .line 4482
    invoke-virtual {v1}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v4

    .line 4483
    const/4 v0, 0x0

    move v2, v0

    :goto_1c
    if-ge v2, v4, :cond_8

    .line 4484
    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4485
    instance-of v5, v0, Lcom/anddoes/launcher/cb;

    if-eqz v5, :cond_2d

    .line 4486
    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    check-cast v0, Lcom/anddoes/launcher/cb;

    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/bm;->b(Lcom/anddoes/launcher/cb;)V

    .line 4483
    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c
.end method

.method final Q()Z
    .registers 3

    .prologue
    .line 4632
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->m:I

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->m:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final a(Ljava/lang/Object;)Lcom/anddoes/launcher/Folder;
    .registers 8
    .parameter

    .prologue
    .line 4449
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->O()Ljava/util/ArrayList;

    move-result-object v0

    .line 4450
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4462
    const/4 v0, 0x0

    :cond_f
    return-object v0

    .line 4450
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/anddoes/launcher/ba;

    .line 4451
    invoke-virtual {v1}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v4

    .line 4452
    const/4 v0, 0x0

    move v2, v0

    :goto_1d
    if-ge v2, v4, :cond_8

    .line 4453
    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4454
    instance-of v5, v0, Lcom/anddoes/launcher/Folder;

    if-eqz v5, :cond_37

    .line 4455
    check-cast v0, Lcom/anddoes/launcher/Folder;

    .line 4456
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->e()Lcom/anddoes/launcher/dd;

    move-result-object v5

    if-ne v5, p1, :cond_37

    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->e()Lcom/anddoes/launcher/dd;

    move-result-object v5

    iget-boolean v5, v5, Lcom/anddoes/launcher/dd;->a:Z

    if-nez v5, :cond_f

    .line 4452
    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d
.end method

.method protected final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 1914
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1915
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->d(F)V

    .line 1919
    :goto_9
    return-void

    .line 1917
    :cond_a
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->c(F)V

    goto :goto_9
.end method

.method public final a(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4677
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 4678
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v4

    move v2, v3

    .line 4680
    :goto_10
    if-lt v2, v4, :cond_3e

    .line 4687
    add-int/lit8 v0, p1, 0x1

    :goto_14
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_55

    .line 4688
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->removeView(Landroid/view/View;)V

    .line 4689
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->n:I

    if-gt v0, v1, :cond_30

    .line 4690
    iput v3, p0, Lcom/anddoes/launcher/Workspace;->n:I

    .line 4691
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->m(I)V

    .line 4693
    :cond_30
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 4694
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/preference/h;->a(I)V

    .line 4695
    return-void

    .line 4681
    :cond_3e
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4682
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4684
    check-cast v1, Lcom/anddoes/launcher/ec;

    .line 4685
    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v5, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/ec;)V

    .line 4680
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_10

    .line 4687
    :cond_55
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/Workspace;->f(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public final a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 4698
    .line 4700
    if-le p1, p2, :cond_4e

    move v0, p1

    move v1, p2

    .line 4705
    :goto_4
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4706
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 4707
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->detachViewFromParent(Landroid/view/View;)V

    .line 4708
    invoke-virtual {p0, v2, p2, v3}, Lcom/anddoes/launcher/Workspace;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4709
    :goto_12
    if-le v1, v0, :cond_34

    .line 4713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4714
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    .line 4715
    const/4 v0, 0x0

    :goto_1e
    if-lt v0, v2, :cond_3a

    .line 4718
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->removeAllViews()V

    .line 4719
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_44

    .line 4722
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->requestLayout()V

    .line 4723
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    .line 4724
    return-void

    .line 4710
    :cond_34
    invoke-direct {p0, v1, v1}, Lcom/anddoes/launcher/Workspace;->f(II)V

    .line 4709
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4716
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 4719
    :cond_44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4720
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->addView(Landroid/view/View;)V

    goto :goto_27

    :cond_4e
    move v0, p2

    move v1, p1

    goto :goto_4
.end method

.method public final a(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4641
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 2367
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 2371
    sget v1, Lcom/anddoes/launcher/do;->a:I

    .line 2374
    invoke-direct {p0, p1, v0, v1}, Lcom/anddoes/launcher/Workspace;->b(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    .line 2375
    return-void
.end method

.method final a(Landroid/view/View;JIIIII)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    .line 663
    return-void
.end method

.method final a(Landroid/view/View;JIIIIIZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    const-wide/16 v0, -0x64

    cmp-long v0, p2, v0

    if-nez v0, :cond_f

    .line 688
    if-ltz p4, :cond_e

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lt p4, v0, :cond_f

    .line 770
    :cond_e
    :goto_e
    return-void

    .line 694
    :cond_f
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_c2

    .line 695
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/anddoes/launcher/Hotseat;->f(I)Lcom/anddoes/launcher/CellLayout;

    move-result-object v1

    .line 696
    if-eqz v1, :cond_e

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 702
    instance-of v0, p1, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_30

    move-object v0, p1

    .line 703
    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/FolderIcon;->a(Z)V

    .line 706
    :cond_30
    rem-int/lit8 v0, p4, 0x64

    .line 707
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Hotseat;->j(I)I

    move-result p5

    .line 708
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Hotseat;->k(I)I

    move-result p6

    move-object v0, v1

    .line 732
    :goto_47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 731
    check-cast v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 733
    if-nez v1, :cond_115

    .line 734
    new-instance v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    invoke-direct {v4, p5, p6, p7, p8}, Lcom/anddoes/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 742
    :goto_54
    if-gez p7, :cond_5b

    if-gez p8, :cond_5b

    .line 743
    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->e:Z

    .line 748
    :cond_5b
    invoke-static {p2, p3, p4, p5, p6}, Lcom/anddoes/launcher/LauncherModel;->a(JIII)I

    move-result v3

    .line 750
    instance-of v1, p1, Lcom/anddoes/launcher/Folder;

    if-eqz v1, :cond_120

    const/4 v5, 0x0

    .line 751
    :goto_64
    if-eqz p9, :cond_123

    const/4 v2, 0x0

    :goto_67
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;IILcom/anddoes/launcher/CellLayout$LayoutParams;Z)Z

    move-result v0

    if-nez v0, :cond_96

    .line 756
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to add to item at ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    const-string v2, ") to CellLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_96
    instance-of v0, p1, Lcom/anddoes/launcher/Folder;

    if-nez v0, :cond_a3

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 762
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->z:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 764
    :cond_a3
    instance-of v0, p1, Lcom/anddoes/launcher/cb;

    if-eqz v0, :cond_af

    .line 765
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    move-object v0, p1

    check-cast v0, Lcom/anddoes/launcher/cb;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/cb;)V

    .line 767
    :cond_af
    instance-of v0, p1, Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_e

    .line 768
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/kj;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/ig;->a(Lcom/anddoes/launcher/kj;)V

    goto/16 :goto_e

    .line 711
    :cond_c2
    instance-of v0, p1, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_e9

    move-object v0, p1

    .line 712
    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    .line 713
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/anddoes/launcher/FolderIcon;

    iget-object v1, v1, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    iget-wide v3, v1, Lcom/anddoes/launcher/dd;->j:J

    invoke-static {v2, v3, v4}, Lcom/anddoes/launcher/ia;->a(Lcom/anddoes/launcher/Launcher;J)Z

    move-result v1

    .line 712
    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderIcon;->a(Z)V

    .line 727
    :cond_d9
    :goto_d9
    invoke-virtual {p0, p4}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 728
    new-instance v1, Lcom/anddoes/launcher/dv;

    invoke-direct {v1}, Lcom/anddoes/launcher/dv;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_47

    .line 714
    :cond_e9
    instance-of v0, p1, Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_d9

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 716
    if-eqz v0, :cond_d9

    .line 717
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1, p2, p3}, Lcom/anddoes/launcher/ia;->a(Lcom/anddoes/launcher/Launcher;J)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 718
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_d9

    move-object v1, p1

    .line 719
    check-cast v1, Lcom/anddoes/launcher/BubbleTextView;

    check-cast v0, Lcom/anddoes/launcher/kj;

    iget-object v0, v0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d9

    :cond_10c
    move-object v0, p1

    .line 722
    check-cast v0, Lcom/anddoes/launcher/BubbleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d9

    .line 736
    :cond_115
    iput p5, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    .line 737
    iput p6, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    .line 738
    iput p7, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    .line 739
    iput p8, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    move-object v4, v1

    goto/16 :goto_54

    .line 750
    :cond_120
    const/4 v5, 0x1

    goto/16 :goto_64

    .line 751
    :cond_123
    const/4 v2, -0x1

    goto/16 :goto_67
.end method

.method public final a(Landroid/view/View;Lcom/anddoes/launcher/bw;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 2866
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2870
    sget v5, Lcom/anddoes/launcher/do;->a:I

    .line 2873
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const v1, 0x1060012

    const-string v6, "outline_color"

    invoke-virtual {v0, v1, v6}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v6

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_bd

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_38
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v2, v5}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;Landroid/graphics/Canvas;I)V

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bm:Lcom/anddoes/launcher/do;

    invoke-virtual {v0, v1, v2, v6}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bq:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2875
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2877
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->bp:[I

    invoke-virtual {v0, p1, v2}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;[I)V

    .line 2878
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bp:[I

    aget v0, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    .line 2879
    div-int/lit8 v2, v2, 0x2

    .line 2878
    add-int/2addr v2, v0

    .line 2880
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bp:[I

    aget v0, v0, v9

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v0, v7

    .line 2884
    instance-of v7, p1, Lcom/anddoes/launcher/BubbleTextView;

    if-nez v7, :cond_77

    instance-of v7, p1, Lcom/anddoes/launcher/PagedViewIcon;

    if-eqz v7, :cond_cf

    .line 2885
    :cond_77
    const v3, 0x7f0c0022

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2887
    const v7, 0x7f0c0015

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2888
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 2889
    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    .line 2890
    add-int v9, v6, v3

    .line 2891
    add-int v10, v8, v3

    .line 2892
    add-int/2addr v0, v8

    .line 2897
    new-instance v3, Landroid/graphics/Point;

    neg-int v7, v5

    div-int/lit8 v7, v7, 0x2

    .line 2898
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 2897
    invoke-direct {v3, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2899
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v3

    move v3, v0

    .line 2907
    :goto_a3
    instance-of v0, p1, Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_ad

    move-object v0, p1

    .line 2908
    check-cast v0, Lcom/anddoes/launcher/BubbleTextView;

    .line 2909
    invoke-virtual {v0}, Lcom/anddoes/launcher/BubbleTextView;->b()V

    .line 2912
    :cond_ad
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    .line 2913
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget v4, Lcom/anddoes/launcher/bm;->a:I

    move-object v4, p2

    .line 2912
    invoke-virtual/range {v0 .. v7}, Lcom/anddoes/launcher/bm;->a(Landroid/graphics/Bitmap;IILcom/anddoes/launcher/bw;Ljava/lang/Object;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2915
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2916
    return-void

    .line 2873
    :cond_bd
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_38

    .line 2900
    :cond_cf
    instance-of v5, p1, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v5, :cond_e6

    .line 2902
    const v5, 0x7f0c003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2903
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct {v7, v8, v8, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v3

    move v3, v0

    goto :goto_a3

    :cond_e6
    move-object v7, v3

    move-object v6, v3

    move v3, v0

    goto :goto_a3
.end method

.method public final a(Landroid/view/View;Lcom/anddoes/launcher/cc;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4219
    if-eqz p3, :cond_4a

    .line 4220
    if-eq p1, p0, :cond_33

    .line 4221
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 4222
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Workspace;->f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 4223
    if-eqz v0, :cond_20

    .line 4224
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v1, v1, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 4226
    :cond_20
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/anddoes/launcher/cb;

    if-eqz v0, :cond_33

    .line 4227
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    check-cast v0, Lcom/anddoes/launcher/cb;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/bm;->b(Lcom/anddoes/launcher/cb;)V

    .line 4246
    :cond_33
    :goto_33
    iget-boolean v0, p2, Lcom/anddoes/launcher/cc;->j:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    if-eqz v0, :cond_45

    .line 4247
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4249
    :cond_45
    iput-object v2, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    .line 4250
    iput-object v2, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    .line 4251
    return-void

    .line 4231
    :cond_4a
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v0, :cond_33

    .line 4237
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Workspace;->f(Lcom/anddoes/launcher/cc;)V

    .line 4239
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 4240
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->e()Lcom/anddoes/launcher/CellLayout;

    .line 4244
    :goto_62
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;)V

    goto :goto_33

    .line 4242
    :cond_6a
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v0, v0, Lcom/anddoes/launcher/az;->f:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    goto :goto_62
.end method

.method public final a(Lcom/anddoes/launcher/CellLayout;)V
    .registers 4
    .parameter

    .prologue
    .line 4132
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-eqz v0, :cond_49

    .line 4133
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4134
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->bK:F

    .line 4135
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->bL:F

    .line 4136
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->bN:F

    .line 4137
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->bO:F

    .line 4138
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->bM:F

    .line 4139
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bY:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/anddoes/launcher/CellLayout;->setScaleX(F)V

    .line 4140
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bZ:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/anddoes/launcher/CellLayout;->setScaleY(F)V

    .line 4141
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bW:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    .line 4142
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bX:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/anddoes/launcher/CellLayout;->setTranslationY(F)V

    .line 4143
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->cd:[F

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 4145
    :cond_49
    return-void
.end method

.method final a(Lcom/anddoes/launcher/az;)V
    .registers 5
    .parameter

    .prologue
    .line 2835
    iget-object v1, p1, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    .line 2839
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2863
    :goto_8
    return-void

    .line 2843
    :cond_9
    iput-object p1, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    .line 2844
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2846
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2847
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2849
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->ak:Z

    if-eqz v0, :cond_2a

    .line 2850
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 2851
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/ec;Landroid/view/View;)V

    .line 2854
    :cond_2a
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 2858
    sget v2, Lcom/anddoes/launcher/do;->a:I

    .line 2861
    invoke-direct {p0, v1, v0, v2}, Lcom/anddoes/launcher/Workspace;->b(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    .line 2862
    invoke-virtual {p0, v1, p0}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;Lcom/anddoes/launcher/bw;)V

    goto :goto_8
.end method

.method final a(Lcom/anddoes/launcher/bm;)V
    .registers 4
    .parameter

    .prologue
    .line 4203
    new-instance v0, Lcom/anddoes/launcher/kl;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/kl;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->bd:Lcom/anddoes/launcher/kl;

    .line 4204
    iput-object p1, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    .line 4209
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->X()V

    .line 4210
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bA:Z

    if-nez v0, :cond_16

    .line 4211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->f(Z)V

    .line 4213
    :cond_16
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->av:Z

    .line 519
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->X()V

    .line 520
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->P()V

    .line 521
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/cc;)V
    .registers 24
    .parameter

    .prologue
    .line 3123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->j()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3288
    :cond_a
    :goto_a
    return-void

    .line 3126
    :cond_b
    move-object/from16 v0, p1

    iget v3, v0, Lcom/anddoes/launcher/cc;->a:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/anddoes/launcher/cc;->b:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/anddoes/launcher/cc;->c:I

    .line 3127
    move-object/from16 v0, p1

    iget v6, v0, Lcom/anddoes/launcher/cc;->d:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    move-object/from16 v2, p0

    .line 3126
    invoke-direct/range {v2 .. v8}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/bx;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 3130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v2, :cond_50

    .line 3131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 3132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v2

    .line 3133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 3132
    invoke-static {v2, v3}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;[F)V

    .line 3140
    :cond_50
    :goto_50
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3142
    const/4 v15, -0x1

    .line 3143
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_91

    .line 3144
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 3145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    .line 3146
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v3, v6, v1}, Lcom/anddoes/launcher/Workspace;->a([ILjava/lang/Object;Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/cc;)V

    goto :goto_a

    .line 3135
    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    const/4 v4, 0x0

    .line 3135
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_50

    .line 3147
    :cond_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v2, v2, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 3148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v11, v2, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    .line 3149
    if-eqz v6, :cond_34c

    .line 3151
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/anddoes/launcher/Workspace;->f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v2

    if-eq v2, v6, :cond_307

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 3152
    :goto_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2, v6}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v16

    .line 3153
    if-eqz v16, :cond_30c

    const/16 v2, -0x65

    :goto_be
    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 3155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gez v2, :cond_310

    .line 3157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v14, v2, Lcom/anddoes/launcher/az;->f:I

    .line 3166
    :goto_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v2, :cond_336

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v4, v2, Lcom/anddoes/launcher/az;->d:I

    .line 3167
    :goto_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v2, :cond_339

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v5, v2, Lcom/anddoes/launcher/az;->e:I

    .line 3171
    :goto_e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    .line 3172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    const/4 v7, 0x1

    aget v3, v3, v7

    float-to-int v3, v3

    .line 3173
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 3171
    invoke-static/range {v2 .. v7}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 3177
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/anddoes/launcher/Workspace;->bl:Z

    if-nez v2, :cond_11f

    .line 3179
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v8, 0x0

    .line 3180
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object v3, v11

    move-wide/from16 v4, v20

    .line 3178
    invoke-virtual/range {v2 .. v10}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JLcom/anddoes/launcher/CellLayout;[IZLcom/anddoes/launcher/bx;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3185
    :cond_11f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v3, 0x0

    .line 3184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v2, v1, v3}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;[ILcom/anddoes/launcher/cc;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v7, v2

    .line 3194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aY:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v9, v2, Lcom/anddoes/launcher/az;->d:I

    .line 3195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v10, v2, Lcom/anddoes/launcher/az;->e:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    move-object v12, v6

    .line 3192
    invoke-static/range {v7 .. v13}, Lcom/anddoes/launcher/Workspace;->a(IIIILandroid/view/View;Lcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 3197
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/Workspace;->n:I

    if-eq v2, v14, :cond_349

    if-nez v16, :cond_349

    .line 3199
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/anddoes/launcher/Workspace;->s(I)V

    move v9, v14

    .line 3202
    :goto_165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_26d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_26d

    .line 3203
    if-eqz v19, :cond_1a7

    .line 3205
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/anddoes/launcher/Workspace;->f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v3, 0x0

    aget v15, v2, v3

    .line 3207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v3, 0x1

    aget v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v0, v2, Lcom/anddoes/launcher/az;->d:I

    move/from16 v17, v0

    .line 3208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v0, v2, Lcom/anddoes/launcher/az;->e:I

    move/from16 v18, v0

    move-object/from16 v10, p0

    move-wide/from16 v12, v20

    .line 3206
    invoke-virtual/range {v10 .. v18}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIII)V

    .line 3212
    :cond_1a7
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anddoes/launcher/ec;

    .line 3214
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    .line 3213
    check-cast v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 3215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    .line 3216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    .line 3215
    invoke-virtual {v6, v11, v2, v5}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;II)V

    .line 3217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    iput v2, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    .line 3218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    iput v2, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    .line 3220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v2, v2, Lcom/anddoes/launcher/az;->f:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 3221
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v8, v8, Lcom/anddoes/launcher/az;->d:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v8, v8, Lcom/anddoes/launcher/az;->e:I

    .line 3219
    move-wide/from16 v0, v20

    invoke-static {v0, v1, v2, v5, v7}, Lcom/anddoes/launcher/LauncherModel;->a(JIII)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setId(I)V

    .line 3223
    const-wide/16 v7, -0x65

    cmp-long v2, v20, v7

    if-eqz v2, :cond_25f

    .line 3224
    instance-of v2, v11, Lcom/anddoes/launcher/gl;

    if-eqz v2, :cond_25f

    .line 3225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v2, v2, Lcom/anddoes/launcher/preference/f;->ak:Z

    if-nez v2, :cond_25f

    move-object v2, v11

    .line 3231
    check-cast v2, Lcom/anddoes/launcher/gl;

    .line 3232
    invoke-virtual {v2}, Lcom/anddoes/launcher/gl;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    .line 3233
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v8, v8, Lcom/anddoes/launcher/az;->b:I

    if-ne v5, v8, :cond_33c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v8, v8, Lcom/anddoes/launcher/az;->c:I

    if-ne v5, v8, :cond_33c

    const/4 v5, 0x0

    .line 3235
    :goto_23a
    iget v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-nez v7, :cond_248

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v7, v7, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v7, v7, Lcom/anddoes/launcher/preference/f;->aQ:Z

    if-eqz v7, :cond_25f

    .line 3236
    :cond_248
    if-nez v5, :cond_25f

    if-nez v19, :cond_25f

    .line 3237
    new-instance v5, Lcom/anddoes/launcher/ls;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v2, v6}, Lcom/anddoes/launcher/ls;-><init>(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/gl;Lcom/anddoes/launcher/CellLayout;)V

    .line 3243
    new-instance v2, Lcom/anddoes/launcher/lg;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/anddoes/launcher/lg;-><init>(Lcom/anddoes/launcher/Workspace;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3256
    :cond_25f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 3257
    iget v7, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v8, v4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    move-wide/from16 v4, v20

    move v6, v14

    .line 3256
    invoke-static/range {v2 .. v8}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    .line 3261
    :cond_26d
    :goto_26d
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3264
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 3268
    new-instance v4, Lcom/anddoes/launcher/lh;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/anddoes/launcher/lh;-><init>(Lcom/anddoes/launcher/Workspace;)V

    .line 3275
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/anddoes/launcher/Workspace;->e:Z

    .line 3276
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v2}, Lcom/anddoes/launcher/bx;->c()Z

    move-result v2

    if-eqz v2, :cond_344

    .line 3277
    if-gez v9, :cond_33f

    const/4 v2, -0x1

    move v3, v2

    .line 3279
    :goto_296
    if-ltz v9, :cond_2d2

    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->getScrollX()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/anddoes/launcher/Workspace;->bH:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getTranslationX()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/anddoes/launcher/Workspace;->bJ:F

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getRotationY()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/anddoes/launcher/Workspace;->bI:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Workspace;->o(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Workspace;->p(I)I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/Workspace;->setScrollX(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 3280
    :cond_2d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v2, v5, v11, v3, v4}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/bx;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 3282
    if-ltz v9, :cond_302

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/CellLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/anddoes/launcher/Workspace;->bH:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/Workspace;->setScrollX(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/anddoes/launcher/Workspace;->bJ:F

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/anddoes/launcher/Workspace;->bI:F

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 3286
    :cond_302
    :goto_302
    invoke-static {v11}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;)V

    goto/16 :goto_a

    .line 3151
    :cond_307
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_b2

    .line 3154
    :cond_30c
    const/16 v2, -0x64

    goto/16 :goto_be

    .line 3159
    :cond_310
    if-eqz v16, :cond_32e

    .line 3160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->aR:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v6, v3, v4}, Lcom/anddoes/launcher/Hotseat;->a(Lcom/anddoes/launcher/CellLayout;II)I

    move-result v14

    goto/16 :goto_d0

    .line 3162
    :cond_32e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v14

    goto/16 :goto_d0

    .line 3166
    :cond_336
    const/4 v4, 0x1

    goto/16 :goto_dc

    .line 3167
    :cond_339
    const/4 v5, 0x1

    goto/16 :goto_e8

    .line 3233
    :cond_33c
    const/4 v5, 0x1

    goto/16 :goto_23a

    .line 3278
    :cond_33f
    const/16 v2, 0x12c

    move v3, v2

    goto/16 :goto_296

    .line 3284
    :cond_344
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_302

    :cond_349
    move v9, v15

    goto/16 :goto_165

    :cond_34c
    move v9, v15

    goto/16 :goto_26d
.end method

.method public final a(Lcom/anddoes/launcher/jn;Landroid/graphics/Bitmap;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2379
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 2383
    sget v1, Lcom/anddoes/launcher/do;->a:I

    .line 2385
    iget v2, p1, Lcom/anddoes/launcher/jn;->n:I

    iget v3, p1, Lcom/anddoes/launcher/jn;->o:I

    invoke-virtual {p0, v2, v3, p1, v9}, Lcom/anddoes/launcher/Workspace;->a(IILcom/anddoes/launcher/jn;Z)[I

    move-result-object v2

    .line 2388
    aget v3, v2, v9

    .line 2389
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 2388
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const v5, 0x1060012

    const-string v6, "outline_color"

    invoke-virtual {v4, v5, v6}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v7, v3, v1

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v1, v8

    float-to-int v1, v1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, p2, v6, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bm:Lcom/anddoes/launcher/do;

    invoke-virtual {v1, v5, v0, v4, v4}, Lcom/anddoes/launcher/do;->b(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    .line 2390
    return-void
.end method

.method final a(Lcom/anddoes/launcher/kj;Lcom/anddoes/launcher/CellLayout;JIZII)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2921
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2, p2, p1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/ViewGroup;Lcom/anddoes/launcher/kj;)Landroid/view/View;

    move-result-object v3

    .line 2924
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 2925
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p2, v12, v0, v1}, Lcom/anddoes/launcher/CellLayout;->b([III)Z

    .line 2927
    const/4 v2, 0x0

    aget v7, v12, v2

    const/4 v2, 0x1

    aget v8, v12, v2

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    .line 2929
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 2930
    const/4 v3, 0x0

    aget v7, v12, v3

    const/4 v3, 0x1

    aget v8, v12, v3

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    .line 2929
    invoke-static/range {v2 .. v8}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    .line 2931
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/lv;)V
    .registers 4
    .parameter

    .prologue
    .line 2430
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/lv;ZI)V

    .line 2431
    return-void
.end method

.method final a(Lcom/anddoes/launcher/lv;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/lv;ZI)V

    .line 2435
    return-void
.end method

.method final a(Lcom/anddoes/launcher/lv;ZI)V
    .registers 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_9

    .line 2672
    :goto_8
    return-void

    .line 2443
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/anddoes/launcher/Workspace;->l:Z

    if-eqz v2, :cond_26

    .line 2444
    sget-object v2, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1a

    .line 2445
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/anddoes/launcher/Workspace;->cA:Z

    .line 2449
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/anddoes/launcher/Workspace;->bh:Z

    .line 2450
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/anddoes/launcher/Workspace;->bi:Lcom/anddoes/launcher/lv;

    goto :goto_8

    .line 2455
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->aB:[F

    if-nez v3, :cond_90

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->aB:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bP:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bQ:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bR:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bS:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bT:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bU:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bV:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bW:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bX:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bY:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->bZ:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->ca:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->cb:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/Workspace;->cc:[F

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anddoes/launcher/Workspace;->cd:[F

    .line 2458
    :cond_90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_9d

    .line 2459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2461
    :cond_9d
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    .line 2464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/Workspace;->o:I

    const/16 v3, -0x3e7

    if-eq v2, v3, :cond_1bf

    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/Workspace;->o:I

    :goto_b2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Workspace;->m(I)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    .line 2467
    sget-object v2, Lcom/anddoes/launcher/lv;->a:Lcom/anddoes/launcher/lv;

    if-ne v4, v2, :cond_1c5

    const/4 v2, 0x1

    move v3, v2

    .line 2468
    :goto_c1
    sget-object v2, Lcom/anddoes/launcher/lv;->c:Lcom/anddoes/launcher/lv;

    if-ne v4, v2, :cond_1c9

    const/4 v2, 0x1

    move v4, v2

    .line 2469
    :goto_c7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    .line 2470
    sget-object v2, Lcom/anddoes/launcher/lv;->a:Lcom/anddoes/launcher/lv;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1cd

    const/4 v2, 0x1

    move v5, v2

    .line 2471
    :goto_d5
    sget-object v2, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1d1

    const/4 v2, 0x1

    move v6, v2

    .line 2472
    :goto_dd
    sget-object v2, Lcom/anddoes/launcher/lv;->c:Lcom/anddoes/launcher/lv;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1d5

    const/4 v2, 0x1

    move/from16 v17, v2

    .line 2473
    :goto_e6
    const/high16 v9, 0x3f80

    .line 2474
    if-eqz v6, :cond_1da

    const/high16 v2, 0x3f80

    .line 2475
    :goto_ec
    const/4 v8, 0x0

    .line 2476
    const/4 v7, 0x1

    .line 2479
    sget-object v10, Lcom/anddoes/launcher/lv;->a:Lcom/anddoes/launcher/lv;

    move-object/from16 v0, p1

    if-eq v0, v10, :cond_1ed

    .line 2480
    move-object/from16 v0, p0

    iget v10, v0, Lcom/anddoes/launcher/Workspace;->be:F

    .line 2481
    if-eqz v17, :cond_1dd

    const v9, 0x3dcccccd

    .line 2480
    :goto_fd
    sub-float v9, v10, v9

    .line 2482
    if-eqz v3, :cond_1e0

    if-eqz v17, :cond_1e0

    .line 2483
    const/4 v7, 0x0

    .line 2484
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Workspace;->b(F)V

    .line 2485
    invoke-direct/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->X()V

    move v14, v7

    move v15, v2

    move/from16 v16, v9

    .line 2494
    :goto_110
    if-eqz v14, :cond_1fa

    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2495
    const v7, 0x7f0b0004

    .line 2494
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v7, v2

    .line 2497
    :goto_11e
    const/4 v2, 0x0

    move v9, v8

    move v8, v2

    :goto_121
    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    if-lt v8, v2, :cond_208

    .line 2583
    if-eqz p2, :cond_1a4

    .line 2584
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_356

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2585
    int-to-long v8, v7

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2587
    if-eqz v14, :cond_141

    .line 2588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->cz:Lcom/anddoes/launcher/lx;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2591
    :cond_141
    new-instance v3, Lcom/anddoes/launcher/lp;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v4}, Lcom/anddoes/launcher/lp;-><init>(Lcom/anddoes/launcher/Workspace;ZZ)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2610
    new-instance v3, Lcom/anddoes/launcher/lq;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/anddoes/launcher/lq;-><init>(Lcom/anddoes/launcher/Workspace;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2636
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_35e

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v4, v7

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2637
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x4000

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2638
    new-instance v4, Lcom/anddoes/launcher/lr;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/anddoes/launcher/lr;-><init>(Lcom/anddoes/launcher/Workspace;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    move/from16 v0, p3

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Workspace;->bk:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Workspace;->bj:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2661
    :cond_1a4
    if-eqz v6, :cond_34c

    .line 2665
    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2666
    const/high16 v3, 0x7f0b

    .line 2665
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    .line 2666
    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 2665
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/anddoes/launcher/Workspace;->a(FZ)V

    .line 2671
    :goto_1ba
    invoke-direct/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->V()V

    goto/16 :goto_8

    .line 2464
    :cond_1bf
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anddoes/launcher/Workspace;->n:I

    goto/16 :goto_b2

    .line 2467
    :cond_1c5
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_c1

    .line 2468
    :cond_1c9
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_c7

    .line 2470
    :cond_1cd
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_d5

    .line 2471
    :cond_1d1
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_dd

    .line 2472
    :cond_1d5
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_e6

    .line 2474
    :cond_1da
    const/4 v2, 0x0

    goto/16 :goto_ec

    .line 2481
    :cond_1dd
    const/4 v9, 0x0

    goto/16 :goto_fd

    .line 2487
    :cond_1e0
    const/high16 v2, 0x3f80

    .line 2488
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Workspace;->b(F)V

    move v14, v7

    move v15, v2

    move/from16 v16, v9

    goto/16 :goto_110

    .line 2491
    :cond_1ed
    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/anddoes/launcher/Workspace;->b(F)V

    move v14, v7

    move v15, v2

    move/from16 v16, v9

    goto/16 :goto_110

    .line 2495
    :cond_1fa
    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2496
    const v7, 0x7f0b0010

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v7, v2

    goto/16 :goto_11e

    .line 2498
    :cond_208
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/CellLayout;

    .line 2499
    if-eqz v3, :cond_219

    if-eqz v17, :cond_219

    .line 2500
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Workspace;->b(Landroid/view/View;)V

    .line 2502
    :cond_219
    const/4 v13, 0x0

    .line 2503
    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getAlpha()F

    move-result v12

    .line 2504
    const/high16 v11, 0x3f80

    .line 2505
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/anddoes/launcher/Workspace;->V:Z

    if-eqz v10, :cond_22e

    if-nez v6, :cond_22e

    move-object/from16 v0, p0

    iget v10, v0, Lcom/anddoes/launcher/Workspace;->n:I

    if-ne v8, v10, :cond_311

    :cond_22e
    const/high16 v10, 0x3f80

    .line 2508
    :goto_230
    if-eqz v4, :cond_234

    if-nez v5, :cond_238

    .line 2509
    :cond_234
    if-eqz v3, :cond_243

    if-eqz v17, :cond_243

    .line 2513
    :cond_238
    move-object/from16 v0, p0

    iget v10, v0, Lcom/anddoes/launcher/Workspace;->n:I

    if-eq v8, v10, :cond_240

    if-nez p2, :cond_314

    .line 2514
    :cond_240
    const/high16 v10, 0x3f80

    .line 2515
    const/4 v11, 0x0

    .line 2521
    :cond_243
    :goto_243
    sget-object v18, Lcom/anddoes/launcher/lv;->a:Lcom/anddoes/launcher/lv;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_24d

    .line 2522
    const/high16 v11, 0x3f80

    .line 2527
    :cond_24d
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v18

    if-eqz v18, :cond_25f

    .line 2528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/anddoes/launcher/Workspace;->n:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_318

    .line 2529
    const/high16 v13, 0x4148

    .line 2539
    :cond_25f
    :goto_25f
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v18

    if-eqz v18, :cond_275

    .line 2540
    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getWidth()I

    move-result v9

    .line 2541
    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getHeight()I

    move-result v18

    .line 2540
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v13, v9, v1}, Lcom/anddoes/launcher/Workspace;->a(FII)F

    move-result v9

    .line 2544
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anddoes/launcher/Workspace;->bU:[F

    move-object/from16 v18, v0

    aput v12, v18, v8

    .line 2545
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/anddoes/launcher/Workspace;->cc:[F

    aput v10, v12, v8

    .line 2546
    if-eqz p2, :cond_326

    .line 2547
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->aB:[F

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getTranslationX()F

    move-result v12

    aput v12, v10, v8

    .line 2548
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bP:[F

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getTranslationY()F

    move-result v12

    aput v12, v10, v8

    .line 2549
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bQ:[F

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getScaleX()F

    move-result v12

    aput v12, v10, v8

    .line 2550
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bR:[F

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getScaleY()F

    move-result v12

    aput v12, v10, v8

    .line 2551
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bS:[F

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getBackgroundAlpha()F

    move-result v12

    aput v12, v10, v8

    .line 2552
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bT:[F

    .line 2553
    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->p()F

    move-result v12

    .line 2552
    aput v12, v10, v8

    .line 2554
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bV:[F

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->getRotationY()F

    move-result v12

    aput v12, v10, v8

    .line 2556
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bW:[F

    aput v9, v10, v8

    .line 2557
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bX:[F

    const/4 v12, 0x0

    aput v12, v10, v8

    .line 2558
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bY:[F

    aput v16, v10, v8

    .line 2559
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bZ:[F

    aput v16, v10, v8

    .line 2560
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->ca:[F

    aput v15, v10, v8

    .line 2561
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->cb:[F

    aput v11, v10, v8

    .line 2562
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->cd:[F

    aput v13, v10, v8

    .line 2574
    :goto_2f6
    if-eqz v4, :cond_30c

    if-eqz v5, :cond_30c

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/anddoes/launcher/Workspace;->V:Z

    if-eqz v10, :cond_30c

    .line 2575
    const/4 v10, 0x0

    .line 2576
    move-object/from16 v0, p0

    iget v11, v0, Lcom/anddoes/launcher/Workspace;->n:I

    if-ne v8, v11, :cond_309

    .line 2577
    const/high16 v10, 0x3f80

    .line 2579
    :cond_309
    invoke-virtual {v2, v10}, Lcom/anddoes/launcher/CellLayout;->setAlpha(F)V

    .line 2497
    :cond_30c
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_121

    .line 2505
    :cond_311
    const/4 v10, 0x0

    goto/16 :goto_230

    .line 2517
    :cond_314
    const/4 v12, 0x0

    .line 2518
    const/4 v10, 0x0

    goto/16 :goto_243

    .line 2530
    :cond_318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/anddoes/launcher/Workspace;->n:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v8, v0, :cond_25f

    .line 2531
    const/high16 v13, -0x3eb8

    goto/16 :goto_25f

    .line 2564
    :cond_326
    invoke-virtual {v2, v9}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    .line 2565
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/anddoes/launcher/CellLayout;->setTranslationY(F)V

    .line 2566
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/CellLayout;->setScaleX(F)V

    .line 2567
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/CellLayout;->setScaleY(F)V

    .line 2568
    invoke-virtual {v2, v15}, Lcom/anddoes/launcher/CellLayout;->setBackgroundAlpha(F)V

    .line 2569
    invoke-virtual {v2, v11}, Lcom/anddoes/launcher/CellLayout;->b(F)V

    .line 2570
    invoke-virtual {v2, v10}, Lcom/anddoes/launcher/CellLayout;->setAlpha(F)V

    .line 2571
    invoke-virtual {v2, v13}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/Workspace;->bk:Landroid/animation/Animator$AnimatorListener;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2f6

    .line 2669
    :cond_34c
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/anddoes/launcher/Workspace;->a(FZ)V

    goto/16 :goto_1ba

    .line 2584
    nop

    :array_356
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2636
    :array_35e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method final a(Ljava/util/ArrayList;)V
    .registers 9
    .parameter

    .prologue
    .line 4494
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 4496
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4497
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4498
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-lt v1, v2, :cond_24

    .line 4502
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->Z()Ljava/util/ArrayList;

    move-result-object v0

    .line 4503
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 4597
    return-void

    .line 4499
    :cond_24
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    iget-object v0, v0, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4498
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 4503
    :cond_37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anddoes/launcher/CellLayout;

    .line 4504
    invoke-virtual {v5}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v2

    .line 4507
    new-instance v0, Lcom/anddoes/launcher/lk;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/lk;-><init>(Lcom/anddoes/launcher/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/anddoes/launcher/CellLayout;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d
.end method

.method public final a([I)V
    .registers 3
    .parameter

    .prologue
    .line 4652
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;[I)V

    .line 4653
    return-void
.end method

.method protected final a(FF)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 804
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    const/16 v2, -0x3e7

    if-ne v0, v2, :cond_19

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    .line 808
    :goto_9
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/anddoes/launcher/Workspace;->a(IFFZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_18
    return v0

    .line 804
    :cond_19
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    goto :goto_9

    .line 808
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final a(III)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4295
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4351
    :cond_a
    :goto_a
    return v2

    .line 4299
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->m:Z

    if-nez v0, :cond_94

    .line 4300
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4301
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 4302
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_94

    move v0, v1

    .line 4309
    :goto_2e
    iput-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->cq:Z

    .line 4310
    if-eqz v0, :cond_5a

    .line 4311
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/anddoes/launcher/Hotseat;->i(I)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 4312
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->Y()V

    .line 4313
    if-eqz v0, :cond_a

    .line 4315
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v3, :cond_4f

    .line 4316
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3, v2}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 4317
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 4319
    :cond_4f
    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 4320
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 4321
    iput-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->cq:Z

    move v2, v1

    .line 4322
    goto :goto_a

    .line 4325
    :cond_5a
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_a

    .line 4326
    iput-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->bl:Z

    .line 4328
    iget v3, p0, Lcom/anddoes/launcher/Workspace;->n:I

    .line 4329
    if-nez p3, :cond_92

    const/4 v0, -0x1

    .line 4328
    :goto_6b
    add-int/2addr v0, v3

    .line 4330
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 4331
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->Y()V

    .line 4333
    if-eqz v0, :cond_a

    .line 4335
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v3, :cond_85

    .line 4336
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3, v2}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 4337
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 4339
    :cond_85
    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 4340
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 4346
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    move v2, v1

    .line 4347
    goto/16 :goto_a

    :cond_92
    move v0, v1

    .line 4329
    goto :goto_6b

    :cond_94
    move v0, v2

    goto :goto_2e
.end method

.method final a(Landroid/view/View;JLcom/anddoes/launcher/CellLayout;[IZLcom/anddoes/launcher/bx;Ljava/lang/Runnable;)Z
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3048
    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v10

    .line 3049
    const/4 v1, 0x0

    .line 3050
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v2, :cond_30

    .line 3051
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v1, v1, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Workspace;->f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v1

    .line 3052
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v2, v2, Lcom/anddoes/launcher/az;->b:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_3a

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v2, v2, Lcom/anddoes/launcher/az;->c:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_3a

    .line 3053
    move-object/from16 v0, p4

    if-ne v1, v0, :cond_3a

    const/4 v1, 0x1

    .line 3056
    :cond_30
    :goto_30
    if-eqz v10, :cond_38

    if-nez v1, :cond_38

    iget-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    if-nez v1, :cond_3c

    .line 3057
    :cond_38
    const/4 v1, 0x0

    .line 3099
    :goto_39
    return v1

    .line 3053
    :cond_3a
    const/4 v1, 0x0

    goto :goto_30

    .line 3059
    :cond_3c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    .line 3060
    if-nez p5, :cond_b6

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget v5, v1, Lcom/anddoes/launcher/az;->f:I

    .line 3064
    :goto_45
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anddoes/launcher/kj;

    .line 3065
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/anddoes/launcher/kj;

    .line 3067
    if-eqz v1, :cond_e5

    if-eqz v2, :cond_e5

    .line 3068
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/anddoes/launcher/kj;

    .line 3069
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/anddoes/launcher/kj;

    .line 3071
    if-nez p6, :cond_74

    .line 3072
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v1, v1, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Workspace;->f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v1

    .line 3073
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v2, v2, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    .line 3072
    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3076
    :cond_74
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 3077
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v1

    .line 3078
    invoke-virtual {v1, v10, v11}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v12

    .line 3079
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3081
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 3082
    const/4 v2, 0x0

    aget v6, p5, v2

    const/4 v2, 0x1

    aget v7, p5, v2

    move-object/from16 v2, p4

    move-wide v3, p2

    .line 3081
    invoke-virtual/range {v1 .. v7}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/CellLayout;JIII)Lcom/anddoes/launcher/FolderIcon;

    move-result-object v1

    .line 3083
    const/4 v2, -0x1

    iput v2, v9, Lcom/anddoes/launcher/kj;->l:I

    .line 3084
    const/4 v2, -0x1

    iput v2, v9, Lcom/anddoes/launcher/kj;->m:I

    .line 3085
    const/4 v2, -0x1

    iput v2, v8, Lcom/anddoes/launcher/kj;->l:I

    .line 3086
    const/4 v2, -0x1

    iput v2, v8, Lcom/anddoes/launcher/kj;->m:I

    .line 3089
    if-eqz p7, :cond_dc

    const/4 v2, 0x1

    .line 3090
    :goto_a6
    if-eqz v2, :cond_de

    move-object v2, v9

    move-object v3, v10

    move-object v4, v8

    move-object/from16 v5, p7

    move-object v6, v11

    move v7, v12

    move-object/from16 v8, p8

    .line 3091
    invoke-virtual/range {v1 .. v8}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/kj;Landroid/view/View;Lcom/anddoes/launcher/kj;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 3097
    :goto_b4
    const/4 v1, 0x1

    goto :goto_39

    .line 3060
    :cond_b6
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 3061
    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v1

    .line 3062
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    .line 3061
    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/anddoes/launcher/Hotseat;->a(Lcom/anddoes/launcher/CellLayout;II)I

    move-result v5

    goto/16 :goto_45

    .line 3062
    :cond_d4
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    goto/16 :goto_45

    .line 3089
    :cond_dc
    const/4 v2, 0x0

    goto :goto_a6

    .line 3094
    :cond_de
    invoke-virtual {v1, v9}, Lcom/anddoes/launcher/FolderIcon;->c(Lcom/anddoes/launcher/ec;)V

    .line 3095
    invoke-virtual {v1, v8}, Lcom/anddoes/launcher/FolderIcon;->c(Lcom/anddoes/launcher/ec;)V

    goto :goto_b4

    .line 3099
    :cond_e5
    const/4 v1, 0x0

    goto/16 :goto_39
.end method

.method final a(Lcom/anddoes/launcher/CellLayout;[ILcom/anddoes/launcher/cc;Z)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3104
    aget v0, p2, v2

    aget v3, p2, v1

    invoke-virtual {p1, v0, v3}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v0

    .line 3105
    instance-of v3, v0, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v3, :cond_2e

    .line 3106
    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    .line 3107
    iget-object v3, p3, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/FolderIcon;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3108
    invoke-virtual {v0, p3}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/cc;)V

    .line 3112
    if-nez p4, :cond_2c

    .line 3113
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Workspace;->f(Landroid/view/View;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3114
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v2, v2, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    .line 3113
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2c
    move v0, v1

    .line 3119
    :goto_2d
    return v0

    :cond_2e
    move v0, v2

    goto :goto_2d
.end method

.method public final a(IILcom/anddoes/launcher/jn;Z)[I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7fffffff

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 471
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 472
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_47

    .line 473
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout;

    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 474
    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/ec;IIII)Landroid/graphics/RectF;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    aput v1, v7, v3

    .line 477
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    aput v0, v7, v8

    .line 478
    if-eqz p4, :cond_45

    .line 479
    aget v0, v7, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->be:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, v7, v3

    .line 480
    aget v0, v7, v8

    int-to-float v0, v0

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->be:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, v7, v8

    :cond_45
    move-object v0, v7

    .line 486
    :goto_46
    return-object v0

    .line 484
    :cond_47
    aput v1, v7, v3

    .line 485
    aput v1, v7, v8

    move-object v0, v7

    .line 486
    goto :goto_46
.end method

.method protected final a_(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    const v5, 0x3f060a92

    .line 1031
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_32

    .line 1032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1033
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1034
    iget v2, p0, Lcom/anddoes/launcher/Workspace;->bF:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1035
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bG:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1037
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->af:Z

    if-eqz v0, :cond_33

    .line 1038
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_39

    .line 1098
    :cond_32
    :goto_32
    return-void

    .line 1042
    :cond_33
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_32

    .line 1047
    :cond_39
    div-float v0, v1, v2

    .line 1048
    iget-boolean v3, p0, Lcom/anddoes/launcher/Workspace;->af:Z

    if-eqz v3, :cond_41

    .line 1049
    div-float v0, v2, v1

    .line 1051
    :cond_41
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 1053
    iget v3, p0, Lcom/anddoes/launcher/Workspace;->B:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_55

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->B:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_58

    .line 1054
    :cond_55
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->C()V

    .line 1057
    :cond_58
    const v1, 0x3f860a92

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_32

    .line 1080
    cmpl-float v1, v0, v5

    if-lez v1, :cond_73

    .line 1088
    sub-float/2addr v0, v5

    .line 1089
    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1090
    const/high16 v1, 0x4080

    .line 1091
    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    .line 1090
    invoke-super {p0, p1, v0, v7}, Lcom/anddoes/launcher/SmoothPagedView;->a(Landroid/view/MotionEvent;FZ)V

    goto :goto_32

    .line 1095
    :cond_73
    invoke-super {p0, p1, v6, v7}, Lcom/anddoes/launcher/SmoothPagedView;->a(Landroid/view/MotionEvent;FZ)V

    goto :goto_32
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->E()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2230
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v0

    .line 2231
    if-eqz v0, :cond_12

    .line 2232
    invoke-virtual {v0, p1, p2}, Lcom/anddoes/launcher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2237
    :cond_11
    :goto_11
    return-void

    .line 2234
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/anddoes/launcher/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_11
.end method

.method public final b(Ljava/lang/Object;)Landroid/view/View;
    .registers 8
    .parameter

    .prologue
    .line 4466
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->O()Ljava/util/ArrayList;

    move-result-object v0

    .line 4467
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4476
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 4467
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    .line 4468
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v4

    .line 4469
    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v4, :cond_8

    .line 4470
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4471
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2a

    move-object v0, v1

    .line 4472
    goto :goto_f

    .line 4469
    :cond_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1c
.end method

.method protected final b(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1826
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->ai:Z

    if-eqz v0, :cond_26

    .line 1827
    invoke-virtual {p0, p2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 1828
    invoke-virtual {p0, p1, v0, p2}, Lcom/anddoes/launcher/Workspace;->a(ILandroid/view/View;I)F

    move-result v2

    .line 1829
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-nez p2, :cond_27

    const/4 v1, 0x1

    :goto_19
    invoke-virtual {v0, v3, v1}, Lcom/anddoes/launcher/CellLayout;->a(FZ)V

    .line 1830
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->e()V

    .line 1831
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Workspace;->e(F)V

    .line 1833
    :cond_26
    return-void

    .line 1829
    :cond_27
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public final b(Lcom/anddoes/launcher/CellLayout;)V
    .registers 3
    .parameter

    .prologue
    .line 4148
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-eqz v0, :cond_3b

    .line 4149
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bK:F

    .line 4150
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bL:F

    .line 4151
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bN:F

    .line 4152
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bO:F

    .line 4153
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bM:F

    .line 4154
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bK:F

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setScaleX(F)V

    .line 4155
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bL:F

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setScaleY(F)V

    .line 4156
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bN:F

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    .line 4157
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bO:F

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setTranslationY(F)V

    .line 4158
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bM:F

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 4160
    :cond_3b
    return-void
.end method

.method public final b(Lcom/anddoes/launcher/cc;)V
    .registers 4
    .parameter

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3344
    :cond_8
    :goto_8
    return-void

    .line 3330
    :cond_9
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_18

    .line 3331
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 3332
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 3334
    :cond_18
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->N()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3335
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 3336
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->r()V

    .line 3341
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3342
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->T()V

    goto :goto_8
.end method

.method final b(Ljava/util/ArrayList;)V
    .registers 16
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 4600
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->O()Ljava/util/ArrayList;

    move-result-object v0

    .line 4601
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4629
    return-void

    .line 4601
    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/anddoes/launcher/ba;

    .line 4602
    invoke-virtual {v3}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v8

    move v6, v5

    .line 4603
    :goto_1d
    if-ge v6, v8, :cond_a

    .line 4604
    invoke-virtual {v3, v6}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4605
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4606
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_4c

    .line 4607
    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 4611
    iget-object v1, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    .line 4612
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 4613
    iget v4, v0, Lcom/anddoes/launcher/kj;->i:I

    if-nez v4, :cond_4c

    .line 4614
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 4615
    if-eqz v9, :cond_4c

    .line 4616
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v4, v5

    .line 4617
    :goto_4a
    if-lt v4, v10, :cond_50

    .line 4603
    :cond_4c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1d

    .line 4618
    :cond_50
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/y;

    .line 4619
    iget-object v1, v1, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {v1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 4620
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aU:Lcom/anddoes/launcher/ds;

    iget-object v11, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v1, v11}, Lcom/anddoes/launcher/ds;->a(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/kj;->a(Landroid/graphics/Bitmap;)V

    move-object v1, v2

    .line 4621
    check-cast v1, Landroid/widget/TextView;

    .line 4622
    new-instance v11, Lcom/anddoes/launcher/cj;

    iget-object v12, p0, Lcom/anddoes/launcher/Workspace;->aU:Lcom/anddoes/launcher/ds;

    invoke-virtual {v0, v12}, Lcom/anddoes/launcher/kj;->a(Lcom/anddoes/launcher/ds;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    .line 4621
    invoke-virtual {v1, v13, v11, v13, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4617
    :cond_7a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4a
.end method

.method protected final b(FF)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 816
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    const/16 v2, -0x3e7

    if-ne v0, v2, :cond_19

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    .line 820
    :goto_9
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/anddoes/launcher/Workspace;->a(IFFZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_18
    return v0

    .line 816
    :cond_19
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    goto :goto_9

    :cond_1c
    move v0, v1

    .line 820
    goto :goto_18
.end method

.method public final b_()V
    .registers 2

    .prologue
    .line 4265
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cq:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4266
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->b_()V

    .line 4276
    :cond_15
    :goto_15
    return-void

    .line 4269
    :cond_16
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_23

    .line 4270
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->b_()V

    .line 4272
    :cond_23
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v0

    .line 4273
    if-eqz v0, :cond_15

    .line 4274
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->g()V

    goto :goto_15
.end method

.method public final c(Lcom/anddoes/launcher/cc;)V
    .registers 14
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3737
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3872
    :cond_b
    :goto_b
    return-void

    .line 3741
    :cond_c
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bl:Z

    if-nez v0, :cond_b

    .line 3743
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_b

    .line 3746
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 3748
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/anddoes/launcher/ec;

    .line 3751
    iget v0, v7, Lcom/anddoes/launcher/ec;->n:I

    if-ltz v0, :cond_26

    iget v0, v7, Lcom/anddoes/launcher/ec;->o:I

    if-gez v0, :cond_2e

    .line 3752
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3753
    :cond_2e
    iget v1, p1, Lcom/anddoes/launcher/cc;->a:I

    iget v2, p1, Lcom/anddoes/launcher/cc;->b:I

    iget v3, p1, Lcom/anddoes/launcher/cc;->c:I

    .line 3754
    iget v4, p1, Lcom/anddoes/launcher/cc;->d:I

    iget-object v5, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    iget-object v6, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    move-object v0, p0

    .line 3753
    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/bx;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 3757
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 3758
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_241

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->m:Z

    if-nez v0, :cond_241

    iget-object v0, p1, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    if-eq v0, p0, :cond_1af

    invoke-static {p1}, Lcom/anddoes/launcher/Workspace;->g(Lcom/anddoes/launcher/cc;)Z

    move-result v0

    if-eqz v0, :cond_1af

    move v0, v10

    :goto_60
    if-eqz v0, :cond_78

    .line 3759
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aS:Z

    if-eqz v0, :cond_241

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->q()Z

    move-result v0

    if-eqz v0, :cond_241

    invoke-static {p1}, Lcom/anddoes/launcher/Workspace;->h(Lcom/anddoes/launcher/cc;)Z

    move-result v0

    if-eqz v0, :cond_241

    .line 3760
    :cond_78
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3761
    iget v0, p1, Lcom/anddoes/launcher/cc;->a:I

    iget v1, p1, Lcom/anddoes/launcher/cc;->b:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_241

    .line 3762
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->e()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3765
    :goto_95
    if-nez v0, :cond_a3

    .line 3766
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    iget v0, p1, Lcom/anddoes/launcher/cc;->a:I

    int-to-float v0, v0

    iget v1, p1, Lcom/anddoes/launcher/cc;->b:I

    int-to-float v1, v1

    .line 3767
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/Workspace;->c(FF)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3769
    :cond_a3
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eq v0, v1, :cond_e0

    .line 3771
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Workspace;->i(Lcom/anddoes/launcher/cc;)V

    .line 3773
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v1, :cond_b8

    .line 3774
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1, v11}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 3775
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 3777
    :cond_b8
    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3778
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v1, :cond_1b2

    .line 3779
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1, v10}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 3780
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->r()V

    .line 3785
    :goto_c8
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->bf:Lcom/anddoes/launcher/lv;

    sget-object v2, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    if-ne v1, v2, :cond_1b6

    move v1, v10

    .line 3786
    :goto_cf
    if-eqz v1, :cond_e0

    .line 3787
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 3788
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bd:Lcom/anddoes/launcher/kl;

    iget-object v0, v0, Lcom/anddoes/launcher/kl;->d:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 3818
    :cond_e0
    :goto_e0
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_b

    .line 3819
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-nez v0, :cond_22f

    move-object v9, v8

    .line 3822
    :goto_e9
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 3823
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    .line 3824
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 3823
    invoke-static {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;[F)V

    .line 3829
    :goto_fe
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/anddoes/launcher/ec;

    .line 3831
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    aget v0, v0, v11

    float-to-int v0, v0

    .line 3832
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    aget v1, v1, v10

    float-to-int v1, v1

    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3833
    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    move v2, v10

    move v3, v10

    .line 3831
    invoke-static/range {v0 .. v5}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 3834
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3835
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    aget v1, v1, v11

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    aget v2, v2, v10

    .line 3834
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/CellLayout;->c(II)Landroid/view/View;

    move-result-object v1

    .line 3838
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 3837
    invoke-direct {p0, v6, v0, v2, v11}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/CellLayout;[IZ)Z

    move-result v2

    .line 3839
    instance-of v3, v1, Lcom/anddoes/launcher/FolderIcon;

    .line 3840
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    if-eq v1, v0, :cond_14b

    .line 3841
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->Y()V

    .line 3842
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    if-eqz v0, :cond_14b

    .line 3843
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    instance-of v0, v0, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_14b

    .line 3844
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    iget-object v4, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/FolderIcon;->c(Ljava/lang/Object;)V

    .line 3848
    :cond_14b
    if-eqz v2, :cond_16c

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    if-eq v1, v0, :cond_16c

    .line 3849
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bB:Lcom/anddoes/launcher/g;

    .line 3850
    new-instance v2, Lcom/anddoes/launcher/lt;

    .line 3851
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    aget v5, v5, v11

    .line 3852
    iget-object v6, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    aget v6, v6, v10

    .line 3850
    invoke-direct {v2, p0, v4, v5, v6}, Lcom/anddoes/launcher/lt;-><init>(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/CellLayout;II)V

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/g;->a(Lcom/anddoes/launcher/io;)V

    .line 3853
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bB:Lcom/anddoes/launcher/g;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Lcom/anddoes/launcher/g;->a(J)V

    .line 3856
    :cond_16c
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    if-eq v1, v0, :cond_183

    if-eqz v3, :cond_183

    move-object v0, v1

    .line 3857
    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    iget-object v2, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/FolderIcon;->b(Ljava/lang/Object;)V

    .line 3858
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_183

    .line 3859
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->q()V

    .line 3862
    :cond_183
    iput-object v1, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    .line 3864
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bE:Z

    if-nez v0, :cond_b

    if-nez v3, :cond_b

    .line 3865
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    .line 3866
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    aget v1, v1, v11

    float-to-int v3, v1

    .line 3867
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    aget v1, v1, v10

    float-to-int v4, v1

    iget v5, v7, Lcom/anddoes/launcher/ec;->n:I

    iget v6, v7, Lcom/anddoes/launcher/ec;->o:I

    .line 3868
    iget-object v1, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v1}, Lcom/anddoes/launcher/bx;->a()Landroid/graphics/Point;

    move-result-object v7

    .line 3869
    iget-object v1, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v1}, Lcom/anddoes/launcher/bx;->b()Landroid/graphics/Rect;

    move-result-object v8

    move-object v1, v9

    .line 3865
    invoke-virtual/range {v0 .. v8}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto/16 :goto_b

    :cond_1af
    move v0, v11

    .line 3758
    goto/16 :goto_60

    .line 3782
    :cond_1b2
    iput-object v8, p0, Lcom/anddoes/launcher/Workspace;->bD:Landroid/view/View;

    goto/16 :goto_c8

    :cond_1b6
    move v1, v11

    .line 3785
    goto/16 :goto_cf

    .line 3790
    :cond_1b9
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bd:Lcom/anddoes/launcher/kl;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/kl;->a(Lcom/anddoes/launcher/CellLayout;)V

    goto/16 :goto_e0

    .line 3796
    :cond_1c2
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_23f

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->m:Z

    if-nez v0, :cond_23f

    invoke-static {p1}, Lcom/anddoes/launcher/Workspace;->g(Lcom/anddoes/launcher/cc;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 3797
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aS:Z

    if-eqz v0, :cond_23f

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v0

    if-eqz v0, :cond_23f

    invoke-static {p1}, Lcom/anddoes/launcher/Workspace;->h(Lcom/anddoes/launcher/cc;)Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 3798
    :cond_1ec
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3799
    iget v0, p1, Lcom/anddoes/launcher/cc;->a:I

    iget v1, p1, Lcom/anddoes/launcher/cc;->b:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 3800
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->e()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3803
    :goto_209
    if-nez v0, :cond_20f

    .line 3804
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->N()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3806
    :cond_20f
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eq v0, v1, :cond_e0

    .line 3807
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v1, :cond_221

    .line 3808
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1, v11}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 3809
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 3811
    :cond_221
    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3812
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v10}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 3813
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->r()V

    goto/16 :goto_e0

    .line 3819
    :cond_22f
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    move-object v9, v0

    goto/16 :goto_e9

    .line 3826
    :cond_236
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 3827
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 3826
    invoke-direct {p0, v0, v1, v8}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_fe

    :cond_23f
    move-object v0, v8

    goto :goto_209

    :cond_241
    move-object v0, v8

    goto/16 :goto_95
.end method

.method public final c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    if-nez v0, :cond_7

    .line 424
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->c(Z)V

    .line 425
    :cond_7
    return-void
.end method

.method public final c_()V
    .registers 2

    .prologue
    .line 4280
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cq:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4281
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->c_()V

    .line 4291
    :cond_15
    :goto_15
    return-void

    .line 4284
    :cond_16
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_23

    .line 4285
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->c_()V

    .line 4287
    :cond_23
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v0

    .line 4288
    if-eqz v0, :cond_15

    .line 4289
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->g()V

    goto :goto_15
.end method

.method public computeScroll()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 1532
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->computeScroll()V

    .line 1533
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bA:Z

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, p0, Lcom/anddoes/launcher/Workspace;->mRight:I

    iget v4, p0, Lcom/anddoes/launcher/Workspace;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->S()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float v5, v1, v0

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_3c
    invoke-virtual {v4, v5, v0}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget v5, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    int-to-float v5, v5

    int-to-float v3, v3

    div-float v3, v5, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    if-eqz v5, :cond_5d

    :goto_57
    invoke-virtual {v0, v4, v3, v1}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1534
    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    move v0, v2

    .line 1533
    goto :goto_3c

    :cond_5d
    move v1, v2

    goto :goto_57

    :cond_5f
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->n()V

    goto :goto_5a

    :cond_63
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->S()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->ax:I

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v4

    if-eqz v4, :cond_75

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bz:I

    :cond_75
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v5, v1, v5

    iget-boolean v6, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    if-eqz v6, :cond_85

    move v2, v1

    :cond_85
    invoke-virtual {v4, v5, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->Q:F

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->Q:F

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->o(I)I

    move-result v1

    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/Workspace;->o(I)I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    iget v5, p0, Lcom/anddoes/launcher/Workspace;->p:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/anddoes/launcher/Workspace;->aM:F

    mul-float/2addr v4, v5

    iput v2, p0, Lcom/anddoes/launcher/Workspace;->Q:F

    int-to-float v1, v1

    div-float v1, v4, v1

    iget-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->f:Ljava/lang/String;

    const-string v4, "BOUNCE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/Workspace;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->c(Landroid/view/View;)I

    move-result v2

    iget v4, p0, Lcom/anddoes/launcher/Workspace;->C:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    if-gez v4, :cond_ec

    const/high16 v1, -0x4080

    iget v4, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    :cond_d9
    :goto_d9
    int-to-float v2, v0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->ax:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->ax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/lw;->a(F)V

    goto/16 :goto_5a

    :cond_ec
    iget v4, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    iget v5, p0, Lcom/anddoes/launcher/Workspace;->p:I

    if-le v4, v5, :cond_d9

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->p:I

    add-int/2addr v1, v2

    iget v4, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_d9

    :cond_fc
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->n()V

    goto/16 :goto_5a
.end method

.method protected final d(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1796
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->P:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->P:I

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->p:I

    if-le v0, v1, :cond_6e

    .line 1797
    :cond_c
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    if-nez v0, :cond_62

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->ai:Z

    if-eqz v0, :cond_62

    .line 1798
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->P:I

    if-gez v0, :cond_63

    move v1, v2

    .line 1799
    :goto_19
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 1800
    invoke-virtual {p0, p1, v0, v1}, Lcom/anddoes/launcher/Workspace;->a(ILandroid/view/View;I)F

    move-result v3

    .line 1801
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    if-nez v1, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    invoke-virtual {v0, v4, v2}, Lcom/anddoes/launcher/CellLayout;->a(FZ)V

    .line 1802
    const/high16 v2, -0x3e40

    mul-float/2addr v2, v3

    .line 1803
    iget v4, p0, Lcom/anddoes/launcher/Workspace;->i:F

    sget v5, Lcom/anddoes/launcher/Workspace;->an:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/CellLayout;->setCameraDistance(F)V

    .line 1804
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    if-nez v1, :cond_6b

    const/high16 v1, 0x3f40

    :goto_41
    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->setPivotX(F)V

    .line 1805
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f00

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->setPivotY(F)V

    .line 1806
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 1807
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->e()V

    .line 1808
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->c(F)V

    .line 1809
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Workspace;->e(F)V

    .line 1822
    :cond_62
    :goto_62
    return-void

    .line 1798
    :cond_63
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_19

    .line 1804
    :cond_6b
    const/high16 v1, 0x3e80

    goto :goto_41

    .line 1812
    :cond_6e
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->br:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_77

    .line 1813
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/Workspace;->e(F)V

    .line 1816
    :cond_77
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_62

    .line 1817
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->f()V

    .line 1818
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 1819
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->f()V

    goto :goto_62
.end method

.method public final d(Lcom/anddoes/launcher/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 3366
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Workspace;->f(Lcom/anddoes/launcher/cc;)V

    .line 3367
    return-void
.end method

.method public final d()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4356
    .line 4357
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bl:Z

    if-eqz v0, :cond_41

    .line 4358
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_3f

    .line 4360
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 4361
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cq:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 4362
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->e()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 4363
    iput-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->cq:Z

    .line 4367
    :goto_28
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_31

    .line 4368
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->r()V

    .line 4375
    :cond_31
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    .line 4376
    const/4 v0, 0x1

    .line 4378
    :goto_35
    iput-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->bl:Z

    .line 4380
    :goto_37
    return v0

    .line 4365
    :cond_38
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->N()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    goto :goto_28

    :cond_3f
    move v0, v1

    goto :goto_35

    :cond_41
    move v0, v1

    goto :goto_37
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->av:Z

    .line 525
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->X()V

    .line 526
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->Q()V

    .line 527
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 2019
    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 2020
    iget-boolean v3, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    if-eqz v3, :cond_56

    .line 2022
    iget-wide v3, p0, Lcom/anddoes/launcher/Workspace;->ct:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_32

    .line 2023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anddoes/launcher/Workspace;->ct:J

    .line 2028
    :goto_18
    const-wide/16 v3, 0x190

    cmp-long v1, v1, v3

    if-ltz v1, :cond_44

    .line 2030
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 2031
    const/4 v1, 0x3

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    .line 2040
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    .line 2041
    :goto_2a
    if-lt v0, v1, :cond_48

    .line 2075
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 2076
    return-void

    .line 2026
    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/anddoes/launcher/Workspace;->ct:J

    sub-long/2addr v1, v3

    goto :goto_18

    .line 2032
    :cond_3a
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 2033
    const/4 v1, 0x4

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    .line 2034
    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    .line 2035
    :cond_44
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->postInvalidate()V

    goto :goto_26

    .line 2042
    :cond_48
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getDrawingTime()J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/anddoes/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 2045
    :cond_56
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2047
    iget-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->bl:Z

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2048
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWidth()I

    move-result v2

    .line 2049
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getHeight()I

    move-result v3

    .line 2050
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2053
    sub-int v0, v3, v0

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mPaddingBottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 2054
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mPaddingTop:I

    add-int v4, v1, v0

    .line 2055
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mPaddingBottom:I

    add-int v5, v1, v0

    .line 2057
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 2058
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout;

    .line 2060
    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 2061
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 2062
    const v1, 0x7f020069

    .line 2063
    const-string v2, "page_hover_left_holo"

    .line 2061
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2064
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v2, v6

    sub-int/2addr v3, v5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2065
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2c

    .line 2066
    :cond_c0
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2067
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 2068
    const v1, 0x7f02006a

    .line 2069
    const-string v6, "page_hover_right_holo"

    .line 2067
    invoke-virtual {v0, v1, v6}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2070
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v1, v6

    iget v6, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    add-int/2addr v2, v6

    sub-int/2addr v3, v5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2071
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2c
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-eqz v0, :cond_c

    .line 847
    :cond_a
    const/4 v0, 0x0

    .line 849
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/anddoes/launcher/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_b
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2082
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    if-eqz v0, :cond_12b

    .line 2083
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anddoes/launcher/Workspace;->ct:J

    sub-long v5, v0, v2

    .line 2084
    new-instance v7, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2085
    invoke-direct {p0, p2}, Lcom/anddoes/launcher/Workspace;->e(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v8

    .line 2086
    const/4 v4, 0x0

    .line 2087
    const/4 v3, 0x0

    .line 2088
    const/4 v2, 0x0

    .line 2089
    const/4 v1, 0x0

    .line 2090
    const/high16 v0, 0x437f

    .line 2092
    iget v9, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_db

    .line 2093
    long-to-float v0, v5

    const/4 v1, 0x0

    const/high16 v2, 0x42c8

    .line 2094
    invoke-static {v0, v1, v2}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v0

    .line 2095
    long-to-float v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/RectF;->left:F

    .line 2096
    invoke-static {v1, v2, v3}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v4

    .line 2097
    long-to-float v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/RectF;->top:F

    .line 2098
    invoke-static {v1, v2, v3}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v3

    .line 2099
    long-to-float v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v9, v8, Landroid/graphics/RectF;->right:F

    .line 2100
    invoke-static {v1, v2, v9}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v2

    .line 2101
    long-to-float v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    .line 2102
    invoke-static {v1, v5, v6}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v1

    .line 2121
    :cond_62
    :goto_62
    sub-float v5, v2, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v5, v6

    .line 2122
    sub-float v5, v1, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v5, v8

    .line 2123
    const/4 v5, 0x1

    .line 2124
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    .line 2125
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    cmpl-float v10, v4, v10

    if-gtz v10, :cond_98

    .line 2126
    sub-float v2, v9, v2

    cmpg-float v2, v4, v2

    if-ltz v2, :cond_98

    .line 2127
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_98

    .line 2128
    neg-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_12f

    .line 2129
    :cond_98
    const/4 v1, 0x0

    .line 2131
    :goto_99
    if-eqz v1, :cond_d9

    .line 2132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2133
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2134
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2135
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->cy:Landroid/graphics/Paint;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2136
    new-instance v0, Landroid/graphics/RectF;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x41a0

    const/high16 v2, 0x41a0

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->cy:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2137
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->cy:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2138
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2147
    :cond_d9
    :goto_d9
    const/4 v0, 0x1

    return v0

    .line 2103
    :cond_db
    iget v9, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11a

    .line 2104
    long-to-float v0, v5

    const/high16 v1, 0x42c8

    const/4 v2, 0x0

    .line 2105
    invoke-static {v0, v1, v2}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v0

    .line 2106
    long-to-float v1, v5

    iget v2, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    .line 2107
    invoke-static {v1, v2, v3}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v4

    .line 2108
    long-to-float v1, v5

    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    .line 2109
    invoke-static {v1, v2, v3}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v3

    .line 2110
    long-to-float v1, v5

    iget v2, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    .line 2111
    invoke-static {v1, v2, v9}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v2

    .line 2112
    long-to-float v1, v5

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    .line 2113
    invoke-static {v1, v5, v6}, Lcom/anddoes/launcher/ia;->a(FFF)F

    move-result v1

    goto/16 :goto_62

    .line 2114
    :cond_11a
    iget v5, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_62

    .line 2115
    iget v4, v8, Landroid/graphics/RectF;->left:F

    .line 2116
    iget v3, v8, Landroid/graphics/RectF;->top:F

    .line 2117
    iget v2, v8, Landroid/graphics/RectF;->right:F

    .line 2118
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    .line 2119
    const/high16 v0, 0x42c8

    goto/16 :goto_62

    .line 2144
    :cond_12b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anddoes/launcher/SmoothPagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_d9

    :cond_12f
    move v1, v5

    goto/16 :goto_99
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aC:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->b()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->m:I

    .line 434
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aC:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->a()I

    move-result v0

    .line 435
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->m:I

    if-le v1, v0, :cond_15

    .line 436
    const/4 v1, 0x0

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->m:I

    .line 438
    :cond_15
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->m:I

    if-nez v1, :cond_1f

    .line 440
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->m:I

    .line 442
    :cond_1f
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->m:I

    .line 443
    return-void
.end method

.method protected final e(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1837
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->e(I)V

    .line 1838
    iget-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    if-nez v2, :cond_12

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    .line 1910
    :cond_12
    :goto_12
    return-void

    .line 1842
    :cond_13
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v2

    if-nez v2, :cond_156

    .line 1848
    const-string v2, "CARD_STACK"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1849
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->l(I)V

    move v1, v0

    .line 1883
    :cond_27
    :goto_27
    if-eqz v1, :cond_12

    .line 1884
    :goto_29
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_117

    .line 1900
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->d(I)V

    .line 1901
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    goto :goto_12

    .line 1850
    :cond_36
    const-string v2, "TABLET"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1851
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1852
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Workspace;->i(I)V

    move v1, v0

    goto :goto_27

    .line 1854
    :cond_4b
    new-instance v1, Lcom/anddoes/launcher/jf;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jf;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jf;->a(I)V

    move v1, v0

    goto :goto_27

    .line 1856
    :cond_55
    const-string v2, "CUBE_IN"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1857
    new-instance v1, Lcom/anddoes/launcher/iv;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iv;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iv;->a(I)V

    move v1, v0

    goto :goto_27

    .line 1858
    :cond_69
    const-string v2, "CUBE"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1859
    new-instance v1, Lcom/anddoes/launcher/iw;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iw;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iw;->a(I)V

    move v1, v0

    goto :goto_27

    .line 1861
    :cond_7d
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->q()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1862
    const-string v2, "ACCORDION"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1863
    new-instance v1, Lcom/anddoes/launcher/it;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/it;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/it;->a(I)V

    move v1, v0

    goto :goto_27

    .line 1864
    :cond_99
    const-string v2, "CROSS"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1865
    new-instance v1, Lcom/anddoes/launcher/iu;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iu;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iu;->a(I)V

    move v1, v0

    goto/16 :goto_27

    .line 1866
    :cond_ae
    const-string v2, "FLIP"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1867
    new-instance v1, Lcom/anddoes/launcher/ix;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ix;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/ix;->a(I)V

    move v1, v0

    goto/16 :goto_27

    .line 1868
    :cond_c3
    const-string v2, "OVERLAP"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 1869
    new-instance v1, Lcom/anddoes/launcher/iz;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iz;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iz;->a(I)V

    move v1, v0

    goto/16 :goto_27

    .line 1870
    :cond_d8
    const-string v2, "ROTATE"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 1871
    new-instance v1, Lcom/anddoes/launcher/jb;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jb;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jb;->a(I)V

    move v1, v0

    goto/16 :goto_27

    .line 1872
    :cond_ed
    const-string v2, "SCALE"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 1873
    new-instance v1, Lcom/anddoes/launcher/jd;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jd;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jd;->a(I)V

    move v1, v0

    goto/16 :goto_27

    .line 1874
    :cond_102
    const-string v2, "WHEEL"

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1875
    new-instance v1, Lcom/anddoes/launcher/jh;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jh;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jh;->a(I)V

    move v1, v0

    goto/16 :goto_27

    .line 1885
    :cond_117
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->b(I)Landroid/view/View;

    move-result-object v2

    .line 1886
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Workspace;->b(Landroid/view/View;)V

    .line 1887
    iget-boolean v1, p0, Lcom/anddoes/launcher/Workspace;->V:Z

    if-eqz v1, :cond_145

    .line 1888
    invoke-virtual {p0, p1, v2, v0}, Lcom/anddoes/launcher/Workspace;->a(ILandroid/view/View;I)F

    move-result v1

    .line 1889
    iget-boolean v3, p0, Lcom/anddoes/launcher/Workspace;->ag:Z

    if-eqz v3, :cond_13a

    .line 1890
    iget v3, p0, Lcom/anddoes/launcher/Workspace;->P:I

    if-gez v3, :cond_149

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_149

    .line 1891
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->q(I)F

    move-result v1

    .line 1896
    :cond_13a
    :goto_13a
    const/high16 v3, 0x3f80

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v3, v1

    .line 1897
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1884
    :cond_145
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_29

    .line 1892
    :cond_149
    iget v3, p0, Lcom/anddoes/launcher/Workspace;->P:I

    iget v4, p0, Lcom/anddoes/launcher/Workspace;->p:I

    if-le v3, v4, :cond_13a

    if-nez v0, :cond_13a

    .line 1893
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->r(I)F

    move-result v1

    goto :goto_13a

    .line 1904
    :cond_156
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 1905
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Workspace;->i(I)V

    goto/16 :goto_12

    .line 1907
    :cond_161
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->d(I)V

    goto/16 :goto_12
.end method

.method public final e(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 579
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->q:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 581
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->cw:[F

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->cx:F

    .line 582
    iput-boolean v3, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    .line 583
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->d(Z)V

    .line 585
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/anddoes/launcher/Workspace;->ct:J

    .line 587
    if-eqz p1, :cond_34

    .line 588
    iput v3, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    .line 589
    :goto_20
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2a

    .line 600
    :goto_26
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    .line 601
    return-void

    .line 590
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->b(Landroid/view/View;)V

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 593
    :cond_34
    const/4 v0, 0x2

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    goto :goto_26
.end method

.method public final e(Lcom/anddoes/launcher/cc;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2943
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    if-eq v0, p0, :cond_ce

    .line 2945
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    if-nez v0, :cond_d

    move v0, v8

    .line 3008
    :goto_c
    return v0

    .line 2948
    :cond_d
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->ce:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1e

    move v0, v8

    :goto_1a
    if-nez v0, :cond_20

    move v0, v8

    .line 2949
    goto :goto_c

    :cond_1e
    move v0, v9

    .line 2948
    goto :goto_1a

    .line 2951
    :cond_20
    iget v1, p1, Lcom/anddoes/launcher/cc;->a:I

    iget v2, p1, Lcom/anddoes/launcher/cc;->b:I

    .line 2952
    iget v3, p1, Lcom/anddoes/launcher/cc;->c:I

    iget v4, p1, Lcom/anddoes/launcher/cc;->d:I

    iget-object v5, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    iget-object v6, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    move-object v0, p0

    .line 2951
    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/bx;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 2955
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2956
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    .line 2957
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 2956
    invoke-static {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;[F)V

    .line 2966
    :goto_48
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    if-eqz v0, :cond_81

    .line 2967
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aQ:Lcom/anddoes/launcher/az;

    .line 2968
    iget v2, v0, Lcom/anddoes/launcher/az;->d:I

    .line 2969
    iget v3, v0, Lcom/anddoes/launcher/az;->e:I

    .line 2970
    iget-object v0, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    move-object v6, v0

    .line 2977
    :goto_55
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    aget v0, v0, v8

    float-to-int v0, v0

    .line 2978
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    aget v1, v1, v9

    float-to-int v1, v1

    .line 2979
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 2977
    invoke-static/range {v0 .. v5}, Lcom/anddoes/launcher/Workspace;->a(IIIILcom/anddoes/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 2980
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/ec;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 2981
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 2980
    invoke-direct {p0, v0, v1, v4, v9}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/CellLayout;[IZ)Z

    move-result v0

    if-eqz v0, :cond_8b

    move v0, v9

    .line 2982
    goto :goto_c

    .line 2959
    :cond_79
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    .line 2960
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aY:[F

    .line 2959
    invoke-direct {p0, v0, v1, v7}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_48

    .line 2972
    :cond_81
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 2973
    iget v2, v0, Lcom/anddoes/launcher/ec;->n:I

    .line 2974
    iget v3, v0, Lcom/anddoes/launcher/ec;->o:I

    move-object v6, v7

    goto :goto_55

    .line 2984
    :cond_8b
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 2985
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    .line 2984
    invoke-static {v0, v1, v4}, Lcom/anddoes/launcher/Workspace;->a(Ljava/lang/Object;Lcom/anddoes/launcher/CellLayout;[I)Z

    move-result v0

    if-eqz v0, :cond_9c

    move v0, v9

    .line 2986
    goto/16 :goto_c

    .line 2990
    :cond_9c
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v2, v3, v6}, Lcom/anddoes/launcher/CellLayout;->a(IILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 2995
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    if-eqz v0, :cond_c6

    .line 2996
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aS:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2997
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->A()Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    .line 2998
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aR:[I

    aget v2, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Hotseat;->a(II)I

    invoke-static {}, Lcom/anddoes/launcher/Hotseat;->f()Z

    .line 3000
    :cond_c6
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->u()V

    move v0, v8

    .line 3005
    goto/16 :goto_c

    :cond_ce
    move v0, v9

    .line 3008
    goto/16 :goto_c
.end method

.method final f()Lcom/anddoes/launcher/az;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 447
    if-eqz v0, :cond_11

    .line 448
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->a()Lcom/anddoes/launcher/az;

    move-result-object v0

    .line 450
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final f(Z)V
    .registers 7
    .parameter

    .prologue
    .line 1210
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1211
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1212
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1213
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1216
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1217
    int-to-float v0, v1

    invoke-static {v1, v2}, Lcom/anddoes/launcher/Workspace;->d(II)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->ax:I

    .line 1218
    iput v1, p0, Lcom/anddoes/launcher/Workspace;->ay:I

    .line 1230
    :goto_33
    new-instance v0, Lcom/anddoes/launcher/ll;

    const-string v1, "setWallpaperDimension"

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/ll;-><init>(Lcom/anddoes/launcher/Workspace;Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0}, Lcom/anddoes/launcher/ll;->start()V

    .line 1235
    return-void

    .line 1220
    :cond_3e
    if-nez p1, :cond_5d

    .line 1221
    const-string v3, "SINGLE_SCREEN"

    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v4, v4, Lcom/anddoes/launcher/preference/f;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1222
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_5d

    .line 1223
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anddoes/launcher/Workspace;->ax:I

    .line 1224
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->ay:I

    goto :goto_33

    .line 1226
    :cond_5d
    int-to-float v0, v2

    const/high16 v2, 0x4000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->ax:I

    .line 1227
    iput v1, p0, Lcom/anddoes/launcher/Workspace;->ay:I

    goto :goto_33
.end method

.method public final g()V
    .registers 1

    .prologue
    .line 4637
    return-void
.end method

.method public final g(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2397
    if-nez p1, :cond_6

    .line 2398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Workspace;->f(Lcom/anddoes/launcher/cc;)V

    .line 2400
    :cond_6
    return-void
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 1635
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->aJ:F

    return v0
.end method

.method public getChildrenOutlineAlpha()F
    .registers 2

    .prologue
    .line 1581
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->aF:F

    return v0
.end method

.method public getDescendantFocusability()I
    .registers 2

    .prologue
    .line 2220
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2221
    const/high16 v0, 0x6

    .line 2223
    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_8
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3926
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->bx:I

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->by:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3927
    return-void
.end method

.method public getHorizontalWallpaperOffset()F
    .registers 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget v0, v0, Lcom/anddoes/launcher/lw;->c:F

    return v0
.end method

.method public getVerticalWallpaperOffset()F
    .registers 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget v0, v0, Lcom/anddoes/launcher/lw;->d:F

    return v0
.end method

.method public final h()V
    .registers 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 507
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 508
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    .line 509
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-lt v1, v2, :cond_19

    .line 514
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 515
    return-void

    .line 510
    :cond_19
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 511
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->j()V

    .line 509
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11
.end method

.method protected final i()V
    .registers 3

    .prologue
    .line 1106
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->i()V

    .line 1108
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1109
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->X()V

    .line 1125
    :goto_c
    const-string v0, "TABLET"

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aP:Z

    .line 1127
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->T()V

    .line 1129
    :cond_1c
    return-void

    .line 1111
    :cond_1d
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_2b

    .line 1113
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->o:I

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/Workspace;->e(II)V

    goto :goto_c

    .line 1119
    :cond_2b
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/Workspace;->e(II)V

    goto :goto_c
.end method

.method protected final j()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1132
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->j()V

    .line 1134
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1135
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->X()V

    .line 1141
    :cond_e
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0}, Lcom/anddoes/launcher/bm;->a()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1144
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aP:Z

    if-eqz v0, :cond_1d

    .line 1145
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->U()V

    .line 1148
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aK:F

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->aL:I

    .line 1151
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bw:Ljava/lang/Runnable;

    if-eqz v0, :cond_2e

    .line 1152
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->bw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1153
    iput-object v5, p0, Lcom/anddoes/launcher/Workspace;->bw:Ljava/lang/Runnable;

    .line 1155
    :cond_2e
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    if-eqz v0, :cond_3f

    .line 1156
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 1157
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iput-object v5, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    .line 1159
    :cond_3f
    return-void

    .line 1137
    :cond_40
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_45
    if-ge v1, v3, :cond_e

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_59

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_45
.end method

.method final k()Lcom/anddoes/launcher/Folder;
    .registers 6

    .prologue
    .line 626
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Lcom/anddoes/launcher/DragLayer;->getChildCount()I

    move-result v3

    .line 628
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-lt v1, v3, :cond_10

    .line 636
    const/4 v0, 0x0

    :cond_f
    return-object v0

    .line 629
    :cond_10
    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 630
    instance-of v4, v0, Lcom/anddoes/launcher/Folder;

    if-eqz v4, :cond_22

    .line 631
    check-cast v0, Lcom/anddoes/launcher/Folder;

    .line 632
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->e()Lcom/anddoes/launcher/dd;

    move-result-object v4

    iget-boolean v4, v4, Lcom/anddoes/launcher/dd;->a:Z

    if-nez v4, :cond_f

    .line 628
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    return v0
.end method

.method public final m()V
    .registers 2

    .prologue
    .line 1206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->f(Z)V

    .line 1207
    return-void
.end method

.method public final n()V
    .registers 7

    .prologue
    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 1341
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    if-eqz v0, :cond_22

    move v0, v1

    .line 1342
    :goto_c
    iget-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    if-eqz v5, :cond_24

    .line 1341
    :goto_10
    invoke-virtual {v4, v0, v1}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 1343
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/anddoes/launcher/Workspace;->cr:Z

    if-eqz v4, :cond_1e

    move v3, v2

    :cond_1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1344
    return-void

    :cond_22
    move v0, v2

    .line 1341
    goto :goto_c

    :cond_24
    move v1, v3

    .line 1342
    goto :goto_10
.end method

.method final n(I)V
    .registers 3
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_11

    .line 455
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->s(I)V

    .line 463
    :goto_9
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 464
    return-void

    .line 458
    :cond_11
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Workspace;->m(I)V

    goto :goto_9
.end method

.method protected final o()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4645
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->o:I

    .line 4647
    :goto_8
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f060291

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 4648
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4646
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4645
    :cond_2d
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    goto :goto_8
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1922
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->onAttachedToWindow()V

    .line 1923
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aO:Landroid/os/IBinder;

    .line 1924
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->computeScroll()V

    .line 1925
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aV:Lcom/anddoes/launcher/bm;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aO:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bm;->a(Landroid/os/IBinder;)V

    .line 1926
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Workspace;->aO:Landroid/os/IBinder;

    .line 1930
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 17
    .parameter

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3407
    const/4 v0, 0x0

    .line 3519
    :goto_9
    return v0

    .line 3409
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 3410
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 3411
    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 3412
    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/CellLayout;->getLocationOnScreen([I)V

    .line 3414
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x0

    aget v3, v6, v3

    sub-int v3, v1, v3

    .line 3415
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    aget v4, v6, v4

    sub-int v4, v1, v4

    .line 3417
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_198

    .line 3519
    invoke-super/range {p0 .. p1}, Lcom/anddoes/launcher/SmoothPagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_9

    .line 3420
    :pswitch_3c
    invoke-direct/range {p0 .. p1}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v1

    .line 3421
    if-eqz v1, :cond_5a

    .line 3422
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_58

    const/4 v1, 0x1

    .line 3423
    :goto_47
    if-eqz v1, :cond_6f

    .line 3426
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v1, v2}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 3427
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->u()V

    .line 3428
    const/4 v0, 0x0

    goto :goto_9

    .line 3422
    :cond_58
    const/4 v1, 0x0

    goto :goto_47

    .line 3434
    :cond_5a
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 3435
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f060258

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3436
    const/4 v2, 0x0

    .line 3433
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3436
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3437
    const/4 v0, 0x0

    goto :goto_9

    .line 3443
    :cond_6f
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 3444
    sget v2, Lcom/anddoes/launcher/do;->a:I

    .line 3445
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v6, v6, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const v7, 0x1060012

    const-string v8, "outline_color"

    invoke-virtual {v6, v7, v8}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v6

    const v7, 0x7f0c0005

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0c0006

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f0c0077

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e4ccccd

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int v10, v7, v2

    add-int/2addr v2, v8

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v9

    int-to-float v12, v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v10, v11, v12, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v7, v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/anddoes/launcher/Workspace;->bs:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v7, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->bm:Lcom/anddoes/launcher/do;

    invoke-virtual {v5, v2, v1, v6, v6}, Lcom/anddoes/launcher/do;->c(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    .line 3449
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->T()V

    .line 3450
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->r()V

    .line 3451
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3453
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 3457
    :pswitch_e2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->bn:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3458
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 3461
    :pswitch_ef
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->w()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v5

    .line 3462
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 3468
    const/4 v1, 0x0

    aput v3, v6, v1

    .line 3469
    const/4 v1, 0x1

    aput v4, v6, v1

    .line 3470
    invoke-direct/range {p0 .. p1}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v7

    .line 3471
    if-eqz v7, :cond_13b

    .line 3472
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3473
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 3474
    if-nez v11, :cond_13e

    const/4 v1, 0x1

    .line 3475
    :goto_114
    invoke-virtual {v2, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    .line 3476
    if-eqz v1, :cond_140

    .line 3477
    invoke-virtual {v10, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3478
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 3479
    invoke-virtual {v10}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3478
    invoke-virtual {v5, v2, v1, v6}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/anddoes/launcher/kj;

    move-result-object v1

    .line 3480
    if-eqz v1, :cond_13b

    .line 3481
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v3, v2, v5

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/anddoes/launcher/Workspace;->a([ILjava/lang/Object;Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/cc;)V

    .line 3511
    :cond_13b
    :goto_13b
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 3474
    :cond_13e
    const/4 v1, 0x0

    goto :goto_114

    .line 3484
    :cond_140
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_160

    .line 3487
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/dz;

    iget-object v0, v0, Lcom/anddoes/launcher/dz;->b:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3488
    new-instance v1, Lcom/anddoes/launcher/jo;

    invoke-direct {v1, v0, v9, v10}, Lcom/anddoes/launcher/jo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3490
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 3491
    const-wide/16 v2, -0x64

    .line 3492
    iget v4, p0, Lcom/anddoes/launcher/Workspace;->n:I

    const/4 v5, 0x0

    .line 3490
    invoke-virtual/range {v0 .. v6}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/jo;JI[I[I)V

    goto :goto_13b

    .line 3497
    :cond_160
    new-instance v7, Lcom/anddoes/launcher/dy;

    .line 3498
    iget-object v8, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    .line 3499
    iget v13, p0, Lcom/anddoes/launcher/Workspace;->n:I

    move-object v12, v0

    move-object v14, v6

    .line 3497
    invoke-direct/range {v7 .. v14}, Lcom/anddoes/launcher/dy;-><init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/anddoes/launcher/CellLayout;I[I)V

    .line 3500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3501
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 3500
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3502
    invoke-virtual {v0, v7, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3503
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3504
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 3505
    const v2, 0x7f060259

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3504
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3506
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3507
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_13b

    .line 3515
    :pswitch_18f
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 3516
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->U()V

    .line 3517
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 3417
    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_e2
        :pswitch_ef
        :pswitch_18f
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter

    .prologue
    const/high16 v12, 0x3f80

    const/high16 v3, 0x3f00

    const v11, 0x3727c5ac

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1967
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 1968
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bA:Z

    if-nez v0, :cond_4c

    .line 1969
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aA:Z

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget v3, v0, Lcom/anddoes/launcher/lw;->a:F

    iput v3, v0, Lcom/anddoes/launcher/lw;->c:F

    iget v3, v0, Lcom/anddoes/launcher/lw;->b:F

    iput v3, v0, Lcom/anddoes/launcher/lw;->d:F

    iput-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->aA:Z

    move v0, v1

    move v1, v2

    :goto_2c
    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aO:Landroid/os/IBinder;

    if-eqz v0, :cond_47

    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->S()Z

    move-result v0

    if-eqz v0, :cond_14a

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/anddoes/launcher/Workspace;->aO:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget v4, v4, Lcom/anddoes/launcher/lw;->c:F

    iget-object v5, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget v5, v5, Lcom/anddoes/launcher/lw;->d:F

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_47
    :goto_47
    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    .line 1972
    :cond_4c
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7d

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->aJ:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7d

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->b:Z

    if-eqz v0, :cond_7d

    .line 1973
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->aJ:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1974
    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1975
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aI:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    iget v3, p0, Lcom/anddoes/launcher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1976
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getMeasuredHeight()I

    move-result v4

    .line 1975
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1977
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1980
    :cond_7d
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1981
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 1982
    return-void

    .line 1969
    :cond_86
    iget-object v4, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iget v0, v4, Lcom/anddoes/launcher/lw;->c:F

    iget v5, v4, Lcom/anddoes/launcher/lw;->a:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_a1

    iget v0, v4, Lcom/anddoes/launcher/lw;->d:F

    iget v5, v4, Lcom/anddoes/launcher/lw;->b:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_a1

    iput-boolean v2, v4, Lcom/anddoes/launcher/lw;->f:Z

    move v1, v2

    :goto_9f
    move v0, v1

    goto :goto_2c

    :cond_a1
    iget-object v0, v4, Lcom/anddoes/launcher/lw;->j:Lcom/anddoes/launcher/Workspace;

    iget v0, v0, Lcom/anddoes/launcher/Workspace;->bx:I

    iget-object v5, v4, Lcom/anddoes/launcher/lw;->j:Lcom/anddoes/launcher/Workspace;

    iget v5, v5, Lcom/anddoes/launcher/Workspace;->by:I

    if-le v0, v5, :cond_11c

    move v0, v1

    :goto_ac
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/anddoes/launcher/lw;->e:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x21

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget v7, v4, Lcom/anddoes/launcher/lw;->a:F

    iget v8, v4, Lcom/anddoes/launcher/lw;->c:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-boolean v8, v4, Lcom/anddoes/launcher/lw;->f:Z

    if-nez v8, :cond_d8

    float-to-double v7, v7

    const-wide v9, 0x3fb1eb851eb851ecL

    cmpl-double v7, v7, v9

    if-lez v7, :cond_d8

    iput-boolean v1, v4, Lcom/anddoes/launcher/lw;->f:Z

    :cond_d8
    iget-boolean v7, v4, Lcom/anddoes/launcher/lw;->g:Z

    if-eqz v7, :cond_11e

    iget v3, v4, Lcom/anddoes/launcher/lw;->h:F

    :cond_de
    :goto_de
    move v0, v3

    :goto_df
    iget v3, v4, Lcom/anddoes/launcher/lw;->i:F

    const/high16 v7, 0x4204

    div-float v7, v0, v7

    const/high16 v0, 0x4204

    div-float/2addr v3, v0

    iget v0, v4, Lcom/anddoes/launcher/lw;->a:F

    iget v8, v4, Lcom/anddoes/launcher/lw;->c:F

    sub-float v8, v0, v8

    iget v0, v4, Lcom/anddoes/launcher/lw;->b:F

    iget v9, v4, Lcom/anddoes/launcher/lw;->d:F

    sub-float v9, v0, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v11

    if-gez v0, :cond_12f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v11

    if-gez v0, :cond_12f

    move v0, v1

    :goto_105
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v10

    if-eqz v10, :cond_10d

    if-eqz v0, :cond_131

    :cond_10d
    iget v0, v4, Lcom/anddoes/launcher/lw;->a:F

    iput v0, v4, Lcom/anddoes/launcher/lw;->c:F

    iget v0, v4, Lcom/anddoes/launcher/lw;->b:F

    iput v0, v4, Lcom/anddoes/launcher/lw;->d:F

    :goto_115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/anddoes/launcher/lw;->e:J

    goto :goto_9f

    :cond_11c
    move v0, v2

    goto :goto_ac

    :cond_11e
    iget-boolean v7, v4, Lcom/anddoes/launcher/lw;->f:Z

    if-eqz v7, :cond_129

    if-eqz v0, :cond_126

    move v0, v3

    goto :goto_df

    :cond_126
    const/high16 v0, 0x3f40

    goto :goto_df

    :cond_129
    if-eqz v0, :cond_de

    const v3, 0x3e8a3d71

    goto :goto_de

    :cond_12f
    move v0, v2

    goto :goto_105

    :cond_131
    long-to-float v0, v5

    mul-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    long-to-float v3, v5

    mul-float/2addr v3, v7

    invoke-static {v12, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v5, v4, Lcom/anddoes/launcher/lw;->c:F

    mul-float/2addr v3, v8

    add-float/2addr v3, v5

    iput v3, v4, Lcom/anddoes/launcher/lw;->c:F

    iget v3, v4, Lcom/anddoes/launcher/lw;->d:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v3

    iput v0, v4, Lcom/anddoes/launcher/lw;->d:F

    goto :goto_115

    :cond_14a
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->n()V

    goto/16 :goto_47
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v12, 0x6

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 861
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_50

    .line 862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    .line 863
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    :goto_1f
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    if-lt v5, v2, :cond_27

    :cond_25
    move v5, v4

    .line 997
    :cond_26
    :goto_26
    return v5

    .line 863
    :cond_27
    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Workspace;->e(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->n:I

    if-eq v2, v5, :cond_48

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/Workspace;->m(I)V

    :cond_48
    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->k()V

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 867
    :cond_50
    if-nez v1, :cond_b4

    .line 868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anddoes/launcher/Workspace;->cn:J

    .line 869
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->cj:F

    .line 870
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->ck:F

    .line 877
    :cond_64
    :goto_64
    if-eq v1, v4, :cond_68

    .line 878
    if-ne v1, v12, :cond_155

    .line 879
    :cond_68
    iget-wide v2, p0, Lcom/anddoes/launcher/Workspace;->cn:J

    sget-wide v6, Lcom/anddoes/launcher/Workspace;->cp:J

    add-long/2addr v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_155

    .line 880
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->A:Z

    .line 881
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 882
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/Workspace;->cj:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 883
    iget v3, p0, Lcom/anddoes/launcher/Workspace;->ck:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 884
    if-ne v1, v4, :cond_de

    .line 885
    iget v6, p0, Lcom/anddoes/launcher/Workspace;->B:I

    mul-int/lit8 v6, v6, 0x3

    if-lt v3, v6, :cond_155

    if-le v3, v2, :cond_155

    .line 886
    iget v1, p0, Lcom/anddoes/launcher/Workspace;->ck:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d0

    .line 887
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->am:Ljava/lang/String;

    const-string v2, "SWIPE_UP"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_ad
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    .line 892
    iput-wide v10, p0, Lcom/anddoes/launcher/Workspace;->cn:J

    move v5, v4

    .line 893
    goto/16 :goto_26

    .line 871
    :cond_b4
    const/4 v0, 0x5

    if-ne v1, v0, :cond_64

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v8, :cond_64

    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->R()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 873
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->cl:F

    .line 874
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->cm:F

    goto :goto_64

    .line 889
    :cond_d0
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->an:Ljava/lang/String;

    const-string v2, "SWIPE_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    .line 895
    :cond_de
    if-ne v1, v12, :cond_155

    .line 896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v8, :cond_155

    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->R()Z

    move-result v6

    if-eqz v6, :cond_155

    .line 897
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 898
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v8, p0, Lcom/anddoes/launcher/Workspace;->cl:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    .line 899
    iget v8, p0, Lcom/anddoes/launcher/Workspace;->cm:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    .line 900
    iget v9, p0, Lcom/anddoes/launcher/Workspace;->B:I

    mul-int/lit8 v9, v9, 0x3

    if-lt v3, v9, :cond_155

    if-le v3, v2, :cond_155

    .line 901
    iget v2, p0, Lcom/anddoes/launcher/Workspace;->B:I

    mul-int/lit8 v2, v2, 0x3

    if-lt v8, v2, :cond_155

    .line 902
    if-le v8, v7, :cond_155

    .line 903
    iget v2, p0, Lcom/anddoes/launcher/Workspace;->ck:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_135

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->cm:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_135

    .line 904
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->ao:Ljava/lang/String;

    const-string v2, "TWO_FINGER_SWIPE_UP"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iput-wide v10, p0, Lcom/anddoes/launcher/Workspace;->cn:J

    .line 906
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    move v5, v4

    .line 907
    goto/16 :goto_26

    .line 908
    :cond_135
    iget v2, p0, Lcom/anddoes/launcher/Workspace;->ck:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_155

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->cm:F

    cmpl-float v0, v6, v0

    if-lez v0, :cond_155

    .line 909
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->ap:Ljava/lang/String;

    const-string v2, "TWO_FINGER_SWIPE_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iput-wide v10, p0, Lcom/anddoes/launcher/Workspace;->cn:J

    .line 911
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    move v5, v4

    .line 912
    goto/16 :goto_26

    .line 919
    :cond_155
    const-string v0, "DO_NOTHING"

    iget-object v2, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->al:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d1

    .line 930
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    if-eqz v0, :cond_1ae

    .line 931
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_1a4

    .line 932
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 933
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 932
    invoke-static {v0, v1, v2, v3}, Lcom/anddoes/launcher/Workspace;->a(FFFF)D

    move-result-wide v0

    .line 934
    iget-wide v2, p0, Lcom/anddoes/launcher/Workspace;->d:D

    sub-double v0, v2, v0

    iget v2, p0, Lcom/anddoes/launcher/Workspace;->B:I

    mul-int/lit8 v2, v2, 0x8

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_26

    .line 935
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    .line 936
    iput-wide v10, p0, Lcom/anddoes/launcher/Workspace;->cn:J

    .line 937
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->A:Z

    .line 938
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->al:Ljava/lang/String;

    const-string v2, "PINCH_IN"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 939
    goto/16 :goto_26

    .line 941
    :cond_1a4
    if-eq v1, v12, :cond_1aa

    .line 942
    if-eq v1, v4, :cond_1aa

    .line 943
    if-nez v1, :cond_26

    .line 944
    :cond_1aa
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    goto/16 :goto_26

    .line 947
    :cond_1ae
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_1d1

    .line 948
    const/4 v0, 0x5

    if-ne v1, v0, :cond_1d1

    .line 949
    iput-boolean v4, p0, Lcom/anddoes/launcher/Workspace;->c:Z

    .line 950
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 951
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 950
    invoke-static {v0, v1, v2, v3}, Lcom/anddoes/launcher/Workspace;->a(FFFF)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anddoes/launcher/Workspace;->d:D

    goto/16 :goto_26

    .line 958
    :cond_1d1
    if-nez v1, :cond_210

    .line 959
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->aq:Ljava/lang/String;

    const-string v2, "DO_NOTHING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_210

    .line 960
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 961
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 962
    iget-boolean v6, p0, Lcom/anddoes/launcher/Workspace;->cf:Z

    if-eqz v6, :cond_1fe

    iget-wide v6, p0, Lcom/anddoes/launcher/Workspace;->cg:J

    sget-wide v8, Lcom/anddoes/launcher/Workspace;->co:J

    add-long/2addr v6, v8

    cmp-long v6, v6, v2

    if-ltz v6, :cond_1fe

    .line 963
    iget-boolean v6, v0, Lcom/anddoes/launcher/LauncherApplication;->e:Z

    if-eqz v6, :cond_219

    .line 964
    :cond_1fe
    iput-boolean v5, v0, Lcom/anddoes/launcher/LauncherApplication;->e:Z

    .line 965
    iput-boolean v4, p0, Lcom/anddoes/launcher/Workspace;->cf:Z

    .line 966
    iput-wide v2, p0, Lcom/anddoes/launcher/Workspace;->cg:J

    .line 967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->ch:F

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->ci:F

    .line 983
    :cond_210
    sparse-switch v1, :sswitch_data_2b0

    .line 997
    :cond_213
    :goto_213
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_26

    .line 969
    :cond_219
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cf:Z

    if-eqz v0, :cond_210

    .line 970
    iget-wide v6, p0, Lcom/anddoes/launcher/Workspace;->cg:J

    sget-wide v8, Lcom/anddoes/launcher/Workspace;->co:J

    add-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-lez v0, :cond_210

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 972
    iget v3, p0, Lcom/anddoes/launcher/Workspace;->ch:F

    iget v6, p0, Lcom/anddoes/launcher/Workspace;->ci:F

    .line 971
    invoke-static {v0, v2, v3, v6}, Lcom/anddoes/launcher/Workspace;->a(FFFF)D

    move-result-wide v2

    .line 973
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/high16 v0, 0x41c8

    iget v6, p0, Lcom/anddoes/launcher/Workspace;->i:F

    mul-float/2addr v0, v6

    float-to-double v6, v0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_210

    .line 974
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->cf:Z

    .line 975
    iput-wide v10, p0, Lcom/anddoes/launcher/Workspace;->cg:J

    .line 976
    iput-boolean v5, p0, Lcom/anddoes/launcher/Workspace;->A:Z

    .line 977
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->aq:Ljava/lang/String;

    const-string v2, "DOUBLE_TAP"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 985
    :sswitch_259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bF:F

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Workspace;->bG:F

    goto :goto_213

    .line 990
    :sswitch_266
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->x:I

    if-nez v0, :cond_213

    .line 991
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 992
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->v()Z

    move-result v0

    if-nez v0, :cond_213

    .line 993
    iget-object v6, p0, Lcom/anddoes/launcher/Workspace;->aW:[I

    invoke-virtual {p0, v6}, Lcom/anddoes/launcher/Workspace;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    aget v1, v6, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v6, v5

    aget v1, v6, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, v6, v4

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aN:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2ad

    const-string v2, "android.wallpaper.tap"

    :goto_2a3
    aget v3, v6, v5

    aget v4, v6, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto/16 :goto_213

    :cond_2ad
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_2a3

    .line 983
    :sswitch_data_2b0
    .sparse-switch
        0x0 -> :sswitch_259
        0x1 -> :sswitch_266
        0x6 -> :sswitch_266
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1935
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->l:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aA:Z

    .line 1938
    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/anddoes/launcher/SmoothPagedView;->onLayout(ZIIII)V

    .line 1944
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bh:Z

    if-eqz v0, :cond_26

    .line 1945
    iput-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->bh:Z

    .line 1948
    new-instance v0, Lcom/anddoes/launcher/ln;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/ln;-><init>(Lcom/anddoes/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1963
    :cond_25
    :goto_25
    return-void

    .line 1953
    :cond_26
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cA:Z

    if-eqz v0, :cond_25

    .line 1954
    iput-boolean v2, p0, Lcom/anddoes/launcher/Workspace;->cA:Z

    .line 1957
    new-instance v0, Lcom/anddoes/launcher/lo;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/lo;-><init>(Lcom/anddoes/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_25
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->E()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2208
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v0

    .line 2209
    if-eqz v0, :cond_13

    .line 2210
    invoke-virtual {v0, p1, p2}, Lcom/anddoes/launcher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 2215
    :goto_12
    return v0

    .line 2212
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/anddoes/launcher/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_12

    .line 2215
    :cond_18
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .parameter

    .prologue
    .line 4259
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4260
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(I)V

    .line 4261
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->W()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->bg:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cs:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->cu:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 1003
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1005
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 610
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->onViewAdded(Landroid/view/View;)V

    .line 611
    instance-of v0, p1, Lcom/anddoes/launcher/CellLayout;

    if-nez v0, :cond_f

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 613
    const-string v1, "A Workspace can only have CellLayout children."

    .line 612
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_f
    check-cast p1, Lcom/anddoes/launcher/CellLayout;

    .line 616
    invoke-virtual {p1, p0}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View$OnTouchListener;)V

    .line 617
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->z:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 618
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/CellLayout;->setClickable(Z)V

    .line 619
    invoke-virtual {p1}, Lcom/anddoes/launcher/CellLayout;->b()V

    .line 620
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Launcher;->b(I)V

    .line 840
    return-void
.end method

.method public final r()V
    .registers 2

    .prologue
    .line 1567
    iget-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->aa:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/anddoes/launcher/Workspace;->x:I

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    if-nez v0, :cond_10

    .line 1568
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Workspace;->s(I)V

    .line 1570
    :cond_10
    return-void

    .line 1567
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final s(I)V
    .registers 2
    .parameter

    .prologue
    .line 1387
    invoke-super {p0, p1}, Lcom/anddoes/launcher/SmoothPagedView;->s(I)V

    .line 1388
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Workspace;->f(I)V

    .line 1389
    return-void
.end method

.method public final s()Z
    .registers 2

    .prologue
    .line 4254
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->j()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->I()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->aT:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-boolean v0, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public scrollTo(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1989
    invoke-super {p0, p1, p2}, Lcom/anddoes/launcher/SmoothPagedView;->scrollTo(II)V

    .line 1990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Workspace;->cf:Z

    .line 1991
    invoke-direct {p0}, Lcom/anddoes/launcher/Workspace;->V()V

    .line 1992
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 3
    .parameter

    .prologue
    .line 1628
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->aJ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1629
    iput p1, p0, Lcom/anddoes/launcher/Workspace;->aJ:F

    .line 1630
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    .line 1632
    :cond_b
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .registers 4
    .parameter

    .prologue
    .line 1573
    iput p1, p0, Lcom/anddoes/launcher/Workspace;->aF:F

    .line 1574
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 1578
    return-void

    .line 1575
    :cond_b
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 1576
    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/CellLayout;->setBackgroundAlpha(F)V

    .line 1574
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method public setHorizontalWallpaperOffset(F)V
    .registers 3
    .parameter

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/lw;->a(F)V

    .line 1247
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .registers 5
    .parameter

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/anddoes/launcher/lw;->b:F

    .line 1239
    return-void
.end method

.method protected final x()V
    .registers 2

    .prologue
    .line 1381
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->x()V

    .line 1382
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Workspace;->f(I)V

    .line 1383
    return-void
.end method

.method protected final z()V
    .registers 2

    .prologue
    .line 1163
    invoke-super {p0}, Lcom/anddoes/launcher/SmoothPagedView;->z()V

    .line 1164
    iget v0, p0, Lcom/anddoes/launcher/Workspace;->n:I

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(I)V

    .line 1165
    return-void
.end method
