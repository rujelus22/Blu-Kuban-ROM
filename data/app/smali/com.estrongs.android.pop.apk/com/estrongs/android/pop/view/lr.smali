.class Lcom/estrongs/android/pop/view/lr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const-class v2, Lcom/estrongs/android/pop/view/SearchPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->i(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "type"

    const-string v2, "img"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->finish()V

    return-void

    :cond_41
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_56

    const-string v1, "type"

    const-string v2, "music"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :cond_56
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6b

    const-string v1, "type"

    const-string v2, "apk"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :cond_6b
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lr;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    const-string v1, "type"

    const-string v2, "zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f
.end method
