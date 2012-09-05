.class Lcom/google/googlenav/ui/view/dialog/J;
.super Lbf/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/I;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/I;Lap/c;Lcom/google/googlenav/android/ac;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/J;->a:Lcom/google/googlenav/ui/view/dialog/I;

    invoke-direct {p0, p2, p3, p4}, Lbf/g;-><init>(Lap/c;Lcom/google/googlenav/android/ac;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/J;->a:Lcom/google/googlenav/ui/view/dialog/I;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/I;->a(Lcom/google/googlenav/ui/view/dialog/I;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/J;->a:Lcom/google/googlenav/ui/view/dialog/I;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/I;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
