.class public Lcom/android/launcher2/InfoDropTarget;
.super Lcom/android/launcher2/ButtonDropTarget;
.source "InfoDropTarget.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mHoverColor:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const v0, -0xffff01

    iput v0, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    .line 45
    return-void
.end method

.method private isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .registers 4
    .parameter "source"
    .parameter "info"

    .prologue
    .line 71
    instance-of v0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 4
    .parameter "d"

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_16

    .line 81
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    iget-object v0, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 85
    :cond_d
    :goto_d
    if-eqz v0, :cond_14

    .line 86
    iget-object v1, p0, Lcom/android/launcher2/InfoDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startApplicationDetailsActivity(Landroid/content/ComponentName;)V

    .line 88
    :cond_14
    const/4 v1, 0x0

    return v1

    .line 82
    :cond_16
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_d

    .line 83
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_d
.end method

.method public onDragEnd()V
    .registers 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnd()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/InfoDropTarget;->mActive:Z

    .line 110
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher2/InfoDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 116
    iget v0, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(I)V

    .line 117
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 122
    iget-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_11

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 124
    iget-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 126
    :cond_11
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .registers 7
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 96
    .local v0, isVisible:Z
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/InfoDropTarget;->isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 97
    const/4 v0, 0x0

    .line 100
    :cond_8
    iput-boolean v0, p0, Lcom/android/launcher2/InfoDropTarget;->mActive:Z

    .line 101
    iget-object v1, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 102
    iget-object v1, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    return-void

    .line 103
    :cond_21
    const/16 v2, 0x8

    goto :goto_1d
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onFinishInflate()V

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    .line 56
    iget-object v2, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 59
    iget-object v2, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 63
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4d

    .line 64
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 65
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/launcher2/InfoDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_4d
    return-void
.end method
