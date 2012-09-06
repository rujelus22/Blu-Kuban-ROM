.class public Lcom/twitter/android/AccountsFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/twitter/android/util/w;


# instance fields
.field private l:Lcom/twitter/android/h;

.field private m:Lcom/twitter/android/i;

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private a([Landroid/accounts/Account;)[Lcom/twitter/android/gf;
    .registers 9

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :cond_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    array-length v3, p1

    new-array v0, v3, [Lcom/twitter/android/gf;

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v3, :cond_6

    new-instance v4, Lcom/twitter/android/gf;

    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-static {v2, v6}, Lcom/twitter/android/platform/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/api/ac;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/twitter/android/gf;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/ac;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method


# virtual methods
.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_21

    iget-wide v0, p0, Lcom/twitter/android/AccountsFragment;->h:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_20

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gf;

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, v0, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->l:Lcom/twitter/android/h;

    invoke-interface {v1, v0}, Lcom/twitter/android/h;->a(Lcom/twitter/android/gf;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_20

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_20
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    invoke-virtual {v0}, Lcom/twitter/android/i;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v4, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    iget v6, p0, Lcom/twitter/android/AccountsFragment;->o:I

    if-eqz v5, :cond_2e

    array-length v0, v5

    iput v0, p0, Lcom/twitter/android/AccountsFragment;->o:I

    array-length v7, v5

    move v3, v2

    move v0, v2

    :goto_1a
    if-ge v3, v7, :cond_31

    aget-object v8, v5, v3

    if-nez v0, :cond_2b

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v0, v1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2e
    iput v2, p0, Lcom/twitter/android/AccountsFragment;->o:I

    move v0, v2

    :cond_31
    if-nez v0, :cond_48

    iget v0, p0, Lcom/twitter/android/AccountsFragment;->o:I

    if-lez v0, :cond_48

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    :cond_3a
    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    invoke-direct {p0, v5}, Lcom/twitter/android/AccountsFragment;->a([Landroid/accounts/Account;)[Lcom/twitter/android/gf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/i;->a([Lcom/twitter/android/gf;)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    if-ne v6, v1, :cond_3a

    iget v0, p0, Lcom/twitter/android/AccountsFragment;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    array-length v1, v5

    move v0, v2

    :goto_51
    if-ge v0, v1, :cond_3a

    aget-object v2, v5, v0

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->l:Lcom/twitter/android/h;

    new-instance v1, Lcom/twitter/android/gf;

    invoke-static {v4, v2}, Lcom/twitter/android/platform/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/api/ac;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/gf;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/ac;)V

    invoke-interface {v0, v1}, Lcom/twitter/android/h;->a(Lcom/twitter/android/gf;)V

    goto :goto_47

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_51
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    if-nez v2, :cond_29

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitter/android/AccountsFragment;->a([Landroid/accounts/Account;)[Lcom/twitter/android/gf;

    move-result-object v2

    if-eqz v2, :cond_31

    array-length v3, v2

    iput v3, p0, Lcom/twitter/android/AccountsFragment;->o:I

    :goto_20
    new-instance v3, Lcom/twitter/android/i;

    iget-object v4, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/twitter/android/i;-><init>(Landroid/content/Context;Lcom/twitter/android/client/b;[Lcom/twitter/android/gf;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    :cond_29
    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_31
    const/4 v3, 0x0

    iput v3, p0, Lcom/twitter/android/AccountsFragment;->o:I

    goto :goto_20
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/twitter/android/h;

    iput-object p1, p0, Lcom/twitter/android/AccountsFragment;->l:Lcom/twitter/android/h;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/AccountsFragment;->h:J

    invoke-virtual {p0, v2, p0}, Lcom/twitter/android/AccountsFragment;->a(ILcom/twitter/android/util/w;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/AccountsFragment;->b(ILcom/twitter/android/util/w;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->m:Lcom/twitter/android/i;

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/i;->a(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
