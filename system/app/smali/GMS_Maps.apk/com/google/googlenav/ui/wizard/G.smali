.class Lcom/google/googlenav/ui/wizard/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/e;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/g;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/g;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v1, 0x15e

    if-ge v0, v1, :cond_1a

    .line 143
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/g;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->b(Lcom/google/googlenav/ui/wizard/e;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :goto_19
    return-void

    .line 145
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/g;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->b(Lcom/google/googlenav/ui/wizard/e;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19
.end method
