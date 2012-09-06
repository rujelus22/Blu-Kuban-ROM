.class public Lcom/twitter/android/UsersActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 5

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->l()Lcom/twitter/android/util/FriendshipCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "friendship_cache"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/UsersActivity;->setResult(ILandroid/content/Intent;)V

    :cond_26
    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x1

    const v5, 0x7f03005f

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_c8

    :pswitch_13
    invoke-super {p0, p1, v5, v0}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    const-string v4, "user_ids"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    move v0, v1

    :cond_1f
    :goto_1f
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_51

    invoke-static {v2, v0}, Lcom/twitter/android/UsersFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "follow"

    const-string v5, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/twitter/android/UsersFragment;

    invoke-direct {v1}, Lcom/twitter/android/UsersFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->setArguments(Landroid/os/Bundle;)V

    packed-switch v3, :pswitch_data_dc

    :goto_3f
    :pswitch_3f
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v4, 0x7f070031

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_51
    packed-switch v3, :pswitch_data_e6

    :pswitch_54
    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b(Ljava/lang/String;)V

    :goto_5e
    return-void

    :pswitch_5f
    invoke-super {p0, p1, v5, v0}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    goto :goto_1f

    :pswitch_63
    invoke-super {p0, p1, v5, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_5e

    :pswitch_6f
    const-string v4, "empty_desc"

    const v5, 0x7f0b01b9

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3f

    :pswitch_78
    const-string v4, "empty_desc"

    const v5, 0x7f0b01ba

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3f

    :pswitch_81
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_8c
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_97
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_a2
    const-string v0, "slug_name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_ac
    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b_(I)V

    goto :goto_5e

    :pswitch_b3
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b_(I)V

    goto :goto_5e

    :pswitch_ba
    const v0, 0x7f0b01ae

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b_(I)V

    goto :goto_5e

    :pswitch_c1
    const v0, 0x7f0b01af

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->b_(I)V

    goto :goto_5e

    :pswitch_data_c8
    .packed-switch 0x6
        :pswitch_5f
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_63
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x7
        :pswitch_78
        :pswitch_3f
        :pswitch_6f
    .end packed-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_81
        :pswitch_8c
        :pswitch_97
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_a2
        :pswitch_ac
        :pswitch_54
        :pswitch_b3
        :pswitch_54
        :pswitch_ba
        :pswitch_c1
    .end packed-switch
.end method
