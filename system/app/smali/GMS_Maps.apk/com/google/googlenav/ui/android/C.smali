.class Lcom/google/googlenav/ui/android/C;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/C;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/C;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/C;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    return-void
.end method
