.class public Lcom/anddoes/launcher/AppsCustomizePagedView;
.super Lcom/anddoes/launcher/PagedViewWithDraggableItems;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/anddoes/launcher/bw;
.implements Lcom/anddoes/launcher/cb;


# instance fields
.field public a:Lcom/anddoes/launcher/af;

.field private aA:Ljava/util/ArrayList;

.field private aB:Ljava/util/ArrayList;

.field private aC:Ljava/util/ArrayList;

.field private aD:Ljava/util/ArrayList;

.field private aE:Landroid/graphics/Canvas;

.field private aF:Landroid/graphics/drawable/Drawable;

.field private aG:Lcom/anddoes/launcher/ds;

.field private aH:I

.field private aI:I

.field private aJ:I

.field private aK:I

.field private aL:I

.field private aM:I

.field private aN:I

.field private aO:I

.field private aP:I

.field private final aQ:I

.field private final aR:F

.field private aS:Lcom/anddoes/launcher/PagedViewCellLayout;

.field private aT:I

.field private aU:I

.field private aV:I

.field private aW:Z

.field private aX:Lcom/anddoes/launcher/do;

.field private aY:Landroid/view/animation/RotateAnimation;

.field private aZ:[Ljava/lang/String;

.field private av:Lcom/anddoes/launcher/Launcher;

.field private aw:Lcom/anddoes/launcher/bm;

.field private final ax:Landroid/view/LayoutInflater;

.field private final ay:Landroid/content/pm/PackageManager;

.field private az:I

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    iput v7, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->az:I

    .line 201
    sget-object v0, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    .line 222
    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aR:F

    .line 227
    iput-boolean v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    .line 237
    iput-boolean v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aZ:[Ljava/lang/String;

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/anddoes/launcher/Launcher;

    .line 243
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ax:Landroid/view/LayoutInflater;

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ay:Landroid/content/pm/PackageManager;

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v1}, Lcom/anddoes/launcher/LauncherApplication;->a()Lcom/anddoes/launcher/ds;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aG:Lcom/anddoes/launcher/ds;

    .line 252
    new-instance v1, Lcom/anddoes/launcher/do;

    invoke-direct {v1}, Lcom/anddoes/launcher/do;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aX:Lcom/anddoes/launcher/do;

    .line 253
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aE:Landroid/graphics/Canvas;

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 258
    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 259
    const v2, 0x7f02000c

    .line 260
    const-string v5, "default_widget_preview_holo"

    .line 258
    invoke-virtual {v0, v2, v5}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aF:Landroid/graphics/drawable/Drawable;

    .line 261
    const v0, 0x7f0c0022

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    .line 262
    const v0, 0x7f090002

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aH:I

    .line 264
    sget-object v0, Lcom/anddoes/launcher/kd;->a:[I

    invoke-virtual {p1, p2, v0, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aK:I

    .line 266
    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aL:I

    .line 267
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aO:I

    .line 268
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aP:I

    .line 269
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    .line 270
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    .line 271
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    new-instance v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    .line 277
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aQ:I

    .line 278
    iput-boolean v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->V:Z

    .line 280
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .line 281
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 280
    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aY:Landroid/view/animation/RotateAnimation;

    .line 282
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aY:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 283
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aY:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 284
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aY:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 285
    return-void
.end method

.method private L()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 483
    :goto_b
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v3, :cond_22

    .line 484
    iget-boolean v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-nez v3, :cond_22

    .line 485
    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    :goto_21
    move v0, v2

    .line 487
    :cond_22
    return v0

    :cond_23
    move v0, v2

    .line 482
    goto :goto_b

    :cond_25
    move v2, v1

    .line 485
    goto :goto_21
.end method

.method private M()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 498
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_6b

    .line 499
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    .line 500
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 499
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    .line 501
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    if-gtz v0, :cond_22

    .line 502
    iput v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    .line 507
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v0, :cond_82

    .line 508
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    .line 509
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 508
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    .line 510
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    if-gtz v0, :cond_46

    .line 511
    iput v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    .line 515
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v0, :cond_85

    .line 516
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    .line 517
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 516
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    .line 518
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    if-gtz v0, :cond_6a

    .line 519
    iput v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    .line 523
    :cond_6a
    :goto_6a
    return-void

    .line 504
    :cond_6b
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    .line 505
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 504
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    goto :goto_22

    .line 513
    :cond_82
    iput v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    goto :goto_46

    .line 521
    :cond_85
    iput v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    goto :goto_6a
.end method

.method private N()V
    .registers 4

    .prologue
    .line 884
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 885
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 890
    return-void

    .line 886
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/z;

    .line 887
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/z;->cancel(Z)Z

    .line 888
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method private O()V
    .registers 3

    .prologue
    .line 909
    const-string v0, "VERTICAL_CONTINUOUS"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 910
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v1, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-nez v0, :cond_1c

    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ae:Z

    .line 916
    :cond_1b
    :goto_1b
    return-void

    .line 913
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ae:Z

    goto :goto_1b
.end method

.method private P()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2089
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->L()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2090
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v0, :cond_1c

    .line 2091
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2092
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2094
    :cond_1c
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v0, :cond_2f

    .line 2095
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 2096
    invoke-direct {p0, v1, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2098
    :cond_2f
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v0, :cond_48

    .line 2099
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_49

    .line 2100
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_48

    .line 2101
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    invoke-direct {p0, v2, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2110
    :cond_48
    :goto_48
    return-void

    .line 2104
    :cond_49
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_48

    .line 2105
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    invoke-direct {p0, v2, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    goto :goto_48
.end method

.method private Q()Ljava/util/Comparator;
    .registers 3

    .prologue
    .line 2355
    const-string v0, "INSTALL_DATE"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2356
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->j:Ljava/util/Comparator;

    .line 2362
    :goto_10
    return-object v0

    .line 2357
    :cond_11
    const-string v0, "INSTALL_DATE_ASC"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2358
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->k:Ljava/util/Comparator;

    goto :goto_10

    .line 2359
    :cond_22
    const-string v0, "MOSTLY_USED"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2360
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->i:Ljava/util/Comparator;

    goto :goto_10

    .line 2362
    :cond_33
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->h:Ljava/util/Comparator;

    goto :goto_10
.end method

.method private static a(Ljava/util/List;Lcom/anddoes/launcher/y;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2374
    iget-object v0, p1, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2375
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2376
    const/4 v1, 0x0

    :goto_b
    if-lt v1, v3, :cond_f

    .line 2382
    const/4 v0, -0x1

    :goto_e
    return v0

    .line 2377
    :cond_f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2378
    iget-object v0, v0, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 2379
    goto :goto_e

    .line 2376
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private a(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1411
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1412
    if-gez p6, :cond_12e

    .line 1413
    const v2, 0x7fffffff

    .line 1414
    :goto_9
    if-gez p7, :cond_12a

    .line 1415
    const v1, 0x7fffffff

    .line 1417
    :goto_e
    const/4 v0, 0x0

    .line 1418
    if-eqz p2, :cond_3c

    .line 1420
    :try_start_11
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ay:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v7, p2, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_17} :catch_123

    move-result-object v0

    .line 1423
    :goto_18
    if-nez v0, :cond_3c

    .line 1424
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load widget preview drawable 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1426
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1424
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_3c
    if-eqz v0, :cond_8b

    const/4 v3, 0x1

    move v6, v3

    .line 1433
    :goto_40
    if-eqz v6, :cond_8e

    .line 1434
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1435
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1440
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v3, p4}, Lcom/anddoes/launcher/PagedViewCellLayout;->a(I)I

    move-result v3

    .line 1439
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1442
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v3, p5}, Lcom/anddoes/launcher/PagedViewCellLayout;->b(I)I

    move-result v3

    .line 1441
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v2

    move v2, v1

    .line 1463
    :goto_60
    const/high16 v1, 0x3f80

    .line 1464
    if-le v4, v3, :cond_67

    .line 1465
    int-to-float v1, v3

    int-to-float v3, v4

    div-float/2addr v1, v3

    .line 1467
    :cond_67
    int-to-float v3, v5

    mul-float/2addr v3, v1

    int-to-float v8, v2

    cmpl-float v3, v3, v8

    if-lez v3, :cond_71

    .line 1468
    int-to-float v1, v2

    int-to-float v2, v5

    div-float/2addr v1, v2

    .line 1470
    :cond_71
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_7d

    .line 1471
    int-to-float v2, v4

    mul-float/2addr v2, v1

    float-to-int v4, v2

    .line 1472
    int-to-float v2, v5

    mul-float/2addr v1, v2

    float-to-int v5, v1

    .line 1476
    :cond_7d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1475
    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1478
    if-eqz v6, :cond_ba

    .line 1479
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1512
    :goto_8a
    return-object v1

    .line 1432
    :cond_8b
    const/4 v3, 0x0

    move v6, v3

    goto :goto_40

    .line 1449
    :cond_8e
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v3, p4}, Lcom/anddoes/launcher/PagedViewCellLayout;->a(I)I

    move-result v4

    .line 1450
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v3, p5}, Lcom/anddoes/launcher/PagedViewCellLayout;->b(I)I

    move-result v5

    .line 1451
    if-ne p4, p5, :cond_126

    .line 1454
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    int-to-float v3, v3

    const/high16 v4, 0x3e80

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1455
    const/4 v4, 0x1

    if-gt p4, v4, :cond_b0

    .line 1456
    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    mul-int/lit8 v3, v3, 0x2

    add-int v5, v4, v3

    move v3, v2

    move v4, v5

    move v2, v1

    goto :goto_60

    .line 1458
    :cond_b0
    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    mul-int/lit8 v3, v3, 0x4

    add-int v5, v4, v3

    move v3, v2

    move v4, v5

    move v2, v1

    goto :goto_60

    .line 1483
    :cond_ba
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    int-to-float v0, v0

    const/high16 v2, 0x3e80

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1484
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1485
    int-to-float v2, v2

    .line 1486
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 1485
    div-float v0, v2, v0

    .line 1486
    const/high16 v2, 0x3f80

    .line 1485
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1487
    const/4 v0, 0x1

    if-ne p4, v0, :cond_da

    const/4 v0, 0x1

    if-eq p5, v0, :cond_e1

    .line 1488
    :cond_da
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aF:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1494
    :cond_e1
    const/4 v0, 0x0

    .line 1495
    :try_start_e2
    div-int/lit8 v2, v4, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 1496
    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 1495
    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1497
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    int-to-float v4, v4

    .line 1498
    mul-float/2addr v4, v6

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    .line 1497
    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1499
    if-lez p3, :cond_102

    .line 1500
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aG:Lcom/anddoes/launcher/ds;

    invoke-virtual {v0, v7, p3}, Lcom/anddoes/launcher/ds;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1501
    :cond_102
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v4}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1502
    if-nez v0, :cond_111

    .line 1504
    const v0, 0x7f020037

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1507
    :cond_111
    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 1508
    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1506
    invoke-static/range {v0 .. v5}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_11e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e2 .. :try_end_11e} :catch_120

    goto/16 :goto_8a

    :catch_120
    move-exception v0

    goto/16 :goto_8a

    :catch_123
    move-exception v3

    goto/16 :goto_18

    :cond_126
    move v3, v2

    move v2, v1

    goto/16 :goto_60

    :cond_12a
    move/from16 v1, p7

    goto/16 :goto_e

    :cond_12e
    move v2, p6

    goto/16 :goto_9
.end method

.method static synthetic a(Lcom/anddoes/launcher/AppsCustomizePagedView;)Lcom/anddoes/launcher/Launcher;
    .registers 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    return-object v0
.end method

.method private a(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1999
    if-le p1, p2, :cond_37

    .line 2005
    :goto_3
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    .line 2007
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2008
    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    .line 2010
    :goto_13
    if-le v1, v2, :cond_16

    .line 2022
    return-void

    .line 2011
    :cond_16
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2012
    instance-of v3, v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    if-eqz v3, :cond_2a

    .line 2013
    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    .line 2014
    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/PagedViewCellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2015
    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/PagedViewCellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 2010
    :cond_26
    :goto_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 2016
    :cond_2a
    instance-of v3, v0, Lcom/anddoes/launcher/jl;

    if-eqz v3, :cond_26

    .line 2017
    check-cast v0, Lcom/anddoes/launcher/jl;

    .line 2018
    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/jl;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2019
    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/jl;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_26

    :cond_37
    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_3
.end method

.method private a(ILcom/anddoes/launcher/y;[Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2238
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->y(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2239
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 2240
    if-nez v1, :cond_c

    .line 2276
    :cond_b
    :goto_b
    return-void

    .line 2243
    :cond_c
    iget-object v1, v1, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 2244
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v3, v1}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2245
    const/4 v1, 0x0

    .line 2246
    const-string v4, "LIST_ALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2269
    :cond_21
    :goto_21
    if-eqz v0, :cond_b

    .line 2270
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->Q()Ljava/util/Comparator;

    move-result-object v0

    .line 2271
    invoke-static {v2, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 2272
    if-gez v0, :cond_b

    .line 2273
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 2248
    :cond_34
    const-string v4, "LIST_SYSTEM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2249
    iget v3, p2, Lcom/anddoes/launcher/y;->g:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_21

    :cond_42
    move v0, v1

    goto :goto_21

    .line 2252
    :cond_44
    const-string v4, "LIST_DOWNLOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2253
    iget v3, p2, Lcom/anddoes/launcher/y;->g:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_42

    goto :goto_21

    .line 2256
    :cond_53
    const-string v4, "LIST_NEW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 2257
    iget-wide v3, p2, Lcom/anddoes/launcher/y;->e:J

    const-wide/32 v5, 0xf731400

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_42

    goto :goto_21

    .line 2260
    :cond_6a
    const-string v4, "LIST_UNGROUPED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2261
    invoke-virtual {p2}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_21

    .line 2265
    :cond_7d
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2266
    invoke-virtual {p2}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_21
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 1374
    if-eqz p1, :cond_21

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1375
    :cond_21
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 983
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    .line 986
    return-void

    .line 984
    :cond_8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static synthetic a(Lcom/anddoes/launcher/AppsCustomizePagedView;ILjava/util/ArrayList;II)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1211
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->v(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xc8

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v0, Lcom/anddoes/launcher/ar;

    new-instance v5, Lcom/anddoes/launcher/ac;

    invoke-direct {v5, p0, v1}, Lcom/anddoes/launcher/ac;-><init>(Lcom/anddoes/launcher/AppsCustomizePagedView;I)V

    new-instance v6, Lcom/anddoes/launcher/ad;

    invoke-direct {v6, p0}, Lcom/anddoes/launcher/ad;-><init>(Lcom/anddoes/launcher/AppsCustomizePagedView;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/ar;-><init>(ILjava/util/ArrayList;IILcom/anddoes/launcher/aq;Lcom/anddoes/launcher/aq;)V

    new-instance v1, Lcom/anddoes/launcher/z;

    sget-object v2, Lcom/anddoes/launcher/as;->a:Lcom/anddoes/launcher/as;

    invoke-direct {v1, p1, v2}, Lcom/anddoes/launcher/z;-><init>(ILcom/anddoes/launcher/as;)V

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->x(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/z;->a(I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/anddoes/launcher/ar;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/z;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/z;

    iget v2, v0, Lcom/anddoes/launcher/z;->b:I

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->w(I)I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->g(I)I

    move-result v3

    if-lt v2, v3, :cond_6a

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->h(I)I

    move-result v3

    if-le v2, v3, :cond_71

    :cond_6a
    invoke-virtual {v0, v7}, Lcom/anddoes/launcher/z;->cancel(Z)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_71
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->x(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/z;->a(I)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/ar;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1680
    iget v0, p1, Lcom/anddoes/launcher/ar;->a:I

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jl;

    move-object v2, v0

    :goto_1f
    iget-object v0, p1, Lcom/anddoes/launcher/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_27
    if-lt v3, v4, :cond_44

    invoke-virtual {v2}, Lcom/anddoes/launcher/jl;->f()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->invalidate()V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_60

    return-void

    :cond_3c
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jl;

    move-object v2, v0

    goto :goto_1f

    :cond_44
    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/jl;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewWidget;

    if-eqz v0, :cond_5c

    iget-object v1, p1, Lcom/anddoes/launcher/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    new-instance v5, Lcom/anddoes/launcher/cj;

    invoke-direct {v5, v1}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/PagedViewWidget;->a(Lcom/anddoes/launcher/cj;)V

    :cond_5c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_27

    :cond_60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/z;

    iget v2, v0, Lcom/anddoes/launcher/z;->b:I

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->w(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->x(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/z;->a(I)V

    goto :goto_35
.end method

.method static synthetic a(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/z;Lcom/anddoes/launcher/ar;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1639
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->a()V

    :cond_6
    iget-object v10, p2, Lcom/anddoes/launcher/ar;->b:Ljava/util/ArrayList;

    iget-object v11, p2, Lcom/anddoes/launcher/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v8, v9

    :goto_f
    if-lt v8, v12, :cond_12

    :cond_11
    return-void

    :cond_12
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->a()V

    :cond_1d
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_48

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    aget v4, v5, v9

    const/4 v0, 0x1

    aget v5, v5, v0

    iget v6, p2, Lcom/anddoes/launcher/ar;->e:I

    iget v7, p2, Lcom/anddoes/launcher/ar;->f:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_44
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_f

    :cond_48
    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_44

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aG:Lcom/anddoes/launcher/ds;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/ds;->a(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aJ:I

    move v2, v9

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44
.end method

.method private a(Lcom/anddoes/launcher/PagedViewCellLayout;)V
    .registers 8
    .parameter

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 989
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    invoke-virtual {p1, v0, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;->a(II)V

    .line 990
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->H:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->I:I

    invoke-virtual {p1, v0, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;->b(II)V

    .line 991
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 992
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->F:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->D:I

    .line 993
    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->G:I

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->E:I

    .line 992
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/anddoes/launcher/PagedViewCellLayout;->setPadding(IIII)V

    .line 1008
    :goto_24
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/view/ViewGroup;I)V

    .line 1009
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1011
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1013
    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aI:I

    invoke-virtual {p1, v2}, Lcom/anddoes/launcher/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 1014
    iget-boolean v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->af:Z

    if-eqz v2, :cond_4f

    .line 1015
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/anddoes/launcher/PagedViewCellLayout;->setMinimumHeight(I)V

    .line 1017
    :cond_4f
    invoke-virtual {p1, v0, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;->measure(II)V

    .line 1018
    invoke-static {p1, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/view/ViewGroup;I)V

    .line 1019
    return-void

    .line 995
    :cond_56
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->F:I

    .line 996
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->G:I

    .line 995
    invoke-virtual {p1, v0, v4, v1, v4}, Lcom/anddoes/launcher/PagedViewCellLayout;->setPadding(IIII)V

    .line 997
    invoke-virtual {p1}, Lcom/anddoes/launcher/PagedViewCellLayout;->e()Lcom/anddoes/launcher/jk;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->D:I

    .line 998
    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->E:I

    .line 997
    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/anddoes/launcher/jk;->setPadding(IIII)V

    goto :goto_24
.end method

.method private a(Lcom/anddoes/launcher/jl;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, -0x8000

    .line 1358
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->F:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->D:I

    .line 1359
    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->G:I

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->E:I

    .line 1358
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/anddoes/launcher/jl;->setPadding(IIII)V

    .line 1364
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1366
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1368
    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aI:I

    invoke-virtual {p1, v2}, Lcom/anddoes/launcher/jl;->setMinimumWidth(I)V

    .line 1369
    invoke-virtual {p1, v0, v1}, Lcom/anddoes/launcher/jl;->measure(II)V

    .line 1370
    return-void
.end method

.method private a(Lcom/anddoes/launcher/y;Lcom/anddoes/launcher/PagedViewCellLayout;II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ax:Landroid/view/LayoutInflater;

    .line 1133
    const v1, 0x7f030009

    const/4 v2, 0x0

    .line 1132
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewIcon;

    .line 1134
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aX:Lcom/anddoes/launcher/do;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/PagedViewIcon;->a(Lcom/anddoes/launcher/y;)V

    .line 1135
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1137
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1138
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1139
    iget-boolean v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    if-eqz v1, :cond_26

    .line 1140
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aY:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/PagedViewIcon;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1143
    :cond_26
    sub-int v1, p3, p4

    .line 1144
    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    rem-int v2, v1, v2

    .line 1145
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    div-int/2addr v1, v3

    .line 1147
    new-instance v3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;-><init>(II)V

    .line 1146
    invoke-virtual {p2, v0, p3, v3}, Lcom/anddoes/launcher/PagedViewCellLayout;->a(Landroid/view/View;ILcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;)Z

    .line 1149
    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 338
    array-length v2, p1

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_6

    .line 343
    :goto_5
    return v0

    .line 338
    :cond_6
    aget-object v3, p1, v1

    .line 339
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 340
    const/4 v0, 0x1

    goto :goto_5

    .line 338
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method static synthetic b(Lcom/anddoes/launcher/AppsCustomizePagedView;)I
    .registers 2
    .parameter

    .prologue
    .line 219
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    return v0
.end method

.method private b(Lcom/anddoes/launcher/y;)Z
    .registers 4
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 329
    const/4 v0, 0x0

    .line 334
    :goto_d
    return v0

    .line 331
    :cond_e
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aZ:[Ljava/lang/String;

    if-nez v0, :cond_20

    .line 332
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->u:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aZ:[Ljava/lang/String;

    .line 334
    :cond_20
    invoke-virtual {p1}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aZ:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method private d(IZ)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 1531
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1532
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    mul-int v4, v0, v1

    .line 1535
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->h()I

    move-result v0

    .line 1537
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->F:I

    sub-int/2addr v0, v1

    .line 1538
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->G:I

    .line 1537
    sub-int/2addr v0, v1

    .line 1538
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aO:I

    mul-int/2addr v1, v2

    .line 1537
    sub-int/2addr v0, v1

    .line 1538
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    .line 1537
    div-int v2, v0, v1

    .line 1539
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->i()I

    move-result v0

    .line 1540
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->D:I

    sub-int/2addr v0, v1

    .line 1541
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->E:I

    .line 1540
    sub-int/2addr v0, v1

    .line 1541
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aP:I

    mul-int/2addr v1, v3

    .line 1540
    sub-int/2addr v0, v1

    .line 1541
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    .line 1540
    div-int v3, v0, v1

    .line 1544
    mul-int v1, p1, v4

    move v0, v1

    .line 1545
    :goto_45
    add-int v5, v1, v4

    .line 1546
    iget-object v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1545
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v0, v5, :cond_8a

    .line 1552
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v0, :cond_96

    .line 1554
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jl;

    move-object v4, v0

    .line 1559
    :goto_70
    invoke-virtual {v4}, Lcom/anddoes/launcher/jl;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/jl;->setColumnCount(I)V

    move v8, v9

    .line 1560
    :goto_78
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_9e

    .line 1615
    new-instance v0, Lcom/anddoes/launcher/ae;

    move-object v1, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/anddoes/launcher/ae;-><init>(Lcom/anddoes/launcher/AppsCustomizePagedView;IILcom/anddoes/launcher/jl;ZILjava/util/ArrayList;)V

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/jl;->a(Ljava/lang/Runnable;)V

    .line 1637
    return-void

    .line 1547
    :cond_8a
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 1556
    :cond_96
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jl;

    move-object v4, v0

    goto :goto_70

    .line 1561
    :cond_9e
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1563
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ax:Landroid/view/LayoutInflater;

    .line 1564
    const v5, 0x7f03000c

    .line 1563
    invoke-virtual {v0, v5, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewWidget;

    .line 1565
    instance-of v5, v1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_119

    .line 1567
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1568
    new-instance v6, Lcom/anddoes/launcher/jo;

    invoke-direct {v6, v1, v12, v12}, Lcom/anddoes/launcher/jo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1569
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    iget-object v10, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v5, v10}, Lcom/anddoes/launcher/ia;->b(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_c9

    move-object v5, v6

    .line 1570
    check-cast v5, Lcom/anddoes/launcher/jo;

    .line 1571
    const/16 v10, 0x3e9

    iput v10, v5, Lcom/anddoes/launcher/jo;->i:I

    .line 1573
    :cond_c9
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v5, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    .line 1575
    iget-object v10, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aX:Lcom/anddoes/launcher/do;

    .line 1574
    invoke-virtual {v0, v1, v5}, Lcom/anddoes/launcher/PagedViewWidget;->a(Landroid/appwidget/AppWidgetProviderInfo;[I)V

    .line 1576
    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1588
    :cond_d7
    :goto_d7
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1590
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1591
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1594
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    rem-int v1, v8, v1

    .line 1595
    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    div-int v5, v8, v5

    .line 1596
    new-instance v6, Landroid/widget/GridLayout$LayoutParams;

    .line 1597
    sget-object v10, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v5, v10}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    .line 1598
    sget-object v11, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    .line 1597
    invoke-static {v1, v11}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    .line 1596
    invoke-direct {v6, v10, v11}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1599
    iput v2, v6, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 1600
    iput v3, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 1601
    const/16 v10, 0x33

    invoke-virtual {v6, v10}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1602
    if-lez v1, :cond_10b

    .line 1603
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aO:I

    iput v1, v6, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 1605
    :cond_10b
    if-lez v5, :cond_111

    .line 1606
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aP:I

    iput v1, v6, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 1608
    :cond_111
    invoke-virtual {v4, v0, v6}, Lcom/anddoes/launcher/jl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1560
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_78

    .line 1577
    :cond_119
    instance-of v5, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_d7

    .line 1579
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1580
    new-instance v5, Lcom/anddoes/launcher/jn;

    invoke-direct {v5}, Lcom/anddoes/launcher/jn;-><init>()V

    .line 1581
    const/4 v6, 0x1

    iput v6, v5, Lcom/anddoes/launcher/jn;->i:I

    .line 1582
    new-instance v6, Landroid/content/ComponentName;

    .line 1583
    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iput-object v6, v5, Lcom/anddoes/launcher/jn;->a:Landroid/content/ComponentName;

    .line 1584
    iget-object v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ay:Landroid/content/pm/PackageManager;

    .line 1585
    iget-object v10, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aX:Lcom/anddoes/launcher/do;

    .line 1584
    invoke-virtual {v0, v6, v1}, Lcom/anddoes/launcher/PagedViewWidget;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    .line 1586
    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    goto :goto_d7
.end method

.method private e(IZ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 2158
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 2159
    if-nez v1, :cond_9

    .line 2235
    :goto_8
    return-void

    .line 2162
    :cond_9
    iget-object v1, v1, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 2163
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2164
    if-eqz p2, :cond_102

    .line 2165
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->y(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2166
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2167
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2168
    const-string v4, "LIST_ALL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    move v1, v0

    .line 2169
    :goto_2d
    if-lt v1, v3, :cond_37

    .line 2212
    :cond_2f
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->Q()Ljava/util/Comparator;

    move-result-object v0

    .line 2213
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_8

    .line 2170
    :cond_37
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2171
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 2173
    :cond_46
    const-string v4, "LIST_SYSTEM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    move v1, v0

    .line 2174
    :goto_4f
    if-ge v1, v3, :cond_2f

    .line 2175
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2176
    iget v4, v0, Lcom/anddoes/launcher/y;->g:I

    and-int/lit8 v4, v4, 0x1

    if-eq v4, v5, :cond_62

    .line 2177
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    :cond_62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4f

    .line 2180
    :cond_66
    const-string v4, "LIST_DOWNLOADED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    move v1, v0

    .line 2181
    :goto_6f
    if-ge v1, v3, :cond_2f

    .line 2182
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2183
    iget v4, v0, Lcom/anddoes/launcher/y;->g:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_82

    .line 2184
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    :cond_82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f

    .line 2187
    :cond_86
    const-string v4, "LIST_NEW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ae

    move v1, v0

    .line 2188
    :goto_8f
    if-ge v1, v3, :cond_2f

    .line 2189
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2190
    iget-wide v4, v0, Lcom/anddoes/launcher/y;->e:J

    const-wide/32 v6, 0xf731400

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_aa

    .line 2191
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    :cond_aa
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8f

    .line 2194
    :cond_ae
    const-string v4, "LIST_UNGROUPED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 2195
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v1, v0

    .line 2196
    :goto_c5
    if-ge v1, v3, :cond_2f

    .line 2197
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2198
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_dc

    .line 2199
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    :cond_dc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c5

    .line 2203
    :cond_e0
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v1, v0

    .line 2204
    :goto_e7
    if-ge v1, v3, :cond_2f

    .line 2205
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2206
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 2207
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    :cond_fe
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e7

    .line 2215
    :cond_102
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2216
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2217
    const-string v3, "LIST_ALL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 2218
    :goto_115
    if-lt v0, v2, :cond_125

    .line 2231
    :cond_117
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    .line 2232
    new-instance v1, Lcom/anddoes/launcher/ht;

    .line 2233
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ay:Landroid/content/pm/PackageManager;

    .line 2232
    invoke-direct {v1, v2}, Lcom/anddoes/launcher/ht;-><init>(Landroid/content/pm/PackageManager;)V

    .line 2231
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_8

    .line 2219
    :cond_125
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    .line 2222
    :cond_133
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2223
    :goto_139
    if-ge v0, v2, :cond_117

    .line 2224
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2225
    invoke-static {v3}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2226
    invoke-static {v4, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_150

    .line 2227
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    :cond_150
    add-int/lit8 v0, v0, 0x1

    goto :goto_139
.end method

.method private e(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;)V

    .line 736
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;Lcom/anddoes/launcher/bw;)V

    .line 737
    return-void
.end method

.method private e(Ljava/util/ArrayList;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2334
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2335
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 2336
    :goto_14
    if-lt v1, v4, :cond_17

    .line 2352
    return-void

    .line 2337
    :cond_17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2338
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(Lcom/anddoes/launcher/y;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 2339
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2340
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v5, v5, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v5, v5, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v5, :cond_33

    .line 2341
    invoke-direct {p0, v2, v0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(ILcom/anddoes/launcher/y;[Ljava/lang/String;)V

    .line 2343
    :cond_33
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v5, v5, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v5, v5, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v5, :cond_3f

    .line 2344
    const/4 v5, 0x1

    invoke-direct {p0, v5, v0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(ILcom/anddoes/launcher/y;[Ljava/lang/String;)V

    .line 2346
    :cond_3f
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v5, v5, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v5, v5, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v5, :cond_4f

    .line 2347
    iget-boolean v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v5, :cond_4f

    .line 2348
    const/4 v5, 0x2

    invoke-direct {p0, v5, v0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(ILcom/anddoes/launcher/y;[Ljava/lang/String;)V

    .line 2336
    :cond_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14
.end method

.method private f(Ljava/util/ArrayList;)V
    .registers 7
    .parameter

    .prologue
    .line 2388
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2389
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_9

    .line 2414
    return-void

    .line 2390
    :cond_9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2391
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/util/List;Lcom/anddoes/launcher/y;)I

    move-result v3

    .line 2392
    if-ltz v3, :cond_1c

    .line 2393
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2395
    :cond_1c
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_31

    .line 2396
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/util/List;Lcom/anddoes/launcher/y;)I

    move-result v3

    .line 2397
    if-ltz v3, :cond_31

    .line 2398
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2401
    :cond_31
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_46

    .line 2402
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/util/List;Lcom/anddoes/launcher/y;)I

    move-result v3

    .line 2403
    if-ltz v3, :cond_46

    .line 2404
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2407
    :cond_46
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5b

    .line 2408
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/util/List;Lcom/anddoes/launcher/y;)I

    move-result v0

    .line 2409
    if-ltz v0, :cond_5b

    .line 2410
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2389
    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method private i(I)V
    .registers 9
    .parameter

    .prologue
    .line 1023
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v1, v0

    .line 1024
    mul-int v4, p1, v1

    .line 1025
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1026
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1027
    add-int v0, v4, v1

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    .line 1029
    :goto_22
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    if-nez v0, :cond_2b

    .line 1053
    :cond_2a
    :goto_2a
    return-void

    .line 1033
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    .line 1034
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->b()V

    .line 1035
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 1037
    :goto_3f
    if-lt v3, v2, :cond_4d

    .line 1045
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1046
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->c()V

    goto :goto_2a

    .line 1038
    :cond_4d
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/y;

    .line 1039
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/y;Lcom/anddoes/launcher/PagedViewCellLayout;II)V

    .line 1041
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    iget-object v1, v1, Lcom/anddoes/launcher/y;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3f

    :cond_64
    move v2, v0

    goto :goto_22
.end method

.method private j(I)V
    .registers 9
    .parameter

    .prologue
    .line 1057
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v1, v0

    .line 1058
    mul-int v4, p1, v1

    .line 1059
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1061
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1062
    add-int v0, v4, v1

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1063
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v1, :cond_6f

    .line 1064
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    add-int/2addr p1, v1

    move v2, v0

    .line 1067
    :goto_2d
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    if-nez v0, :cond_36

    .line 1091
    :cond_35
    :goto_35
    return-void

    .line 1071
    :cond_36
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    .line 1072
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->b()V

    .line 1073
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 1075
    :goto_4a
    if-lt v3, v2, :cond_58

    .line 1083
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1084
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->c()V

    goto :goto_35

    .line 1076
    :cond_58
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/y;

    .line 1077
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/y;Lcom/anddoes/launcher/PagedViewCellLayout;II)V

    .line 1079
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-object v1, v1, Lcom/anddoes/launcher/y;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4a

    :cond_6f
    move v2, v0

    goto :goto_2d
.end method

.method private k(I)V
    .registers 9
    .parameter

    .prologue
    .line 1095
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v1, v0

    .line 1096
    mul-int v4, p1, v1

    .line 1097
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1099
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1100
    add-int v0, v4, v1

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1101
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v1, :cond_73

    .line 1102
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int p1, v1, v2

    move v2, v0

    .line 1105
    :goto_31
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    if-nez v0, :cond_3a

    .line 1129
    :cond_39
    :goto_39
    return-void

    .line 1109
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    .line 1110
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->b()V

    .line 1111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 1113
    :goto_4e
    if-lt v3, v2, :cond_5c

    .line 1121
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1122
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->c()V

    goto :goto_39

    .line 1114
    :cond_5c
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/y;

    .line 1115
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/y;Lcom/anddoes/launcher/PagedViewCellLayout;II)V

    .line 1117
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v1, v1, Lcom/anddoes/launcher/y;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4e

    :cond_73
    move v2, v0

    goto :goto_31
.end method

.method public static l()V
    .registers 0

    .prologue
    .line 2450
    return-void
.end method

.method private v(I)I
    .registers 6
    .parameter

    .prologue
    .line 1156
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    .line 1157
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    if-ltz v1, :cond_37

    .line 1158
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    move v1, v0

    .line 1166
    :goto_9
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1167
    const v0, 0x7fffffff

    .line 1168
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1173
    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1174
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    return v0

    .line 1169
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/z;

    .line 1170
    iget v0, v0, Lcom/anddoes/launcher/z;->b:I

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->w(I)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_12

    :cond_37
    move v1, v0

    goto :goto_9
.end method

.method private w(I)I
    .registers 4
    .parameter

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1179
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v0, :cond_17

    .line 1180
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int p1, v0, v1

    .line 1183
    :cond_17
    return p1
.end method

.method private x(I)I
    .registers 5
    .parameter

    .prologue
    const/16 v1, 0x13

    const/4 v0, 0x1

    .line 1193
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->v(I)I

    move-result v2

    .line 1194
    if-gtz v2, :cond_a

    .line 1199
    :goto_9
    return v0

    .line 1196
    :cond_a
    if-gt v2, v0, :cond_e

    move v0, v1

    .line 1197
    goto :goto_9

    :cond_e
    move v0, v1

    .line 1199
    goto :goto_9
.end method

.method private y(I)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 2280
    if-nez p1, :cond_5

    .line 2281
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    .line 2287
    :goto_4
    return-object v0

    .line 2282
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 2283
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    goto :goto_4

    .line 2285
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method private z(I)V
    .registers 5
    .parameter

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 2589
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2590
    const/4 v1, 0x1

    if-ne p1, v1, :cond_63

    .line 2591
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v2, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    if-ne v1, v2, :cond_2d

    .line 2592
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v1, :cond_21

    .line 2593
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->c()V

    .line 2632
    :cond_20
    :goto_20
    return-void

    .line 2594
    :cond_21
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v1, :cond_20

    .line 2595
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->d()V

    goto :goto_20

    .line 2597
    :cond_2d
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v2, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v1, v2, :cond_4b

    .line 2598
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v1, :cond_3f

    .line 2599
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b()V

    goto :goto_20

    .line 2600
    :cond_3f
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v1, :cond_20

    .line 2601
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->c()V

    goto :goto_20

    .line 2604
    :cond_4b
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v1, :cond_57

    .line 2605
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->d()V

    goto :goto_20

    .line 2606
    :cond_57
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v1, :cond_20

    .line 2607
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b()V

    goto :goto_20

    .line 2611
    :cond_63
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v2, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    if-ne v1, v2, :cond_81

    .line 2612
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v1, :cond_75

    .line 2613
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->d()V

    goto :goto_20

    .line 2614
    :cond_75
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v1, :cond_20

    .line 2615
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->c()V

    goto :goto_20

    .line 2617
    :cond_81
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v2, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v1, v2, :cond_9f

    .line 2618
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v1, :cond_93

    .line 2619
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->c()V

    goto :goto_20

    .line 2620
    :cond_93
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v1, :cond_20

    .line 2621
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b()V

    goto :goto_20

    .line 2624
    :cond_9f
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v1, :cond_ac

    .line 2625
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b()V

    goto/16 :goto_20

    .line 2626
    :cond_ac
    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v1, :cond_20

    .line 2627
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->d()V

    goto/16 :goto_20
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 301
    invoke-super {p0}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->a()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->L:Z

    .line 304
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 306
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(F)V

    .line 308
    return-void
.end method

.method protected final a(F)V
    .registers 2
    .parameter

    .prologue
    .line 1958
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(F)V

    .line 1959
    return-void
.end method

.method final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 492
    if-gez p1, :cond_3

    .line 495
    :goto_2
    return-void

    .line 494
    :cond_3
    iput p1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->az:I

    goto :goto_2
.end method

.method public final a(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1834
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->P()V

    .line 1835
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1836
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v0, :cond_4c

    .line 1837
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    if-ge p1, v0, :cond_1b

    .line 1838
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->i(I)V

    .line 1877
    :cond_1a
    :goto_1a
    return-void

    .line 1839
    :cond_1b
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2a

    .line 1840
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->j(I)V

    goto :goto_1a

    .line 1842
    :cond_2a
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v0, :cond_1a

    .line 1843
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_41

    .line 1844
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->k(I)V

    goto :goto_1a

    .line 1846
    :cond_41
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, p2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->d(IZ)V

    goto :goto_1a

    .line 1852
    :cond_4c
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v1, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v0, v1, :cond_5e

    .line 1853
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_5a

    .line 1854
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->k(I)V

    goto :goto_1a

    .line 1856
    :cond_5a
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->d(IZ)V

    goto :goto_1a

    .line 1858
    :cond_5e
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v1, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    if-ne v0, v1, :cond_68

    .line 1859
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->j(I)V

    goto :goto_1a

    .line 1861
    :cond_68
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->i(I)V

    goto :goto_1a

    .line 1865
    :cond_6c
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v1, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    if-ne v0, v1, :cond_76

    .line 1866
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->i(I)V

    goto :goto_1a

    .line 1867
    :cond_76
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v1, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    if-ne v0, v1, :cond_80

    .line 1868
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->j(I)V

    goto :goto_1a

    .line 1870
    :cond_80
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_88

    .line 1871
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->k(I)V

    goto :goto_1a

    .line 1873
    :cond_88
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->d(IZ)V

    goto :goto_1a
.end method

.method public final a(Landroid/content/ComponentName;)V
    .registers 6
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 660
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_b

    .line 667
    :goto_a
    return-void

    .line 661
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 662
    iget-object v3, v0, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 663
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/y;)V

    goto :goto_a

    .line 660
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 732
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/anddoes/launcher/cc;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/anddoes/launcher/Workspace;->g(Z)V

    if-eqz p3, :cond_18

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1d

    instance-of v0, p1, Lcom/anddoes/launcher/DeleteDropTarget;

    if-nez v0, :cond_1d

    :cond_18
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->G()V

    :cond_1d
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->Q()V

    .line 844
    if-nez p3, :cond_53

    .line 846
    instance-of v0, p1, Lcom/anddoes/launcher/Workspace;

    if-eqz v0, :cond_4c

    .line 847
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->K()I

    move-result v0

    .line 848
    check-cast p1, Lcom/anddoes/launcher/Workspace;

    .line 849
    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 851
    iget-object v1, p2, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v1, Lcom/anddoes/launcher/ec;

    .line 852
    if-eqz v0, :cond_4c

    .line 853
    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->a(Lcom/anddoes/launcher/ec;)V

    .line 854
    const/4 v3, 0x0

    .line 855
    iget v4, v1, Lcom/anddoes/launcher/ec;->n:I

    iget v1, v1, Lcom/anddoes/launcher/ec;->o:I

    .line 854
    invoke-virtual {v0, v3, v4, v1}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v2

    :goto_4b
    move v2, v0

    .line 858
    :cond_4c
    if-eqz v2, :cond_53

    .line 859
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->u()V

    .line 862
    :cond_53
    return-void

    .line 854
    :cond_54
    const/4 v0, 0x1

    goto :goto_4b
.end method

.method public final a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/bm;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2051
    iput-object p1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    .line 2052
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->q()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/preference/c;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    .line 2053
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    const-string v3, "VERTICAL_CONTINUOUS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v1

    :goto_23
    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ae:Z

    .line 2054
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    const-string v3, "HORIZONTAL_PAGINATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :goto_33
    iput-boolean v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->af:Z

    .line 2055
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->af:Z

    if-eqz v0, :cond_3f

    .line 2056
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->w:F

    .line 2057
    iput-boolean v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->L:Z

    .line 2059
    :cond_3f
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->B:Z

    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ag:Z

    .line 2060
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->C:Z

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Z)V

    .line 2061
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->k()V

    .line 2062
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->D:I

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aj:I

    .line 2063
    iput-object p2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aw:Lcom/anddoes/launcher/bm;

    .line 2064
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v0, :cond_6e

    .line 2065
    sget-object v0, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    .line 2071
    :goto_69
    return-void

    :cond_6a
    move v0, v2

    .line 2053
    goto :goto_23

    :cond_6c
    move v1, v2

    .line 2054
    goto :goto_33

    .line 2066
    :cond_6e
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v0, :cond_7b

    .line 2067
    sget-object v0, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    goto :goto_69

    .line 2069
    :cond_7b
    sget-object v0, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    goto :goto_69
.end method

.method public final a(Lcom/anddoes/launcher/af;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 893
    iput-object p1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    .line 894
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v0, :cond_33

    .line 895
    sget-object v0, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne p1, v0, :cond_21

    .line 896
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(IZ)V

    .line 906
    :cond_20
    :goto_20
    return-void

    .line 897
    :cond_21
    sget-object v0, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    if-ne p1, v0, :cond_2b

    .line 898
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(IZ)V

    goto :goto_20

    .line 899
    :cond_2b
    sget-object v0, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    if-ne p1, v0, :cond_20

    .line 900
    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(IZ)V

    goto :goto_20

    .line 903
    :cond_33
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->O()V

    .line 904
    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(IZ)V

    goto :goto_20
.end method

.method public final a(Lcom/anddoes/launcher/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 2700
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/y;)V
    .registers 5
    .parameter

    .prologue
    .line 670
    iget v0, p1, Lcom/anddoes/launcher/y;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/anddoes/launcher/y;->a:I

    .line 671
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->j:Lcom/anddoes/launcher/preference/a;

    invoke-virtual {p1}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/anddoes/launcher/y;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/a;->b(Ljava/lang/String;I)V

    .line 672
    const-string v0, "MOSTLY_USED"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 673
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v0, :cond_30

    .line 674
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->i:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 676
    :cond_30
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v0, :cond_3f

    .line 677
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->i:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 679
    :cond_3f
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->G()V

    .line 681
    :cond_42
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 2292
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2293
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2294
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2295
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2297
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 2298
    :goto_1b
    if-lt v1, v3, :cond_50

    .line 2311
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v0, :cond_28

    .line 2312
    invoke-direct {p0, v2, v6}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2314
    :cond_28
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v0, :cond_33

    .line 2315
    invoke-direct {p0, v6, v6}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2317
    :cond_33
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v0, :cond_43

    .line 2318
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_43

    .line 2319
    const/4 v0, 0x2

    invoke-direct {p0, v0, v6}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2321
    :cond_43
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->M()V

    .line 2327
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->L()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2328
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->requestLayout()V

    .line 2330
    :cond_4f
    return-void

    .line 2299
    :cond_50
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 2300
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(Lcom/anddoes/launcher/y;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 2301
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2302
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->j:Lcom/anddoes/launcher/preference/a;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/anddoes/launcher/preference/a;->a(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/anddoes/launcher/y;->a:I

    .line 2298
    :cond_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b
.end method

.method public final a([I)V
    .registers 2
    .parameter

    .prologue
    .line 2726
    return-void
.end method

.method protected final a(Landroid/view/View;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 805
    invoke-super {p0, p1}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v10

    .line 821
    :goto_a
    return v0

    .line 808
    :cond_b
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    if-eqz v0, :cond_1c

    instance-of v0, p1, Lcom/anddoes/launcher/PagedViewIcon;

    if-eqz v0, :cond_1c

    .line 809
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(Landroid/view/View;)V

    .line 810
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    :goto_1a
    move v0, v11

    .line 821
    goto :goto_a

    .line 813
    :cond_1c
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->F()V

    .line 815
    instance-of v0, p1, Lcom/anddoes/launcher/PagedViewIcon;

    if-eqz v0, :cond_29

    .line 816
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(Landroid/view/View;)V

    goto :goto_1a

    .line 817
    :cond_29
    instance-of v0, p1, Lcom/anddoes/launcher/PagedViewWidget;

    if-eqz v0, :cond_1a

    .line 818
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/anddoes/launcher/jn;

    instance-of v0, v9, Lcom/anddoes/launcher/jo;

    if-eqz v0, :cond_cc

    move-object v0, v9

    check-cast v0, Lcom/anddoes/launcher/jo;

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/jo;)[I

    move-result-object v5

    aget v1, v5, v10

    iput v1, v9, Lcom/anddoes/launcher/jn;->n:I

    aget v1, v5, v11

    iput v1, v9, Lcom/anddoes/launcher/jn;->o:I

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    aget v2, v5, v10

    aget v3, v5, v11

    invoke-virtual {v1, v2, v3, v0, v11}, Lcom/anddoes/launcher/Workspace;->a(IILcom/anddoes/launcher/jn;Z)[I

    move-result-object v7

    iget-object v1, v0, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    iget v2, v0, Lcom/anddoes/launcher/jo;->d:I

    iget v3, v0, Lcom/anddoes/launcher/jo;->e:I

    aget v4, v5, v10

    aget v5, v5, v11

    aget v6, v7, v10

    aget v7, v7, v11

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_74
    instance-of v0, v9, Lcom/anddoes/launcher/jo;

    if-eqz v0, :cond_8d

    move-object v0, v9

    check-cast v0, Lcom/anddoes/launcher/jo;

    iget v0, v0, Lcom/anddoes/launcher/jo;->d:I

    if-eqz v0, :cond_8d

    const/16 v0, 0xff

    invoke-static {v10, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_8d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v0, v1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aE:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aE:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aH:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aE:Landroid/graphics/Canvas;

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->P()V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/jn;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aw:Lcom/anddoes/launcher/bm;

    sget v5, Lcom/anddoes/launcher/bm;->b:I

    move-object v1, v8

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/bm;->a(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/anddoes/launcher/bw;Ljava/lang/Object;I)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1a

    :cond_cc
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aQ:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aQ:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aE:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aE:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aE:Landroid/graphics/Canvas;

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput v11, v9, Lcom/anddoes/launcher/jn;->o:I

    iput v11, v9, Lcom/anddoes/launcher/jn;->n:I

    goto :goto_74
.end method

.method protected final a_(III)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 919
    invoke-super {p0, p1, p2, p3}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->a_(III)V

    .line 920
    if-gez p1, :cond_49

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v2, v2, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v2, :cond_7c

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    if-ge p1, v2, :cond_51

    sget-object v2, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    invoke-static {v2}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b(Lcom/anddoes/launcher/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/af;)V

    .line 923
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 924
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 934
    return-void

    .line 920
    :cond_49
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_b

    const/4 p1, 0x0

    goto :goto_b

    :cond_51
    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_6a

    sget-object v2, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    invoke-static {v2}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b(Lcom/anddoes/launcher/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/af;)V

    goto :goto_3c

    :cond_6a
    sget-object v2, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    invoke-static {v2}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b(Lcom/anddoes/launcher/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/af;)V

    goto :goto_3c

    :cond_7c
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v3, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v2, v3, :cond_94

    sget-object v2, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    invoke-static {v2}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b(Lcom/anddoes/launcher/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/af;)V

    goto :goto_3c

    :cond_94
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v3, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    if-ne v2, v3, :cond_ac

    sget-object v2, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    invoke-static {v2}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b(Lcom/anddoes/launcher/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/af;)V

    goto :goto_3c

    :cond_ac
    sget-object v2, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    invoke-static {v2}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b(Lcom/anddoes/launcher/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Lcom/anddoes/launcher/af;)V

    goto/16 :goto_3c

    .line 925
    :cond_bf
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/z;

    .line 926
    iget v2, v0, Lcom/anddoes/launcher/z;->b:I

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->w(I)I

    move-result v2

    .line 927
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    if-le v3, v4, :cond_d5

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    if-ge v2, v3, :cond_df

    .line 928
    :cond_d5
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    if-ge v3, v4, :cond_e8

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    if-gt v2, v3, :cond_e8

    .line 929
    :cond_df
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->x(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/z;->a(I)V

    goto/16 :goto_42

    .line 931
    :cond_e8
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/z;->a(I)V

    goto/16 :goto_42
.end method

.method final b(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .registers 3

    .prologue
    .line 312
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 314
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 316
    :cond_c
    return-void
.end method

.method public final b(Lcom/anddoes/launcher/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 2704
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .registers 2
    .parameter

    .prologue
    .line 2367
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(Ljava/util/ArrayList;)V

    .line 2368
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->M()V

    .line 2369
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->G()V

    .line 2370
    return-void
.end method

.method protected final c(I)I
    .registers 3
    .parameter

    .prologue
    .line 1889
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aZ:[Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->b()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherModel;->a()Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Ljava/util/ArrayList;)V

    .line 324
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->G()V

    .line 325
    return-void
.end method

.method public final c(Lcom/anddoes/launcher/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 2708
    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .registers 2
    .parameter

    .prologue
    .line 2418
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->f(Ljava/util/ArrayList;)V

    .line 2419
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->M()V

    .line 2420
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->G()V

    .line 2421
    return-void
.end method

.method final d()I
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 426
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->az:I

    if-ne v0, v1, :cond_3f

    .line 427
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_108

    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->w()I

    move-result v2

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v0, :cond_ca

    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    if-ge v2, v0, :cond_42

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->e()Lcom/anddoes/launcher/jk;

    move-result-object v0

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v0

    if-lez v0, :cond_108

    mul-int v1, v2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    :goto_3d
    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->az:I

    .line 429
    :cond_3f
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->az:I

    return v0

    .line 427
    :cond_42
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v0, v3

    if-ge v2, v0, :cond_6d

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->e()Lcom/anddoes/launcher/jk;

    move-result-object v0

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v0

    if-lez v0, :cond_108

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int/2addr v2, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_3d

    :cond_6d
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_9f

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->e()Lcom/anddoes/launcher/jk;

    move-result-object v0

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v0

    if-lez v0, :cond_108

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    sub-int/2addr v2, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_3d

    :cond_9f
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jl;

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/anddoes/launcher/jl;->getChildCount()I

    move-result v0

    if-lez v0, :cond_108

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v3

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto/16 :goto_3d

    :cond_ca
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v3, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v0, v3, :cond_ec

    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-nez v0, :cond_ec

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jl;

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/anddoes/launcher/jl;->getChildCount()I

    move-result v0

    if-lez v0, :cond_108

    mul-int v1, v2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto/16 :goto_3d

    :cond_ec
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->e()Lcom/anddoes/launcher/jk;

    move-result-object v0

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v0

    if-lez v0, :cond_108

    mul-int v1, v2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto/16 :goto_3d

    :cond_108
    move v0, v1

    goto/16 :goto_3d
.end method

.method protected final d(I)V
    .registers 7
    .parameter

    .prologue
    .line 1894
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ag:Z

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    const-string v1, "HORIZONTAL_PAGINATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1895
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->P:I

    if-ltz v0, :cond_1c

    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->P:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->p:I

    if-le v0, v1, :cond_54

    .line 1896
    :cond_1c
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->P:I

    if-gez v0, :cond_55

    const/4 v0, 0x0

    .line 1898
    :goto_21
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1899
    invoke-virtual {p0, p1, v1, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(ILandroid/view/View;I)F

    move-result v2

    .line 1900
    const/high16 v3, -0x3e40

    mul-float/2addr v2, v3

    .line 1901
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->i:F

    sget v4, Lcom/anddoes/launcher/AppsCustomizePagedView;->an:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setCameraDistance(F)V

    .line 1902
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    if-nez v0, :cond_5c

    const/high16 v0, 0x3f40

    :goto_3d
    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1903
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f00

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1904
    const/high16 v0, 0x3f80

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1905
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 1908
    :cond_54
    return-void

    .line 1896
    :cond_55
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 1902
    :cond_5c
    const/high16 v0, 0x3e80

    goto :goto_3d
.end method

.method public final d(Lcom/anddoes/launcher/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 2712
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .registers 2
    .parameter

    .prologue
    .line 2430
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->f(Ljava/util/ArrayList;)V

    .line 2431
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(Ljava/util/ArrayList;)V

    .line 2432
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->M()V

    .line 2434
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->G()V

    .line 2435
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 611
    new-instance v0, Lcom/anddoes/launcher/aa;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/aa;-><init>(Lcom/anddoes/launcher/AppsCustomizePagedView;)V

    .line 615
    const-wide/16 v1, 0x1f4

    .line 611
    invoke-virtual {p0, v0, v1, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 616
    return-void
.end method

.method protected final e(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1914
    invoke-super {p0, p1}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->e(I)V

    .line 1916
    const-string v2, "CARD_STACK"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1917
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->l(I)V

    move v1, v0

    .line 1947
    :cond_13
    :goto_13
    if-eqz v1, :cond_1e

    .line 1948
    :goto_15
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_f4

    .line 1952
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->d(I)V

    .line 1954
    :cond_1e
    return-void

    .line 1918
    :cond_1f
    const-string v2, "TABLET"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1919
    new-instance v1, Lcom/anddoes/launcher/jf;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jf;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jf;->a(I)V

    move v1, v0

    goto :goto_13

    .line 1920
    :cond_33
    const-string v2, "CUBE_IN"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1921
    new-instance v1, Lcom/anddoes/launcher/iv;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iv;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iv;->a(I)V

    move v1, v0

    goto :goto_13

    .line 1922
    :cond_47
    const-string v2, "CUBE"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1923
    new-instance v1, Lcom/anddoes/launcher/iw;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iw;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iw;->a(I)V

    move v1, v0

    goto :goto_13

    .line 1925
    :cond_5b
    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->q()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1926
    const-string v2, "ACCORDION"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1927
    new-instance v1, Lcom/anddoes/launcher/it;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/it;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/it;->a(I)V

    move v1, v0

    goto :goto_13

    .line 1928
    :cond_77
    const-string v2, "CROSS"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1929
    new-instance v1, Lcom/anddoes/launcher/iu;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iu;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iu;->a(I)V

    move v1, v0

    goto :goto_13

    .line 1930
    :cond_8b
    const-string v2, "FLIP"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 1931
    new-instance v1, Lcom/anddoes/launcher/ix;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ix;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/ix;->a(I)V

    move v1, v0

    goto/16 :goto_13

    .line 1932
    :cond_a0
    const-string v2, "OVERLAP"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1933
    new-instance v1, Lcom/anddoes/launcher/iz;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/iz;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/iz;->a(I)V

    move v1, v0

    goto/16 :goto_13

    .line 1934
    :cond_b5
    const-string v2, "ROTATE"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 1935
    new-instance v1, Lcom/anddoes/launcher/jb;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jb;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jb;->a(I)V

    move v1, v0

    goto/16 :goto_13

    .line 1936
    :cond_ca
    const-string v2, "SCALE"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 1937
    new-instance v1, Lcom/anddoes/launcher/jd;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jd;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jd;->a(I)V

    move v1, v0

    goto/16 :goto_13

    .line 1938
    :cond_df
    const-string v2, "WHEEL"

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1939
    new-instance v1, Lcom/anddoes/launcher/jh;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jh;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/jh;->a(I)V

    move v1, v0

    goto/16 :goto_13

    .line 1949
    :cond_f4
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1950
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(Landroid/view/View;)V

    .line 1948
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15
.end method

.method public final e(Lcom/anddoes/launcher/cc;)Z
    .registers 3
    .parameter

    .prologue
    .line 2721
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 620
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 621
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    .line 622
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 624
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ay:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 627
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_64

    .line 636
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anddoes/launcher/ia;->c(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    .line 640
    new-instance v2, Lcom/anddoes/launcher/ht;

    .line 641
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ay:Landroid/content/pm/PackageManager;

    .line 640
    invoke-direct {v2, v3}, Lcom/anddoes/launcher/ht;-><init>(Landroid/content/pm/PackageManager;)V

    .line 639
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 642
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/anddoes/launcher/LauncherApplication;->i:Ljava/util/ArrayList;

    .line 643
    const/4 v0, 0x2

    invoke-direct {p0, v0, v7}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 644
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->M()V

    .line 646
    if-eqz v1, :cond_ae

    .line 650
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->L()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 651
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->requestLayout()V

    .line 656
    :cond_63
    :goto_63
    return-void

    .line 627
    :cond_64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 628
    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v4, :cond_78

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v4, :cond_78

    .line 629
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 631
    :cond_78
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Widget "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 632
    const-string v6, " has invalid dimensions ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 633
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 653
    :cond_ae
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->N()V

    .line 654
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->G()V

    goto :goto_63
.end method

.method public final f(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2113
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->q()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/preference/c;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    .line 2114
    if-ne p1, v5, :cond_96

    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    :goto_17
    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2117
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v0, :cond_79

    iget-object v3, v0, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v4, v3}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LIST_UNGROUPED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    iget-object v4, v0, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LIST_UNGROUPED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-direct {p0, v2, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    :cond_4b
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    iget-object v4, v0, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LIST_UNGROUPED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-direct {p0, v1, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    :cond_62
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    iget-object v0, v0, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LIST_UNGROUPED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-direct {p0, v5, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e(IZ)V

    .line 2119
    :cond_79
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->M()V

    .line 2121
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v0, :cond_a3

    .line 2122
    if-nez p1, :cond_98

    move v0, v2

    .line 2130
    :goto_8f
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->O()V

    .line 2131
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->u(I)V

    .line 2132
    return-void

    :cond_96
    move v0, v1

    .line 2114
    goto :goto_17

    .line 2124
    :cond_98
    if-ne p1, v1, :cond_9d

    .line 2125
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    goto :goto_8f

    .line 2127
    :cond_9d
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v0, v1

    goto :goto_8f

    :cond_a3
    move v0, v2

    goto :goto_8f
.end method

.method protected final g(I)I
    .registers 5
    .parameter

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 2502
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2505
    add-int/lit8 v2, p1, -0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 2504
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2506
    return v0
.end method

.method public final g()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f80

    .line 1746
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->P()V

    .line 1747
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->removeAllViews()V

    .line 1748
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->N()V

    .line 1749
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1750
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1751
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->J:Z

    if-eqz v0, :cond_33

    .line 1752
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v3, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v0, v3, :cond_33

    :cond_2e
    move v0, v1

    .line 1753
    :goto_2f
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    if-lt v0, v3, :cond_6a

    .line 1768
    :cond_33
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->I:Z

    if-eqz v0, :cond_4e

    .line 1769
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v3, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    if-ne v0, v3, :cond_4e

    :cond_49
    move v0, v1

    .line 1770
    :goto_4a
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    if-lt v0, v3, :cond_91

    .line 1777
    :cond_4e
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->H:Z

    if-eqz v0, :cond_69

    .line 1778
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->G:Z

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v3, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    if-ne v0, v3, :cond_69

    :cond_64
    move v0, v1

    .line 1779
    :goto_65
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    if-lt v0, v3, :cond_9f

    .line 1816
    :cond_69
    :goto_69
    return-void

    .line 1754
    :cond_6a
    iget-boolean v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v3, :cond_7c

    .line 1755
    new-instance v3, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-direct {v3, v2, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;B)V

    .line 1756
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/PagedViewCellLayout;)V

    .line 1757
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1753
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1759
    :cond_7c
    new-instance v3, Lcom/anddoes/launcher/jl;

    .line 1760
    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    .line 1759
    invoke-direct {v3, v2, v4, v5}, Lcom/anddoes/launcher/jl;-><init>(Landroid/content/Context;II)V

    .line 1761
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/jl;)V

    .line 1762
    new-instance v4, Lcom/anddoes/launcher/jm;

    .line 1763
    invoke-direct {v4}, Lcom/anddoes/launcher/jm;-><init>()V

    .line 1762
    invoke-virtual {p0, v3, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_79

    .line 1771
    :cond_91
    new-instance v3, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-direct {v3, v2, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;B)V

    .line 1772
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/PagedViewCellLayout;)V

    .line 1773
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1770
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 1780
    :cond_9f
    new-instance v3, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-direct {v3, v2, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;B)V

    .line 1781
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/PagedViewCellLayout;)V

    .line 1782
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1779
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 1786
    :cond_ad
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v3, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v0, v3, :cond_d2

    .line 1787
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-nez v0, :cond_d2

    .line 1802
    :goto_b7
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    if-ge v1, v0, :cond_69

    .line 1803
    new-instance v0, Lcom/anddoes/launcher/jl;

    .line 1804
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    .line 1803
    invoke-direct {v0, v2, v3, v4}, Lcom/anddoes/launcher/jl;-><init>(Landroid/content/Context;II)V

    .line 1805
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/jl;)V

    .line 1806
    new-instance v3, Lcom/anddoes/launcher/jm;

    .line 1807
    invoke-direct {v3}, Lcom/anddoes/launcher/jm;-><init>()V

    .line 1806
    invoke-virtual {p0, v0, v3}, Lcom/anddoes/launcher/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1802
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 1810
    :cond_d2
    new-instance v1, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-direct {v1, v2}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1811
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v2, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    if-ne v0, v2, :cond_fa

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    :goto_f0
    iput v0, v1, Lcom/anddoes/launcher/PagedViewCellLayout;->c:I

    .line 1812
    invoke-direct {p0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/PagedViewCellLayout;)V

    .line 1813
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    goto/16 :goto_69

    .line 1811
    :cond_fa
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v2, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    if-ne v0, v2, :cond_114

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_f0

    :cond_114
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_f0

    :cond_12c
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_f0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 1967
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aI:I

    return v0
.end method

.method protected final h(I)I
    .registers 5
    .parameter

    .prologue
    .line 2510
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 2511
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2514
    add-int/lit8 v2, p1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2515
    add-int/lit8 v0, v0, -0x1

    .line 2514
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2513
    return v0
.end method

.method protected final i()V
    .registers 3

    .prologue
    .line 1972
    invoke-super {p0}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->i()V

    .line 1974
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1975
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_17

    .line 1977
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(II)V

    .line 1984
    :cond_16
    :goto_16
    return-void

    .line 1981
    :cond_17
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(II)V

    goto :goto_16
.end method

.method protected final j()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1988
    invoke-super {p0}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->j()V

    .line 1990
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1991
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_f
    if-lt v1, v3, :cond_15

    .line 1995
    :cond_11
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->az:I

    .line 1996
    return-void

    .line 1991
    :cond_15
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    if-eqz v4, :cond_29

    check-cast v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/PagedViewCellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/PagedViewCellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_25
    :goto_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_29
    instance-of v4, v0, Lcom/anddoes/launcher/jl;

    if-eqz v4, :cond_25

    check-cast v0, Lcom/anddoes/launcher/jl;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/jl;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/jl;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_25
.end method

.method public final k()V
    .registers 3

    .prologue
    .line 2041
    const-string v0, "HORIZONTAL_PAGINATED"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2042
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ak:Ljava/lang/String;

    .line 2044
    :cond_16
    return-void
.end method

.method public final m()V
    .registers 6

    .prologue
    .line 2460
    const-string v0, "AppsCustomizePagedView"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aA:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/y;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2461
    const-string v1, "AppsCustomizePagedView"

    const-string v0, "mWidgets"

    iget-object v2, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2462
    return-void

    .line 2461
    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_9d

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" previewImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_9d
    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_2f

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ay:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f
.end method

.method public final n()V
    .registers 1

    .prologue
    .line 2490
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->N()V

    .line 2491
    return-void
.end method

.method protected final o()Ljava/lang/String;
    .registers 9

    .prologue
    const v4, 0x7f060293

    const/4 v2, 0x0

    const v3, 0x7f060292

    .line 2521
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_41

    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->o:I

    .line 2522
    :goto_f
    const v1, 0x7f060290

    .line 2525
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v5, v5, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v5, v5, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v5, :cond_61

    .line 2526
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    if-ge v0, v1, :cond_44

    .line 2528
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    move v7, v1

    move v1, v3

    move v3, v0

    move v0, v7

    .line 2551
    :goto_24
    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2521
    :cond_41
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->n:I

    goto :goto_f

    .line 2529
    :cond_44
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_55

    .line 2530
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int v1, v0, v1

    .line 2532
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_24

    .line 2534
    :cond_55
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    sub-int v1, v0, v1

    .line 2536
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    move v3, v1

    move v1, v4

    goto :goto_24

    .line 2539
    :cond_61
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v6, Lcom/anddoes/launcher/af;->a:Lcom/anddoes/launcher/af;

    if-ne v5, v6, :cond_6e

    .line 2541
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    move v7, v1

    move v1, v3

    move v3, v0

    move v0, v7

    goto :goto_24

    .line 2542
    :cond_6e
    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v6, Lcom/anddoes/launcher/af;->b:Lcom/anddoes/launcher/af;

    if-ne v5, v6, :cond_7b

    .line 2544
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    move v7, v1

    move v1, v3

    move v3, v0

    move v0, v7

    goto :goto_24

    .line 2545
    :cond_7b
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v5, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v3, v5, :cond_87

    .line 2547
    iget v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aV:I

    move v3, v0

    move v0, v1

    move v1, v4

    goto :goto_24

    :cond_87
    move v3, v0

    move v0, v2

    goto :goto_24
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 686
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->I()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 687
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->l()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 720
    :cond_16
    :goto_16
    return-void

    .line 690
    :cond_17
    instance-of v0, p1, Lcom/anddoes/launcher/PagedViewIcon;

    if-eqz v0, :cond_2a

    .line 692
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 693
    new-instance v1, Lcom/anddoes/launcher/ab;

    invoke-direct {v1, p0, v0}, Lcom/anddoes/launcher/ab;-><init>(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/y;)V

    invoke-virtual {p0, p1, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_16

    .line 700
    :cond_2a
    instance-of v0, p1, Lcom/anddoes/launcher/PagedViewWidget;

    if-eqz v0, :cond_16

    .line 702
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060254

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 706
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 707
    const v1, 0x7f0c0037

    .line 706
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    .line 708
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 709
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 710
    const-string v3, "translationY"

    new-array v4, v5, [F

    .line 711
    aput v1, v4, v6

    .line 710
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 712
    const-wide/16 v3, 0x7d

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 713
    const-string v3, "translationY"

    new-array v4, v5, [F

    .line 714
    const/4 v5, 0x0

    aput v5, v4, v6

    .line 713
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 715
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 716
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 717
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 718
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_16
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 866
    invoke-super {p0}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 867
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->N()V

    .line 868
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    invoke-static {p1, p2, p3}, Lcom/anddoes/launcher/ck;->b(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v10, -0x8000

    const v0, 0x7fffffff

    .line 576
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 577
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 578
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->v()Z

    move-result v3

    if-nez v3, :cond_bc

    .line 579
    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->L()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 580
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->u()V

    .line 581
    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 582
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aK:I

    if-ltz v3, :cond_14a

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aK:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2a
    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aL:I

    if-ltz v4, :cond_147

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aL:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_34
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->H:I

    iget v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->I:I

    invoke-virtual {v0, v5, v6}, Lcom/anddoes/launcher/PagedViewCellLayout;->b(II)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->F:I

    iget v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->D:I

    iget v8, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->G:I

    iget v9, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->E:I

    invoke-virtual {v0, v5, v6, v8, v9}, Lcom/anddoes/launcher/PagedViewCellLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v5, v5, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v5, v5, Lcom/anddoes/launcher/preference/f;->w:I

    iget-object v6, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v6, v6, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v6, v6, Lcom/anddoes/launcher/preference/f;->v:I

    invoke-virtual/range {v0 .. v6}, Lcom/anddoes/launcher/PagedViewCellLayout;->a(IIIIII)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->f()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->g()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    invoke-direct {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->M()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v3, v0, v2}, Lcom/anddoes/launcher/PagedViewCellLayout;->measure(II)V

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aS:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->h()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aI:I

    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->i()Z

    move-result v2

    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->az:I

    if-ltz v0, :cond_144

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v3

    if-eqz v3, :cond_144

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->G:Z

    if-eqz v3, :cond_12a

    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d0

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    div-int/2addr v0, v3

    :goto_b5
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(IZ)V

    .line 586
    :cond_bc
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 587
    iget v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aI:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 588
    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ad:I

    iput v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->ac:I

    .line 591
    :cond_cc
    invoke-super {p0, p1, p2}, Lcom/anddoes/launcher/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 598
    return-void

    .line 582
    :cond_d0
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_f0

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    add-int/2addr v0, v4

    goto :goto_b5

    :cond_f0
    iget-boolean v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-eqz v3, :cond_10f

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    add-int/2addr v0, v4

    goto :goto_b5

    :cond_10f
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aT:I

    iget v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aU:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/2addr v0, v3

    add-int/2addr v0, v4

    goto :goto_b5

    :cond_12a
    iget-object v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->a:Lcom/anddoes/launcher/af;

    sget-object v4, Lcom/anddoes/launcher/af;->c:Lcom/anddoes/launcher/af;

    if-ne v3, v4, :cond_13c

    iget-boolean v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aW:Z

    if-nez v3, :cond_13c

    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aM:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aN:I

    mul-int/2addr v3, v4

    div-int/2addr v0, v3

    goto/16 :goto_b5

    :cond_13c
    iget v3, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->J:I

    iget v4, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->K:I

    mul-int/2addr v3, v4

    div-int/2addr v0, v3

    goto/16 :goto_b5

    :cond_144
    move v0, v7

    goto/16 :goto_b5

    :cond_147
    move v4, v0

    goto/16 :goto_34

    :cond_14a
    move v3, v0

    goto/16 :goto_2a
.end method

.method protected final p()V
    .registers 4

    .prologue
    .line 2640
    const-string v0, "HORIZONTAL_PAGINATED"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2641
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->am:Ljava/lang/String;

    const-string v2, "SWIPE_UP"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    :goto_1b
    return-void

    .line 2643
    :cond_1c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->z(I)V

    goto :goto_1b
.end method

.method protected final q()V
    .registers 4

    .prologue
    .line 2653
    const-string v0, "HORIZONTAL_PAGINATED"

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2654
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->an:Ljava/lang/String;

    const-string v2, "SWIPE_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    :goto_1b
    return-void

    .line 2656
    :cond_1c
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->z(I)V

    goto :goto_1b
.end method

.method public final r()V
    .registers 2

    .prologue
    .line 2686
    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    if-eqz v0, :cond_f

    .line 2687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    .line 2688
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->aY:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 2689
    invoke-virtual {p0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->G()V

    .line 2691
    :cond_f
    return-void
.end method

.method public final s()Z
    .registers 2

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->av:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->I()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
