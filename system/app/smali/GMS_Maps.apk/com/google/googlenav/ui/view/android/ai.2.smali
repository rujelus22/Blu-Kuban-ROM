.class Lcom/google/googlenav/ui/view/android/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ai;->a:Lcom/google/googlenav/ui/view/android/Z;

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

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/Z;->c(Lcom/google/googlenav/ui/view/android/Z;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/Z;->d(Lcom/google/googlenav/ui/view/android/Z;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_f
.end method
