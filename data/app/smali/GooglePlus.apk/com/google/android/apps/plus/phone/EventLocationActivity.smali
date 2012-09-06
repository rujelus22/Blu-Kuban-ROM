.class public Lcom/google/android/apps/plus/phone/EventLocationActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EventLocationActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;


# instance fields
.field private mInitialQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->getIntent()Landroid/content/Intent;

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
    .line 136
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOCATION_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 63
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/EventLocationFragment;

    if-eqz v1, :cond_13

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/google/android/apps/plus/fragments/EventLocationFragment;

    .line 65
    .local v0, theFragment:Lcom/google/android/apps/plus/fragments/EventLocationFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->setOnLocationSelectedListener(Lcom/google/android/apps/plus/fragments/EventLocationFragment$OnLocationSelectedListener;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventLocationActivity;->mInitialQuery:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventLocationActivity;->mInitialQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->setInitialQueryString(Ljava/lang/String;)V

    .line 70
    .end local v0           #theFragment:Lcom/google/android/apps/plus/fragments/EventLocationFragment;
    :cond_13
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    if-nez p1, :cond_20

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 40
    .local v1, bytes:[B
    if-eqz v1, :cond_20

    .line 41
    invoke-static {}, Lcom/google/api/services/plusi/model/PlaceJson;->getInstance()Lcom/google/api/services/plusi/model/PlaceJson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/api/services/plusi/model/PlaceJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/plusi/model/Place;

    .line 42
    .local v2, place:Lcom/google/api/services/plusi/model/Place;
    iget-object v3, v2, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EventLocationActivity;->mInitialQuery:Ljava/lang/String;

    .line 46
    .end local v1           #bytes:[B
    .end local v2           #place:Lcom/google/api/services/plusi/model/Place;
    :cond_20
    const v3, 0x7f030039

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->shouldShowAndroidActionBar()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_33
    return-void

    .line 53
    :cond_34
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->showTitlebar(Z)V

    .line 54
    const v3, 0x7f08040d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public onLocationSelected(Lcom/google/api/services/plusi/model/Place;)V
    .registers 5
    .parameter "place"

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, data:Landroid/content/Intent;
    if-eqz p1, :cond_14

    .line 117
    const-string v1, "location"

    invoke-static {}, Lcom/google/api/services/plusi/model/PlaceJson;->getInstance()Lcom/google/api/services/plusi/model/PlaceJson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/api/services/plusi/model/PlaceJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 119
    :cond_14
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->finish()V

    .line 121
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 96
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 91
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->onBackPressed()V

    .line 92
    const/4 v0, 0x1

    goto :goto_8

    .line 89
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->finish()V

    .line 82
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventLocationActivity;->onBackPressed()V

    .line 107
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method
