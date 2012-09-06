.class public Lcom/google/android/apps/plus/phone/AddedToCircleActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "AddedToCircleActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->NOTIFICATIONS_CIRCLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->setContentView(I)V

    .line 28
    if-nez p1, :cond_1f

    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "notif_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, notificationId:Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    .line 39
    .end local v1           #notificationId:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->shouldShowAndroidActionBar()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2c
    return-void

    .line 45
    :cond_2d
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->showTitlebar(ZZ)V

    .line 48
    const v2, 0x7f0801f8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 86
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 80
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 81
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 82
    const/4 v1, 0x1

    goto :goto_8

    .line 78
    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->finish()V

    .line 62
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 70
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 71
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method
