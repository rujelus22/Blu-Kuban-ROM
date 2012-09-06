.class Lcom/google/googlenav/ui/view/android/bq;
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
    .line 90
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bq;->a:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bq;->a:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    return-void
.end method
