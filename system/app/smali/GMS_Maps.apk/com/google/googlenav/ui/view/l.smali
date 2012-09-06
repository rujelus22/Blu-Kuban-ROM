.class Lcom/google/googlenav/ui/view/l;
.super LaT/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;LY/c;Lcom/google/googlenav/android/Y;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/googlenav/ui/view/l;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-direct {p0, p2, p3, p4}, LaT/i;-><init>(LY/c;Lcom/google/googlenav/android/Y;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/view/l;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/view/l;->a:Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->b()V

    .line 132
    :cond_d
    return-void
.end method
