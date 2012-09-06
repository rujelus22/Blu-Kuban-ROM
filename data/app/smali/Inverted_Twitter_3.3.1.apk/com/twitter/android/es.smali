.class final Lcom/twitter/android/es;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SignUpActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    sparse-switch p3, :sswitch_data_192

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->am:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->e()V

    :cond_28
    :goto_28
    return-void

    :sswitch_29
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->al:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4d
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "account"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->finish()V

    goto :goto_28

    :sswitch_68
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    const-class v3, Lcom/twitter/android/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_name"

    iget-object v3, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v3}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "password"

    iget-object v3, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->finish()V

    goto :goto_28

    :sswitch_a0
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p4, :cond_cd

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->ag:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    :cond_cd
    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p6}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p6, :cond_f5

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ai:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    :cond_f5
    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v5, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p5, :cond_11d

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ah:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-nez v0, :cond_11d

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    :cond_11d
    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p7}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p7, :cond_18f

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aj:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-nez v0, :cond_18f

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    move-object v1, v0

    :goto_146
    if-eqz v1, :cond_160

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    const v2, 0x7f07008b

    invoke-virtual {v0, v2}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_28

    :cond_160
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->am:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->e()V

    goto/16 :goto_28

    :sswitch_170
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->ak:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iput-object p8, v0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/er;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {v0, v1}, Lcom/twitter/android/er;-><init>(Lcom/twitter/android/SignUpActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p9, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/er;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_28

    :cond_18f
    move-object v1, v0

    goto :goto_146

    nop

    :sswitch_data_192
    .sparse-switch
        0xc8 -> :sswitch_29
        0x190 -> :sswitch_68
        0x193 -> :sswitch_a0
        0x19c -> :sswitch_170
    .end sparse-switch
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SignUpActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sparse-switch p3, :sswitch_data_62

    :goto_d
    if-eqz p5, :cond_25

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->s:Lcom/twitter/android/et;

    invoke-virtual {v0, p5}, Lcom/twitter/android/et;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    :cond_25
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->c()V

    :cond_2a
    return-void

    :sswitch_2b
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, v1, v3}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iput v3, v0, Lcom/twitter/android/SignUpActivity;->q:I

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_d

    :sswitch_47
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->q:I

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_d

    :sswitch_data_62
    .sparse-switch
        0xc8 -> :sswitch_2b
        0x190 -> :sswitch_47
    .end sparse-switch
.end method

.method public final j(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SignUpActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_32

    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iput v1, v0, Lcom/twitter/android/SignUpActivity;->p:I

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_2c
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->c()V

    :cond_31
    return-void

    :cond_32
    move v0, v2

    goto :goto_f

    :cond_34
    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->p:I

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2c
.end method
