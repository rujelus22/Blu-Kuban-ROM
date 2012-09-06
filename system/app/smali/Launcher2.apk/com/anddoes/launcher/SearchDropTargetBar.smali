.class public Lcom/anddoes/launcher/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/bn;


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Landroid/animation/AnimatorSet;

.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/animation/ObjectAnimator;

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/anddoes/launcher/ButtonDropTarget;

.field private i:Lcom/anddoes/launcher/ButtonDropTarget;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->k:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/SearchDropTargetBar;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    return-object v0
.end method

.method public static b()I
    .registers 1

    .prologue
    .line 187
    const/16 v0, 0xc8

    return v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/SearchDropTargetBar;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    return-object v0
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 191
    const/16 v0, 0xaf

    return v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 152
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 153
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 154
    return-void
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/bm;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    .line 68
    invoke-virtual {p2, p0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bn;)V

    .line 69
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->h:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bn;)V

    .line 70
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->i:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bn;)V

    .line 71
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->h:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/cb;)V

    .line 72
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->i:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/cb;)V

    .line 73
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->h:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ButtonDropTarget;->a(Lcom/anddoes/launcher/Launcher;)V

    .line 74
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->i:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ButtonDropTarget;->a(Lcom/anddoes/launcher/Launcher;)V

    .line 75
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-eqz v0, :cond_33

    .line 76
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->e:Z

    .line 79
    :cond_33
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    iput-boolean v6, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    .line 200
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->ak:Z

    if-eqz v0, :cond_33

    .line 201
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-eqz v0, :cond_33

    .line 202
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherApplication;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 203
    instance-of v0, p2, Lcom/anddoes/launcher/kj;

    if-nez v0, :cond_22

    .line 204
    instance-of v0, p2, Lcom/anddoes/launcher/ki;

    if-eqz v0, :cond_82

    :cond_22
    move-object v0, p2

    .line 205
    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 206
    iget-wide v1, v0, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_33

    iget v0, v0, Lcom/anddoes/launcher/ec;->m:I

    if-nez v0, :cond_33

    .line 207
    iput-boolean v5, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    .line 219
    :cond_33
    :goto_33
    instance-of v0, p2, Lcom/anddoes/launcher/jq;

    if-eqz v0, :cond_53

    .line 220
    check-cast p2, Lcom/anddoes/launcher/jq;

    .line 221
    iget v0, p2, Lcom/anddoes/launcher/jq;->e:I

    sget v1, Lcom/anddoes/launcher/jq;->a:I

    if-eq v0, v1, :cond_51

    .line 222
    iget v0, p2, Lcom/anddoes/launcher/jq;->e:I

    sget v1, Lcom/anddoes/launcher/jq;->b:I

    if-eq v0, v1, :cond_51

    .line 223
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-ne v0, v6, :cond_53

    .line 224
    :cond_51
    iput-boolean v5, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    .line 227
    :cond_53
    iget-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    if-eqz v0, :cond_81

    .line 229
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 231
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 232
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 233
    iget-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->e:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-nez v0, :cond_81

    .line 234
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 235
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 238
    :cond_81
    return-void

    .line 209
    :cond_82
    instance-of v0, p2, Lcom/anddoes/launcher/gn;

    if-eqz v0, :cond_33

    move-object v0, p2

    .line 210
    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 211
    iget v1, v0, Lcom/anddoes/launcher/ec;->m:I

    if-nez v1, :cond_94

    iget v0, v0, Lcom/anddoes/launcher/ec;->o:I

    if-ne v0, v6, :cond_94

    .line 212
    iput-boolean v5, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    goto :goto_33

    .line 213
    :cond_94
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->y()Lcom/anddoes/launcher/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/bm;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    .line 214
    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_33

    .line 215
    iput-boolean v5, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    goto :goto_33
.end method

.method public final a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-nez v0, :cond_13

    .line 161
    invoke-direct {p0}, Lcom/anddoes/launcher/SearchDropTargetBar;->f()V

    .line 162
    if-eqz p1, :cond_14

    .line 163
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 168
    :goto_11
    iput-boolean v2, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->e:Z

    .line 170
    :cond_13
    return-void

    .line 165
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11
.end method

.method public final a(ZZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 263
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    if-nez p2, :cond_19

    .line 266
    iput-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->m:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    :cond_18
    :goto_18
    return-void

    .line 268
    :cond_19
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    if-nez p1, :cond_21

    if-eqz p2, :cond_18

    .line 270
    :cond_21
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/anddoes/launcher/SearchDropTargetBar;->f()V

    .line 174
    if-eqz p1, :cond_e

    .line 175
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 180
    :goto_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->e:Z

    .line 181
    return-void

    .line 177
    :cond_e
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->k:Z

    .line 242
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->k:Z

    if-nez v0, :cond_27

    .line 247
    iget-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->l:Z

    if-eqz v0, :cond_26

    .line 249
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 250
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 251
    iget-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->e:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->n:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-nez v0, :cond_26

    .line 252
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 253
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 259
    :cond_26
    :goto_26
    return-void

    .line 257
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->k:Z

    goto :goto_26
.end method

.method public final e()Landroid/graphics/Rect;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 276
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    if-eqz v0, :cond_54

    .line 277
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 279
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 280
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 283
    aget v3, v2, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 284
    aget v3, v2, v6

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 285
    aget v3, v2, v4

    iget-object v4, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 286
    aget v2, v2, v6

    iget-object v3, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 289
    :goto_53
    return-object v0

    :cond_54
    const/4 v0, 0x0

    goto :goto_53
.end method

.method protected onFinishInflate()V
    .registers 12

    .prologue
    const-wide/16 v9, 0xaf

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    .line 87
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ButtonDropTarget;

    iput-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->h:Lcom/anddoes/launcher/ButtonDropTarget;

    .line 89
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ButtonDropTarget;

    iput-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->i:Lcom/anddoes/launcher/ButtonDropTarget;

    .line 90
    invoke-virtual {p0}, Lcom/anddoes/launcher/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->j:I

    .line 92
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->h:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/ButtonDropTarget;->a(Lcom/anddoes/launcher/SearchDropTargetBar;)V

    .line 93
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->i:Lcom/anddoes/launcher/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/ButtonDropTarget;->a(Lcom/anddoes/launcher/SearchDropTargetBar;)V

    .line 96
    invoke-virtual {p0}, Lcom/anddoes/launcher/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 100
    iget-object v1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v8, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 101
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->a:Landroid/animation/AnimatorSet;

    .line 103
    iget-object v2, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 104
    if-eqz v0, :cond_98

    .line 105
    iget-object v2, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    iget v3, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->j:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 106
    iget-object v2, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 108
    :cond_98
    iget-object v1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 109
    iget-object v1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->a:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/anddoes/launcher/ke;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/ke;-><init>(Lcom/anddoes/launcher/SearchDropTargetBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    iget-object v1, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->b:Landroid/animation/AnimatorSet;

    .line 118
    iget-object v2, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 119
    if-eqz v0, :cond_df

    .line 120
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->g:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v6, [F

    .line 121
    iget v4, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->j:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    .line 120
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 123
    :cond_df
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 124
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->b:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/anddoes/launcher/kf;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/kf;-><init>(Lcom/anddoes/launcher/SearchDropTargetBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v6, [F

    aput v8, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->c:Landroid/animation/ObjectAnimator;

    .line 132
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->c:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->c:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/anddoes/launcher/kg;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/kg;-><init>(Lcom/anddoes/launcher/SearchDropTargetBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->f:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v6, [F

    aput v7, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->d:Landroid/animation/ObjectAnimator;

    .line 140
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    iget-object v0, p0, Lcom/anddoes/launcher/SearchDropTargetBar;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/anddoes/launcher/kh;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/kh;-><init>(Lcom/anddoes/launcher/SearchDropTargetBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    return-void
.end method
