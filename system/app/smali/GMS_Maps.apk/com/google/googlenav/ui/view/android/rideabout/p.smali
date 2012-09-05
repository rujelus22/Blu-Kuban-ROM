.class Lcom/google/googlenav/ui/view/android/rideabout/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/p;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/16 v2, 0x61

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/p;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->L()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "ws"

    const-string v1, "c"

    invoke-static {v2, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/p;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c()V

    :goto_1a
    return-void

    :cond_1b
    const-string v0, "ws"

    const-string v1, "e"

    invoke-static {v2, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/p;->a:Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b()V

    goto :goto_1a
.end method
