.class Lcom/estrongs/android/pop/view/im;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/NewUserView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/NewUserView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/NewUserView;->b(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/NewUserView;->a(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/NewUserView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/NewUserView;->b(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/NewUserView;->c(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/NewUserView;->a(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_99

    const-string v3, "NEW_USERNAME"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NEW_PASSWORD"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    const-string v0, "SAVE_CHANGE"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/NewUserView;->d(Lcom/estrongs/android/pop/view/NewUserView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/NewUserView;->a(Lcom/estrongs/android/pop/view/NewUserView;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/NewUserView;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/im;->a:Lcom/estrongs/android/pop/view/NewUserView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/NewUserView;->finish()V

    goto :goto_34

    :cond_99
    const-string v0, "NEW_USERNAME"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NEW_PASSWORD"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70
.end method
