.class public Lcom/google/android/apps/plus/phone/ProfileActivity;
.super Lcom/google/android/apps/plus/phone/HostActivity;
.source "ProfileActivity.java"


# instance fields
.field private mCurrentSpinnerIndex:I

.field private mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    return-void
.end method

.method public static createSpinnerAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .registers 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0300d6

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 39
    const v1, 0x7f08021f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 40
    const v1, 0x7f080220

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method protected createHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;-><init>()V

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 136
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PROFILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onAttachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 4
    .parameter "actionBar"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onAttachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    iget v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    .line 129
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 55
    instance-of v2, p1, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    if-eqz v2, :cond_e

    move-object v1, p1

    .line 56
    check-cast v1, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    .line 57
    .local v1, profileFragment:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->relinquishPrimarySpinner()V

    .line 62
    .end local v1           #profileFragment:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
    :cond_a
    :goto_a
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 63
    return-void

    .line 58
    :cond_e
    instance-of v2, p1, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    if-eqz v2, :cond_a

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    .line 60
    .local v0, albumsFragment:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->relinquishPrimarySpinner()V

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->createSpinnerAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 68
    if-nez p1, :cond_16

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "profile_view_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, viewType:I
    packed-switch v0, :pswitch_data_22

    .line 80
    .end local v0           #viewType:I
    :cond_16
    :goto_16
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void

    .line 73
    .restart local v0       #viewType:I
    :pswitch_1a
    iput v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    goto :goto_16

    .line 76
    :pswitch_1d
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    goto :goto_16

    .line 71
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onPrimarySpinnerSelectionChange(I)V

    .line 99
    iget v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    if-ne v1, p1, :cond_8

    .line 119
    :cond_7
    :goto_7
    return-void

    .line 103
    :cond_8
    const/4 v0, 0x0

    .line 104
    .local v0, fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    packed-switch p1, :pswitch_data_20

    .line 115
    :goto_c
    if-eqz v0, :cond_7

    .line 116
    iput p1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->replaceFragment(Lcom/google/android/apps/plus/phone/HostedFragment;)V

    goto :goto_7

    .line 106
    :pswitch_14
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    .end local v0           #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;-><init>()V

    .line 107
    .restart local v0       #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    goto :goto_c

    .line 110
    :pswitch_1a
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    .end local v0           #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;-><init>()V

    .restart local v0       #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    goto :goto_c

    .line 104
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string v0, "spinnerIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    .line 93
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "spinnerIndex"

    iget v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mCurrentSpinnerIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    return-void
.end method
