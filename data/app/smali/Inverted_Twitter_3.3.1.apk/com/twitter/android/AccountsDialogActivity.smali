.class public Lcom/twitter/android/AccountsDialogActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Lcom/twitter/android/util/w;


# instance fields
.field a:Lcom/twitter/android/client/b;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/twitter/android/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/g;

    invoke-virtual {v0}, Lcom/twitter/android/g;->notifyDataSetChanged()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    packed-switch p1, :pswitch_data_36

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_6
    return-void

    :pswitch_7
    const/4 v0, -0x1

    if-ne v0, p2, :cond_32

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Ljava/lang/String;

    const-string v1, "account"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "account_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tab"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->startActivity(Landroid/content/Intent;)V

    :cond_32
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    goto :goto_6

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    :goto_8
    return-void

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "add_account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/AccountsDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :pswitch_1a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    goto :goto_8

    :pswitch_data_28
    .packed-switch 0x7f070016
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/b;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    new-array v5, v4, [Lcom/twitter/android/gf;

    move v0, v2

    :goto_21
    if-ge v0, v4, :cond_35

    new-instance v6, Lcom/twitter/android/gf;

    aget-object v7, v3, v0

    aget-object v8, v3, v0

    invoke-static {v1, v8}, Lcom/twitter/android/platform/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/api/ac;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/twitter/android/gf;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/ac;)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_35
    new-instance v0, Lcom/twitter/android/g;

    invoke-direct {v0, p0, p0, v5}, Lcom/twitter/android/g;-><init>(Lcom/twitter/android/AccountsDialogActivity;Landroid/content/Context;[Lcom/twitter/android/gf;)V

    iput-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/g;

    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-le v4, v9, :cond_79

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    :goto_5f
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Ljava/lang/String;

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v9, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    return-void

    :cond_79
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5f
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/g;

    invoke-virtual {v0, p3}, Lcom/twitter/android/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gf;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/AccountsDialogActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method
