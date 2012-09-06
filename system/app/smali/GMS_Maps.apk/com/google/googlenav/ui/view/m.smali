.class Lcom/google/googlenav/ui/view/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/googlenav/ui/view/m;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/googlenav/ui/view/m;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->setVisibility(I)V

    .line 182
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    return-void
.end method
