.class public Lcom/twitter/android/TimelineActivity;
.super Lcom/twitter/android/UserQueryActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/UserQueryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/twitter/android/api/ac;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/UserQueryActivity;->b(Lcom/twitter/android/api/ac;)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/api/ac;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const v6, 0x7f03001b

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3a

    const-string v3, "twitter"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v1

    :goto_1c
    if-eqz v3, :cond_4d

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v5, "user_timeline"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    move v2, v1

    :goto_2b
    sparse-switch v2, :sswitch_data_b8

    invoke-super {p0, p1, v6, v1}, Lcom/twitter/android/UserQueryActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_57

    :goto_39
    return-void

    :cond_3a
    move v3, v0

    goto :goto_1c

    :cond_3c
    const-string v5, "favorites"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x2

    goto :goto_2b

    :cond_46
    const-string v2, "type"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2b

    :cond_4d
    const-string v2, "type"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2b

    :sswitch_54
    invoke-super {p0, p1, v6, v0}, Lcom/twitter/android/UserQueryActivity;->a(Landroid/os/Bundle;IZ)V

    :cond_57
    move v0, v1

    :goto_58
    if-eqz v3, :cond_84

    const-string v3, "owner_id"

    iget-wide v5, p0, Lcom/twitter/android/TimelineActivity;->e:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/TimelineActivity;->f:Ljava/lang/String;

    if-nez v2, :cond_84

    iget-wide v2, p0, Lcom/twitter/android/TimelineActivity;->e:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_84

    const v0, 0x7f0b0041

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->finish()V

    goto :goto_39

    :sswitch_80
    invoke-super {p0, p1, v6, v1}, Lcom/twitter/android/UserQueryActivity;->a(Landroid/os/Bundle;IZ)V

    goto :goto_58

    :cond_84
    if-nez p1, :cond_a7

    new-instance v1, Lcom/twitter/android/TimelineFragment;

    invoke-direct {v1}, Lcom/twitter/android/TimelineFragment;-><init>()V

    invoke-virtual {v1, p0}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/t;)V

    invoke-static {v4, v0}, Lcom/twitter/android/TimelineFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f070031

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_a7
    const-string v0, "title"

    const v1, 0x7f0b0024

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->b_(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->a()V

    goto :goto_39

    nop

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_54
        0x2 -> :sswitch_54
        0x9 -> :sswitch_54
        0xc -> :sswitch_80
        0xe -> :sswitch_80
    .end sparse-switch
.end method
