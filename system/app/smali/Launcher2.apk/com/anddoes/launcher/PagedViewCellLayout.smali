.class public Lcom/anddoes/launcher/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/ip;


# instance fields
.field protected a:Lcom/anddoes/launcher/jk;

.field protected b:Landroid/widget/ScrollView;

.field public c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/anddoes/launcher/Launcher;

.field private p:Z

.field private q:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->p:Z

    .line 54
    iput v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->c:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->q:Landroid/view/GestureDetector;

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/anddoes/launcher/Launcher;

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->o:Lcom/anddoes/launcher/Launcher;

    .line 76
    iput-boolean p4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->p:Z

    .line 77
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedViewCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->h:I

    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->f:I

    .line 84
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 83
    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->g:I

    .line 85
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->c()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    .line 86
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->d()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    .line 87
    iput v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    iput v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    iput v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->k:I

    iput v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->j:I

    .line 88
    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->n:I

    .line 90
    new-instance v0, Lcom/anddoes/launcher/jk;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/jk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    .line 91
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->h:I

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/jk;->b(II)V

    .line 92
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/jk;->a(II)V

    .line 94
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->p:Z

    if-nez v0, :cond_70

    .line 95
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->addView(Landroid/view/View;)V

    .line 106
    :goto_6f
    return-void

    .line 97
    :cond_70
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/anddoes/launcher/jj;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jj;-><init>(Lcom/anddoes/launcher/PagedViewCellLayout;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->q:Landroid/view/GestureDetector;

    .line 98
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->b:Landroid/widget/ScrollView;

    .line 99
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 101
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->b:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->b:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->addView(Landroid/view/View;)V

    goto :goto_6f
.end method

.method static synthetic a(Lcom/anddoes/launcher/PagedViewCellLayout;)V
    .registers 3
    .parameter

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->p()V

    :cond_f
    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/PagedViewCellLayout;)V
    .registers 3
    .parameter

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->q()V

    :cond_f
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .registers 3
    .parameter

    .prologue
    .line 449
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->h:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public final a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 360
    iput p1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    .line 361
    iput p2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    .line 362
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->requestLayout()V

    .line 363
    return-void
.end method

.method public final a(IIIIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 432
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->h:I

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    .line 433
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    .line 434
    if-eqz p5, :cond_39

    .line 435
    iput p5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    .line 438
    :cond_39
    if-eqz p6, :cond_3d

    .line 439
    iput p6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    .line 441
    :cond_3d
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->requestLayout()V

    .line 442
    return-void
.end method

.method public final a(Landroid/view/View;ILcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    .line 150
    iget v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->a:I

    if-ltz v0, :cond_37

    iget v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->a:I

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_37

    .line 151
    iget v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->b:I

    if-ltz v0, :cond_37

    iget v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->b:I

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->p:Z

    if-eqz v0, :cond_37

    .line 154
    :cond_1c
    iget v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    if-gez v0, :cond_24

    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    iput v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    .line 155
    :cond_24
    iget v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    if-gez v0, :cond_2c

    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    iput v0, p3, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    .line 157
    :cond_2c
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 158
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p3}, Lcom/anddoes/launcher/jk;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public final b(I)I
    .registers 3
    .parameter

    .prologue
    .line 457
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0}, Lcom/anddoes/launcher/jk;->removeAllViews()V

    .line 168
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->o:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->m()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 169
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/jk;->setLayerType(ILandroid/graphics/Paint;)V

    .line 171
    :cond_14
    return-void
.end method

.method public final b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 366
    iput p1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    iput p1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->j:I

    .line 367
    iput p2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    iput p2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->k:I

    .line 368
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0, p1, p2}, Lcom/anddoes/launcher/jk;->a(II)V

    .line 369
    return-void
.end method

.method final c()V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/jk;->setLayerType(ILandroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 134
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 137
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 138
    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_b

    .line 142
    return-void

    .line 139
    :cond_b
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter

    .prologue
    .line 467
    instance-of v0, p1, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;

    return v0
.end method

.method public final d()V
    .registers 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v1

    .line 183
    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    .line 186
    return-void

    .line 184
    :cond_a
    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/jk;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public final e()Lcom/anddoes/launcher/jk;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    return-object v0
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    return v0
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter

    .prologue
    .line 462
    new-instance v0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter

    .prologue
    .line 472
    new-instance v0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final h()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 290
    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    if-lez v1, :cond_16

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->h:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method final i()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 294
    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    if-lez v1, :cond_16

    .line 295
    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 297
    :cond_16
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->p:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->q:Landroid/view/GestureDetector;

    if-eqz v0, :cond_12

    .line 320
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 321
    const/4 v0, 0x1

    .line 324
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 310
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    .line 315
    return-void

    .line 311
    :cond_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 312
    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingTop:I

    .line 313
    sub-int v5, p4, p2

    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 312
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x4000

    .line 221
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 222
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 224
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 225
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 227
    sget v5, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    if-eq v4, v5, :cond_1b

    sget v5, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    if-ne v0, v5, :cond_23

    .line 228
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_23
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    add-int/lit8 v0, v0, -0x1

    .line 232
    iget v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    add-int/lit8 v5, v5, -0x1

    .line 234
    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->j:I

    if-ltz v6, :cond_33

    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->k:I

    if-gez v6, :cond_f9

    .line 235
    :cond_33
    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingLeft:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 236
    iget v7, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingTop:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v7, v8

    .line 237
    iget v8, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    iget v9, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->f:I

    mul-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 238
    iget v8, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    iget v9, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->g:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 239
    iget v8, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->n:I

    if-lez v0, :cond_f3

    div-int v0, v6, v0

    :goto_53
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    .line 240
    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->n:I

    if-lez v5, :cond_f6

    div-int v0, v7, v5

    :goto_5f
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    .line 242
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    iget v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    invoke-virtual {v0, v5, v6}, Lcom/anddoes/launcher/jk;->a(II)V

    .line 251
    :goto_6e
    const/high16 v0, -0x8000

    if-ne v4, v0, :cond_129

    .line 252
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->h:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 253
    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    mul-int/2addr v2, v3

    .line 252
    add-int/2addr v2, v0

    .line 254
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingTop:I

    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingBottom:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    iget v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 255
    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    mul-int/2addr v3, v4

    .line 254
    add-int/2addr v0, v3

    .line 256
    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 258
    :goto_9b
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getSuggestedMinimumHeight()I

    move-result v3

    if-ge v0, v3, :cond_a5

    .line 259
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getSuggestedMinimumHeight()I

    move-result v0

    .line 261
    :cond_a5
    iget-boolean v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->p:Z

    if-eqz v3, :cond_103

    .line 263
    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingLeft:I

    sub-int v3, v2, v3

    .line 264
    iget v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingRight:I

    .line 263
    sub-int/2addr v3, v4

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 265
    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingTop:I

    sub-int v3, v0, v3

    iget v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v3, v5

    .line 266
    iget v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->c:I

    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->c:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    mul-int/2addr v1, v6

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v5}, Lcom/anddoes/launcher/jk;->getPaddingTop()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v5}, Lcom/anddoes/launcher/jk;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    .line 267
    if-ge v1, v3, :cond_dd

    move v1, v3

    .line 270
    :cond_dd
    iget-object v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->b:Landroid/widget/ScrollView;

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v5, v4, v3}, Landroid/widget/ScrollView;->measure(II)V

    .line 271
    iget-object v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/anddoes/launcher/jk;->measure(II)V

    .line 286
    :cond_ef
    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 287
    return-void

    :cond_f3
    move v0, v1

    .line 239
    goto/16 :goto_53

    :cond_f6
    move v0, v1

    .line 240
    goto/16 :goto_5f

    .line 244
    :cond_f9
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->j:I

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->l:I

    .line 245
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->k:I

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->m:I

    goto/16 :goto_6e

    .line 273
    :cond_103
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedViewCellLayout;->getChildCount()I

    move-result v3

    .line 274
    :goto_107
    if-ge v1, v3, :cond_ef

    .line 275
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 277
    iget v5, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingLeft:I

    sub-int v5, v2, v5

    .line 278
    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingRight:I

    .line 277
    sub-int/2addr v5, v6

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 280
    iget v6, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingTop:I

    sub-int v6, v0, v6

    .line 281
    iget v7, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->mPaddingBottom:I

    .line 280
    sub-int/2addr v6, v7

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 282
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    :cond_129
    move v0, v2

    move v2, v3

    goto/16 :goto_9b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v1}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v1

    .line 331
    if-lez v1, :cond_3e

    .line 333
    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/jk;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 335
    iget-object v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v2}, Lcom/anddoes/launcher/jk;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->d:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 336
    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->e:I

    if-ge v2, v3, :cond_32

    .line 338
    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->i:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 340
    :cond_32
    if-nez v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3f

    const/4 v0, 0x0

    .line 342
    :cond_3e
    :goto_3e
    return v0

    .line 340
    :cond_3f
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method public setAlpha(F)V
    .registers 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/jk;->setAlpha(F)V

    .line 119
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/jk;->setChildrenDrawingCacheEnabled(Z)V

    .line 352
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout;->a:Lcom/anddoes/launcher/jk;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/jk;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 357
    return-void
.end method
