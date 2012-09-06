.class Lcom/google/googlenav/ui/android/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/googlenav/ui/android/Q;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/googlenav/ui/android/Q;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    .line 392
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/android/Q;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    .line 398
    return-void
.end method
