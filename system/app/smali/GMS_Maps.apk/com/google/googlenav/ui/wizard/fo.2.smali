.class Lcom/google/googlenav/ui/wizard/fO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fL;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/ui/wizard/fL;

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
    .line 259
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x42

    if-ne p2, v0, :cond_23

    .line 260
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fL;->b(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/wizard/fU;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fL;->c(Lcom/google/googlenav/ui/wizard/fL;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fU;->a(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
