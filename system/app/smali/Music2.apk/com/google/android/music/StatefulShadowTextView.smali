.class public Lcom/google/android/music/StatefulShadowTextView;
.super Landroid/widget/TextView;
.source "StatefulShadowTextView.java"


# static fields
.field private static mPrimaryOffline:Landroid/content/res/ColorStateList;

.field private static mPrimaryOnline:Landroid/content/res/ColorStateList;

.field private static mSecondaryOffline:Landroid/content/res/ColorStateList;

.field private static mSecondaryOnline:Landroid/content/res/ColorStateList;

.field private static mShadowOffline:I

.field private static mShadowOnline:I


# instance fields
.field private mOnline:Z

.field private mShowShadowWhenDeselected:Z

.field private mShowShadowWhenSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenSelected:Z

    .line 31
    iput-boolean v2, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenDeselected:Z

    .line 32
    iput-boolean v2, p0, Lcom/google/android/music/StatefulShadowTextView;->mOnline:Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 38
    sget-object v1, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOnline:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_54

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOnline:Landroid/content/res/ColorStateList;

    .line 41
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOffline:Landroid/content/res/ColorStateList;

    .line 42
    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOnline:Landroid/content/res/ColorStateList;

    .line 43
    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOffline:Landroid/content/res/ColorStateList;

    .line 44
    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    sput v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOnline:I

    .line 45
    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    sput v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOffline:I

    .line 47
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_54
    return-void
.end method

.method private updateShadowState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/music/StatefulShadowTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/music/StatefulShadowTextView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/music/StatefulShadowTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenSelected:Z

    .line 78
    .local v0, showShadow:Z
    :goto_15
    if-eqz v0, :cond_29

    .line 79
    const/high16 v2, 0x4000

    iget-boolean v1, p0, Lcom/google/android/music/StatefulShadowTextView;->mOnline:Z

    if-eqz v1, :cond_26

    sget v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOnline:I

    :goto_1f
    invoke-virtual {p0, v2, v3, v3, v1}, Lcom/google/android/music/StatefulShadowTextView;->setShadowLayer(FFFI)V

    .line 83
    :goto_22
    return-void

    .line 76
    .end local v0           #showShadow:Z
    :cond_23
    iget-boolean v0, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenDeselected:Z

    goto :goto_15

    .line 79
    .restart local v0       #showShadow:Z
    :cond_26
    sget v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOffline:I

    goto :goto_1f

    .line 81
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v3, v3, v1}, Lcom/google/android/music/StatefulShadowTextView;->setShadowLayer(FFFI)V

    goto :goto_22
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 72
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 73
    return-void
.end method

.method public setPrimaryAndOnline(ZZ)V
    .registers 6
    .parameter "primary"
    .parameter "online"

    .prologue
    const/4 v2, 0x0

    .line 60
    if-eqz p1, :cond_19

    .line 61
    if-eqz p2, :cond_16

    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOnline:Landroid/content/res/ColorStateList;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/music/StatefulShadowTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    :goto_a
    const/high16 v1, 0x4000

    if-eqz p2, :cond_24

    sget v0, Lcom/google/android/music/StatefulShadowTextView;->mShadowOnline:I

    :goto_10
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/music/StatefulShadowTextView;->setShadowLayer(FFFI)V

    .line 66
    iput-boolean p2, p0, Lcom/google/android/music/StatefulShadowTextView;->mOnline:Z

    .line 67
    return-void

    .line 61
    :cond_16
    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOffline:Landroid/content/res/ColorStateList;

    goto :goto_7

    .line 63
    :cond_19
    if-eqz p2, :cond_21

    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOnline:Landroid/content/res/ColorStateList;

    :goto_1d
    invoke-virtual {p0, v0}, Lcom/google/android/music/StatefulShadowTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_a

    :cond_21
    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOffline:Landroid/content/res/ColorStateList;

    goto :goto_1d

    .line 65
    :cond_24
    sget v0, Lcom/google/android/music/StatefulShadowTextView;->mShadowOffline:I

    goto :goto_10
.end method

.method public setShowShadowWhenDeselected(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenDeselected:Z

    .line 56
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 57
    return-void
.end method

.method public setShowShadowWhenSelected(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenSelected:Z

    .line 51
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 52
    return-void
.end method
