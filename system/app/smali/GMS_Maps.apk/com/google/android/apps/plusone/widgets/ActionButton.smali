.class public Lcom/google/android/apps/plusone/widgets/ActionButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->a:I

    .line 43
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->b:I

    .line 44
    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->c:F

    .line 45
    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->d:F

    .line 46
    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->e:F

    .line 47
    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->f:I

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a()V

    .line 49
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 62
    iget v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->a:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setTextColor(I)V

    .line 63
    iget v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->a:I

    const/high16 v2, -0x100

    if-eq v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-direct {p0, v0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a(Z)V

    .line 68
    :goto_16
    return-void

    .line 65
    :cond_17
    iget v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->b:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setTextColor(I)V

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a(Z)V

    goto :goto_16
.end method

.method private a(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    if-eqz p1, :cond_f

    .line 72
    iget v0, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->c:F

    iget v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->d:F

    iget v2, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->e:F

    iget v3, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->f:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setShadowLayer(FFFI)V

    .line 76
    :goto_e
    return-void

    .line 74
    :cond_f
    const v0, 0x106000d

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setShadowLayer(FFFI)V

    goto :goto_e
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a()V

    .line 58
    return-void
.end method
