.class public Lcom/twitter/android/AccountsActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/gf;)V
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/AccountsActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const v0, 0x7f03001b

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/AccountsActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/twitter/android/AccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const v2, 0x7f0b0160

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountsActivity;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/AccountsActivity;->b:Lcom/twitter/android/widget/Navbar;

    const/16 v2, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_56

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    if-nez p1, :cond_f

    new-instance v1, Lcom/twitter/android/AccountsFragment;

    invoke-direct {v1}, Lcom/twitter/android/AccountsFragment;-><init>()V

    invoke-virtual {v1, p0}, Lcom/twitter/android/AccountsFragment;->a(Lcom/twitter/android/t;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/twitter/android/AccountsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/AccountsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f070031

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_f

    :array_56
    .array-data 0x4
        0x4dt 0x0t 0x7t 0x7ft
        0x5at 0x0t 0x7t 0x7ft
    .end array-data
.end method
