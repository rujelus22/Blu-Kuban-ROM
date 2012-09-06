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
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/KeepOnCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/KeepOnCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    invoke-direct {v0, p1, p0}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iput-boolean v1, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    .line 23
    iput-boolean v1, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
.end method

.method private updateIcon()V
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    if-eqz v0, :cond_16

    .line 48
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    if-eqz v0, :cond_f

    .line 49
    const v0, 0x7f020060

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageResource(I)V

    .line 56
    :goto_e
    return-void

    .line 51
    :cond_f
    const v0, 0x7f020061

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageResource(I)V

    goto :goto_e

    .line 54
    :cond_16
    const v0, 0x7f02005f

    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setImageResource(I)V

    goto :goto_e
.end method


# virtual methods
.method public isCheckBoxEnabled()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 130
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox$SavedState;

    .line 131
    .local v0, ss:Lcom/google/android/music/KeepOnCheckBox$SavedState;
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 132
    #getter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->checked:Z
    invoke-static {v0}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$100(Lcom/google/android/music/KeepOnCheckBox$SavedState;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 133
    #getter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->available:Z
    invoke-static {v0}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$200(Lcom/google/android/music/KeepOnCheckBox$SavedState;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->requestLayout()V

    .line 135
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 122
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/music/KeepOnCheckBox$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/music/KeepOnCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 123
    .local v0, ss:Lcom/google/android/music/KeepOnCheckBox$SavedState;
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v2

    #setter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->checked:Z
    invoke-static {v0, v2}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$102(Lcom/google/android/music/KeepOnCheckBox$SavedState;Z)Z

    .line 124
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v2

    #setter for: Lcom/google/android/music/KeepOnCheckBox$SavedState;->available:Z
    invoke-static {v0, v2}, Lcom/google/android/music/KeepOnCheckBox$SavedState;->access$202(Lcom/google/android/music/KeepOnCheckBox$SavedState;Z)Z

    .line 125
    return-object v0
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    if-eqz v0, :cond_e

    .line 69
    invoke-virtual {p0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 71
    :cond_e
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0

    .line 69
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setCheckBoxEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 42
    iput-boolean p1, p0, Lcom/google/android/music/KeepOnCheckBox;->mEnabled:Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/music/KeepOnCheckBox;->updateIcon()V

    .line 44
    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/music/KeepOnCheckBox;->mChecked:Z

    .line 37
    invoke-direct {p0}, Lcom/google/android/music/KeepOnCheckBox;->updateIcon()V

    .line 38
    return-void
.end method
