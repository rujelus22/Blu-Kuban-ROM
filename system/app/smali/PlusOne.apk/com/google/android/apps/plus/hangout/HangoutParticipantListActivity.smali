.class public Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HangoutParticipantListActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mParticipantList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private setConversationLabel(ILjava/lang/String;)V
    .registers 6
    .parameter "imageId"
    .parameter "conversationName"

    .prologue
    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_e

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->showTitlebar(Z)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 98
    :goto_d
    return-void

    .line 95
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private setParticipantCount(I)V
    .registers 10
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ae

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, subtitle:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_28

    .line 108
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->showTitlebar(Z)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    .line 114
    :goto_27
    return-void

    .line 111
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 112
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 143
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    :goto_6
    return-void

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->finish()V

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030055

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_52

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hangout_participants"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    .line 46
    const v1, 0x7f020085

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setConversationLabel(ILjava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setParticipantCount(I)V

    .line 49
    return-void

    .line 40
    :cond_52
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->showTitlebar(Z)V

    goto :goto_29
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 74
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 70
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 71
    const/4 v0, 0x1

    goto :goto_8

    .line 68
    :pswitch_data_10
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->finish()V

    .line 61
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 84
    return-void
.end method
