.class public Lcom/estrongs/android/pop/view/TitleEditor;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Z

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->c:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->d:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f070035

    if-ne v0, v3, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/TitleEditor;->finish()V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0xfa

    if-lt v0, v4, :cond_3f

    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    :cond_3f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_54

    const v0, 0x7f090176

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    :cond_54
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/TitleEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_66

    const-string v4, "validate_enable"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_93

    :cond_66
    invoke-static {v3}, Lcom/estrongs/android/util/a/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x7f090177

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/TitleEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0902eb

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/TitleEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    :cond_93
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->b:Z

    if-eqz v0, :cond_10c

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "AUX"

    aput-object v0, v4, v1

    const-string v0, "CLOCK$"

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v5, "CON"

    aput-object v5, v4, v0

    const-string v0, "NUL"

    aput-object v0, v4, v6

    const-string v0, "PRN"

    aput-object v0, v4, v7

    const/4 v0, 0x5

    const-string v5, "Thumbs.db"

    aput-object v5, v4, v0

    move v0, v1

    :goto_b5
    array-length v5, v4

    if-lt v0, v5, :cond_ff

    move v0, v2

    :goto_b9
    if-eqz v0, :cond_e4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v7, :cond_e4

    const-string v2, "COM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d1

    const-string v2, "LPT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e4

    :cond_d1
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_e4

    move v0, v1

    :cond_e4
    if-eqz v0, :cond_ed

    invoke-static {v3}, Lcom/estrongs/android/util/a/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ed

    move v0, v1

    :cond_ed
    if-nez v0, :cond_10c

    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_14

    :cond_ff
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_109

    move v0, v1

    goto :goto_b9

    :cond_109
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_10c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RENAME_FILE_NAME"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/TitleEditor;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/TitleEditor;->finish()V

    goto/16 :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/TitleEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/TitleEditor;->d:Z

    if-eqz v2, :cond_ab

    const-string v0, "TITLE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->setTitle(Ljava/lang/CharSequence;)V

    :cond_21
    :goto_21
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->setContentView(I)V

    const/4 v0, 0x0

    if-eqz v2, :cond_b9

    const-string v0, "RENAME_FILE_NAME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_31
    const-string v0, "isKanbox"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->b:Z

    const-string v0, "renamefile"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->c:Z

    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->c:Z

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->a:Landroid/widget/EditText;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/pop/view/me;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/me;-><init>(Lcom/estrongs/android/pop/view/TitleEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/pop/view/mf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/mf;-><init>(Lcom/estrongs/android/pop/view/TitleEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/TitleEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/TitleEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_ab
    const v0, 0x7f0902c7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/TitleEditor;->setTitle(I)V

    goto/16 :goto_21

    :cond_b3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/TitleEditor;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_6a

    :cond_b9
    move-object v1, v0

    goto/16 :goto_31
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/estrongs/android/pop/view/mg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/mg;-><init>(Lcom/estrongs/android/pop/view/TitleEditor;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
