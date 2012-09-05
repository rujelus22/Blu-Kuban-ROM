.class public Lcom/google/googlenav/ui/android/FlowLayout;
.super Landroid/view/ViewGroup;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:I

.field private final c:I

.field private final d:I

.field private e:Z

.field private f:Lcom/google/googlenav/ui/android/L;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/android/FlowLayout;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    new-instance v0, Lcom/google/googlenav/ui/android/L;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/L;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    const-string v0, "horizontalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    const-string v0, "verticalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    new-instance v0, Lcom/google/googlenav/ui/android/L;

    invoke-direct {v0, p2}, Lcom/google/googlenav/ui/android/L;-><init>(Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    const-string v0, "horizontalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    const-string v0, "verticalSpacing"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    new-instance v0, Lcom/google/googlenav/ui/android/L;

    invoke-direct {v0, p2}, Lcom/google/googlenav/ui/android/L;-><init>(Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    return-void
.end method

.method private a(I)I
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:Z

    if-nez v1, :cond_8

    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_16
    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    add-int/2addr v0, v1

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    iget v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_7
.end method

.method private a()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    if-gt v0, p3, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private b(I)I
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->j:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private b()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_1a

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_16

    :goto_15
    return-object v0

    :cond_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private c()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    iget v0, v0, Lcom/google/googlenav/ui/android/L;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    iget v1, v1, Lcom/google/googlenav/ui/android/L;->b:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    iget v0, v0, Lcom/google/googlenav/ui/android/L;->a:I

    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->O()I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->P()I

    move-result v1

    if-le v1, v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    iget v0, v0, Lcom/google/googlenav/ui/android/L;->a:I

    goto :goto_e

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    iget v0, v0, Lcom/google/googlenav/ui/android/L;->b:I

    goto :goto_e
.end method

.method private c(I)Landroid/view/View;
    .registers 6

    add-int/lit8 v0, p1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_16

    move-object v0, v1

    :goto_15
    return-object v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/android/L;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->b(I)I

    move-result v5

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->c()I

    move-result v6

    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(I)I

    move-result v3

    iget v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2e
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_30
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_50

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v8, 0x8

    if-eq v4, v8, :cond_76

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v4, v3, v8

    if-le v4, v5, :cond_5d

    if-lt v1, v6, :cond_51

    :cond_50
    :goto_50
    return-void

    :cond_51
    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(I)I

    move-result v3

    iget v4, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    iget v10, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    add-int/2addr v4, v10

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    :cond_5d
    add-int v4, v3, v8

    iget v10, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    add-int/2addr v4, v10

    if-lt v1, v6, :cond_6c

    iget-object v10, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:Lcom/google/googlenav/ui/android/L;

    iget-object v10, v10, Lcom/google/googlenav/ui/android/L;->c:Lcom/google/googlenav/ui/android/K;

    sget-object v11, Lcom/google/googlenav/ui/android/K;->a:Lcom/google/googlenav/ui/android/K;

    if-ne v10, v11, :cond_79

    :cond_6c
    add-int/2addr v8, v3

    add-int/2addr v9, v2

    invoke-virtual {v7, v3, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_79
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->c(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_b8

    invoke-direct {p0, v10, v4, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Landroid/view/View;II)Z

    move-result v10

    if-eqz v10, :cond_90

    add-int/2addr v8, v3

    add-int/2addr v9, v2

    invoke-virtual {v7, v3, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    goto :goto_76

    :cond_90
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->b()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_a6

    add-int v1, v3, v8

    add-int v5, v2, v9

    invoke-virtual {v7, v3, v2, v1, v5}, Landroid/view/View;->layout(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    :cond_a6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v3

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    :cond_b8
    add-int v0, v3, v8

    add-int v1, v2, v9

    invoke-virtual {v7, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50
.end method

.method protected onMeasure(II)V
    .registers 15

    const/16 v11, 0x8

    const/high16 v10, -0x8000

    const/4 v1, 0x0

    sget-boolean v0, Lcom/google/googlenav/ui/android/FlowLayout;->a:Z

    if-nez v0, :cond_15

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->a()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->b(I)I

    move-result v5

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->c()I

    move-result v6

    iget v4, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    iget v3, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    move v0, v1

    move v2, v1

    :goto_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_50

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_4d

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_50
    iput v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    const/4 v0, 0x1

    move v2, v3

    move v3, v4

    :goto_55
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7e

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v11, :cond_9a

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    const/high16 v9, 0x4000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v7, v3, v4

    if-le v7, v5, :cond_96

    if-lt v0, v6, :cond_8c

    :cond_7e
    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->h:I

    add-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->setMeasuredDimension(II)V

    return-void

    :cond_8c
    iget v3, p0, Lcom/google/googlenav/ui/android/FlowLayout;->i:I

    iget v7, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    iget v8, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    :cond_96
    iget v7, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:I

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_55
.end method
