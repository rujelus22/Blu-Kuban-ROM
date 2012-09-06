.class public Lcom/github/droidfu/widgets/WebImageView;
.super Landroid/widget/ViewSwitcher;
.source "panda.py"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView$ScaleType;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->e:Landroid/widget/ImageView$ScaleType;

    .line 92
    const-string v0, "http://github.com/droidfu/schema"

    const-string v1, "progressDrawable"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 94
    const/4 v0, 0x0

    .line 95
    if-lez v1, :cond_1b

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    :cond_1b
    const-string v1, "http://github.com/droidfu/schema"

    const-string v2, "imageUrl"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://github.com/droidfu/schema"

    const-string v3, "autoLoad"

    const/4 v4, 0x1

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/github/droidfu/widgets/WebImageView;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/github/droidfu/widgets/WebImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 127
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->c:Landroid/widget/ProgressBar;

    .line 128
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 129
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_35

    .line 130
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_19
    :goto_19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->c:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/github/droidfu/widgets/WebImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void

    .line 132
    :cond_35
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->c:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_19

    .line 134
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_19
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p2, p0, Lcom/github/droidfu/widgets/WebImageView;->a:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-static {p1}, Ldbxyzptlk/s/b;->a(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 115
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/github/droidfu/widgets/WebImageView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/github/droidfu/widgets/WebImageView;->a(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/github/droidfu/widgets/WebImageView;->b(Landroid/content/Context;)V

    .line 121
    if-eqz p4, :cond_24

    if-eqz p2, :cond_24

    .line 122
    invoke-virtual {p0}, Lcom/github/droidfu/widgets/WebImageView;->a()V

    .line 124
    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/github/droidfu/widgets/WebImageView;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/github/droidfu/widgets/WebImageView;->b:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 146
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->d:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->e:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->d:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/github/droidfu/widgets/WebImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image URL is null; did you forget to set it for this view?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_c
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->a:Ljava/lang/String;

    new-instance v1, Lcom/github/droidfu/widgets/a;

    invoke-direct {v1, p0}, Lcom/github/droidfu/widgets/a;-><init>(Lcom/github/droidfu/widgets/WebImageView;)V

    invoke-static {v0, v1}, Ldbxyzptlk/s/b;->a(Ljava/lang/String;Ldbxyzptlk/s/c;)V

    .line 163
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/droidfu/widgets/WebImageView;->setDisplayedChild(I)V

    .line 195
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/github/droidfu/widgets/WebImageView;->a:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setNoImageDrawable(I)V
    .registers 4
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/github/droidfu/widgets/WebImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/droidfu/widgets/WebImageView;->setDisplayedChild(I)V

    .line 188
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/github/droidfu/widgets/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 175
    return-void
.end method
