.class public Lcom/google/android/apps/reader/app/StreamPickerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "StreamPickerActivity.java"


# instance fields
.field private mStreamPicker:Lcom/google/android/apps/reader/fragment/StreamPickerFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 50
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 55
    .end local p1
    :goto_a
    return-void

    .line 52
    .restart local p1
    :pswitch_b
    check-cast p1, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/reader/app/StreamPickerActivity;->mStreamPicker:Lcom/google/android/apps/reader/fragment/StreamPickerFragment;

    goto :goto_a

    .line 50
    :pswitch_data_10
    .packed-switch 0x7f0b0060
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/StreamPickerActivity;->requestWindowFeature(I)Z

    .line 41
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/StreamPickerActivity;->setContentView(I)V

    .line 42
    if-nez p1, :cond_1c

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamPickerActivity;->mStreamPicker:Lcom/google/android/apps/reader/fragment/StreamPickerFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->changeUri(Landroid/net/Uri;)V

    .line 45
    :cond_1c
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 68
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamPickerActivity;->mStreamPicker:Lcom/google/android/apps/reader/fragment/StreamPickerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->refresh()V

    .line 69
    const/4 v0, 0x1

    goto :goto_b

    .line 66
    nop

    :pswitch_data_14
    .packed-switch 0x7f0b0096
        :pswitch_c
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamPickerActivity;->mStreamPicker:Lcom/google/android/apps/reader/fragment/StreamPickerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/util/SoftInput;->show(Landroid/view/View;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
