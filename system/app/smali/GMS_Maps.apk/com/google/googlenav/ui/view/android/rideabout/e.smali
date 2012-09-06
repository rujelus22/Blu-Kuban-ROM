.class Lcom/google/googlenav/ui/view/android/rideabout/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x61

    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->L()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 49
    const-string v0, "is"

    const-string v1, "c"

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d()V

    .line 59
    :goto_1a
    return-void

    .line 54
    :cond_1b
    const-string v0, "is"

    const-string v1, "e"

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c()V

    goto :goto_1a
.end method
