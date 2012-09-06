.class public Lcom/twitter/android/StoriesActivity;
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

    const v0, 0x7f03001b

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Lcom/twitter/android/StoriesActivity;->b_(I)V

    if-nez p1, :cond_34

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/twitter/android/StoriesFragment;

    invoke-direct {v1}, Lcom/twitter/android/StoriesFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/twitter/android/StoriesFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/StoriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f070031

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_34
    return-void
.end method
