.class Lcom/google/googlenav/ui/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/googlenav/ui/view/k;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/ui/view/k;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/view/k;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)Lcom/google/googlenav/ui/view/n;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/view/k;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)Lcom/google/googlenav/ui/view/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/n;->a()V

    .line 101
    :cond_18
    return-void
.end method
