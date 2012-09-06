.class Lcom/estrongs/android/pop/view/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    move v0, v1

    :goto_14
    iget-object v3, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/bd;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/bd;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    or-int/lit8 v0, v0, 0x1

    :cond_27
    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/bd;->c()V

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f090216

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "(MD5,SHA-1)"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/be;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    :cond_54
    move v0, v2

    goto :goto_14
.end method
