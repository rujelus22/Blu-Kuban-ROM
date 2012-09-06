.class Lcom/google/googlenav/ui/view/android/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/ModalOverlay;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ModalOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/br;->a:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/br;->a:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    return-void
.end method
