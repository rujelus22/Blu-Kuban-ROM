.class Lcom/google/googlenav/ui/wizard/bH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bC;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bH;->b:Lcom/google/googlenav/ui/wizard/bC;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bH;->b:Lcom/google/googlenav/ui/wizard/bC;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/bC;->c(Lcom/google/googlenav/ui/wizard/bC;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
