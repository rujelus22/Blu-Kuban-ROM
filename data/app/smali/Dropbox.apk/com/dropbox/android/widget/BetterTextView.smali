.class public Lcom/dropbox/android/widget/BetterTextView;
.super Landroid/widget/TextView;
.source "panda.py"


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field private d:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7

    .prologue
    .line 53
    iget v0, p0, Lcom/dropbox/android/widget/BetterTextView;->a:F

    iget v1, p0, Lcom/dropbox/android/widget/BetterTextView;->b:F

    iget v2, p0, Lcom/dropbox/android/widget/BetterTextView;->c:F

    iget-object v3, p0, Lcom/dropbox/android/widget/BetterTextView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/BetterTextView;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dropbox/android/widget/BetterTextView;->setShadowLayer(FFFI)V

    .line 54
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 70
    iget-object v0, p0, Lcom/dropbox/android/widget/BetterTextView;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/dropbox/android/widget/BetterTextView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {p0}, Lcom/dropbox/android/widget/BetterTextView;->a()V

    .line 74
    :cond_12
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/dropbox/android/widget/BetterTextView;->a:F

    .line 60
    iput p2, p0, Lcom/dropbox/android/widget/BetterTextView;->b:F

    .line 61
    iput p3, p0, Lcom/dropbox/android/widget/BetterTextView;->c:F

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 64
    return-void
.end method

.method public setStatefullShadowColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/BetterTextView;->d:Landroid/content/res/ColorStateList;

    .line 42
    invoke-virtual {p0}, Lcom/dropbox/android/widget/BetterTextView;->a()V

    .line 43
    return-void
.end method

.method public setStatefullShadowColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dropbox/android/widget/BetterTextView;->d:Landroid/content/res/ColorStateList;

    .line 48
    invoke-virtual {p0}, Lcom/dropbox/android/widget/BetterTextView;->a()V

    .line 49
    return-void
.end method
