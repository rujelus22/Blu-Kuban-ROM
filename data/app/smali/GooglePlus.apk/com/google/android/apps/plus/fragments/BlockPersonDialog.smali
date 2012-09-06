.class public Lcom/google/android/apps/plus/fragments/BlockPersonDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BlockPersonDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;-><init>(Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "plusPage"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;-><init>(ZLjava/io/Serializable;)V

    .line 53
    return-void
.end method

.method public constructor <init>(ZLjava/io/Serializable;)V
    .registers 5
    .parameter "plusPage"
    .parameter "callbackData"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "plus_page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const-string v1, "callback_data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method private configureExplanationLink(Landroid/widget/TextView;)V
    .registers 9
    .parameter "explanation"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0802bf

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, text:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v0, span:Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "plusone_promo_block"

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 118
    .local v2, url:Landroid/net/Uri;
    new-instance v3, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;-><init>(Lcom/google/android/apps/plus/fragments/BlockPersonDialog;Landroid/net/Uri;)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 137
    packed-switch p2, :pswitch_data_2e

    .line 157
    :cond_3
    :goto_3
    return-void

    .line 139
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "callback_data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 141
    .local v1, callbackData:Ljava/io/Serializable;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 142
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    instance-of v3, v2, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;

    if-eqz v3, :cond_1c

    .line 143
    check-cast v2, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;

    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v2, v1}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;->blockPerson(Ljava/io/Serializable;)V

    goto :goto_3

    .line 145
    .restart local v2       #fragment:Landroid/support/v4/app/Fragment;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 146
    .local v0, activity:Landroid/app/Activity;
    instance-of v3, v0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;

    if-eqz v3, :cond_3

    .line 147
    check-cast v0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;->blockPerson(Ljava/io/Serializable;)V

    goto :goto_3

    .line 153
    .end local v1           #callbackData:Ljava/io/Serializable;
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    :pswitch_2a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_3

    .line 137
    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_2a
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "plus_page"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 68
    .local v3, plusPage:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 69
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v3, :cond_5b

    const v5, 0x7f0802b4

    :goto_18
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 73
    const v5, 0x104000a

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    const/high16 v5, 0x104

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030011

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, view:Landroid/view/View;
    const v5, 0x7f09006c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, message:Landroid/widget/TextView;
    if-eqz v3, :cond_5f

    const v5, 0x7f0802b6

    :goto_44
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v5, 0x7f09006d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->configureExplanationLink(Landroid/widget/TextView;)V

    .line 82
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 70
    .end local v2           #message:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_5b
    const v5, 0x7f0802b3

    goto :goto_18

    .line 79
    .restart local v2       #message:Landroid/widget/TextView;
    .restart local v4       #view:Landroid/view/View;
    :cond_5f
    const v5, 0x7f0802b5

    goto :goto_44
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 93
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_16

    .line 94
    const v2, 0x7f09006d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    .local v1, explanation:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v1           #explanation:Landroid/widget/TextView;
    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 109
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_15

    .line 110
    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->configureExplanationLink(Landroid/widget/TextView;)V

    .line 112
    :cond_15
    return-void
.end method
