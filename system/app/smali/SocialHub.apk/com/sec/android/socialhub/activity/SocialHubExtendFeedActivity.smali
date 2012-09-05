.class public Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubExtendFeedActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/IActivityDataHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;
    }
.end annotation


# instance fields
.field private bStart:Z

.field private flag:Z

.field private mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

.field private mMenu:Landroid/view/Menu;

.field private mSearchQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->bStart:Z

    .line 59
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 61
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mMenu:Landroid/view/Menu;

    .line 63
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mSearchQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mSearchQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Landroid/view/Menu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->bStart:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->drawTitle(I)V

    return-void
.end method

.method private drawTitle(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->getTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->setTitle(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private getIntentData()V
    .registers 1

    .prologue
    .line 175
    return-void
.end method


# virtual methods
.method public callSuperBackPressed()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onBackPressed()V

    .line 125
    return-void
.end method

.method public getExtendListView()Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    return-object v0
.end method

.method public isPossibleHandleCabllack()Z
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    if-nez v0, :cond_f

    .line 213
    const-string v0, "SocialHubExtendFeedActivity"

    const-string v1, "isPossibleHandleCabllack()"

    const-string v2, "mListView is null."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    .line 217
    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->isPossibleHandleCabllack()Z

    move-result v0

    goto :goto_e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    packed-switch p1, :pswitch_data_12

    .line 206
    :goto_6
    return-void

    .line 195
    :pswitch_7
    packed-switch p2, :pswitch_data_18

    goto :goto_6

    .line 198
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->refreshActivity()V

    goto :goto_6

    .line 191
    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_7
    .end packed-switch

    .line 195
    :pswitch_data_18
    .packed-switch 0xa
        :pswitch_b
    .end packed-switch
.end method

.method public onApiCalled(I)V
    .registers 5
    .parameter "reqType"

    .prologue
    const v2, 0x7f08008c

    .line 223
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 225
    sparse-switch p1, :sswitch_data_72

    .line 248
    :goto_9
    return-void

    .line 228
    :sswitch_a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_9

    .line 233
    :sswitch_2c
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_9

    .line 239
    :sswitch_4e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_9

    .line 244
    :sswitch_60
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_9

    .line 225
    :sswitch_data_72
    .sparse-switch
        0x7 -> :sswitch_a
        0xb -> :sswitch_60
        0x10 -> :sswitch_4e
        0x28 -> :sswitch_2c
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onBackPressed()V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 91
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->setContentView(I)V

    .line 95
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getIntentData()V

    .line 97
    new-instance v1, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    new-instance v2, Lcom/sec/android/socialhub/SocialHubQueryBuilder$NormalQuery;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$NormalQuery;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mSearchQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    .line 99
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;-><init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 101
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->drawTitle(I)V

    .line 103
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->requestConnect()V

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mMenu:Landroid/view/Menu;

    .line 149
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 150
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->setEnableRefreshMenu(Z)V

    .line 151
    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onDestroy()V

    .line 139
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z

    .line 164
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->onOptionsItemSelected(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onPause()V

    .line 86
    return-void
.end method

.method public onRefresh()V
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->refreshActivity()V

    .line 701
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onResume()V

    .line 132
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 182
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->refreshActivity()V

    .line 184
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 16
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 255
    sparse-switch p4, :sswitch_data_50

    .line 288
    .end local p1
    :goto_6
    return-void

    .line 262
    .restart local p1
    :sswitch_7
    iput-boolean v6, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->bStart:Z

    .line 263
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_6

    .line 269
    :sswitch_15
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_6

    .line 273
    :sswitch_21
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 274
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_6

    .line 278
    :sswitch_31
    instance-of v0, p1, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_3a

    check-cast p1, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->onGetDeepLink(II)V

    .line 279
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_6

    .line 284
    .restart local p1
    :sswitch_40
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_6

    .line 255
    :sswitch_data_50
    .sparse-switch
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_21
        0xb -> :sswitch_40
        0x10 -> :sswitch_40
        0x27 -> :sswitch_7
        0x28 -> :sswitch_31
        0x2b -> :sswitch_15
        0x30 -> :sswitch_15
        0x33 -> :sswitch_15
    .end sparse-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 20
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 296
    sparse-switch p4, :sswitch_data_46

    .line 328
    :goto_3
    return-void

    .line 301
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_3

    .line 307
    :sswitch_13
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_3

    .line 311
    :sswitch_22
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_3

    .line 315
    :sswitch_28
    instance-of v0, p1, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_2c

    .line 319
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_3

    .line 324
    :sswitch_32
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 325
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_3

    .line 296
    nop

    :sswitch_data_46
    .sparse-switch
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_22
        0xb -> :sswitch_32
        0x10 -> :sswitch_32
        0x27 -> :sswitch_4
        0x28 -> :sswitch_28
        0x2b -> :sswitch_13
        0x30 -> :sswitch_13
        0x33 -> :sswitch_13
    .end sparse-switch
.end method
