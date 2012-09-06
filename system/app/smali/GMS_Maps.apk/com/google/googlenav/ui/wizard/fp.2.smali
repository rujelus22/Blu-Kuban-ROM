.class Lcom/google/googlenav/ui/wizard/fP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fL;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fP;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1f

    .line 271
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fP;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fL;->b(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/wizard/fU;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fP;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fL;->c(Lcom/google/googlenav/ui/wizard/fL;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fU;->a(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
