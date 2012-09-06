.class public Lcom/anddoes/launcher/HolographicLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/anddoes/launcher/dq;

.field private b:Landroid/widget/ImageView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Lcom/anddoes/launcher/kd;->d:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->c:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/HolographicLinearLayout;->setWillNotDraw(Z)V

    .line 51
    new-instance v0, Lcom/anddoes/launcher/dq;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/dq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->a:Lcom/anddoes/launcher/dq;

    .line 52
    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->a:Lcom/anddoes/launcher/dq;

    iget-object v1, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/dq;->b(Landroid/widget/ImageView;)V

    .line 77
    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    if-eqz p1, :cond_7

    .line 69
    iput-object p1, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p0}, Lcom/anddoes/launcher/HolographicLinearLayout;->a()V

    .line 72
    :cond_7
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 58
    iget-object v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    .line 59
    iget-object v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1a

    .line 61
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 62
    invoke-virtual {p0}, Lcom/anddoes/launcher/HolographicLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 65
    :cond_1a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    iget-object v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 86
    iget v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->c:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/HolographicLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    .line 88
    :cond_11
    iget-object v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->a:Lcom/anddoes/launcher/dq;

    iget-object v1, p0, Lcom/anddoes/launcher/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/dq;->a(Landroid/widget/ImageView;)V

    .line 89
    return-void
.end method
