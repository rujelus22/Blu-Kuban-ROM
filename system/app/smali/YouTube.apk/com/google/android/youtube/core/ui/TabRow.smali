.class public Lcom/google/android/youtube/core/ui/TabRow;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Z

.field private final c:Landroid/graphics/drawable/Drawable;

.field private d:Lcom/google/android/youtube/core/ui/o;

.field private e:Lcom/google/android/youtube/core/ui/p;

.field private f:I

.field private g:Z

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v3, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 40
    iput-boolean v4, p0, Lcom/google/android/youtube/core/ui/TabRow;->g:Z

    .line 47
    sget-object v0, Lcom/google/android/youtube/b;->g:[I

    const v1, 0x7f0d0006

    invoke-virtual {p1, p2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->h:I

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->b:Z

    .line 50
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/core/ui/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/TabRow;->setHorizontalScrollBarEnabled(Z)V

    .line 56
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/TabRow;->setFillViewport(Z)V

    .line 58
    iget-boolean v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->b:Z

    if-eqz v1, :cond_51

    .line 59
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/TabRow;->setFillViewport(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->i:I

    .line 63
    :cond_51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 128
    return-void
.end method

.method public final a(IZ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->g:Z

    if-eqz v0, :cond_8

    .line 159
    iput p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 179
    :cond_7
    :goto_7
    return-void

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_25

    :goto_12
    move v2, v1

    .line 164
    :goto_13
    if-ge v2, v3, :cond_2a

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_28

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 164
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 163
    :cond_25
    mul-int/lit8 p1, p1, 0x2

    goto :goto_12

    :cond_28
    move v0, v1

    .line 165
    goto :goto_1e

    .line 167
    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_47

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 170
    if-eqz p2, :cond_4e

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->smoothScrollTo(II)V

    .line 176
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->e:Lcom/google/android/youtube/core/ui/p;

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->e:Lcom/google/android/youtube/core/ui/p;

    goto :goto_7

    .line 173
    :cond_4e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->scrollTo(II)V

    goto :goto_47
.end method

.method public final a(Lcom/google/android/youtube/core/ui/o;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->d:Lcom/google/android/youtube/core/ui/o;

    .line 183
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    const v1, 0x7f04004c

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->h:I

    if-eqz v1, :cond_20

    .line 82
    iget v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    :cond_20
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_49

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_49
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->g:Z

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->d:Lcom/google/android/youtube/core/ui/o;

    if-eqz v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 104
    if-ltz v0, :cond_15

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->d:Lcom/google/android/youtube/core/ui/o;

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_16

    :goto_12
    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/ui/o;->a(I)V

    .line 108
    :cond_15
    return-void

    .line 105
    :cond_16
    div-int/lit8 v0, v0, 0x2

    goto :goto_12
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->g:Z

    .line 149
    iget v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 150
    if-ltz v0, :cond_11

    .line 151
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 152
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->a(IZ)V

    .line 154
    :cond_11
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getMeasuredWidth()I

    move-result v0

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 137
    if-ge v1, v0, :cond_25

    .line 138
    sub-int/2addr v0, v1

    .line 139
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 143
    :goto_24
    return-void

    .line 141
    :cond_25
    iget v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->i:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    goto :goto_24
.end method

.method public setPadding(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 69
    iput p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->i:I

    .line 70
    return-void
.end method
