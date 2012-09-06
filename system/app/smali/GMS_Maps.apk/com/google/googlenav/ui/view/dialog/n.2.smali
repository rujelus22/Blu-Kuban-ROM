.class Lcom/google/googlenav/ui/view/dialog/N;
.super Lcom/google/googlenav/ui/view/dialog/Q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/F;)V
    .registers 3
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/N;->a:Lcom/google/googlenav/ui/view/dialog/F;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;-><init>(Lcom/google/googlenav/ui/view/dialog/G;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/N;->a:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/F;->f()V

    .line 529
    return-void
.end method
