.class public Lcom/google/android/apps/plus/phone/NewConversationActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "NewConversationActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;
    }
.end annotation


# static fields
.field private static sInstanceCount:I


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

.field private mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

.field private mCreateConversationRequestId:Ljava/lang/Integer;

.field private final mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;Lcom/google/android/apps/plus/phone/NewConversationActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    .line 51
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/NewConversationActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->createConversation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/fragments/AudienceFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    return-object v0
.end method

.method private createConversation(Ljava/lang/String;)V
    .registers 4
    .parameter "messageText"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 218
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1, v0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->createConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;

    .line 220
    return-void
.end method

.method public static hasInstance()Z
    .registers 1

    .prologue
    .line 271
    sget v0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private updateAllowSendMessage()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_16

    .line 110
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

    .line 113
    :cond_16
    return-void

    .line 110
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 299
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATION_START_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public hideInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 309
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->dismissDialog(I)V

    .line 310
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 6
    .parameter "fragment"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 227
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_1d

    .line 228
    check-cast p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .line 229
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->updateAllowSendMessage()V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->allowSendingImages(Z)V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    new-instance v1, Lcom/google/android/apps/plus/phone/NewConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity$1;-><init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setListener(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;)V

    .line 263
    :cond_1c
    :goto_1c
    return-void

    .line 245
    .restart local p1
    :cond_1d
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/AudienceFragment;

    if-eqz v0, :cond_1c

    .line 246
    check-cast p1, Lcom/google/android/apps/plus/fragments/AudienceFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setCirclesUsageType(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setIncludePhoneOnlyContacts(Z)V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setIncludePlusPages(Z)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setPublicProfileSearchEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setShowSuggestedPeople(Z)V

    .line 252
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->updateAllowSendMessage()V

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    new-instance v1, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity$2;-><init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 100
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_ABORT_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 101
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 120
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->setContentView(I)V

    .line 122
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_23

    .line 124
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->showTitlebar(Z)V

    .line 126
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 128
    :cond_23
    if-eqz p1, :cond_39

    .line 129
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 130
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;

    .line 136
    :cond_39
    :goto_39
    sget v0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    if-le v0, v2, :cond_59

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewConversationActivity instanceCount out of sync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 139
    :cond_59
    return-void

    .line 132
    :cond_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;

    goto :goto_39
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 186
    const v0, 0x7f09003e

    if-ne p1, v0, :cond_a

    .line 187
    invoke-static {p0}, Lcom/google/android/apps/plus/util/ImageUtils;->createInsertCameraPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 189
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 205
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 207
    sget v0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    if-gez v0, :cond_26

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewConversationActivity instanceCount out of sync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->sInstanceCount:I

    .line 211
    :cond_26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 182
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mRTCServiceListener:Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 172
    :goto_13
    return-void

    .line 170
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->finish()V

    goto :goto_13
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 145
    const-string v0, "requestId"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    :cond_12
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 153
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_11

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 156
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 158
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_11
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 198
    return-void
.end method

.method public showInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 304
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->showDialog(I)V

    .line 305
    return-void
.end method
