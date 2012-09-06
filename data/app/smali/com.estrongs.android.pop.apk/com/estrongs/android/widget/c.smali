.class Lcom/estrongs/android/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->b(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->a(Lcom/estrongs/android/widget/a;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    iget-object v0, v0, Lcom/estrongs/android/widget/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    iget-object v1, v1, Lcom/estrongs/android/widget/a;->b:Landroid/app/Activity;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->b(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->c(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    iget-object v4, v0, Lcom/estrongs/android/widget/a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6c

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6c
    iget-object v1, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v1}, Lcom/estrongs/android/widget/a;->d(Lcom/estrongs/android/widget/a;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    iget-object v1, v1, Lcom/estrongs/android/widget/a;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/estrongs/android/pop/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8a

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8a
    invoke-virtual {v5, v4}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    iget-object v0, v0, Lcom/estrongs/android/widget/a;->c:Lcom/estrongs/android/widget/e;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    iget-object v0, v0, Lcom/estrongs/android/widget/a;->c:Lcom/estrongs/android/widget/e;

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/widget/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/a;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/a;->dismiss()V

    goto :goto_37
.end method
