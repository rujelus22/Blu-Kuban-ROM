.class public Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;
.super Landroid/app/ListActivity;
.source "TutorialSelectAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;,
        Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;
    }
.end annotation


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field private mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

.field private mAddAccountButton:Landroid/widget/Button;

.field private mCreatedAccountName:Ljava/lang/String;

.field private mCreatedAccountType:Ljava/lang/String;

.field private mList:Landroid/widget/ListView;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedAccount:Landroid/accounts/Account;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 102
    new-instance v0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$2;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)[Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->onAccountsChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->selectAccount()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->authenticationSuccess(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->authenticationFailed(II)V

    return-void
.end method

.method private addAccountClick()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 177
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "addAccount"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "activeScreen"

    aput-object v6, v2, v5

    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v4, options:Landroid/os/Bundle;
    const-string v0, "introMessage"

    const v1, 0x7f0d00c7

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 183
    const-string v0, "allowSkip"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "sj"

    new-instance v6, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;

    invoke-direct {v6, p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 221
    return-void
.end method

.method private authenticationFailed(II)V
    .registers 8
    .parameter "title"
    .parameter "message"

    .prologue
    .line 292
    const-string v0, "tutorial"

    const-string v1, "authenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "authfailure"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "activeScreen"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "failureReason"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p2}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    new-instance v0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$6;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method private authenticationSuccess(Landroid/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1, p1}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 276
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v0

    .line 277
    .local v0, storeAvailable:Z
    if-eqz v0, :cond_15

    .line 278
    new-instance v1, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$5;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->finish()V

    .line 289
    return-void
.end method

.method private onAccountsChanged()V
    .registers 7

    .prologue
    .line 313
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    invoke-virtual {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->clear()V

    .line 314
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    if-eqz v4, :cond_2b

    .line 315
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    .line 316
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    .line 318
    :cond_1b
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1f
    if-ge v2, v3, :cond_2b

    aget-object v0, v1, v2

    .line 319
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    invoke-virtual {v4, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->add(Ljava/lang/Object;)V

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 322
    .end local v0           #a:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2b
    return-void
.end method

.method private selectAccount()V
    .registers 6

    .prologue
    .line 224
    new-instance v0, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v0, p0}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    new-instance v3, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;

    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    invoke-direct {v3, p0, v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthTokenForeground(Landroid/app/Activity;Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_16
    .catch Landroid/accounts/AuthenticatorException; {:try_start_5 .. :try_end_16} :catch_17

    .line 236
    :goto_16
    return-void

    .line 233
    :catch_17
    move-exception v1

    .line 234
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthToken failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method


# virtual methods
.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const-string v0, "tutorialSelectAccount"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 174
    :goto_7
    return-void

    .line 171
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->addAccountClick()V

    goto :goto_7

    .line 169
    :pswitch_data_c
    .packed-switch 0x7f100116
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 65
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 67
    invoke-virtual {p0, v3}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->requestWindowFeature(I)Z

    .line 68
    const v2, 0x7f040067

    invoke-virtual {p0, v2}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->setContentView(I)V

    .line 70
    const v2, 0x7f100116

    invoke-virtual {p0, v2}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAddAccountButton:Landroid/widget/Button;

    .line 71
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mList:Landroid/widget/ListView;

    .line 75
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 77
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040068

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, header:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 81
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mList:Landroid/widget/ListView;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 82
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mList:Landroid/widget/ListView;

    const v3, 0x7f100115

    invoke-virtual {p0, v3}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    new-instance v2, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    invoke-direct {v2, p0, p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    .line 84
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 87
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v3, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$1;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 99
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 326
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 333
    :goto_6
    return-void

    .line 330
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->account:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->access$1000(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    .line 331
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->notifyDataSetChanged()V

    .line 332
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->selectAccount()V

    goto :goto_6
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.music.VERIFIED_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->refreshAccounts()V

    .line 119
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public refreshAccounts()V
    .registers 3

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method
