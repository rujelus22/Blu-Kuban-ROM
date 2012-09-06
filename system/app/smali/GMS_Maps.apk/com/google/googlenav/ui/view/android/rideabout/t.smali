.class Lcom/google/googlenav/ui/view/android/rideabout/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/t;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x61

    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/t;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->L()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 56
    const-string v0, "ws"

    const-string v1, "c"

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/t;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b()V

    .line 66
    :goto_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/t;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lcom/google/googlenav/ui/view/android/rideabout/g;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 67
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/t;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lcom/google/googlenav/ui/view/android/rideabout/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/android/rideabout/g;->a()V

    .line 69
    :cond_2b
    return-void

    .line 61
    :cond_2c
    const-string v0, "ws"

    const-string v1, "e"

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/t;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c()V

    goto :goto_1a
.end method
