.class final Lcom/twitter/android/eu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/twitter/android/eu;->removeMessages(I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/eu;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twitter/android/eu;->removeMessages(I)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/eu;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_118

    :goto_8
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->c()V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2e

    move v0, v1

    :goto_19
    iget-object v3, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iput v1, v0, Lcom/twitter/android/SignUpActivity;->o:I

    :goto_28
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->f()V

    goto :goto_8

    :cond_2e
    move v0, v2

    goto :goto_19

    :cond_30
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->o:I

    goto :goto_28

    :pswitch_35
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/util/k;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->b(Ljava/lang/String;)V

    :goto_5a
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->f()V

    goto :goto_8

    :cond_60
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    const v5, 0x7f0b019f

    invoke-virtual {v4, v5}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_80
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->p:I

    goto :goto_5a

    :pswitch_85
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/util/k;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3, v3}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_ac
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v3, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    const v5, 0x7f0b01a0

    invoke-virtual {v4, v5}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_cc
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->q:I

    goto/16 :goto_8

    :pswitch_d2
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_ef

    move v0, v1

    :goto_de
    iget-object v3, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iput v1, v0, Lcom/twitter/android/SignUpActivity;->r:I

    goto/16 :goto_8

    :cond_ef
    move v0, v2

    goto :goto_de

    :cond_f1
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_111

    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    const v5, 0x7f0b01a1

    invoke-virtual {v4, v5}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_111
    iget-object v0, p0, Lcom/twitter/android/eu;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->r:I

    goto/16 :goto_8

    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_e
        :pswitch_35
        :pswitch_85
        :pswitch_d2
    .end packed-switch
.end method
