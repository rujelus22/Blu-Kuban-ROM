.class public Lcom/twitter/android/DraftsActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# instance fields
.field e:Lcom/twitter/android/client/Session;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(I)V
    .registers 3

    const v0, 0x7f07004d

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/DraftsActivity;->showDialog(I)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->a_(I)V

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const v0, 0x7f030016

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/twitter/android/DraftsActivity;->b_(I)V

    invoke-virtual {p0}, Lcom/twitter/android/DraftsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_38

    new-instance v2, Lcom/twitter/android/DraftsFragment;

    invoke-direct {v2}, Lcom/twitter/android/DraftsFragment;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/twitter/android/DraftsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/DraftsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/DraftsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x7f070045

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/twitter/android/DraftsActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DraftsActivity;->e:Lcom/twitter/android/client/Session;

    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/twitter/android/DraftsActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DraftsActivity;->e:Lcom/twitter/android/client/Session;

    goto :goto_46
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lcom/twitter/android/ah;

    invoke-direct {v1, p0}, Lcom/twitter/android/ah;-><init>(Lcom/twitter/android/DraftsActivity;)V

    packed-switch p1, :pswitch_data_30

    :goto_9
    return-object v0

    :pswitch_a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0148

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0149

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00d6

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_9

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
