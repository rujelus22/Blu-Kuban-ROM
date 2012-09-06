.class public Lcom/google/android/apps/plus/phone/EventThemePickerActivity;
.super Lcom/google/android/apps/plus/fragments/EsTabActivity;
.source "EventThemePickerActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x0

    const v1, 0x7f0900d1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;-><init>(II)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3
    .parameter "tabId"

    .prologue
    .line 156
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->EVENT_THEMES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 62
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    if-eqz v1, :cond_11

    move-object v1, p1

    .line 63
    check-cast v1, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->setOnThemeSelectedListener(Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->getTabIndexForFragment(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 67
    .local v0, tabIndex:I
    packed-switch v0, :pswitch_data_1c

    .line 76
    .end local v0           #tabIndex:I
    :cond_11
    :goto_11
    return-void

    .line 69
    .restart local v0       #tabIndex:I
    :pswitch_12
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_11

    .line 72
    :pswitch_17
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_11

    .line 67
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->setContentView(I)V

    .line 42
    const/4 v1, 0x0

    const v2, 0x7f0900cf

    const v3, 0x7f0900d2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->addTab(III)V

    .line 44
    const v1, 0x7f0900d0

    const v2, 0x7f0900d3

    invoke-virtual {p0, v4, v1, v2}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->addTab(III)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2a
    return-void

    .line 52
    :cond_2b
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->showTitlebar(Z)V

    .line 53
    const v1, 0x7f080408

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method protected onCreateTab(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "tabId"

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_14

    .line 91
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 85
    :pswitch_5
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;-><init>(I)V

    goto :goto_4

    .line 88
    :pswitch_c
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;-><init>(I)V

    goto :goto_4

    .line 83
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 118
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 113
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->onTitlebarLabelClick()V

    .line 114
    const/4 v0, 0x1

    goto :goto_8

    .line 111
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onResume()V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->finish()V

    .line 104
    :cond_c
    return-void
.end method

.method public onThemeSelected(ILjava/lang/String;)V
    .registers 5
    .parameter "themeId"
    .parameter "imageUrl"

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, data:Landroid/content/Intent;
    const-string v1, "theme_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v1, "theme_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->finish()V

    .line 141
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;->onBackPressed()V

    .line 129
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method
