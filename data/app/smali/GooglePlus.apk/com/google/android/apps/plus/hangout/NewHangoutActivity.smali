.class public Lcom/google/android/apps/plus/hangout/NewHangoutActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "NewHangoutActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

.field private mHangoutButton:Landroid/widget/Button;

.field private mRingHangoutToggleWidget:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mRingHangoutToggleWidget:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/fragments/AudienceFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mHangoutButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 232
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HANGOUT_START_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 6
    .parameter "fragment"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 146
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/AudienceFragment;

    if-eqz v0, :cond_34

    .line 147
    check-cast p1, Lcom/google/android/apps/plus/fragments/AudienceFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setCirclesUsageType(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setIncludePhoneOnlyContacts(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setIncludePlusPages(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setPublicProfileSearchEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setShowSuggestedPeople(Z)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setFilterNullGaiaIds(Z)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    new-instance v1, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$2;-><init>(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 176
    :cond_34
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_ABORT_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 50
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 67
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mHangoutButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mHangoutButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mHangoutButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;-><init>(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_3e

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->showTitlebar(Z)V

    .line 83
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 85
    :cond_3e
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 127
    const v0, 0x7f09003e

    if-ne p1, v0, :cond_a

    .line 128
    invoke-static {p0}, Lcom/google/android/apps/plus/util/ImageUtils;->createInsertCameraPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 130
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_38

    .line 214
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 195
    :sswitch_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_c

    .line 200
    :sswitch_15
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 201
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_c

    .line 206
    :sswitch_1e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08046c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, helpUrlParam:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->startExternalActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 193
    :sswitch_data_38
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0902ac -> :sswitch_15
        0x7f0902ad -> :sswitch_1e
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->finish()V

    .line 112
    :cond_c
    return-void
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 92
    const-string v1, "NewHangoutActivity.onStart: this=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1b

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1b
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 100
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->startingHangoutActivity(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    .line 101
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 119
    const-string v0, "NewHangoutActivity.onStop: this=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStop()V

    .line 122
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->stoppingHangoutActivity()V

    .line 123
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 139
    return-void
.end method
