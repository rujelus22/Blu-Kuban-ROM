.class public Lcom/google/android/music/KeepOnCheckBox;
.super Landroid/widget/ImageView;
.source "KeepOnCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/KeepOnCheckBox$1;,
        Lcom/google/android/music/KeepOnCheckBox$SavedState;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/KeepOnCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/KeepOnCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    invoke-direct {v0, p1, p0}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    .line 24
    return-void
.end method

.method private updateIcon()V
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    if-eqz v0, :cond_16

    .line 47
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    if-eqz v0, :cond_f

    .line 48
    const v0, 0x7f02006f

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageResource(I)V

    .line 59
    :goto_e
    return-void

    .line 50
    :cond_f
    const v0, 0x7f02006e

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageResource(I)V

    goto :goto_e

    .line 53
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    if-eqz v0, :cond_21

    .line 54
    const v0, 0x7f020068

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageResource(I)V

    goto :goto_e

    .line 56
    :cond_21
    const v0, 0x7f020066

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageResource(I)V

    goto :goto_e
.end method


# virtual methods
.method public isCheckBoxEnabled()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 133
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox$SavedState;

    .line 134
    .local v0, ss:Lcom/google/android/music/KeepOnCheckBox$SavedState;
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 135
    #getter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->checked:Z
    invoke-static {v0}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$100(Lcom/google/android/music/KeepOnCheckBox$SavedState;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 136
    #getter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->available:Z
    invoke-static {v0}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$200(Lcom/google/android/music/KeepOnCheckBox$SavedState;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->requestLayout()V

    .line 138
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 125
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/music/KeepOnCheckBox$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/music/KeepOnCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 126
    .local v0, ss:Lcom/google/android/music/KeepOnCheckBox$SavedState;
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v2

    #setter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->checked:Z
    invoke-static {v0, v2}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$102(Lcom/google/android/music/KeepOnCheckBox$SavedState;Z)Z

    .line 127
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v2

    #setter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->available:Z
    invoke-static {v0, v2}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$202(Lcom/google/android/music/KeepOnCheckBox$SavedState;Z)Z

    .line 128
    return-object v0
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    if-eqz v0, :cond_e

    .line 72
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 74
    :cond_e
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0

    .line 72
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setCheckbBoxEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 41
    iput-boolean p1, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    .line 42
    invoke-direct {p0}, Lcom/google/android/music/KeepOnCheckBox;->updateIcon()V

    .line 43
    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/music/KeepOnCheckBox;->updateIcon()V

    .line 37
    return-void
.end method
