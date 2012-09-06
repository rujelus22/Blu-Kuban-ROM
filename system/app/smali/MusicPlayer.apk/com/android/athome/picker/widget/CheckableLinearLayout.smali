.class public Lcom/android/athome/picker/widget/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/widget/CheckableLinearLayout$1;,
        Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/athome/picker/widget/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 72
    invoke-virtual {p0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 74
    invoke-virtual {p0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->getDrawableState()[I

    move-result-object v1

    .line 75
    .local v1, myDrawableState:[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->invalidate()V

    .line 78
    .end local v1           #myDrawableState:[I
    :cond_13
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/athome/picker/widget/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 61
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 62
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 63
    sget-object v1, Lcom/android/athome/picker/widget/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    .line 65
    :cond_11
    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 134
    move-object v0, p1

    check-cast v0, Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;

    .line 135
    .local v0, ss:Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 136
    iget-boolean v1, v0, Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 137
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 126
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 128
    .local v0, ss:Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;
    invoke-virtual {p0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/athome/picker/widget/CheckableLinearLayout$SavedState;->checked:Z

    .line 129
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/athome/picker/widget/CheckableLinearLayout;->mChecked:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->refreshDrawableState()V

    .line 47
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 57
    return-void

    .line 56
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
