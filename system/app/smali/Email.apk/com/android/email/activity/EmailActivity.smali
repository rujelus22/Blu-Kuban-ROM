.class public Lcom/android/email/activity/EmailActivity;
.super Landroid/app/Activity;
.source "EmailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/FragmentInstallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/EmailActivity$1;,
        Lcom/android/email/activity/EmailActivity$ControllerResult;
    }
.end annotation


# static fields
.field private static sLastFontScale:F


# instance fields
.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mErrorBanner:Lcom/android/email/activity/BannerController;

.field private mLastErrorAccountId:J

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mUIController:Lcom/android/email/activity/UIControllerBase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/high16 v0, -0x4080

    sput v0, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 352
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/EmailActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/email/activity/EmailActivity;->mLastErrorAccountId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/EmailActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/email/activity/EmailActivity;->mLastErrorAccountId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/EmailActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->dismissErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/EmailActivity;)Lcom/android/email/activity/BannerController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mErrorBanner:Lcom/android/email/activity/BannerController;

    return-object v0
.end method

.method public static createOpenAccountIntent(Landroid/app/Activity;J)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 87
    const-class v0, Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_11

    .line 89
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    :cond_11
    return-object v0
.end method

.method public static createOpenMailboxIntent(Landroid/app/Activity;JJ)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 103
    cmp-long v0, p1, v1

    if-eqz v0, :cond_a

    cmp-long v0, p3, v1

    if-nez v0, :cond_10

    .line 104
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_10
    const-class v0, Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method public static createOpenMessageIntent(Landroid/app/Activity;JJJ)Landroid/content/Intent;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 122
    cmp-long v0, p1, v1

    if-eqz v0, :cond_e

    cmp-long v0, p3, v1

    if-eqz v0, :cond_e

    cmp-long v0, p5, v1

    if-nez v0, :cond_14

    .line 123
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_14
    const-class v0, Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 129
    return-object v0
.end method

.method public static createSearchIntent(Landroid/app/Activity;JJLjava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    const-string v1, "Can only search in normal accounts"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/EmailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    const-string v1, "QUERY_STRING"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    return-object v0
.end method

.method private dismissErrorMessage()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mErrorBanner:Lcom/android/email/activity/BannerController;

    invoke-virtual {v0}, Lcom/android/email/activity/BannerController;->dismiss()V

    .line 313
    return-void
.end method

.method private initUIController()V
    .registers 2

    .prologue
    .line 159
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/email/activity/UIControllerTwoPane;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UIControllerTwoPane;-><init>(Lcom/android/email/activity/EmailActivity;)V

    :goto_b
    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    .line 161
    return-void

    .line 159
    :cond_e
    new-instance v0, Lcom/android/email/activity/UIControllerOnePane;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UIControllerOnePane;-><init>(Lcom/android/email/activity/EmailActivity;)V

    goto :goto_b
.end method

.method private onFontScaleChangeDetected()V
    .registers 1

    .prologue
    .line 422
    invoke-static {}, Lcom/android/email/activity/MessageListItem;->resetDrawingCaches()V

    .line 423
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 4

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 291
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onBackPressed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UIControllerBase;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 297
    :cond_2c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 306
    :goto_7
    return-void

    .line 303
    :pswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->dismissErrorMessage()V

    goto :goto_7

    .line 301
    :pswitch_data_c
    .packed-switch 0x7f0e006e
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 165
    sget-boolean v7, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v7, :cond_20

    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_20

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onCreate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/EmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v2, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 168
    .local v2, fontScale:F
    sget v7, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    const/high16 v8, -0x4080

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3b

    sget v7, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    cmpl-float v7, v7, v2

    if-eqz v7, :cond_3b

    .line 172
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->onFontScaleChangeDetected()V

    .line 174
    :cond_3b
    sput v2, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->initUIController()V

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 182
    iget-object v7, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v7}, Lcom/android/email/activity/UIControllerBase;->getLayoutId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/email/activity/EmailActivity;->setContentView(I)V

    .line 184
    iget-object v7, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v7}, Lcom/android/email/activity/UIControllerBase;->onActivityViewReady()V

    .line 186
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/EmailActivity;->mController:Lcom/android/email/Controller;

    .line 187
    new-instance v7, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/email/activity/EmailActivity$ControllerResult;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/email/activity/EmailActivity$ControllerResult;-><init>(Lcom/android/email/activity/EmailActivity;Lcom/android/email/activity/EmailActivity$1;)V

    invoke-direct {v7, v8, v9}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v7, p0, Lcom/android/email/activity/EmailActivity;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 189
    iget-object v7, p0, Lcom/android/email/activity/EmailActivity;->mController:Lcom/android/email/Controller;

    iget-object v8, p0, Lcom/android/email/activity/EmailActivity;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v7, v8}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 194
    const v7, 0x7f0e006e

    invoke-virtual {p0, v7}, Lcom/android/email/activity/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    .local v1, errorMessage:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/email/activity/EmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    .local v0, errorBannerHeight:I
    new-instance v7, Lcom/android/email/activity/BannerController;

    invoke-direct {v7, p0, v1, v0}, Lcom/android/email/activity/BannerController;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    iput-object v7, p0, Lcom/android/email/activity/EmailActivity;->mErrorBanner:Lcom/android/email/activity/BannerController;

    .line 199
    if-eqz p1, :cond_9e

    .line 200
    iget-object v7, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v7, p1}, Lcom/android/email/activity/UIControllerBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 215
    :goto_98
    iget-object v7, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v7}, Lcom/android/email/activity/UIControllerBase;->onActivityCreated()V

    .line 216
    :goto_9d
    return-void

    .line 202
    :cond_9e
    invoke-virtual {p0}, Lcom/android/email/activity/EmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 203
    .local v3, intent:Landroid/content/Intent;
    invoke-static {p0, v3}, Lcom/android/email/MessageListContext;->forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/email/MessageListContext;

    move-result-object v6

    .line 204
    .local v6, viewContext:Lcom/android/email/MessageListContext;
    if-nez v6, :cond_af

    .line 207
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/email/activity/EmailActivity;->finish()V

    goto :goto_9d

    .line 211
    :cond_af
    const-string v7, "MESSAGE_ID"

    const-wide/16 v8, -0x1

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 212
    .local v4, messageId:J
    iget-object v7, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v7, v6, v4, v5}, Lcom/android/email/activity/UIControllerBase;->open(Lcom/android/email/MessageListContext;J)V

    goto :goto_98
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {p0}, Lcom/android/email/activity/EmailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/email/activity/UIControllerBase;->onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 281
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/EmailActivity;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 283
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 284
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityDestroy()V

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 286
    return-void
.end method

.method public onInstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 231
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onInstallFragment fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_24
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onInstallFragment(Landroid/app/Fragment;)V

    .line 234
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 344
    const/4 v0, 0x1

    .line 346
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 267
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_20
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 269
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityPause()V

    .line 270
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {p0}, Lcom/android/email/activity/EmailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/email/activity/UIControllerBase;->onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 254
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_20
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 256
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityResume()V

    .line 263
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 221
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_20
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    return-void
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    .line 333
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 334
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSearchRequested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onSearchRequested()V

    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_20
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityStart()V

    .line 250
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 274
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_20
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 276
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityStop()V

    .line 277
    return-void
.end method

.method public onUninstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 240
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onUninstallFragment fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_24
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onUninstallFragment(Landroid/app/Fragment;)V

    .line 243
    return-void
.end method
