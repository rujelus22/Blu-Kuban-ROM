.class Lcom/google/googlenav/ui/view/dialog/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ck;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x42

    if-ne p2, v0, :cond_23

    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ck;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cj;->b(Lcom/google/googlenav/ui/view/dialog/cj;)Lcom/google/googlenav/ui/wizard/iK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ck;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/cj;->a(Lcom/google/googlenav/ui/view/dialog/cj;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/iK;->a(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
