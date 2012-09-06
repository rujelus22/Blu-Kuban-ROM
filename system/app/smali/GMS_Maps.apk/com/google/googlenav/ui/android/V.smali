.class Lcom/google/googlenav/ui/android/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/r;)V
    .registers 2
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/googlenav/ui/android/v;->a:Lcom/google/googlenav/ui/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 665
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 666
    iget-object v0, p0, Lcom/google/googlenav/ui/android/v;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->e(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMapViewMenuController()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    .line 672
    :goto_17
    return-void

    .line 668
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/android/v;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->e(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBottomBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 669
    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 670
    iget-object v1, p0, Lcom/google/googlenav/ui/android/v;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/googlenav/ui/android/w;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_17
.end method
