.class public Lcom/twitter/android/ListCreateEditActivity;
.super Lcom/twitter/android/BaseActivity;


# instance fields
.field private d:J

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Spinner;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ListCreateEditActivity;)V
    .registers 1

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->a()V

    return-void
.end method

.method private b()I
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    const/4 v0, 0x0

    :goto_12
    return v0

    :pswitch_13
    const/4 v0, 0x1

    goto :goto_12

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method private c()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ListCreateEditActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/twitter/android/ListCreateEditActivity;->j:I

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->b()I

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->showDialog(I)V

    :goto_a
    return-void

    :cond_b
    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->a()V

    goto :goto_a
.end method

.method public onBackPressed()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->showDialog(I)V

    :goto_a
    return-void

    :cond_b
    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onBackPressed()V

    goto :goto_a
.end method

.method public final onClickHandler(Landroid/view/View;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_fe

    :cond_9
    :goto_9
    return-void

    :sswitch_a
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    const v0, 0x7f0b008c

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_31
    sget-object v0, Lcom/twitter/android/util/k;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_48

    const v0, 0x7f0b008d

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_48
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->b()I

    move-result v4

    iget-wide v0, p0, Lcom/twitter/android/ListCreateEditActivity;->d:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_dd

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->a:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/ListCreateEditActivity;->d:J

    iget-object v5, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    :goto_70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "full_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b8

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_b8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "full_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b8
    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mode"

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ListCreateEditActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->finish()V

    goto/16 :goto_9

    :cond_dd
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    goto :goto_70

    :sswitch_ed
    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-virtual {p0, v4}, Lcom/twitter/android/ListCreateEditActivity;->showDialog(I)V

    goto/16 :goto_9

    :cond_f8
    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->finish()V

    goto/16 :goto_9

    nop

    :sswitch_data_fe
    .sparse-switch
        0x7f07002f -> :sswitch_ed
        0x7f070049 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f030013

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v1, 0x7f0b0086

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Landroid/widget/Spinner;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPromptId(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    const-string v1, "list_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ListCreateEditActivity;->d:J

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->h:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Ljava/lang/String;

    const-string v1, "mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ListCreateEditActivity;->j:I

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/twitter/android/ListCreateEditActivity;->j:I

    packed-switch v0, :pswitch_data_d8

    :goto_a2
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->d_(I)V

    :goto_a8
    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_10

    :pswitch_ba
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_a2

    :pswitch_c0
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_a2

    :cond_c6
    const-string v0, ""

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Ljava/lang/String;

    iput v4, p0, Lcom/twitter/android/ListCreateEditActivity;->j:I

    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->d_(I)V

    goto :goto_a8

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_c0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_4c

    move-object v0, v1

    :goto_5
    return-object v0

    :pswitch_6
    new-instance v2, Lcom/twitter/android/bd;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/bd;-><init>(Lcom/twitter/android/ListCreateEditActivity;I)V

    iget-wide v3, p0, Lcom/twitter/android/ListCreateEditActivity;->d:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_44

    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b0103

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b00fc

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00d5

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_5

    :cond_44
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
