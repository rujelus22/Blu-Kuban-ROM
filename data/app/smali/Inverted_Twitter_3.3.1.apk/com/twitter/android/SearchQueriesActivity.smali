.class public Lcom/twitter/android/SearchQueriesActivity;
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

    const/4 v2, 0x0

    const v0, 0x7f03001b

    invoke-super {p0, p1, v0, v2}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    :goto_14
    if-nez p1, :cond_34

    new-instance v1, Lcom/twitter/android/SearchQueriesFragment;

    invoke-direct {v1}, Lcom/twitter/android/SearchQueriesFragment;-><init>()V

    invoke-static {v0, v2}, Lcom/twitter/android/SearchQueriesFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchQueriesFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f070031

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_34
    return-void

    :sswitch_35
    const v1, 0x7f0b019c

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchQueriesActivity;->b_(I)V

    goto :goto_14

    :sswitch_3c
    const v1, 0x7f0b00f5

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchQueriesActivity;->b_(I)V

    goto :goto_14

    nop

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_3c
        0x6 -> :sswitch_35
    .end sparse-switch
.end method
