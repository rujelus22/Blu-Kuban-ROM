.class public abstract Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;
.super Landroid/view/ViewGroup;


# instance fields
.field private final mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    goto :goto_a
.end method

.method public getTranslationX()F
    .registers 2

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getTranslationX()F

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    goto :goto_a
.end method

.method public getTranslationY()F
    .registers 2

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getTranslationY()F

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    goto :goto_a
.end method

.method public setAlpha(F)V
    .registers 3

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_9
.end method

.method public setTranslationX(F)V
    .registers 3

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_9
.end method

.method public setTranslationY(F)V
    .registers 3

    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_9
.end method

.method public setVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->clearAnimation()V

    :cond_b
    :goto_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_f
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b
.end method
