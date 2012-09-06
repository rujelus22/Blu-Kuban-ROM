.class Lcom/google/googlenav/ui/view/dialog/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cl;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cl;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cj;->a(Lcom/google/googlenav/ui/view/dialog/cj;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cl;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cj;->b(Lcom/google/googlenav/ui/view/dialog/cj;)Lcom/google/googlenav/ui/wizard/iK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cl;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/cj;->a(Lcom/google/googlenav/ui/view/dialog/cj;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/iK;->a(Ljava/lang/String;)V

    .line 103
    :cond_23
    return-void
.end method
