.class public Lcom/google/android/youtube/app/ui/StackButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/StackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lcom/google/android/youtube/b;->h:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    const/4 v2, 0x2

    const v3, 0x7f0200d0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/youtube/app/ui/StackButton;->e:I

    .line 56
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 58
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/youtube/app/ui/StackButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const v3, 0x7f0a002d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 62
    const v4, 0x7f0a002e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 64
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    .line 66
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/app/ui/StackButton;->c:Landroid/view/View;

    .line 69
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/StackButton;->c:Landroid/view/View;

    const v6, 0x7f020040

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/StackButton;->c:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/StackButton;->c:Landroid/view/View;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/ui/StackButton;->d:Landroid/widget/ImageView;

    .line 75
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/StackButton;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x55

    invoke-direct {v3, v7, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 79
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/StackButton;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    .line 82
    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 83
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    const v3, 0x7f09004f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 87
    if-lez v1, :cond_b5

    .line 88
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    :cond_b5
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/app/ui/StackButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/ui/StackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->c:Landroid/view/View;

    return-object v0
.end method

.method public setBadge(I)V
    .registers 4
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    return-void
.end method

.method public setThumbnail(I)V
    .registers 4
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method

.method public setThumbnailMissing()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/StackButton;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/StackButton;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    return-void
.end method
