.class public Lcom/anddoes/launcher/InfoDropTarget;
.super Lcom/anddoes/launcher/ButtonDropTarget;
.source "SourceFile"


# instance fields
.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/graphics/drawable/TransitionDrawable;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/anddoes/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, -0xffff01

    iput v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->h:I

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 93
    .line 96
    instance-of v1, p1, Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v1, :cond_26

    instance-of v1, p2, Lcom/anddoes/launcher/y;

    if-eqz v1, :cond_26

    move v1, v0

    :goto_b
    if-nez v1, :cond_2b

    move v1, v2

    .line 100
    :goto_e
    iput-boolean v1, p0, Lcom/anddoes/launcher/InfoDropTarget;->d:Z

    .line 101
    iget-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 102
    iget-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 103
    invoke-virtual {p0}, Lcom/anddoes/launcher/InfoDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_28

    :goto_22
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    return-void

    :cond_26
    move v1, v2

    .line 96
    goto :goto_b

    .line 103
    :cond_28
    const/16 v2, 0x8

    goto :goto_22

    :cond_2b
    move v1, v0

    goto :goto_e
.end method

.method public final b(Lcom/anddoes/launcher/cc;)V
    .registers 4
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/anddoes/launcher/ButtonDropTarget;->b(Lcom/anddoes/launcher/cc;)V

    .line 115
    iget-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/anddoes/launcher/InfoDropTarget;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 116
    iget v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->h:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/InfoDropTarget;->setTextColor(I)V

    .line 117
    return-void
.end method

.method public final d(Lcom/anddoes/launcher/cc;)V
    .registers 3
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/anddoes/launcher/ButtonDropTarget;->d(Lcom/anddoes/launcher/cc;)V

    .line 122
    iget-boolean v0, p1, Lcom/anddoes/launcher/cc;->e:Z

    if-nez v0, :cond_11

    .line 123
    iget-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 124
    iget-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 126
    :cond_11
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/anddoes/launcher/ButtonDropTarget;->d_()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->d:Z

    .line 110
    return-void
.end method

.method public final e(Lcom/anddoes/launcher/cc;)Z
    .registers 4
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    iget-object v1, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/anddoes/launcher/y;

    if-eqz v1, :cond_16

    .line 79
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/y;

    iget-object v0, v0, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    .line 83
    :cond_d
    :goto_d
    if-eqz v0, :cond_14

    .line 86
    iget-object v1, p0, Lcom/anddoes/launcher/InfoDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/ComponentName;)V

    .line 88
    :cond_14
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_16
    iget-object v1, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_d

    .line 81
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/kj;

    iget-object v0, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_d
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 47
    invoke-super {p0}, Lcom/anddoes/launcher/ButtonDropTarget;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/anddoes/launcher/InfoDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->f:Landroid/content/res/ColorStateList;

    .line 52
    invoke-virtual {p0}, Lcom/anddoes/launcher/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->h:I

    .line 54
    iget-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 55
    iget v2, p0, Lcom/anddoes/launcher/InfoDropTarget;->h:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56
    invoke-virtual {p0}, Lcom/anddoes/launcher/InfoDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    .line 57
    iget-object v0, p0, Lcom/anddoes/launcher/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/anddoes/launcher/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 61
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 62
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 63
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/InfoDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_4d
    return-void
.end method
