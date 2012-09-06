.class Lcom/estrongs/android/pop/view/lo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_174

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->h(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    :goto_34
    if-nez v0, :cond_38

    const-string v0, "/"

    :cond_38
    const-string v3, "searchPath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->i(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7e

    const-string v4, "&&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "keyword"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e
    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->j(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9b

    const-string v4, "&&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "category"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/c;->e(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v3

    iget-wide v3, v3, Lcom/estrongs/android/pop/l;->a:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_d7

    const-string v3, "&&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "minSize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v4

    iget-wide v4, v4, Lcom/estrongs/android/pop/l;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_d7
    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v3

    iget-wide v3, v3, Lcom/estrongs/android/pop/l;->b:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_100

    const-string v3, "&&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "maxSize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v4

    iget-wide v4, v4, Lcom/estrongs/android/pop/l;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_100
    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v3

    iget-wide v3, v3, Lcom/estrongs/android/pop/l;->a:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_129

    const-string v3, "&&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "minDate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v4

    iget-wide v4, v4, Lcom/estrongs/android/pop/l;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_129
    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v3

    iget-wide v3, v3, Lcom/estrongs/android/pop/l;->b:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_152

    const-string v3, "&&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "maxDate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v4

    iget-wide v4, v4, Lcom/estrongs/android/pop/l;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const v2, 0x7f090190

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->finish()V

    :goto_173
    return-void

    :cond_174
    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v8, :cond_188

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->h(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    :cond_188
    iget-object v3, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->h(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1af

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->h(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    :cond_1af
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->h(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    :cond_1ce
    iget-object v0, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->n(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_227

    const-string v0, "&&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "recursion"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f1
    const-string v0, "SEARCH_PATTERN"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "SEARCH_TABID"

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SEARCH_TABID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lo;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->finish()V

    goto/16 :goto_173

    :cond_227
    const-string v0, "&&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "recursion"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f1
.end method
