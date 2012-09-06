.class Lcom/google/googlenav/ui/wizard/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ch;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cm;->b:Lcom/google/googlenav/ui/wizard/ch;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cm;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cm;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cm;->b:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ch;->c(Lcom/google/googlenav/ui/wizard/ch;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cm;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method
