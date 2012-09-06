.class public Lcom/twitter/android/MessagesActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# instance fields
.field private e:Lcom/twitter/android/client/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/b;

    const-string v1, "account_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v0}, Lcom/twitter/android/client/b;->u()V

    return-void
.end method


# virtual methods
.method public final a_(I)V
    .registers 6

    const v0, 0x7f07004d

    if-ne v0, p1, :cond_1c

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->a_(I)V

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v3, 0x1

    const v0, 0x7f03001b

    invoke-super {p0, p1, v0, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->b:Lcom/twitter/android/widget/Navbar;

    const/16 v1, 0x8

    const v2, 0x7f07005a

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->b:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f07004d

    const v2, 0x7f020117

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->b(II)V

    if-nez p1, :cond_75

    invoke-virtual {p0}, Lcom/twitter/android/MessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/MessagesActivity;->a(Landroid/content/Intent;)V

    new-instance v1, Lcom/twitter/android/MessagesFragment;

    invoke-direct {v1}, Lcom/twitter/android/MessagesFragment;-><init>()V

    invoke-virtual {v1, p0}, Lcom/twitter/android/MessagesFragment;->a(Lcom/twitter/android/t;)V

    invoke-static {v0, v3}, Lcom/twitter/android/MessagesFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "empty_title"

    const v4, 0x7f0b01b7

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "empty_desc"

    const v4, 0x7f0b01b8

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "force_refresh"

    const-string v4, "force_refresh"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/MessagesFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f070031

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_75
    new-instance v0, Lcom/twitter/android/bt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/bt;-><init>(Lcom/twitter/android/MessagesActivity;Lcom/twitter/android/bs;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/g;

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    goto :goto_f
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    :cond_e
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/MessagesActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/MessagesActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
