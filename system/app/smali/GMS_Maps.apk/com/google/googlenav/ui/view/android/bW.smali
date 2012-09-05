.class Lcom/google/googlenav/ui/view/android/bW;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/google/googlenav/ui/view/android/bU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bU;Landroid/widget/TextView;Landroid/widget/Button;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bW;->c:Lcom/google/googlenav/ui/view/android/bU;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bW;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bW;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bW;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    :goto_11
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bW;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1e

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bW;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method
