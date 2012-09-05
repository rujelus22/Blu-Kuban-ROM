.class public Lcom/google/android/apps/plus/phone/NewConversationActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "NewConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

.field private mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

.field private mCreateConversationRequestId:I

.field private final mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;Lcom/google/android/apps/plus/phone/NewConversationActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/NewConversationActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/NewConversationActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->createConversation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/fragments/AudienceFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    return-object v0
.end method

.method private createConversation(Ljava/lang/String;)V
    .registers 4
    .parameter "messageText"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 158
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1, v0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->createConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:I

    .line 160
    return-void
.end method

.method private updateAllowSendMessage()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_16

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->isAudienceEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setAllowSendMessage(Z)V

    .line 91
    :cond_16
    return-void

    .line 87
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 247
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATION_START_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 232
    :goto_6
    return-void

    .line 228
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getConversationListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 229
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->finish()V

    goto :goto_6
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 6
    .parameter "fragment"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_1d

    .line 168
    check-cast p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .line 169
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->updateAllowSendMessage()V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->allowSendingImages(Z)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    new-instance v1, Lcom/google/android/apps/plus/phone/NewConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity$1;-><init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setListener(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;)V

    .line 203
    :cond_1c
    :goto_1c
    return-void

    .line 185
    .restart local p1
    :cond_1d
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/AudienceFragment;

    if-eqz v0, :cond_1c

    .line 186
    check-cast p1, Lcom/google/android/apps/plus/fragments/AudienceFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setCirclesUsageType(I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setIncludePhoneOnlyContacts(Z)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setIncludePlusPages(Z)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setPublicProfileSearchEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setShowSuggestedPeople(Z)V

    .line 192
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->updateAllowSendMessage()V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    new-instance v1, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;-><init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_ABORT_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 78
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->setContentView(I)V

    .line 100
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_26

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->showTitlebar(Z)V

    .line 104
    const v0, 0x7f020088

    const v1, 0x7f0700c8

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 107
    :cond_26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 143
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 133
    :goto_13
    return-void

    .line 131
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->finish()V

    goto :goto_13
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_11

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 117
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_11
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 151
    return-void
.end method
