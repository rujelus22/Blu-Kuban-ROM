.class public Lcom/twitter/android/SULActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    :goto_7
    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->finish()V

    goto :goto_7

    :pswitch_data_c
    .packed-switch 0x7f07003f
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onboarding"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    const v1, 0x7f030032

    invoke-super {p0, p1, v1, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    :goto_14
    iget-object v1, p0, Lcom/twitter/android/SULActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-nez v1, :cond_24

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const v1, 0x7f03001b

    invoke-super {p0, p1, v1, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    goto :goto_14

    :cond_24
    const v1, 0x7f0b0137

    invoke-virtual {p0, v1}, Lcom/twitter/android/SULActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/SULActivity;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/twitter/android/SULActivity;->b:Lcom/twitter/android/widget/Navbar;

    const/16 v0, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_76

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000b

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->addView(Landroid/view/View;)V

    :cond_50
    if-nez p1, :cond_1c

    new-instance v0, Lcom/twitter/android/SULFragment;

    invoke-direct {v0}, Lcom/twitter/android/SULFragment;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/twitter/android/SULFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SULFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f070031

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1c

    nop

    :array_76
    .array-data 0x4
        0x4dt 0x0t 0x7t 0x7ft
        0x5at 0x0t 0x7t 0x7ft
    .end array-data
.end method
