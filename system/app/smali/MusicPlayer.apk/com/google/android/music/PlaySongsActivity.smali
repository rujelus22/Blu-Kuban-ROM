.class public Lcom/google/android/music/PlaySongsActivity;
.super Landroid/app/Activity;
.source "PlaySongsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/PlaySongsActivity$4;,
        Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;,
        Lcom/google/android/music/PlaySongsActivity$CheckState;
    }
.end annotation


# instance fields
.field private mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentState:Lcom/google/android/music/PlaySongsActivity$CheckState;

.field private mMarketAccount:Ljava/lang/String;

.field private mMusicAccount:Ljava/lang/String;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mPositiveButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSecondaryButton:Landroid/widget/Button;

.field private mStoreId:Ljava/lang/String;

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mTextView:Landroid/widget/TextView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mCurrentState:Lcom/google/android/music/PlaySongsActivity$CheckState;

    .line 323
    new-instance v0, Lcom/google/android/music/PlaySongsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaySongsActivity$2;-><init>(Lcom/google/android/music/PlaySongsActivity;)V

    iput-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 372
    new-instance v0, Lcom/google/android/music/PlaySongsActivity$3;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/PlaySongsActivity$3;-><init>(Lcom/google/android/music/PlaySongsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/PlaySongsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/music/PlaySongsActivity;->doesMarketAccountMatchMusicAccount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/PlaySongsActivity;Lcom/google/android/music/PlaySongsActivity$CheckState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/music/PlaySongsActivity;->startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/PlaySongsActivity;)Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/PlaySongsActivity;)Lcom/google/android/music/MusicEventLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/PlaySongsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mStoreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/PlaySongsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/music/PlaySongsActivity;->isSyncActive()Z

    move-result v0

    return v0
.end method

.method private doesMarketAccountMatchMusicAccount()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMarketAccount:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMarketAccount:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 134
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 135
    if-nez v1, :cond_25

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/PlaySongsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    :goto_24
    return v0

    .line 139
    :cond_25
    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/PlaySongsActivity;->mMarketAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 140
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMusicAccount:Ljava/lang/String;

    goto :goto_24

    .line 144
    :cond_34
    const-string v0, "PlaySongsAct"

    const-string v1, "Market did not provide the account name"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3b
    const/4 v0, 0x1

    goto :goto_24
.end method

.method private isSyncActive()Z
    .registers 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 335
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_a

    .line 336
    const/4 v1, 0x0

    .line 338
    :goto_9
    return v1

    :cond_a
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method private declared-synchronized startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V
    .registers 8
    .parameter "state"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity;->mCurrentState:Lcom/google/android/music/PlaySongsActivity$CheckState;

    .line 152
    sget-object v1, Lcom/google/android/music/PlaySongsActivity$4;->$SwitchMap$com$google$android$music$PlaySongsActivity$CheckState:[I

    invoke-virtual {p1}, Lcom/google/android/music/PlaySongsActivity$CheckState;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_51

    packed-switch v1, :pswitch_data_b8

    .line 183
    :goto_e
    monitor-exit p0

    return-void

    .line 154
    :pswitch_10
    :try_start_10
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, syncExtras:Landroid/os/Bundle;
    const-string v1, "expedited"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "com.google.android.music.MusicContent"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_51

    goto :goto_e

    .line 150
    .end local v0           #syncExtras:Landroid/os/Bundle;
    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1

    .line 166
    :pswitch_54
    :try_start_54
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0d0174

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/PlaySongsActivity;->mMarketAccount:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/music/PlaySongsActivity;->mMusicAccount:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/music/PlaySongsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    const v2, 0x7f0d0176

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 169
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 171
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_e

    .line 175
    :pswitch_8a
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    const v2, 0x7f0d0179

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 176
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d017b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_b6
    .catchall {:try_start_54 .. :try_end_b6} :catchall_51

    goto/16 :goto_e

    .line 152
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_54
        :pswitch_8a
    .end packed-switch
.end method


# virtual methods
.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    const-string v0, "playSongs"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 361
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    if-eq p1, v1, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 363
    :cond_9
    invoke-direct {p0}, Lcom/google/android/music/PlaySongsActivity;->doesMarketAccountMatchMusicAccount()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 364
    sget-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->WAITING_FOR_SYNC:Lcom/google/android/music/PlaySongsActivity$CheckState;

    invoke-direct {p0, v0}, Lcom/google/android/music/PlaySongsActivity;->startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->sendEmptyMessage(I)Z

    .line 370
    :cond_19
    :goto_19
    return-void

    .line 367
    :cond_1a
    sget-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->ACCOUNT_MATCH_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

    invoke-direct {p0, v0}, Lcom/google/android/music/PlaySongsActivity;->startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V

    goto :goto_19
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 343
    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->finish()V

    .line 355
    :cond_7
    :goto_7
    return-void

    .line 344
    :cond_8
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 345
    sget-object v0, Lcom/google/android/music/PlaySongsActivity$4;->$SwitchMap$com$google$android$music$PlaySongsActivity$CheckState:[I

    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mCurrentState:Lcom/google/android/music/PlaySongsActivity$CheckState;

    invoke-virtual {v1}, Lcom/google/android/music/PlaySongsActivity$CheckState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    goto :goto_7

    .line 347
    :pswitch_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/PlaySongsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 351
    :pswitch_26
    sget-object v0, Lcom/google/android/music/PlaySongsActivity$CheckState;->WAITING_FOR_SYNC:Lcom/google/android/music/PlaySongsActivity$CheckState;

    invoke-direct {p0, v0}, Lcom/google/android/music/PlaySongsActivity;->startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V

    goto :goto_7

    .line 345
    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_26
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 76
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 78
    new-instance v1, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    invoke-direct {v1, p0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;-><init>(Lcom/google/android/music/PlaySongsActivity;)V

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    .line 80
    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/google/android/music/PlaySongsActivity;->setContentView(I)V

    .line 81
    const v1, 0x7f10003b

    invoke-virtual {p0, v1}, Lcom/google/android/music/PlaySongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 82
    const v1, 0x7f100005

    invoke-virtual {p0, v1}, Lcom/google/android/music/PlaySongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mTextView:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f100119

    invoke-virtual {p0, v1}, Lcom/google/android/music/PlaySongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mPositiveButton:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f10011a

    invoke-virtual {p0, v1}, Lcom/google/android/music/PlaySongsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    .line 86
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSecondaryButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/music/PlaySongsActivity;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mSyncObserverHandle:Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/PlaySongsActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storeId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mStoreId:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mStoreId:Ljava/lang/String;

    if-nez v1, :cond_82

    .line 96
    const-string v1, "PlaySongsAct"

    const-string v2, "storeId extra was not supplied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->finish()V

    .line 122
    :goto_81
    return-void

    .line 101
    :cond_82
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v2, Lcom/google/android/music/PlaySongsActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/PlaySongsActivity$1;-><init>(Lcom/google/android/music/PlaySongsActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    goto :goto_81
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    invoke-virtual {v0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->quit()V

    .line 200
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 202
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 188
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    return-void
.end method
