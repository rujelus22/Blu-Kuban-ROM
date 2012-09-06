.class final Lcom/twitter/android/cc;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/MessagesThreadActivity;Lcom/twitter/android/bx;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/cc;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesThreadActivity;->c(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    const v1, 0x7f0b0156

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_22
    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_27
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesThreadActivity;->c(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->finish()V

    :cond_d
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/ac;)V
    .registers 12

    const v3, 0x7f0b00c9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v2, p2}, Lcom/twitter/android/MessagesThreadActivity;->c(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v2

    if-eqz v2, :cond_2c

    sparse-switch p3, :sswitch_data_9c

    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v2, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->l:Landroid/widget/Button;

    const/16 v3, 0xc8

    if-eq p3, v3, :cond_9a

    :goto_24
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_2c
    :goto_2c
    return-void

    :sswitch_2d
    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v2, :cond_39

    iget-object v0, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->finish()V

    goto :goto_2c

    :cond_39
    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v2}, Lcom/twitter/android/MessagesThreadActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5d
    iget v2, p5, Lcom/twitter/android/api/ac;->t:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_15

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    const-class v4, Lcom/twitter/android/DialogActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "username"

    iget-object v4, p5, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "user_id"

    iget-wide v4, p5, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v3, v2}, Lcom/twitter/android/MessagesThreadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    :sswitch_85
    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_15

    :sswitch_8f
    iget-object v2, p0, Lcom/twitter/android/cc;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15

    :cond_9a
    move v0, v1

    goto :goto_24

    :sswitch_data_9c
    .sparse-switch
        0xc8 -> :sswitch_2d
        0x193 -> :sswitch_85
        0x194 -> :sswitch_8f
    .end sparse-switch
.end method
