.class public Lcom/google/android/apps/plus/views/CompoundImageButton;
.super Landroid/widget/ImageButton;
.source "CompoundImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/CompoundImageButton$1;,
        Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;,
        Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/views/CompoundImageButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CompoundImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/CompoundImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private setChecked(ZZ)V
    .registers 5
    .parameter "checked"
    .parameter "fromUser"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mChecked:Z

    if-eq v0, p1, :cond_d

    .line 70
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mChecked:Z

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CompoundImageButton;->refreshDrawableState()V

    .line 75
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mBroadcasting:Z

    if-eqz v0, :cond_e

    .line 86
    :cond_d
    :goto_d
    return-void

    .line 79
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mBroadcasting:Z

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mOnCheckedChangeListener:Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1c

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mOnCheckedChangeListener:Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mChecked:Z

    invoke-interface {v0, p0, v1, p2}, Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/apps/plus/views/CompoundImageButton;ZZ)V

    .line 84
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mBroadcasting:Z

    goto :goto_d
.end method


# virtual methods
.method public isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 116
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 117
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 118
    sget-object v1, Lcom/google/android/apps/plus/views/CompoundImageButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->mergeDrawableStates([I[I)[I

    .line 120
    :cond_11
    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 171
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;

    .line 172
    .local v0, ss:Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 173
    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CompoundImageButton;->requestLayout()V

    .line 175
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 164
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 165
    .local v0, ss:Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/CompoundImageButton$SavedState;->checked:Z

    .line 166
    return-object v0
.end method

.method public performClick()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mChecked:Z

    if-nez v0, :cond_e

    move v0, v1

    :goto_6
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(ZZ)V

    .line 47
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0

    .line 46
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(ZZ)V

    .line 66
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mOnCheckedChangeListener:Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;

    .line 96
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CompoundImageButton;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 42
    return-void

    .line 41
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
