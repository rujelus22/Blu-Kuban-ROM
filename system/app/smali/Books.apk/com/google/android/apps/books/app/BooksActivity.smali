.class public Lcom/google/android/apps/books/app/BooksActivity;
.super Landroid/app/Activity;
.source "BooksActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;,
        Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;,
        Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;,
        Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;,
        Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;,
        Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;,
        Lcom/google/android/apps/books/app/BooksActivity$AccountState;,
        Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;,
        Lcom/google/android/apps/books/app/BooksActivity$SceneMode;,
        Lcom/google/android/apps/books/app/BooksActivity$Scene;,
        Lcom/google/android/apps/books/app/BooksActivity$Tag;,
        Lcom/google/android/apps/books/app/BooksActivity$StateKeys;
    }
.end annotation


# static fields
.field private static final sStubScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mAccountPicker:Lcom/google/android/apps/books/app/AccountPicker;

.field private mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

.field private mActionBarDisplayOptions:I

.field private mBrowserAuthenticationRequestId:I

.field private final mBulkUpgradeListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

.field private mConfig:Lcom/google/android/apps/books/util/Config;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

.field private mDestroyed:Z

.field private mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation
.end field

.field private mHasShownUnsupportedCountryDialog:Z

.field private mHomeLoadedOnce:Z

.field private mHomeVisited:Z

.field private mIncomingIntent:Landroid/content/Intent;

.field private mIsFirstInstance:Z

.field private mIsThemeNightActive:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mPendingSync:Landroid/os/Message;

.field private final mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

.field private mSceneMode:I

.field private mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 410
    new-instance v0, Lcom/google/android/apps/books/app/StubScene;

    invoke-direct {v0}, Lcom/google/android/apps/books/app/StubScene;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/app/BooksActivity;->sStubScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    .line 385
    iput v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    .line 390
    iput-boolean v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHasShownUnsupportedCountryDialog:Z

    .line 412
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/BooksActivity$1;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    .line 959
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lcom/google/android/apps/books/app/IcsAccountPicker;

    invoke-direct {v0}, Lcom/google/android/apps/books/app/IcsAccountPicker;-><init>()V

    :goto_22
    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccountPicker:Lcom/google/android/apps/books/app/AccountPicker;

    .line 972
    sget-object v0, Lcom/google/android/apps/books/app/BooksActivity$AccountState;->IDLE:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    .line 1650
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/BooksActivity$4;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBulkUpgradeListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    .line 1733
    return-void

    .line 959
    :cond_30
    new-instance v0, Lcom/google/android/apps/books/app/HoneycombAccountPicker;

    invoke-direct {v0}, Lcom/google/android/apps/books/app/HoneycombAccountPicker;-><init>()V

    goto :goto_22
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/apps/books/app/BooksActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/app/BooksActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    return v0
.end method

.method static synthetic access$1308(Lcom/google/android/apps/books/app/BooksActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsThemeNightActive:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->isThemeNightRequested()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/apps/books/app/BooksActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mActionBarDisplayOptions:I

    return p1
.end method

.method static synthetic access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 72
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity;->startFinskyIntent(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/apps/books/app/BooksActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$AccountState;)Lcom/google/android/apps/books/app/BooksActivity$AccountState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/AccountPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccountPicker:Lcom/google/android/apps/books/app/AccountPicker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->handleAccountPickerResult(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBulkUpgradeListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/android/apps/books/app/BooksActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeLoadedOnce:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/android/apps/books/app/BooksActivity;Landroid/os/Message;)Landroid/os/Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;ZZ)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/app/BooksActivity;->setAccount(Landroid/accounts/Account;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/sync/SyncAccountsState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHasShownUnsupportedCountryDialog:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/google/android/apps/books/app/BooksActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHasShownUnsupportedCountryDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/BooksActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/books/app/BooksActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/app/BooksActivity;Ljava/lang/String;)Landroid/app/Fragment;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/widget/BooksCarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getCarouselView()Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    return-void
.end method

.method static synthetic access$900(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 72
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private accountFromIntent()Landroid/accounts/Account;
    .registers 6

    .prologue
    .line 1121
    const/4 v2, 0x0

    .line 1122
    .local v2, result:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1123
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1125
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1126
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "authAccount"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1127
    const-string v4, "authAccount"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    :cond_18
    :goto_18
    if-eqz v0, :cond_21

    .line 1133
    new-instance v2, Landroid/accounts/Account;

    .end local v2           #result:Landroid/accounts/Account;
    const-string v4, "com.google"

    invoke-direct {v2, v0, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    .restart local v2       #result:Landroid/accounts/Account;
    :cond_21
    return-object v2

    .line 1128
    :cond_22
    if-eqz v3, :cond_18

    .line 1129
    const-string v4, "email"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private considerNaggingAboutSync()V
    .registers 6

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    const-string v1, "com.google.android.apps.books"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 1286
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/sync/SyncAccountsState;->haveNagged(Ljava/lang/String;)Z

    move-result v1

    .line 1288
    if-nez v0, :cond_34

    if-nez v1, :cond_34

    .line 1291
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1292
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1294
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v2

    .line 1295
    const-string v3, "syncDisabled"

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 1296
    const-class v0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    const-string v3, "syncDisabled"

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 1298
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1300
    :cond_34
    return-void
.end method

.method private static createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .registers 11
    .parameter "containerViewId"
    .parameter
    .parameter "tag"
    .parameter "args"
    .parameter "ft"
    .parameter "retainInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/FragmentTransaction;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 346
    .local v1, fragment:Landroid/app/Fragment;
    const-string v2, "BooksActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 347
    const-string v2, "BooksActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_27
    invoke-virtual {v1, p3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 350
    invoke-virtual {v1, p5}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 351
    invoke-virtual {p4, p0, v1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    :try_end_30
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_30} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_30} :catch_38

    .line 352
    return-object v1

    .line 353
    .end local v1           #fragment:Landroid/app/Fragment;
    :catch_31
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 355
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_38
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .registers 10
    .parameter
    .parameter "tag"
    .parameter "arguments"
    .parameter "ft"
    .parameter "retainInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/FragmentTransaction;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 365
    .local v1, fragment:Landroid/app/Fragment;
    const-string v2, "BooksActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 366
    const-string v2, "BooksActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_27
    invoke-virtual {v1, p4}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 369
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {p3, v1, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    :try_end_30
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_30} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_30} :catch_38

    .line 371
    return-object v1

    .line 372
    .end local v1           #fragment:Landroid/app/Fragment;
    :catch_31
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 374
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_38
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private varargs dispatchBackPressed([Landroid/app/Fragment;)Z
    .registers 7
    .parameter "fragments"

    .prologue
    .line 1458
    move-object v0, p1

    .local v0, arr$:[Landroid/app/Fragment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_20

    aget-object v1, v0, v2

    .line 1459
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1d

    instance-of v4, v1, Lcom/google/android/apps/books/app/OnBackListener;

    if-eqz v4, :cond_1d

    check-cast v1, Lcom/google/android/apps/books/app/OnBackListener;

    .end local v1           #fragment:Landroid/app/Fragment;
    invoke-interface {v1}, Lcom/google/android/apps/books/app/OnBackListener;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1461
    const/4 v4, 0x1

    .line 1464
    :goto_1c
    return v4

    .line 1458
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1464
    :cond_20
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method private findAccount(Z)V
    .registers 7
    .parameter "syncIfNewAccount"

    .prologue
    .line 1061
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/BooksActivity$AccountState;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1102
    :goto_8
    return-void

    .line 1069
    :cond_9
    invoke-static {p0}, Lcom/google/android/apps/books/util/AccountUtils;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1070
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v3, v1

    if-nez v3, :cond_20

    .line 1071
    new-instance v3, Lcom/google/android/apps/books/app/BooksActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/app/BooksActivity$2;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    const v4, 0x7f0e00b7

    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/google/android/apps/books/util/AccountUtils;->showAddAccount(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1083
    :cond_20
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->accountFromIntent()Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/AccountUtils;->findIntentAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;

    move-result-object v0

    .line 1086
    .local v0, accountResult:Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;
    iget-object v3, v0, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    if-eqz v3, :cond_43

    .line 1087
    iget-boolean v3, v0, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->needsAuthorization:Z

    if-eqz v3, :cond_36

    .line 1089
    iget-object v3, v0, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    invoke-direct {p0, v3}, Lcom/google/android/apps/books/app/BooksActivity;->startAuthTokenFetch(Landroid/accounts/Account;)V

    goto :goto_8

    .line 1093
    :cond_36
    iget-boolean v3, v0, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->isFromPreferences:Z

    if-nez v3, :cond_41

    const/4 v2, 0x1

    .line 1094
    .local v2, saveIfChanged:Z
    :goto_3b
    iget-object v3, v0, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    invoke-direct {p0, v3, p1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->setAccount(Landroid/accounts/Account;ZZ)Z

    goto :goto_8

    .line 1093
    .end local v2           #saveIfChanged:Z
    :cond_41
    const/4 v2, 0x0

    goto :goto_3b

    .line 1098
    :cond_43
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->reset()V

    .line 1099
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->pickAccount()V

    goto :goto_8
.end method

.method private static findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    .registers 8
    .parameter "tag"
    .parameter "fm"
    .parameter "ft"

    .prologue
    .line 322
    invoke-virtual {p1, p0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 323
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 325
    :try_start_c
    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_10

    .line 334
    :cond_f
    :goto_f
    return-void

    .line 326
    :catch_10
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "BooksActivity"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 330
    const-string v2, "BooksActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error removing fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private getCarouselView()Lcom/google/android/apps/books/widget/BooksCarouselView;
    .registers 3

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    const v1, 0x7f0f001a

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/BooksCarouselView;

    return-object v0
.end method

.method public static getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 3
    .parameter "fragment"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/google/android/apps/books/app/BooksActivity;

    if-eqz v1, :cond_f

    .line 155
    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    .line 157
    :goto_e
    return-object v1

    .restart local v0       #activity:Landroid/app/Activity;
    :cond_f
    sget-object v1, Lcom/google/android/apps/books/app/BooksActivity;->sStubScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    goto :goto_e
.end method

.method private handleAccountPickerResult(Landroid/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 1557
    if-nez p1, :cond_e

    .line 1558
    sget-object v0, Lcom/google/android/apps/books/app/BooksActivity$AccountState;->IDLE:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    .line 1560
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_d

    .line 1562
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->finish()V

    .line 1569
    :cond_d
    :goto_d
    return-void

    .line 1567
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->startAuthTokenFetch(Landroid/accounts/Account;)V

    goto :goto_d
.end method

.method private handleIncomingIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1494
    iput-boolean v6, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    .line 1496
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1499
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1500
    .local v3, uri:Landroid/net/Uri;
    const-string v7, "id"

    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1501
    .local v4, volumeId:Ljava/lang/String;
    const-string v7, "books:internalIntent"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1502
    .local v2, internalIntent:Z
    const-string v7, "books:addToMyEBooks"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1503
    .local v1, addToMyEBooks:Z
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    if-nez v2, :cond_2e

    :goto_2a
    invoke-interface {v7, v4, v5, v1, v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V

    .line 1523
    .end local v1           #addToMyEBooks:Z
    .end local v2           #internalIntent:Z
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #volumeId:Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void

    .restart local v1       #addToMyEBooks:Z
    .restart local v2       #internalIntent:Z
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #volumeId:Ljava/lang/String;
    :cond_2e
    move v5, v6

    .line 1503
    goto :goto_2a

    .line 1505
    .end local v1           #addToMyEBooks:Z
    .end local v2           #internalIntent:Z
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #volumeId:Ljava/lang/String;
    :cond_30
    const-string v7, "com.google.android.apps.books.intent.action.READ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1507
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeIdFromIntent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 1508
    .restart local v4       #volumeId:Ljava/lang/String;
    const-string v7, "books:internalIntent"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1509
    .restart local v2       #internalIntent:Z
    const-string v7, "books:addToMyEBooks"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1510
    .restart local v1       #addToMyEBooks:Z
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    if-nez v2, :cond_54

    :goto_50
    invoke-interface {v7, v4, v5, v1, v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V

    goto :goto_2d

    :cond_54
    move v5, v6

    goto :goto_50

    .line 1512
    .end local v1           #addToMyEBooks:Z
    .end local v2           #internalIntent:Z
    .end local v4           #volumeId:Ljava/lang/String;
    :cond_56
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1514
    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto :goto_2d

    .line 1515
    :cond_64
    const-string v5, "android.intent.action.SEARCH"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1521
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown incoming intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private handleIntentIfReady()V
    .registers 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1312
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18

    .line 1313
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity;->handleIncomingIntent(Landroid/content/Intent;)V

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    .line 1317
    :cond_18
    return-void
.end method

.method private isDestroyed()Z
    .registers 2

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mDestroyed:Z

    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1616
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1618
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    move-result v1

    .line 1620
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private isThemeNightRequested()Z
    .registers 2

    .prologue
    .line 1039
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->isThemeNight()Z

    move-result v0

    return v0
.end method

.method public static markExternalIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 1603
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1604
    return-void
.end method

.method private prepareStaticViews()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1206
    const v2, 0x7f0f001a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/CarouselView;

    .line 1207
    .local v0, carousel:Lcom/google/android/opengl/carousel/CarouselView;
    const v2, 0x7f0f001b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setCoverView(Landroid/view/View;)V

    .line 1209
    const v2, 0x7f0f001c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/renderscript/RSSurfaceView;

    .line 1212
    .local v1, reader:Landroid/renderscript/RSSurfaceView;
    invoke-virtual {v1, v3}, Landroid/renderscript/RSSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1213
    invoke-virtual {v1}, Landroid/renderscript/RSSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1216
    invoke-static {v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 1217
    return-void
.end method

.method public static requestManualSyncDownloadWithoutFetch(Landroid/accounts/Account;)V
    .registers 5
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1581
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1582
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1583
    const-string v1, "SyncService.DOWNLOAD"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1584
    const-string v1, "SyncService.FETCH_BOOKS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1586
    new-instance v1, Lcom/google/android/apps/books/util/RequestSyncTask;

    const-string v2, "com.google.android.apps.books"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/apps/books/util/RequestSyncTask;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/util/RequestSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1587
    return-void
.end method

.method public static requestManualSyncUpload(Landroid/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    .line 1590
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1591
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1592
    const-string v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1594
    new-instance v1, Lcom/google/android/apps/books/util/RequestSyncTask;

    const-string v2, "com.google.android.apps.books"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/apps/books/util/RequestSyncTask;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/util/RequestSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1595
    return-void
.end method

.method private setAccount(Landroid/accounts/Account;ZZ)Z
    .registers 8
    .parameter "account"
    .parameter "syncIfNewAccount"
    .parameter "saveSelectedAccountIfChanged"

    .prologue
    .line 1234
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1235
    const/4 v1, 0x1

    .line 1236
    .local v1, result:Z
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    .line 1238
    if-eqz p3, :cond_15

    .line 1239
    new-instance v2, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 1244
    :cond_15
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getCarouselView()Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v0

    .line 1245
    .local v0, carouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    if-eqz v0, :cond_1e

    .line 1246
    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->clearCoverCache()V

    .line 1249
    :cond_1e
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 1259
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeLoadedOnce:Z

    if-eqz v2, :cond_32

    .line 1261
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startForcedSync()V

    .line 1274
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->handleIntentIfReady()V

    .line 1275
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->considerNaggingAboutSync()V

    .line 1280
    .end local v0           #carouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    :goto_31
    return v1

    .line 1265
    .restart local v0       #carouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/apps/books/app/BooksActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/app/BooksActivity$3;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;

    goto :goto_2b

    .line 1278
    .end local v0           #carouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    .end local v1           #result:Z
    :cond_40
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_31
.end method

.method public static setViewOffscreen(Landroid/view/View;Z)V
    .registers 5
    .parameter "view"
    .parameter "offscreen"

    .prologue
    const/4 v2, 0x0

    .line 1607
    if-eqz p0, :cond_18

    .line 1608
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1609
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_19

    const/16 v1, 0x2710

    :goto_d
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1610
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1611
    if-nez p1, :cond_15

    const/4 v2, 0x1

    :cond_15
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1613
    .end local v0           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_18
    return-void

    .restart local v0       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_19
    move v1, v2

    .line 1609
    goto :goto_d
.end method

.method private startAuthTokenFetch(Landroid/accounts/Account;)V
    .registers 9
    .parameter "account"

    .prologue
    .line 1109
    sget-object v1, Lcom/google/android/apps/books/app/BooksActivity$AccountState;->RETRIEVING_AUTH_TOKEN:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    .line 1110
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1111
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v2, "print"

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v5, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;-><init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1113
    return-void
.end method

.method private startFinskyIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "installedFinskyPackage"

    .prologue
    .line 1625
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    const-string v2, "missing account"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1628
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->markExternalIntent(Landroid/content/Intent;)V

    .line 1631
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 1632
    return-void
.end method


# virtual methods
.method public getFetchService()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    return-object v0
.end method

.method public getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 5
    .parameter "accounts"

    .prologue
    const/4 v2, 0x0

    .line 1046
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v1}, Lcom/google/android/apps/books/util/AccountUtils;->findAccount([Landroid/accounts/Account;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 1047
    iput-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    .line 1048
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 1049
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 1050
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->findAccount(Z)V

    .line 1052
    .end local v0           #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    :cond_1b
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 1540
    packed-switch p1, :pswitch_data_1c

    .line 1549
    :goto_4
    return-void

    .line 1542
    :pswitch_5
    if-eqz p3, :cond_1a

    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, accountName:Ljava/lang/String;
    :goto_d
    if-eqz v1, :cond_16

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    .local v0, account:Landroid/accounts/Account;
    :cond_16
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity;->handleAccountPickerResult(Landroid/accounts/Account;)V

    goto :goto_4

    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    :cond_1a
    move-object v1, v0

    .line 1542
    goto :goto_d

    .line 1540
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 6

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1449
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v3, "carousel"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1450
    .local v0, carousel:Landroid/app/Fragment;
    const-string v3, "reader"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1452
    .local v2, reader:Landroid/app/Fragment;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/app/Fragment;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/apps/books/app/BooksActivity;->dispatchBackPressed([Landroid/app/Fragment;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1453
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1455
    :cond_22
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 976
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 977
    if-nez p1, :cond_5f

    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsFirstInstance:Z

    .line 979
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 981
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 982
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->applyMissingDefaults()V

    .line 984
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsFirstInstance:Z

    if-eqz v1, :cond_61

    .line 987
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    .line 999
    :goto_23
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->isThemeNightRequested()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsThemeNightActive:Z

    .line 1000
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsThemeNightActive:Z

    if-eqz v1, :cond_8a

    const v1, 0x7f0d003b

    :goto_30
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setTheme(I)V

    .line 1004
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setContentView(I)V

    .line 1005
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->prepareStaticViews()V

    .line 1007
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 1008
    new-instance v1, Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 1010
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mMainHandler:Landroid/os/Handler;

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0e000a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1013
    return-void

    .line 977
    .end local v0           #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    :cond_5f
    const/4 v1, 0x0

    goto :goto_6

    .line 989
    .restart local v0       #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    :cond_61
    const-string v1, "homeVisited"

    iget-boolean v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    .line 992
    const-string v1, "sceneMode"

    iget v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    .line 993
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    .line 994
    const-string v1, "browserAuthRequestId"

    iget v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    goto :goto_23

    .line 1000
    :cond_8a
    const v1, 0x7f0d003c

    goto :goto_30
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 1017
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mDestroyed:Z

    .line 1019
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getCarouselView()Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v0

    .line 1020
    .local v0, carouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    if-eqz v0, :cond_c

    .line 1021
    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->clearCoverCache()V

    .line 1024
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1025
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1433
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    if-nez v1, :cond_6

    .line 1442
    :goto_5
    return v0

    .line 1436
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 1442
    const/4 v0, 0x0

    goto :goto_5

    .line 1438
    :pswitch_f
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto :goto_5

    .line 1436
    nop

    :pswitch_data_16
    .packed-switch 0x102002c
        :pswitch_f
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1394
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1395
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 1399
    iget v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    .line 1400
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1401
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 1379
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1382
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1383
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1388
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsFirstInstance:Z

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->findAccount(Z)V

    .line 1390
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1188
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1193
    const-string v0, "sceneMode"

    iget v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1194
    const-string v0, "browserAuthRequestId"

    iget v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1195
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1c

    .line 1196
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1199
    :cond_1c
    const-string v0, "homeVisited"

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1200
    return-void
.end method

.method public onSearchRequested()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1527
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1528
    .local v0, fm:Landroid/app/FragmentManager;
    iget v5, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    if-ne v5, v3, :cond_1d

    .line 1529
    const-string v5, "homeMenu"

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/HomeMenuFragment;

    .line 1531
    .local v1, homeFragment:Lcom/google/android/apps/books/app/HomeMenuFragment;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/HomeMenuFragment;->onSearchRequested()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1534
    .end local v1           #homeFragment:Lcom/google/android/apps/books/app/HomeMenuFragment;
    :cond_1a
    :goto_1a
    return v3

    .restart local v1       #homeFragment:Lcom/google/android/apps/books/app/HomeMenuFragment;
    :cond_1b
    move v3, v4

    .line 1531
    goto :goto_1a

    .line 1533
    .end local v1           #homeFragment:Lcom/google/android/apps/books/app/HomeMenuFragment;
    :cond_1d
    const-string v5, "reader"

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 1534
    .local v2, readerFragment:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->onSearchRequested()Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_2d
    move v3, v4

    goto :goto_1a
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "componentName"
    .parameter "binder"

    .prologue
    .line 1478
    check-cast p2, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;->getService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    .line 1480
    .local v0, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->set(Ljava/lang/Object;)Z

    .line 1481
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->handleIntentIfReady()V

    .line 1482
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "componentName"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->setException(Ljava/lang/Throwable;)Z

    .line 1489
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    .line 1490
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 1367
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1370
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1371
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1374
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;-><init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1375
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 1405
    invoke-virtual {p0, p0}, Lcom/google/android/apps/books/app/BooksActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1410
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->setException(Ljava/lang/Throwable;)Z

    .line 1411
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    .line 1413
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1414
    return-void
.end method

.method public onUserInteraction()V
    .registers 4

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 1471
    .local v0, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1472
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->onUserInteraction()V

    .line 1474
    :cond_17
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 1418
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1420
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1421
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "reader"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 1422
    .local v1, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v1, :cond_14

    .line 1424
    invoke-virtual {v1, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->onWindowFocusChanged(Z)V

    .line 1426
    :cond_14
    return-void
.end method
