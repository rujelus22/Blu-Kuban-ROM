.class public Lcom/google/android/apps/reader/fragment/AboutMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "AboutMenuFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private showAbout()V
    .registers 4

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/AboutMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/reader/app/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/AboutMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/AboutMenuFragment;->setHasOptionsMenu(Z)V

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 42
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 49
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/AboutMenuFragment;->showAbout()V

    .line 50
    const/4 v0, 0x1

    goto :goto_b

    .line 47
    nop

    :pswitch_data_12
    .packed-switch 0x7f0b006c
        :pswitch_c
    .end packed-switch
.end method
