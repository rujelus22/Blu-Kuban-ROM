.class public Lcom/twitter/android/ActivitiesActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    const v0, 0x7f03001b

    invoke-super {p0, p1, v0, v2}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/ActivitiesActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const v0, 0x7f0b016f

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivitiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivitiesActivity;->b(Ljava/lang/String;)V

    if-nez p1, :cond_f

    new-instance v0, Lcom/twitter/android/ActivityFragment;

    invoke-direct {v0}, Lcom/twitter/android/ActivityFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/android/t;)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivitiesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/twitter/android/ActivityFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ActivityFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivitiesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f070031

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_f
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/ActivitiesActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_b
    return-void
.end method
