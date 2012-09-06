.class public Lcom/anddoes/launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Rect;

.field private E:I

.field private F:Z

.field private final G:Landroid/graphics/Point;

.field private H:[Landroid/graphics/Point;

.field private I:[F

.field private J:[Lcom/anddoes/launcher/ea;

.field private K:I

.field private final L:Landroid/graphics/Paint;

.field private M:Lcom/anddoes/launcher/BubbleTextView;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Lcom/anddoes/launcher/ea;

.field private P:F

.field private Q:Ljava/util/HashMap;

.field private final R:[I

.field private S:Z

.field private T:Z

.field private U:Landroid/animation/TimeInterpolator;

.field private V:Lcom/anddoes/launcher/ba;

.field private W:Lcom/anddoes/launcher/Launcher;

.field a:[I

.field b:[[Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private final l:Landroid/graphics/Rect;

.field private final m:Lcom/anddoes/launcher/az;

.field private final n:[I

.field private final o:[I

.field private final p:Landroid/graphics/PointF;

.field private q:Z

.field private r:Landroid/view/View$OnTouchListener;

.field private s:Ljava/util/ArrayList;

.field private t:[I

.field private u:I

.field private v:F

.field private w:F

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v1, p0, Lcom/anddoes/launcher/CellLayout;->k:Z

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->l:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Lcom/anddoes/launcher/az;

    invoke-direct {v0}, Lcom/anddoes/launcher/az;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->m:Lcom/anddoes/launcher/az;

    .line 78
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->n:[I

    .line 79
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->o:[I

    .line 80
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->p:Landroid/graphics/PointF;

    .line 81
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    .line 84
    iput-boolean v1, p0, Lcom/anddoes/launcher/CellLayout;->q:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->s:Ljava/util/ArrayList;

    .line 89
    new-array v0, v3, [I

    fill-array-data v0, :array_1f6

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    .line 91
    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->u:I

    .line 93
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->w:F

    .line 105
    iput-boolean v1, p0, Lcom/anddoes/launcher/CellLayout;->F:Z

    .line 106
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->G:Landroid/graphics/Point;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    .line 111
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->I:[F

    .line 113
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    array-length v0, v0

    new-array v0, v0, [Lcom/anddoes/launcher/ea;

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    .line 116
    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->L:Landroid/graphics/Paint;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->N:Landroid/graphics/drawable/Drawable;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    .line 123
    iput v8, p0, Lcom/anddoes/launcher/CellLayout;->P:F

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->Q:Ljava/util/HashMap;

    .line 129
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    .line 131
    iput-boolean v1, p0, Lcom/anddoes/launcher/CellLayout;->S:Z

    .line 132
    iput-boolean v1, p0, Lcom/anddoes/launcher/CellLayout;->T:Z

    move-object v0, p1

    .line 148
    check-cast v0, Lcom/anddoes/launcher/Launcher;

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    .line 152
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/CellLayout;->setWillNotDraw(Z)V

    .line 154
    sget-object v0, Lcom/anddoes/launcher/kd;->b:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 156
    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->c:I

    .line 157
    const/16 v0, 0xa

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->d:I

    .line 161
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    .line 162
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    .line 163
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->c()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    .line 164
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->d()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    .line 165
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    .line 166
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->e()I

    .line 167
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->f()I

    .line 168
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    .line 171
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 177
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 178
    const v3, 0x7f020021

    .line 179
    const-string v4, "homescreen_normal_holo"

    .line 177
    invoke-virtual {v0, v3, v4}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 181
    const v3, 0x7f020022

    .line 182
    const-string v4, "homescreen_strong_holo"

    .line 180
    invoke-virtual {v0, v3, v4}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->y:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 185
    const v3, 0x7f020067

    .line 186
    const-string v4, "overscroll_glow_left"

    .line 184
    invoke-virtual {v0, v3, v4}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->A:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 188
    const v3, 0x7f020068

    .line 189
    const-string v4, "overscroll_glow_right"

    .line 187
    invoke-virtual {v0, v3, v4}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 190
    const v0, 0x7f0c0014

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->E:I

    .line 194
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 195
    const v3, 0x7f020012

    .line 196
    const-string v4, "gardening_crosshairs"

    .line 194
    invoke-virtual {v0, v3, v4}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->N:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 199
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 200
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4020

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->U:Landroid/animation/TimeInterpolator;

    .line 203
    const v0, 0x7f0b0018

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 204
    new-instance v3, Lcom/anddoes/launcher/ea;

    int-to-long v4, v0

    const/high16 v0, 0x3f80

    invoke-direct {v3, v4, v5, v0}, Lcom/anddoes/launcher/ea;-><init>(JF)V

    iput-object v3, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    .line 205
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->d()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/anddoes/launcher/au;

    invoke-direct {v3, p0}, Lcom/anddoes/launcher/au;-><init>(Lcom/anddoes/launcher/CellLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->d()Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->U:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    aput v7, v3, v6

    aput v7, v0, v1

    move v0, v1

    .line 214
    :goto_176
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    array-length v3, v3

    if-lt v0, v3, :cond_1bc

    .line 222
    const v0, 0x7f0b001a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 223
    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    .line 226
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->I:[F

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([FF)V

    .line 228
    :goto_18f
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    array-length v3, v3

    if-lt v1, v3, :cond_1c8

    .line 269
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->C:Landroid/graphics/Rect;

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->D:Landroid/graphics/Rect;

    .line 272
    new-instance v0, Lcom/anddoes/launcher/ba;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/ba;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    .line 273
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/ba;->a(IIII)V

    .line 274
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 275
    return-void

    .line 215
    :cond_1bc
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_176

    .line 230
    :cond_1c8
    new-instance v3, Lcom/anddoes/launcher/ea;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5, v2}, Lcom/anddoes/launcher/ea;-><init>(JF)V

    .line 231
    invoke-virtual {v3}, Lcom/anddoes/launcher/ea;->d()Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/anddoes/launcher/CellLayout;->U:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    invoke-virtual {v3}, Lcom/anddoes/launcher/ea;->d()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/anddoes/launcher/av;

    invoke-direct {v5, p0, v3, v1}, Lcom/anddoes/launcher/av;-><init>(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/ea;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    invoke-virtual {v3}, Lcom/anddoes/launcher/ea;->d()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/anddoes/launcher/aw;

    invoke-direct {v5, p0, v3}, Lcom/anddoes/launcher/aw;-><init>(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/ea;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    aput-object v3, v4, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_18f

    .line 89
    :array_1f6
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static a(Landroid/content/res/Resources;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 359
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 360
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 361
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 360
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 363
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private a(IIIIZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1799
    move v1, p1

    :goto_1
    add-int v0, p1, p3

    if-ge v1, v0, :cond_9

    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    if-lt v1, v0, :cond_a

    .line 1804
    :cond_9
    return-void

    :cond_a
    move v0, p2

    .line 1800
    :goto_b
    add-int v2, p2, p4

    if-ge v0, v2, :cond_13

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    if-lt v0, v2, :cond_17

    .line 1799
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1801
    :cond_17
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v2, v2, v1

    aput-boolean p5, v2, v0

    .line 1800
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method static a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 1574
    if-eqz p0, :cond_e

    .line 1575
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1576
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->h:Z

    .line 1577
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1579
    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/CellLayout;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lcom/anddoes/launcher/CellLayout;->P:F

    return-void
.end method

.method private a([IIIIILandroid/view/View;)Z
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1468
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 1470
    const/4 v5, 0x0

    .line 1472
    :goto_6
    const/4 v1, 0x0

    .line 1473
    if-ltz p4, :cond_12

    .line 1474
    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x1

    sub-int v2, p4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1476
    :cond_12
    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    add-int/lit8 v3, p2, -0x1

    sub-int v3, v2, v3

    .line 1477
    if-ltz p4, :cond_9a

    .line 1478
    add-int/lit8 v2, p2, -0x1

    add-int v4, p4, v2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5c

    const/4 v2, 0x1

    :goto_22
    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    .line 1480
    :goto_28
    const/4 v2, 0x0

    .line 1481
    if-ltz p5, :cond_34

    .line 1482
    const/4 v2, 0x0

    add-int/lit8 v3, p3, -0x1

    sub-int v3, p5, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1484
    :cond_34
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    add-int/lit8 v4, p3, -0x1

    sub-int v4, v3, v4

    .line 1485
    if-ltz p5, :cond_98

    .line 1486
    add-int/lit8 v3, p3, -0x1

    add-int v6, p5, v3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_5e

    const/4 v3, 0x1

    :goto_44
    add-int/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_49
    move v7, v2

    move v2, v5

    .line 1489
    :goto_4b
    if-ge v7, v3, :cond_4f

    if-eqz v2, :cond_60

    .line 1510
    :cond_4f
    const/4 v1, -0x1

    if-ne p4, v1, :cond_57

    const/4 v1, -0x1

    move/from16 v0, p5

    if-eq v0, v1, :cond_91

    .line 1511
    :cond_57
    const/4 p4, -0x1

    .line 1516
    const/16 p5, -0x1

    move v5, v2

    .line 1471
    goto :goto_6

    .line 1478
    :cond_5c
    const/4 v2, 0x0

    goto :goto_22

    .line 1486
    :cond_5e
    const/4 v3, 0x0

    goto :goto_44

    :cond_60
    move v6, v1

    .line 1491
    :goto_61
    if-lt v6, v8, :cond_67

    .line 1489
    :goto_63
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_4b

    .line 1492
    :cond_67
    const/4 v4, 0x0

    move v5, v4

    :goto_69
    if-lt v5, p2, :cond_75

    .line 1502
    if-eqz p1, :cond_73

    .line 1503
    const/4 v2, 0x0

    aput v6, p1, v2

    .line 1504
    const/4 v2, 0x1

    aput v7, p1, v2

    .line 1506
    :cond_73
    const/4 v2, 0x1

    .line 1507
    goto :goto_63

    .line 1493
    :cond_75
    const/4 v4, 0x0

    :goto_76
    if-lt v4, p3, :cond_7c

    .line 1492
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_69

    .line 1494
    :cond_7c
    iget-object v9, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    add-int v10, v6, v5

    aget-object v9, v9, v10

    add-int v10, v7, v4

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_8e

    .line 1497
    add-int v4, v6, v5

    .line 1491
    add-int/lit8 v4, v4, 0x1

    move v6, v4

    goto :goto_61

    .line 1493
    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 1522
    :cond_91
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;Z)V

    .line 1523
    return v2

    :cond_98
    move v3, v4

    goto :goto_49

    :cond_9a
    move v8, v3

    goto :goto_28
.end method

.method static a([III[[Z)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1686
    move v4, v1

    :goto_3
    if-lt v4, p2, :cond_7

    move v2, v1

    .line 1704
    :goto_6
    return v2

    :cond_7
    move v6, v1

    .line 1687
    :goto_8
    if-lt v6, p1, :cond_d

    .line 1686
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1688
    :cond_d
    aget-object v0, p3, v6

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_24

    move v0, v1

    :goto_14
    move v5, v6

    .line 1689
    :goto_15
    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v5, v3, :cond_1d

    if-lt v6, p1, :cond_26

    .line 1696
    :cond_1d
    if-eqz v0, :cond_43

    .line 1697
    aput v6, p0, v1

    .line 1698
    aput v4, p0, v2

    goto :goto_6

    :cond_24
    move v0, v2

    .line 1688
    goto :goto_14

    :cond_26
    move v3, v4

    .line 1690
    :goto_27
    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2f

    if-lt v4, p2, :cond_33

    .line 1689
    :cond_2f
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_15

    .line 1691
    :cond_33
    if-eqz v0, :cond_41

    aget-object v0, p3, v5

    aget-boolean v0, v0, v3

    if-nez v0, :cond_41

    move v0, v2

    .line 1692
    :goto_3c
    if-eqz v0, :cond_1d

    .line 1690
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_41
    move v0, v1

    .line 1691
    goto :goto_3c

    .line 1687
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_8
.end method

.method static synthetic a(Lcom/anddoes/launcher/CellLayout;)[F
    .registers 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->I:[F

    return-object v0
.end method

.method private a(IIIILandroid/view/View;Z[I)[I
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1319
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 1324
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/anddoes/launcher/CellLayout;->e:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/anddoes/launcher/CellLayout;->i:I

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v8, v2

    .line 1325
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/anddoes/launcher/CellLayout;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/anddoes/launcher/CellLayout;->j:I

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v9, v2

    .line 1328
    if-eqz p7, :cond_66

    .line 1329
    :goto_33
    const-wide v3, 0x7fefffffffffffffL

    .line 1331
    move-object/from16 v0, p0

    iget v10, v0, Lcom/anddoes/launcher/CellLayout;->g:I

    .line 1332
    move-object/from16 v0, p0

    iget v11, v0, Lcom/anddoes/launcher/CellLayout;->h:I

    .line 1333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    .line 1335
    const/4 v2, 0x0

    move v7, v2

    :goto_46
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v11, v2

    if-lt v7, v2, :cond_6c

    .line 1363
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;Z)V

    .line 1366
    const-wide v5, 0x7fefffffffffffffL

    cmpl-double v2, v3, v5

    if-nez v2, :cond_65

    .line 1367
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, p7, v2

    .line 1368
    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, p7, v2

    .line 1370
    :cond_65
    return-object p7

    .line 1328
    :cond_66
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p7, v0

    goto :goto_33

    .line 1337
    :cond_6c
    const/4 v2, 0x0

    :goto_6d
    add-int/lit8 v5, p3, -0x1

    sub-int v5, v10, v5

    if-lt v2, v5, :cond_77

    .line 1335
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_46

    .line 1338
    :cond_77
    if-eqz p6, :cond_7f

    .line 1339
    const/4 v5, 0x0

    move v6, v5

    :goto_7b
    move/from16 v0, p3

    if-lt v6, v0, :cond_b2

    .line 1350
    :cond_7f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/CellLayout;->n:[I

    .line 1351
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v5}, Lcom/anddoes/launcher/CellLayout;->a(II[I)V

    .line 1353
    const/4 v6, 0x0

    aget v6, v5, v6

    sub-int/2addr v6, v8

    int-to-double v13, v6

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    .line 1354
    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v5, v9

    int-to-double v5, v5

    const-wide/high16 v15, 0x4000

    move-wide v0, v15

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 1353
    add-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 1355
    cmpg-double v13, v5, v3

    if-gtz v13, :cond_af

    .line 1357
    const/4 v3, 0x0

    aput v2, p7, v3

    .line 1358
    const/4 v3, 0x1

    aput v7, p7, v3

    move-wide v3, v5

    .line 1337
    :cond_af
    :goto_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 1340
    :cond_b2
    const/4 v5, 0x0

    :goto_b3
    move/from16 v0, p4

    if-lt v5, v0, :cond_bb

    .line 1339
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_7b

    .line 1341
    :cond_bb
    add-int v13, v2, v6

    aget-object v13, v12, v13

    add-int v14, v7, v5

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_c7

    .line 1344
    add-int/2addr v2, v6

    .line 1345
    goto :goto_af

    .line 1340
    :cond_c7
    add-int/lit8 v5, v5, 0x1

    goto :goto_b3
.end method

.method public static a(Landroid/content/res/Resources;II[I)[I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1623
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1624
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1625
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1628
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1629
    int-to-float v2, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1631
    if-nez p3, :cond_31

    .line 1632
    const/4 v2, 0x2

    new-array p3, v2, [I

    aput v1, p3, v4

    aput v0, p3, v5

    .line 1636
    :goto_30
    return-object p3

    .line 1634
    :cond_31
    aput v1, p3, v4

    .line 1635
    aput v0, p3, v5

    goto :goto_30
.end method

.method static b(Landroid/content/res/Resources;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 370
    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 371
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 372
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 371
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Lcom/anddoes/launcher/BubbleTextView;)V
    .registers 8
    .parameter

    .prologue
    .line 389
    invoke-static {}, Lcom/anddoes/launcher/BubbleTextView;->d()I

    move-result v0

    .line 390
    invoke-virtual {p1}, Lcom/anddoes/launcher/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 391
    invoke-virtual {p1}, Lcom/anddoes/launcher/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 392
    invoke-virtual {p1}, Lcom/anddoes/launcher/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 393
    invoke-virtual {p1}, Lcom/anddoes/launcher/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 390
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/anddoes/launcher/CellLayout;->invalidate(IIII)V

    .line 394
    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/CellLayout;)[Landroid/graphics/Point;
    .registers 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/CellLayout;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->Q:Ljava/util/HashMap;

    return-object v0
.end method

.method private c(II[I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 870
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v1

    .line 872
    const/4 v2, 0x0

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    aput v0, p3, v2

    .line 873
    const/4 v0, 0x1

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 874
    return-void
.end method

.method private d(II)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 921
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    add-int/lit8 v0, v0, -0x1

    .line 922
    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    add-int/lit8 v2, v2, -0x1

    .line 924
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 925
    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 927
    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->c:I

    mul-int/2addr v5, v6

    sub-int v5, v3, v5

    .line 928
    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->d:I

    mul-int/2addr v6, v7

    sub-int v6, v4, v6

    .line 931
    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    div-int v7, v3, v7

    iget v8, p0, Lcom/anddoes/launcher/CellLayout;->c:I

    if-le v7, v8, :cond_59

    .line 932
    if-lez v0, :cond_57

    div-int v0, v5, v0

    :goto_31
    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    .line 933
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->c:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    .line 938
    :goto_37
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    div-int v0, v4, v0

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->d:I

    if-le v0, v3, :cond_62

    .line 939
    if-lez v2, :cond_43

    div-int v1, v6, v2

    :cond_43
    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    .line 940
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->d:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    .line 945
    :goto_49
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/ba;->a(IIII)V

    .line 979
    return-void

    :cond_57
    move v0, v1

    .line 932
    goto :goto_31

    .line 935
    :cond_59
    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    .line 936
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    div-int v0, v3, v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    goto :goto_37

    .line 942
    :cond_62
    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    .line 943
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    div-int v0, v4, v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    goto :goto_49
.end method

.method private w()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1708
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    if-lt v0, v2, :cond_7

    .line 1713
    return-void

    :cond_7
    move v2, v1

    .line 1709
    :goto_8
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    if-lt v2, v3, :cond_f

    .line 1708
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1710
    :cond_f
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    .line 1709
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method


# virtual methods
.method public final a(I)I
    .registers 5
    .parameter

    .prologue
    .line 1817
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 1818
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    mul-int/2addr v1, v2

    .line 1817
    add-int/2addr v0, v1

    return v0
.end method

.method final a()Lcom/anddoes/launcher/az;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 339
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    .line 340
    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    move v2, v0

    .line 342
    :goto_6
    if-lt v2, v4, :cond_a

    .line 352
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    move v1, v0

    .line 343
    :goto_b
    if-lt v1, v3, :cond_11

    .line 342
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 344
    :cond_11
    iget-object v5, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v5, v5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_23

    .line 345
    new-instance v0, Lcom/anddoes/launcher/az;

    invoke-direct {v0}, Lcom/anddoes/launcher/az;-><init>()V

    .line 346
    iput v1, v0, Lcom/anddoes/launcher/az;->b:I

    .line 347
    iput v2, v0, Lcom/anddoes/launcher/az;->c:I

    goto :goto_9

    .line 343
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public final a(F)V
    .registers 2
    .parameter

    .prologue
    .line 1059
    iput p1, p0, Lcom/anddoes/launcher/CellLayout;->v:F

    .line 1060
    return-void
.end method

.method final a(FZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 397
    if-eqz p2, :cond_20

    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->A:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_20

    .line 398
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->A:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    .line 403
    :cond_c
    :goto_c
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->u:I

    .line 404
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 405
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 406
    return-void

    .line 399
    :cond_20
    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->B:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_c

    .line 400
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->B:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    goto :goto_c
.end method

.method public final a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 382
    iput p1, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    .line 383
    iput p2, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    .line 384
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    .line 385
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->requestLayout()V

    .line 386
    return-void
.end method

.method public final a(IIIILandroid/graphics/RectF;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1591
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    .line 1592
    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    .line 1593
    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    .line 1594
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    .line 1596
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v4

    .line 1597
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v5

    .line 1599
    mul-int v6, p3, v0

    add-int/lit8 v7, p3, -0x1

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 1600
    mul-int v7, p4, v1

    add-int/lit8 v8, p4, -0x1

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    .line 1602
    add-int/2addr v0, v2

    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    .line 1603
    add-int/2addr v1, v3

    mul-int/2addr v1, p2

    add-int/2addr v1, v5

    .line 1605
    int-to-float v2, v0

    int-to-float v3, v1

    add-int/2addr v0, v6

    int-to-float v0, v0

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-virtual {p5, v2, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1606
    return-void
.end method

.method final a(II[I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 886
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v1

    .line 888
    const/4 v2, 0x0

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, p3, v2

    .line 889
    const/4 v0, 0x1

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 890
    return-void
.end method

.method public final a(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/anddoes/launcher/CellLayout;->r:Landroid/view/View$OnTouchListener;

    .line 639
    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1766
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1767
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 1768
    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v4, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(IIIIZ)V

    .line 1769
    return-void
.end method

.method final a(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    const/4 v2, 0x0

    aget v8, v1, v2

    .line 1209
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    const/4 v2, 0x1

    aget v9, v1, v2

    .line 1210
    iget-object v7, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/anddoes/launcher/CellLayout;->a(IIIILandroid/view/View;[I)[I

    move-result-object v1

    .line 1211
    if-eqz p1, :cond_3a

    if-nez p7, :cond_3a

    .line 1212
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->G:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1217
    :goto_2e
    if-nez p2, :cond_40

    if-nez p1, :cond_40

    .line 1218
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_39

    .line 1219
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 1275
    :cond_39
    :goto_39
    return-void

    .line 1214
    :cond_3a
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->G:Landroid/graphics/Point;

    invoke-virtual {v2, p3, p4}, Landroid/graphics/Point;->set(II)V

    goto :goto_2e

    .line 1224
    :cond_40
    if-eqz v1, :cond_b6

    const/4 v2, 0x0

    aget v2, v1, v2

    if-ne v2, v8, :cond_4c

    const/4 v2, 0x1

    aget v2, v1, v2

    if-eq v2, v9, :cond_b6

    .line 1226
    :cond_4c
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->o:[I

    .line 1227
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {p0, v3, v1, v2}, Lcom/anddoes/launcher/CellLayout;->c(II[I)V

    .line 1229
    const/4 v1, 0x0

    aget v3, v2, v1

    .line 1230
    const/4 v1, 0x1

    aget v2, v2, v1

    .line 1232
    if-eqz p1, :cond_bf

    if-nez p7, :cond_bf

    .line 1235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1236
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 1237
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 1244
    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    mul-int/2addr v1, p5

    add-int/lit8 v4, p5, -0x1

    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1245
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1244
    sub-int/2addr v1, v4

    .line 1245
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    .line 1262
    :goto_8a
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    .line 1263
    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/anddoes/launcher/ea;->b()V

    .line 1264
    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    .line 1266
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1267
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/anddoes/launcher/ea;->a(Ljava/lang/Object;)V

    .line 1268
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/anddoes/launcher/ea;->a()V

    .line 1272
    :cond_b6
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_39

    .line 1273
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    goto/16 :goto_39

    .line 1247
    :cond_bf
    if-eqz p7, :cond_df

    if-eqz p8, :cond_df

    .line 1250
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    mul-int/2addr v4, p5

    add-int/lit8 v5, p5, -0x1

    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1251
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 1252
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    goto :goto_8a

    .line 1255
    :cond_df
    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    mul-int/2addr v1, p5

    add-int/lit8 v4, p5, -0x1

    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1256
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1255
    sub-int/2addr v1, v4

    .line 1256
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    .line 1257
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    mul-int v3, v3, p6

    add-int/lit8 v4, p6, -0x1

    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1258
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1257
    sub-int/2addr v3, v4

    .line 1258
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_8a
.end method

.method public final a(Landroid/view/View;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1776
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    if-eq v0, v1, :cond_c

    .line 1790
    :cond_b
    return-void

    .line 1777
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1778
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v4, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(IIIIZ)V

    .line 1779
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aR:Z

    if-eqz v0, :cond_b

    .line 1780
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v7

    .line 1781
    const/4 v0, 0x0

    move v6, v0

    :goto_30
    if-ge v6, v7, :cond_b

    .line 1782
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1783
    if-eq p1, v0, :cond_4c

    .line 1784
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1785
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    .line 1786
    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v4, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    move-object v0, p0

    .line 1785
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(IIIIZ)V

    .line 1781
    :cond_4c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30
.end method

.method public final a(Landroid/view/View;[I)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1724
    aput v3, p2, v3

    .line 1725
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    :goto_11
    if-gez v5, :cond_33

    .line 1734
    :cond_13
    aput v3, p2, v4

    .line 1735
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    :goto_1a
    if-gez v5, :cond_63

    .line 1744
    :cond_1c
    aput v3, p2, v8

    .line 1745
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    add-int/2addr v1, v2

    :goto_23
    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    if-lt v1, v2, :cond_93

    .line 1754
    :cond_27
    aput v3, p2, v9

    .line 1755
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    add-int/2addr v1, v2

    :goto_2e
    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    if-lt v1, v2, :cond_c3

    .line 1763
    :cond_32
    return-void

    .line 1727
    :cond_33
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    move v2, v3

    :goto_36
    iget v6, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v7, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lt v1, v6, :cond_57

    .line 1730
    if-eqz v2, :cond_4d

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aR:Z

    if-eqz v1, :cond_13

    .line 1731
    :cond_4d
    aget v1, p2, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v3

    .line 1725
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    goto :goto_11

    .line 1728
    :cond_57
    iget-object v6, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v6, v6, v5

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_60

    move v2, v4

    .line 1727
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1737
    :cond_63
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    move v2, v3

    :goto_66
    iget v6, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v7, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lt v1, v6, :cond_87

    .line 1740
    if-eqz v2, :cond_7d

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aR:Z

    if-eqz v1, :cond_1c

    .line 1741
    :cond_7d
    aget v1, p2, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v4

    .line 1735
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    goto :goto_1a

    .line 1738
    :cond_87
    iget-object v6, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_90

    move v2, v4

    .line 1737
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 1747
    :cond_93
    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    move v5, v3

    :goto_96
    iget v6, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v7, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lt v2, v6, :cond_b7

    .line 1750
    if-eqz v5, :cond_ad

    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v2, v2, Lcom/anddoes/launcher/preference/f;->aR:Z

    if-eqz v2, :cond_27

    .line 1751
    :cond_ad
    aget v2, p2, v8

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v8

    .line 1745
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_23

    .line 1748
    :cond_b7
    iget-object v6, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_c0

    move v5, v4

    .line 1747
    :cond_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 1757
    :cond_c3
    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    move v5, v3

    :goto_c6
    iget v6, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v7, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lt v2, v6, :cond_e7

    .line 1760
    if-eqz v5, :cond_dd

    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v2, v2, Lcom/anddoes/launcher/preference/f;->aR:Z

    if-eqz v2, :cond_32

    .line 1761
    :cond_dd
    aget v2, p2, v9

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v9

    .line 1755
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2e

    .line 1758
    :cond_e7
    iget-object v6, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v6, v6, v2

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_f0

    move v5, v4

    .line 1757
    :cond_f0
    add-int/lit8 v2, v2, 0x1

    goto :goto_c6
.end method

.method final a(Lcom/anddoes/launcher/BubbleTextView;)V
    .registers 3
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    .line 412
    iput-object p1, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    .line 413
    if-eqz v0, :cond_9

    .line 414
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/CellLayout;->b(Lcom/anddoes/launcher/BubbleTextView;)V

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_12

    .line 417
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/CellLayout;->b(Lcom/anddoes/launcher/BubbleTextView;)V

    .line 419
    :cond_12
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/cx;)V
    .registers 3
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/ec;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1653
    instance-of v0, p1, Lcom/anddoes/launcher/gn;

    if-eqz v0, :cond_1e

    move-object v0, p1

    .line 1654
    check-cast v0, Lcom/anddoes/launcher/gn;

    iget v1, v0, Lcom/anddoes/launcher/gn;->b:I

    move-object v0, p1

    .line 1655
    check-cast v0, Lcom/anddoes/launcher/gn;

    iget v0, v0, Lcom/anddoes/launcher/gn;->c:I

    .line 1664
    :goto_f
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/anddoes/launcher/CellLayout;->b(II[I)[I

    move-result-object v0

    .line 1665
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Lcom/anddoes/launcher/ec;->n:I

    .line 1666
    aget v0, v0, v3

    iput v0, p1, Lcom/anddoes/launcher/ec;->o:I

    .line 1667
    :goto_1d
    return-void

    .line 1656
    :cond_1e
    instance-of v0, p1, Lcom/anddoes/launcher/jo;

    if-eqz v0, :cond_2d

    move-object v0, p1

    .line 1657
    check-cast v0, Lcom/anddoes/launcher/jo;

    iget v1, v0, Lcom/anddoes/launcher/jo;->b:I

    move-object v0, p1

    .line 1658
    check-cast v0, Lcom/anddoes/launcher/jo;

    iget v0, v0, Lcom/anddoes/launcher/jo;->c:I

    goto :goto_f

    .line 1661
    :cond_2d
    iput v3, p1, Lcom/anddoes/launcher/ec;->o:I

    iput v3, p1, Lcom/anddoes/launcher/ec;->n:I

    goto :goto_1d
.end method

.method public final a(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 279
    if-eqz p1, :cond_d7

    .line 280
    const-string v1, "NONE"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 281
    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    .line 289
    :cond_1b
    :goto_1b
    const-string v1, "NONE"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 290
    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    .line 335
    :cond_2d
    :goto_2d
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anddoes/launcher/CellLayout;->setPadding(IIII)V

    .line 336
    return-void

    .line 282
    :cond_39
    const-string v1, "SMALL"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 283
    const v1, 0x7f0c0016

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    goto :goto_1b

    .line 284
    :cond_53
    const-string v1, "MEDIUM"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 285
    const v1, 0x7f0c0017

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    goto :goto_1b

    .line 286
    :cond_6d
    const-string v1, "LARGE"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 287
    const v1, 0x7f0c0018

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    goto :goto_1b

    .line 291
    :cond_87
    const-string v0, "SMALL"

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 292
    const v0, 0x7f0c0019

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    goto :goto_2d

    .line 293
    :cond_a1
    const-string v0, "MEDIUM"

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 294
    const v0, 0x7f0c001a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    goto/16 :goto_2d

    .line 295
    :cond_bc
    const-string v0, "LARGE"

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 296
    const v0, 0x7f0c001b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    goto/16 :goto_2d

    .line 300
    :cond_d7
    const-string v1, "NONE"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->T:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 309
    :cond_e5
    :goto_e5
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-boolean v1, v1, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v1, :cond_16c

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v1

    if-nez v1, :cond_16c

    .line 310
    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    .line 315
    :goto_f5
    const v1, 0x7f0c0051

    .line 316
    const v0, 0x7f0c0052

    .line 317
    const-string v3, "NONE"

    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v4, v4, Lcom/anddoes/launcher/preference/f;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_171

    .line 318
    const v1, 0x7f0c0049

    .line 319
    const v0, 0x7f0c004a

    .line 327
    :cond_10f
    :goto_10f
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-boolean v3, v3, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v3, :cond_19c

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v3

    if-nez v3, :cond_19c

    .line 328
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    .line 329
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    goto/16 :goto_2d

    .line 302
    :cond_129
    const-string v1, "SMALL"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->T:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 303
    const v0, 0x7f0c0045

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e5

    .line 304
    :cond_13f
    const-string v1, "MEDIUM"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->T:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 305
    const v0, 0x7f0c0046

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e5

    .line 306
    :cond_155
    const-string v1, "LARGE"

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->T:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 307
    const v0, 0x7f0c0047

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_e5

    .line 312
    :cond_16c
    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    goto :goto_f5

    .line 320
    :cond_171
    const-string v3, "SMALL"

    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v4, v4, Lcom/anddoes/launcher/preference/f;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 321
    const v1, 0x7f0c004d

    .line 322
    const v0, 0x7f0c004e

    goto :goto_10f

    .line 323
    :cond_186
    const-string v3, "LARGE"

    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->W:Lcom/anddoes/launcher/Launcher;

    iget-object v4, v4, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v4, v4, Lcom/anddoes/launcher/preference/f;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 324
    const v1, 0x7f0c0055

    .line 325
    const v0, 0x7f0c0056

    goto/16 :goto_10f

    .line 331
    :cond_19c
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    .line 332
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    goto/16 :goto_2d
.end method

.method final a(IILandroid/view/View;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 1441
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/CellLayout;->a([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;III)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1113
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v5

    .line 1114
    invoke-virtual {v5, p1}, Lcom/anddoes/launcher/ba;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_ad

    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v0, v0, p2

    aget-boolean v0, v0, p3

    if-nez v0, :cond_ad

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/ec;

    .line 1119
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->Q:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1120
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->Q:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1121
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->Q:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    :cond_3a
    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->f:I

    .line 1125
    iget v6, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->g:I

    .line 1126
    iget-object v7, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    iget v8, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    aget-object v7, v7, v8

    iget v8, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    aput-boolean v4, v7, v8

    .line 1127
    iget-object v7, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    aget-object v7, v7, p2

    aput-boolean v3, v7, p3

    .line 1129
    iput-boolean v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->e:Z

    .line 1130
    iput p2, v1, Lcom/anddoes/launcher/ec;->l:I

    iput p2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    .line 1131
    iput p3, v1, Lcom/anddoes/launcher/ec;->m:I

    iput p3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    .line 1132
    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/ba;->a(Lcom/anddoes/launcher/CellLayout$LayoutParams;)V

    .line 1133
    iput-boolean v4, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->e:Z

    .line 1134
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->f:I

    .line 1135
    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->g:I

    .line 1137
    iput v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->f:I

    .line 1138
    iput v6, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->g:I

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1141
    const-string v7, "x"

    new-array v8, v9, [I

    aput v2, v8, v4

    aput v1, v8, v3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1142
    const-string v2, "y"

    new-array v7, v9, [I

    aput v6, v7, v4

    aput v5, v7, v3

    invoke-static {v2, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1143
    new-array v5, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v4

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1144
    const-wide/16 v4, 0xe6

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1145
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->Q:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v2, Lcom/anddoes/launcher/ax;

    invoke-direct {v2, p0, p1}, Lcom/anddoes/launcher/ax;-><init>(Lcom/anddoes/launcher/CellLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1151
    new-instance v2, Lcom/anddoes/launcher/ay;

    invoke-direct {v2, p0, v0}, Lcom/anddoes/launcher/ay;-><init>(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/CellLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1168
    int-to-long v4, p4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1169
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    move v0, v3

    .line 1172
    :goto_ac
    return v0

    :cond_ad
    move v0, v4

    goto :goto_ac
.end method

.method public final a(Landroid/view/View;IILcom/anddoes/launcher/CellLayout$LayoutParams;Z)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 651
    .line 655
    iget v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    if-ltz v1, :cond_3c

    iget v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3c

    iget v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    if-ltz v1, :cond_3c

    iget v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3c

    .line 658
    iget v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    if-gez v1, :cond_21

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iput v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    .line 659
    :cond_21
    iget v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    if-gez v1, :cond_29

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    iput v1, p4, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    .line 661
    :cond_29
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 663
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v1, p1, p2, p4}, Lcom/anddoes/launcher/ba;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 665
    if-eqz p5, :cond_36

    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/view/View;Z)V

    .line 666
    :cond_36
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->a()V

    .line 667
    const/4 v0, 0x1

    .line 669
    :cond_3c
    return v0
.end method

.method public final a([I)Z
    .registers 5
    .parameter

    .prologue
    .line 1680
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->b:[[Z

    invoke-static {p1, v0, v1, v2}, Lcom/anddoes/launcher/CellLayout;->a([III[[Z)Z

    move-result v0

    return v0
.end method

.method final a([III)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 1427
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/CellLayout;->a([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method final a(IIIILandroid/view/View;[I)[I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1388
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/anddoes/launcher/CellLayout;->a(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method final a(IIII[I)[I
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1299
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/anddoes/launcher/CellLayout;->a(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/ba;->setLayerType(ILandroid/graphics/Paint;)V

    .line 379
    return-void
.end method

.method public final b(F)V
    .registers 2
    .parameter

    .prologue
    .line 1063
    iput p1, p0, Lcom/anddoes/launcher/CellLayout;->w:F

    .line 1064
    return-void
.end method

.method public final b(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 610
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 611
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 612
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 1793
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    if-eq v0, v1, :cond_b

    .line 1796
    :cond_a
    :goto_a
    return-void

    .line 1794
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 1795
    iget v1, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iget v4, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(IIIIZ)V

    goto :goto_a
.end method

.method public final b(Lcom/anddoes/launcher/cx;)V
    .registers 3
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 603
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 605
    :cond_d
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 606
    return-void
.end method

.method final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->F:Z

    if-eq v0, p1, :cond_9

    .line 430
    iput-boolean p1, p0, Lcom/anddoes/launcher/CellLayout;->F:Z

    .line 431
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 433
    :cond_9
    return-void
.end method

.method final b([III)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1458
    .line 1459
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    .line 1458
    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/CellLayout;->a([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method final b(IIII[I)[I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1406
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/anddoes/launcher/CellLayout;->a(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method public final b(II[I)[I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public final c(II)Landroid/view/View;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 1108
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v3}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-lt v2, v4, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v3, v2}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    if-gt v5, p1, :cond_2e

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v6, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    add-int/2addr v5, v6

    if-ge p1, v5, :cond_2e

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    if-gt v5, p2, :cond_2e

    iget v5, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v0, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    add-int/2addr v0, v5

    if-ge p2, v0, :cond_2e

    move-object v0, v1

    goto :goto_b

    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8
.end method

.method public final c()Lcom/anddoes/launcher/ba;
    .registers 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    .line 425
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final c(F)V
    .registers 5
    .parameter

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_b

    .line 1090
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1091
    return-void

    .line 1089
    :cond_b
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 627
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 630
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 631
    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_b

    .line 635
    return-void

    .line 632
    :cond_b
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter

    .prologue
    .line 1836
    instance-of v0, p1, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    return v0
.end method

.method final d()Z
    .registers 2

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->F:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    .line 587
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 588
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->u:I

    if-lez v0, :cond_29

    .line 589
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 590
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 591
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 592
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 593
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 595
    :cond_29
    return-void
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->k:Z

    .line 441
    return-void
.end method

.method protected final f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 444
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->k:Z

    if-eqz v0, :cond_25

    .line 445
    iput-boolean v2, p0, Lcom/anddoes/launcher/CellLayout;->k:Z

    .line 446
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/CellLayout;->setTranslationX(F)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 450
    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/CellLayout;->a(FZ)V

    .line 451
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->setPivotX(F)V

    .line 452
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->setPivotY(F)V

    .line 454
    :cond_25
    return-void
.end method

.method public final g()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 615
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 616
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 617
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 618
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter

    .prologue
    .line 1831
    new-instance v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/anddoes/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter

    .prologue
    .line 1841
    new-instance v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 1055
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->v:F

    return v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/az;

    return-object v0
.end method

.method final h()I
    .registers 2

    .prologue
    .line 642
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    return v0
.end method

.method final i()I
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    return v0
.end method

.method final j()V
    .registers 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->buildLayer()V

    .line 730
    return-void
.end method

.method final k()I
    .registers 2

    .prologue
    .line 893
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    return v0
.end method

.method final l()I
    .registers 2

    .prologue
    .line 897
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    return v0
.end method

.method final m()I
    .registers 2

    .prologue
    .line 901
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    return v0
.end method

.method final n()I
    .registers 2

    .prologue
    .line 905
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    return v0
.end method

.method final o()V
    .registers 5

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->T:Z

    if-nez v0, :cond_33

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->T:Z

    .line 984
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/anddoes/launcher/Launcher;

    .line 985
    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v1

    .line 986
    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    .line 987
    invoke-virtual {v1}, Lcom/anddoes/launcher/DragLayer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 988
    invoke-virtual {v1}, Lcom/anddoes/launcher/DragLayer;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getPaddingBottom()I

    move-result v0

    sub-int v0, v1, v0

    .line 987
    invoke-direct {p0, v2, v0}, Lcom/anddoes/launcher/CellLayout;->d(II)V

    .line 990
    :cond_33
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 734
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 735
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 737
    instance-of v1, v0, Lcom/anddoes/launcher/Hotseat;

    if-eqz v1, :cond_1d

    move-object v1, v0

    .line 738
    check-cast v1, Lcom/anddoes/launcher/Hotseat;

    .line 739
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->m:Lcom/anddoes/launcher/az;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Hotseat;->a(I)I

    move-result v0

    iput v0, v2, Lcom/anddoes/launcher/az;->f:I

    .line 743
    :goto_1c
    return-void

    .line 741
    :cond_1d
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->m:Lcom/anddoes/launcher/az;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/anddoes/launcher/az;->f:I

    goto :goto_1c
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter

    .prologue
    .line 463
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->v:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    .line 466
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->F:Z

    if-eqz v0, :cond_e1

    .line 468
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->y:Landroid/graphics/drawable/Drawable;

    .line 473
    :goto_d
    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->v:F

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->w:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 474
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    :cond_21
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->P:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_48

    .line 479
    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    .line 480
    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    .line 482
    iget-object v6, p0, Lcom/anddoes/launcher/CellLayout;->N:Landroid/graphics/drawable/Drawable;

    .line 487
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 488
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 490
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v7, 0x2

    sub-int v1, v0, v1

    .line 491
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_46
    if-le v2, v4, :cond_e5

    .line 510
    :cond_48
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->L:Landroid/graphics/Paint;

    .line 511
    const/4 v0, 0x0

    move v1, v0

    :goto_4c
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    array-length v0, v0

    if-lt v1, v0, :cond_14c

    .line 523
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_82

    .line 524
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    invoke-static {}, Lcom/anddoes/launcher/BubbleTextView;->d()I

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v1}, Lcom/anddoes/launcher/BubbleTextView;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 526
    if-eqz v1, :cond_82

    .line 528
    iget-object v2, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v2}, Lcom/anddoes/launcher/BubbleTextView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 529
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->M:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v3}, Lcom/anddoes/launcher/BubbleTextView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v3, v0

    int-to-float v0, v0

    .line 530
    const/4 v3, 0x0

    .line 527
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 535
    :cond_82
    const/4 v0, 0x0

    move v1, v0

    :goto_84
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_178

    .line 568
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_e0

    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_e0

    .line 569
    sget-object v0, Lcom/anddoes/launcher/FolderIcon;->c:Landroid/graphics/drawable/Drawable;

    .line 570
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 571
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 573
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->t:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    invoke-direct {p0, v3, v4, v5}, Lcom/anddoes/launcher/CellLayout;->c(II[I)V

    .line 574
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 575
    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/anddoes/launcher/cx;->j:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 578
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 579
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 580
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 583
    :cond_e0
    return-void

    .line 470
    :cond_e1
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->x:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_d

    .line 492
    :cond_e5
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v8, 0x2

    sub-int v1, v0, v1

    .line 493
    const/4 v0, 0x0

    :goto_f3
    if-le v0, v5, :cond_102

    .line 506
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    add-int/2addr v0, v1

    add-int v1, v3, v0

    .line 491
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto/16 :goto_46

    .line 494
    :cond_102
    iget-object v9, p0, Lcom/anddoes/launcher/CellLayout;->p:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/anddoes/launcher/CellLayout;->G:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int v10, v3, v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/anddoes/launcher/CellLayout;->G:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int v11, v1, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 495
    iget-object v9, p0, Lcom/anddoes/launcher/CellLayout;->p:Landroid/graphics/PointF;

    invoke-virtual {v9}, Landroid/graphics/PointF;->length()F

    move-result v9

    .line 497
    const v10, 0x3ecccccd

    .line 498
    const v11, 0x3b03126f

    const/high16 v12, 0x4416

    sub-float v9, v12, v9

    mul-float/2addr v9, v11

    .line 497
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 499
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_143

    .line 500
    add-int v10, v3, v7

    add-int v11, v1, v8

    invoke-virtual {v6, v3, v1, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/anddoes/launcher/CellLayout;->P:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 504
    :cond_143
    iget v9, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    iget v10, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    add-int/2addr v9, v10

    add-int/2addr v1, v9

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 512
    :cond_14c
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->I:[F

    aget v3, v0, v1

    .line 513
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_173

    .line 514
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->H:[Landroid/graphics/Point;

    aget-object v4, v0, v1

    .line 515
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 516
    const/high16 v5, 0x3f00

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 517
    iget v3, v4, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 511
    :cond_173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4c

    .line 536
    :cond_178
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/cx;

    .line 539
    sget-object v2, Lcom/anddoes/launcher/cx;->h:Landroid/graphics/drawable/Drawable;

    .line 540
    invoke-virtual {v0}, Lcom/anddoes/launcher/cx;->c()F

    move-result v3

    float-to-int v3, v3

    .line 542
    iget v4, v0, Lcom/anddoes/launcher/cx;->a:I

    iget v5, v0, Lcom/anddoes/launcher/cx;->b:I

    iget-object v6, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    invoke-direct {p0, v4, v5, v6}, Lcom/anddoes/launcher/CellLayout;->c(II[I)V

    .line 544
    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 545
    iget-object v5, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/anddoes/launcher/cx;->j:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 548
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 549
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 550
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 551
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 554
    sget-object v2, Lcom/anddoes/launcher/cx;->i:Landroid/graphics/drawable/Drawable;

    .line 555
    invoke-virtual {v0}, Lcom/anddoes/launcher/cx;->d()F

    move-result v3

    float-to-int v3, v3

    .line 557
    iget v4, v0, Lcom/anddoes/launcher/cx;->a:I

    iget v0, v0, Lcom/anddoes/launcher/cx;->b:I

    iget-object v5, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    invoke-direct {p0, v4, v0, v5}, Lcom/anddoes/launcher/CellLayout;->c(II[I)V

    .line 559
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 560
    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/anddoes/launcher/cx;->j:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 562
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 563
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 564
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 565
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 535
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_84
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 800
    if-nez v0, :cond_19

    .line 801
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->m:Lcom/anddoes/launcher/az;

    iput-object v11, v3, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    iput v4, v3, Lcom/anddoes/launcher/az;->b:I

    iput v4, v3, Lcom/anddoes/launcher/az;->c:I

    iput v2, v3, Lcom/anddoes/launcher/az;->d:I

    iput v2, v3, Lcom/anddoes/launcher/az;->e:I

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 804
    :cond_19
    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->r:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/anddoes/launcher/CellLayout;->r:Landroid/view/View$OnTouchListener;

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 811
    :goto_25
    return v1

    .line 808
    :cond_26
    if-nez v0, :cond_9c

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/anddoes/launcher/CellLayout;->m:Lcom/anddoes/launcher/az;

    iget-object v5, p0, Lcom/anddoes/launcher/CellLayout;->l:Landroid/graphics/Rect;

    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->mScrollX:I

    add-int/2addr v6, v0

    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->mScrollY:I

    add-int v7, v3, v0

    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_46
    if-gez v3, :cond_9e

    move v0, v2

    :goto_49
    iput-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->q:Z

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->n:[I

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v3, v6, v3

    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    iget v8, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    add-int/2addr v6, v8

    div-int/2addr v3, v6

    aput v3, v0, v2

    sub-int v3, v7, v5

    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    add-int/2addr v5, v6

    div-int/2addr v3, v5

    aput v3, v0, v1

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    aget v6, v0, v2

    if-gez v6, :cond_75

    aput v2, v0, v2

    :cond_75
    aget v6, v0, v2

    if-lt v6, v3, :cond_7d

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v2

    :cond_7d
    aget v3, v0, v1

    if-gez v3, :cond_83

    aput v2, v0, v1

    :cond_83
    aget v3, v0, v1

    if-lt v3, v5, :cond_8b

    add-int/lit8 v3, v5, -0x1

    aput v3, v0, v1

    :cond_8b
    iput-object v11, v4, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    aget v3, v0, v2

    iput v3, v4, Lcom/anddoes/launcher/az;->b:I

    aget v0, v0, v1

    iput v0, v4, Lcom/anddoes/launcher/az;->c:I

    iput v1, v4, Lcom/anddoes/launcher/az;->d:I

    iput v1, v4, Lcom/anddoes/launcher/az;->e:I

    :cond_99
    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    :cond_9c
    move v1, v2

    .line 811
    goto :goto_25

    .line 809
    :cond_9e
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_b6

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_df

    :cond_b6
    iget-boolean v9, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->e:Z

    if-eqz v9, :cond_df

    invoke-virtual {v8, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v9, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    iget v10, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_df

    iput-object v8, v4, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iput v3, v4, Lcom/anddoes/launcher/az;->b:I

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iput v3, v4, Lcom/anddoes/launcher/az;->c:I

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->c:I

    iput v3, v4, Lcom/anddoes/launcher/az;->d:I

    iget v0, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->d:I

    iput v0, v4, Lcom/anddoes/launcher/az;->e:I

    move v0, v1

    goto/16 :goto_49

    :cond_df
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_46
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 1029
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    .line 1034
    return-void

    .line 1030
    :cond_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1031
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    .line 1032
    sub-int v5, p4, p2

    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 1031
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    .line 996
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 997
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 998
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1000
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/anddoes/launcher/CellLayout;->T:Z

    .line 1001
    invoke-direct {p0, v1, v0}, Lcom/anddoes/launcher/CellLayout;->d(II)V

    .line 1004
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_41

    .line 1007
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1008
    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    mul-int/2addr v1, v2

    .line 1007
    add-int/2addr v1, v0

    .line 1009
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1010
    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    mul-int/2addr v2, v3

    .line 1009
    add-int/2addr v0, v2

    .line 1011
    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 1014
    :cond_41
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getChildCount()I

    move-result v3

    .line 1015
    const/4 v2, 0x0

    :goto_46
    if-lt v2, v3, :cond_4c

    .line 1023
    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 1024
    return-void

    .line 1016
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1017
    iget v5, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    sub-int v5, v1, v5

    .line 1018
    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    .line 1017
    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1019
    iget v6, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    sub-int v6, v0, v6

    .line 1020
    iget v7, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    .line 1019
    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1021
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1015
    add-int/lit8 v2, v2, 0x1

    goto :goto_46
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .parameter

    .prologue
    .line 1080
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1038
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1039
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1040
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->D:Landroid/graphics/Rect;

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->E:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->E:I

    .line 1041
    iget v3, p0, Lcom/anddoes/launcher/CellLayout;->E:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/anddoes/launcher/CellLayout;->E:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    .line 1040
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1042
    return-void
.end method

.method public final p()F
    .registers 2

    .prologue
    .line 1067
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->w:F

    return v0
.end method

.method public final q()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1278
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    .line 1279
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->b()V

    .line 1280
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1281
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1282
    return-void
.end method

.method final r()V
    .registers 2

    .prologue
    .line 1532
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->S:Z

    if-nez v0, :cond_d

    .line 1534
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    if-eqz v0, :cond_d

    .line 1535
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->a()V

    .line 1538
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->S:Z

    .line 1539
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/anddoes/launcher/CellLayout;->w()V

    .line 675
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->removeAllViews()V

    .line 676
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 681
    invoke-direct {p0}, Lcom/anddoes/launcher/CellLayout;->w()V

    .line 682
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->removeAllViewsInLayout()V

    .line 684
    :cond_10
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ba;->removeView(Landroid/view/View;)V

    .line 694
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 699
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ba;->removeViewAt(I)V

    .line 700
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 705
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ba;->removeViewInLayout(Landroid/view/View;)V

    .line 706
    return-void
.end method

.method public removeViews(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 710
    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-lt v0, v1, :cond_b

    .line 713
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1, p2}, Lcom/anddoes/launcher/ba;->removeViews(II)V

    .line 714
    return-void

    .line 711
    :cond_b
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeViewsInLayout(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 718
    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-lt v0, v1, :cond_b

    .line 721
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1, p2}, Lcom/anddoes/launcher/ba;->removeViewsInLayout(II)V

    .line 722
    return-void

    .line 719
    :cond_b
    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final s()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1548
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->S:Z

    if-eqz v0, :cond_11

    .line 1549
    iput-boolean v2, p0, Lcom/anddoes/launcher/CellLayout;->S:Z

    .line 1552
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    if-eqz v0, :cond_11

    .line 1553
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->O:Lcom/anddoes/launcher/ea;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->b()V

    .line 1558
    :cond_11
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    aput v3, v0, v2

    .line 1559
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->R:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1560
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->b()V

    .line 1561
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/anddoes/launcher/CellLayout;->J:[Lcom/anddoes/launcher/ea;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/CellLayout;->K:I

    .line 1563
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/CellLayout;->b(Z)V

    .line 1564
    return-void
.end method

.method public setAlpha(F)V
    .registers 5
    .parameter

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_b

    .line 1085
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1086
    return-void

    .line 1084
    :cond_b
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public setBackgroundAlpha(F)V
    .registers 2
    .parameter

    .prologue
    .line 1071
    iput p1, p0, Lcom/anddoes/launcher/CellLayout;->v:F

    .line 1072
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 1073
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ba;->setChildrenDrawingCacheEnabled(Z)V

    .line 1047
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/anddoes/launcher/CellLayout;->V:Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/ba;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1052
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public final t()I
    .registers 4

    .prologue
    .line 1807
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->e:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1808
    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->g:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->i:I

    mul-int/2addr v1, v2

    .line 1807
    add-int/2addr v0, v1

    return v0
.end method

.method public final u()I
    .registers 4

    .prologue
    .line 1812
    iget v0, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1813
    iget v1, p0, Lcom/anddoes/launcher/CellLayout;->h:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/CellLayout;->j:I

    mul-int/2addr v1, v2

    .line 1812
    add-int/2addr v0, v1

    return v0
.end method

.method public final v()Z
    .registers 2

    .prologue
    .line 1993
    iget-boolean v0, p0, Lcom/anddoes/launcher/CellLayout;->q:Z

    return v0
.end method
