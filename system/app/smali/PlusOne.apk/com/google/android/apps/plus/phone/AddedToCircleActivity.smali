.class public Lcom/google/android/apps/plus/phone/AddedToCircleActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "AddedToCircleActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 115
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
    .line 123
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->NOTIFICATIONS_CIRCLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    :goto_6
    return-void

    .line 87
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->finish()V

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->setContentView(I)V

    .line 30
    if-nez p1, :cond_2c

    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notif_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, notificationId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notif_read"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 34
    .local v2, read:Z
    if-eqz v1, :cond_2c

    if-nez v2, :cond_2c

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    .line 42
    .end local v1           #notificationId:Ljava/lang/String;
    .end local v2           #read:Z
    :cond_2c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3a

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_39
    return-void

    .line 48
    :cond_3a
    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->showTitlebar(ZZ)V

    .line 51
    const v3, 0x7f020087

    const v4, 0x7f07015e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_39
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 107
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 101
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 102
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 103
    const/4 v1, 0x1

    goto :goto_8

    .line 99
    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->finish()V

    .line 65
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 73
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 74
    return-void
.end method
