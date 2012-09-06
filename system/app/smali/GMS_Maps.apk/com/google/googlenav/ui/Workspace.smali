.class public Lcom/google/googlenav/ui/Workspace;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Runnable;

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Landroid/view/VelocityTracker;

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/google/googlenav/ui/TabRow;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Lcom/google/googlenav/ui/bD;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/Workspace;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    iput-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    .line 86
    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    .line 97
    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    .line 99
    iput-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    .line 107
    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    .line 827
    new-instance v0, Lcom/google/googlenav/ui/bC;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/bC;-><init>(Lcom/google/googlenav/ui/Workspace;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    .line 124
    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->c:I

    .line 125
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->setHorizontalFadingEdgeEnabled(Z)V

    .line 127
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->d()V

    .line 128
    return-void
.end method

.method private a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 412
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 413
    const/4 v0, 0x0

    .line 415
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_b

    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_e

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_4
.end method

.method private a(Landroid/graphics/Canvas;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    if-ltz p2, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_13

    .line 350
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 352
    :cond_13
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 652
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 653
    iget v2, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    if-ne v1, v2, :cond_32

    .line 657
    if-nez v0, :cond_33

    const/4 v0, 0x1

    .line 658
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    .line 659
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    .line 660
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    .line 661
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_32

    .line 662
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 665
    :cond_32
    return-void

    .line 657
    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private d()V
    .registers 3

    .prologue
    .line 134
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    .line 135
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 137
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->o:I

    .line 141
    const/16 v1, 0x20

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->p:I

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->q:I

    .line 143
    return-void
.end method

.method private e()I
    .registers 3

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 302
    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :goto_f
    return v0

    .line 304
    :cond_10
    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_f
.end method

.method private f()V
    .registers 4

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v0

    .line 773
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    .line 775
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    .line 776
    return-void
.end method

.method public static setTabRowToWorkspace(Landroid/app/Activity;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/googlenav/ui/Workspace;->setTabRowToWorkspace(Landroid/app/Activity;III)V

    .line 185
    return-void
.end method

.method public static setTabRowToWorkspace(Landroid/app/Activity;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/TabRow;

    .line 172
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/Workspace;

    .line 173
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/Workspace;->setTabRow(Lcom/google/googlenav/ui/TabRow;)V

    .line 175
    invoke-virtual {v1, p3}, Lcom/google/googlenav/ui/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_20

    .line 177
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    .line 179
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/Workspace;->setCurrentScreen(I)V

    .line 181
    :cond_20
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .registers 6
    .parameter

    .prologue
    .line 880
    const/4 v1, -0x1

    .line 881
    if-eqz p1, :cond_14

    .line 882
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v2

    .line 883
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_14

    .line 884
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_11

    .line 889
    :goto_10
    return v0

    .line 883
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    move v0, v1

    .line 889
    goto :goto_10
.end method

.method public a(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 289
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 290
    :cond_8
    const/4 v0, 0x0

    .line 296
    :goto_9
    return-object v0

    .line 293
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    .line 294
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_9

    .line 296
    :cond_13
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_9
.end method

.method public a()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/TabRow;->a()V

    .line 191
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_29

    .line 192
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 193
    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/google/googlenav/ui/TabRow;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 196
    :cond_29
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ltz v0, :cond_35

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_37

    .line 197
    :cond_35
    iput v4, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 199
    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v4, :cond_47

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    .line 209
    :cond_47
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->requestLayout()V

    .line 210
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 527
    :cond_5
    :goto_5
    return-void

    .line 513
    :cond_6
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_5

    .line 517
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 518
    const/16 v0, 0x11

    if-ne p2, v0, :cond_25

    .line 519
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-lez v0, :cond_5

    .line 520
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_5

    .line 522
    :cond_25
    const/16 v0, 0x42

    if-ne p2, v0, :cond_5

    .line 523
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 524
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_5
.end method

.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 214
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 217
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 218
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 223
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 228
    :cond_8
    :goto_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 229
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 230
    return-void

    .line 225
    :cond_10
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-gt p2, v0, :cond_8

    .line 226
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    goto :goto_8
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 237
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 239
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 243
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 246
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 247
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    return v0
.end method

.method b(I)V
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 779
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 825
    :goto_6
    return-void

    .line 783
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 785
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 787
    iput v6, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    .line 789
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_32

    .line 791
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 794
    :cond_32
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v1

    mul-int v3, v6, v1

    .line 795
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v1

    .line 796
    sub-int/2addr v3, v1

    .line 797
    mul-int/lit16 v5, v0, 0x12c

    .line 798
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/Workspace;->awakenScrollBars(I)Z

    .line 799
    if-nez v5, :cond_48

    .line 800
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 803
    :cond_48
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v4, :cond_5b

    .line 809
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 810
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    add-int/lit8 v4, v5, 0xa

    int-to-long v7, v4

    invoke-virtual {p0, v0, v7, v8}, Lcom/google/googlenav/ui/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    :cond_5b
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_68

    .line 814
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 816
    :cond_68
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 818
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_78

    .line 819
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    .line 821
    :cond_78
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/bD;

    if-eqz v0, :cond_83

    .line 822
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/bD;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-interface {v0, v6, v1}, Lcom/google/googlenav/ui/bD;->a(II)V

    .line 824
    :cond_83
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->invalidate()V

    goto :goto_6
.end method

.method public c()I
    .registers 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 283
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 285
    :cond_c
    return v0
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 339
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 340
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    .line 341
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->postInvalidate()V

    .line 346
    :cond_1b
    :goto_1b
    return-void

    .line 342
    :cond_1c
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    if-eq v0, v3, :cond_1b

    .line 343
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 344
    iput v3, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    .line 365
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_c

    .line 388
    :cond_b
    :goto_b
    return-void

    .line 371
    :cond_c
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1c

    .line 372
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 376
    :cond_1c
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 379
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    .line 380
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    .line 384
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    if-lez v0, :cond_b

    .line 385
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    .line 386
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    goto :goto_b
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 494
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 495
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    if-lez v1, :cond_2f

    .line 496
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    .line 505
    :goto_14
    return v0

    .line 499
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 500
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 501
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    goto :goto_14

    .line 505
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 538
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_c
    move-object v0, p1

    .line 541
    :goto_d
    if-ne v0, v1, :cond_16

    .line 542
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 552
    :cond_12
    return-void

    .line 538
    :cond_13
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_c

    .line 545
    :cond_16
    if-eq v0, p0, :cond_12

    .line 548
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 549
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_12

    .line 550
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 567
    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-eqz v3, :cond_f

    .line 646
    :cond_e
    :goto_e
    return v2

    .line 571
    :cond_f
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_9e

    .line 646
    :cond_14
    :goto_14
    :pswitch_14
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-nez v0, :cond_e

    move v2, v1

    goto :goto_e

    .line 579
    :pswitch_1a
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 580
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 582
    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 583
    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 585
    iget v6, p0, Lcom/google/googlenav/ui/Workspace;->o:I

    .line 586
    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->p:I

    if-le v3, v4, :cond_66

    move v4, v2

    .line 587
    :goto_40
    if-le v3, v6, :cond_68

    move v3, v2

    .line 588
    :goto_43
    if-le v0, v6, :cond_6a

    move v0, v2

    .line 590
    :goto_46
    if-nez v3, :cond_4a

    if-eqz v0, :cond_14

    .line 592
    :cond_4a
    if-eqz v4, :cond_50

    .line 594
    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    .line 595
    iput v5, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    .line 598
    :cond_50
    iget-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    if-eqz v0, :cond_14

    .line 599
    iput-boolean v1, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    .line 603
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v7, :cond_14

    .line 604
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_14

    .line 606
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_14

    :cond_66
    move v4, v1

    .line 586
    goto :goto_40

    :cond_68
    move v3, v1

    .line 587
    goto :goto_43

    :cond_6a
    move v0, v1

    .line 588
    goto :goto_46

    .line 615
    :pswitch_6c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 618
    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    .line 619
    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    .line 620
    iput v3, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    .line 621
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    .line 622
    iput-boolean v2, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    .line 629
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_8b
    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    goto :goto_14

    :cond_8e
    move v0, v2

    goto :goto_8b

    .line 636
    :pswitch_90
    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    .line 637
    iput-boolean v1, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    .line 638
    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_14

    .line 643
    :pswitch_98
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_14

    .line 571
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_90
        :pswitch_1a
        :pswitch_90
        :pswitch_14
        :pswitch_14
        :pswitch_98
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 452
    .line 453
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 454
    :goto_7
    if-ge v1, v3, :cond_26

    .line 455
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 456
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    .line 457
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 458
    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 459
    add-int/2addr v0, v5

    .line 454
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 462
    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 420
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 424
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v2

    move v0, v1

    .line 425
    :goto_a
    if-ge v0, v2, :cond_32

    .line 426
    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_24

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v5, :cond_24

    .line 428
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 425
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 430
    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->a(II)I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    goto :goto_21

    .line 437
    :cond_32
    iget-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_58

    .line 438
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 439
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 440
    iget-object v2, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4d

    .line 441
    iget-object v2, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 444
    :cond_4d
    iget v2, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    .line 445
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 446
    iput-boolean v1, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    .line 448
    :cond_58
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 477
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ne v0, v1, :cond_7

    .line 489
    :cond_6
    :goto_6
    return v2

    .line 480
    :cond_7
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    if-eq v0, v1, :cond_17

    .line 481
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    .line 485
    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_6

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_6

    .line 483
    :cond_17
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    goto :goto_d
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter

    .prologue
    .line 844
    check-cast p1, Lcom/google/googlenav/ui/bE;

    .line 845
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bE;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 846
    iget v0, p1, Lcom/google/googlenav/ui/bE;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 847
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_1c

    .line 848
    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 850
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_28

    .line 851
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    .line 853
    :cond_28
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 837
    new-instance v0, Lcom/google/googlenav/ui/bE;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/bE;-><init>(Landroid/os/Parcelable;)V

    .line 838
    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iput v1, v0, Lcom/google/googlenav/ui/bE;->a:I

    .line 839
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 393
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 400
    :cond_8
    :goto_8
    return-void

    .line 396
    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->setCurrentScreen(I)V

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_8

    .line 398
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 679
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    .line 681
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 685
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_110

    .line 768
    :cond_1b
    :goto_1b
    :pswitch_1b
    return v1

    .line 691
    :pswitch_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    .line 692
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 696
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    .line 697
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto :goto_1b

    .line 701
    :pswitch_38
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-ne v0, v1, :cond_1b

    .line 703
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 704
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 705
    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 706
    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    .line 708
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v0

    .line 709
    if-gez v3, :cond_5d

    .line 710
    if-lez v0, :cond_1b

    .line 711
    neg-int v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->scrollBy(II)V

    goto :goto_1b

    .line 713
    :cond_5d
    if-lez v3, :cond_7e

    .line 714
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    .line 716
    if-lez v0, :cond_1b

    .line 717
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->scrollBy(II)V

    goto :goto_1b

    .line 720
    :cond_7e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->awakenScrollBars()Z

    goto :goto_1b

    .line 726
    :pswitch_82
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-ne v0, v1, :cond_dc

    .line 727
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    .line 728
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 729
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 730
    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    .line 731
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/google/googlenav/ui/Workspace;->q:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 732
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    .line 733
    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x42c8

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e2

    move v0, v1

    .line 735
    :goto_ae
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v4

    .line 736
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    div-int v4, v5, v4

    .line 738
    if-eqz v0, :cond_e4

    const/16 v5, 0x258

    if-le v3, v5, :cond_e4

    iget v5, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-lez v5, :cond_e4

    .line 740
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    .line 749
    :goto_d0
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_dc

    .line 750
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    .line 754
    :cond_dc
    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    .line 755
    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_1b

    :cond_e2
    move v0, v2

    .line 733
    goto :goto_ae

    .line 741
    :cond_e4
    if-eqz v0, :cond_100

    const/16 v0, -0x258

    if-ge v3, v0, :cond_100

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_100

    .line 744
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    goto :goto_d0

    .line 746
    :cond_100
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->f()V

    goto :goto_d0

    .line 759
    :pswitch_104
    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    .line 760
    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_1b

    .line 764
    :pswitch_10a
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1b

    .line 685
    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_82
        :pswitch_38
        :pswitch_104
        :pswitch_1b
        :pswitch_1b
        :pswitch_10a
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 252
    if-nez p1, :cond_4

    .line 269
    :cond_3
    :goto_3
    return-void

    .line 255
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/View;)I

    move-result v0

    .line 256
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 257
    if-eq v0, v2, :cond_3

    .line 262
    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-gt v0, v1, :cond_17

    .line 263
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 265
    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->a()V

    .line 266
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v2, :cond_3

    .line 267
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->setCurrentScreen(I)V

    goto :goto_3
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 669
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 670
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 671
    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 672
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    .line 674
    :cond_12
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 467
    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 468
    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    .line 469
    const/4 v0, 0x1

    .line 471
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setCurrentScreen(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 318
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    .line 319
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    .line 320
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->invalidate()V

    .line 321
    return-void
.end method

.method public setListener(Lcom/google/googlenav/ui/bD;)V
    .registers 2
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/bD;

    .line 976
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v1

    .line 332
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 335
    :cond_11
    return-void
.end method

.method public setScreenOffset(I)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    .line 167
    return-void
.end method

.method public setSeparator(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 935
    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1c

    if-nez p1, :cond_1c

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    .line 938
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    .line 939
    add-int/lit8 v0, v0, -0x2

    :goto_10
    if-lez v0, :cond_18

    .line 940
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->removeViewAt(I)V

    .line 939
    add-int/lit8 v0, v0, -0x2

    goto :goto_10

    .line 942
    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->requestLayout()V

    .line 969
    :cond_1b
    :goto_1b
    return-void

    .line 943
    :cond_1c
    if-eqz p1, :cond_1b

    .line 945
    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_57

    .line 947
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v2

    .line 949
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    move v1, v0

    .line 950
    :goto_31
    if-ge v0, v2, :cond_53

    .line 951
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 952
    iget-object v4, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 954
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    invoke-virtual {p0, v3, v1}, Lcom/google/googlenav/ui/Workspace;->addView(Landroid/view/View;I)V

    .line 956
    add-int/lit8 v1, v1, 0x2

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 958
    :cond_53
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->requestLayout()V

    goto :goto_1b

    .line 961
    :cond_57
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    .line 962
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    .line 963
    add-int/lit8 v0, v0, -0x2

    :goto_67
    if-lez v0, :cond_75

    .line 964
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 963
    add-int/lit8 v0, v0, -0x2

    goto :goto_67

    .line 966
    :cond_75
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->requestLayout()V

    goto :goto_1b
.end method

.method public setTabRow(Lcom/google/googlenav/ui/TabRow;)V
    .registers 3
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    .line 147
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->a()V

    .line 149
    new-instance v0, Lcom/google/googlenav/ui/bB;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/bB;-><init>(Lcom/google/googlenav/ui/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/TabRow;->setOnTabClickListener(Lcom/google/googlenav/ui/aY;)V

    .line 156
    return-void
.end method
