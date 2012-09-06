.class public Lcom/google/android/apps/plus/phone/HomeActivity;
.super Lcom/google/android/apps/plus/analytics/InstrumentedActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;
.implements Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/analytics/InstrumentedActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;",
        "Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;"
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

.field private mDestination:Landroid/os/Bundle;

.field private mDestinationState:[Landroid/os/Parcelable;

.field private mDestinationsConfigured:Z

.field private mDialogTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

.field private mNavigationBar:Landroid/widget/ListView;

.field private mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

.field private mNavigationBarScrollPosition:I

.field private mNotificationCount:I

.field private mNotificationsLoaded:Z

.field private mRequestId:Ljava/lang/Integer;

.field private mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mShakeListener:Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;

.field private mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarScrollPosition:I

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestinationState:[Landroid/os/Parcelable;

    .line 737
    new-instance v0, Lcom/google/android/apps/plus/phone/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/HomeActivity$2;-><init>(Lcom/google/android/apps/plus/phone/HomeActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 91
    new-instance v0, Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/SignOnManager;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/HomeActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/phone/HomeActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/HomeActivity;)Lcom/google/android/apps/plus/views/HostActionBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/HomeActivity;)Lcom/google/android/apps/plus/views/HostLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/phone/HomeActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    return-object p1
.end method

.method private buildDestinationBundleForIntent()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 321
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 323
    .local v1, extras:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    .line 324
    if-nez v1, :cond_25

    .line 325
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v4, "destination"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    :goto_19
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v4, "account"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    return-void

    .line 327
    :cond_25
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 328
    const-string v3, "destination"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 330
    .local v0, destination:I
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v4, "destination"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_19
.end method

.method private configureDestinations()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 372
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->removeAllDestinations()V

    .line 374
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const/4 v3, 0x0

    const v4, 0x7f020134

    const v5, 0x7f08007c

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 379
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const v3, 0x7f020139

    const v4, 0x7f080073

    invoke-virtual {v2, v6, v3, v4}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 384
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const/4 v3, 0x7

    const v4, 0x7f020137

    const v5, 0x7f080076

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 389
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const/4 v3, 0x2

    const v4, 0x7f020132

    const v5, 0x7f080079

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 396
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/google/android/apps/plus/service/Hangout;->isHangoutCreationSupported(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 398
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const/4 v3, 0x3

    const v4, 0x7f020133

    const v5, 0x7f080077

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 404
    :cond_52
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const/4 v3, 0x4

    const v4, 0x7f020136

    const v5, 0x7f080074

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 409
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const/4 v3, 0x5

    const v4, 0x7f020131

    const v5, 0x7f080075

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 414
    invoke-static {p0}, Lcom/google/android/apps/plus/util/MapUtils;->isPlacesInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 415
    .local v1, localSupported:Z
    if-eqz v1, :cond_7c

    .line 416
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    const/4 v3, 0x6

    const v4, 0x7f020135

    const v5, 0x7f08007b

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addDestination(III)V

    .line 422
    :cond_7c
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->showDestinations()V

    .line 423
    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestinationsConfigured:Z

    .line 424
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->restoreNavigationBarScrollPosition()V

    .line 425
    return-void
.end method

.method private dismissDialogs()V
    .registers 6

    .prologue
    .line 771
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDialogTags:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDialogTags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 784
    :cond_c
    :goto_c
    return-void

    .line 775
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 776
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDialogTags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 777
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 778
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_17

    .line 779
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_17

    .line 783
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    .end local v3           #tag:Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDialogTags:Ljava/util/ArrayList;

    goto :goto_c
.end method

.method private isContactsStatsSyncPreferenceNeeded()Z
    .registers 2

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsStatsSyncPreferenceSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isContactsSyncPreferenceNeeded()Z
    .registers 3

    .prologue
    .line 811
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncPreferenceSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isLauncherIntent(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private navigateToDestination(ILandroid/os/Bundle;ZLandroid/support/v4/app/Fragment$SavedState;)V
    .registers 13
    .parameter "destinationId"
    .parameter "args"
    .parameter "animate"
    .parameter "savedState"

    .prologue
    const/4 v7, 0x1

    .line 489
    packed-switch p1, :pswitch_data_f2

    .line 577
    :cond_4
    :goto_4
    :pswitch_4
    return-void

    .line 491
    :pswitch_5
    new-instance v3, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;-><init>()V

    .line 492
    .local v3, fragment:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->setArguments(Landroid/os/Bundle;)V

    .line 493
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v5, v3, p3, p4}, Lcom/google/android/apps/plus/views/HostLayout;->showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V

    goto :goto_4

    .line 498
    .end local v3           #fragment:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
    :pswitch_13
    new-instance v3, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;-><init>()V

    .line 499
    .local v3, fragment:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
    const-string v5, "person_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 500
    const-string v5, "person_id"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_2d
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 503
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v5, v3, p3, p4}, Lcom/google/android/apps/plus/views/HostLayout;->showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V

    goto :goto_4

    .line 508
    .end local v3           #fragment:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
    :pswitch_36
    new-instance v3, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;-><init>()V

    .line 509
    .local v3, fragment:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;
    const-string v5, "person_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 510
    const-string v5, "person_id"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_50
    const-string v5, "photos_home"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 514
    const-string v5, "photos_home"

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    :cond_5d
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 517
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v5, v3, p3, p4}, Lcom/google/android/apps/plus/views/HostLayout;->showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V

    goto :goto_4

    .line 522
    .end local v3           #fragment:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;
    :pswitch_66
    new-instance v3, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;-><init>()V

    .line 523
    .local v3, fragment:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;
    const-string v5, "refresh"

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 524
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 525
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v5, v3, p3, p4}, Lcom/google/android/apps/plus/views/HostLayout;->showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V

    goto :goto_4

    .line 530
    .end local v3           #fragment:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;
    :pswitch_79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 531
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 535
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_a2

    const/4 v5, 0x0

    :try_start_84
    invoke-static {v1, v0, v5}, Lcom/google/android/apps/plus/service/Hangout;->isHangoutCreationSupported(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 539
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 541
    new-instance v3, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;-><init>()V

    .line 542
    .local v3, fragment:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setArguments(Landroid/os/Bundle;)V

    .line 543
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v5, v3, p3, p4}, Lcom/google/android/apps/plus/views/HostLayout;->showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V

    .line 547
    .end local v3           #fragment:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;
    :cond_a2
    if-eqz v0, :cond_4

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-ne v5, v6, :cond_4

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 551
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommService;->getNotificationIntent()Landroid/content/Intent;

    move-result-object v4

    .line 553
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 554
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_c8
    .catch Ljava/lang/LinkageError; {:try_start_84 .. :try_end_c8} :catch_ca

    goto/16 :goto_4

    .line 557
    .end local v4           #intent:Landroid/content/Intent;
    :catch_ca
    move-exception v2

    .line 558
    .local v2, err:Ljava/lang/LinkageError;
    const v5, 0x7f080368

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/plus/phone/HomeActivity;->showError(IZ)V

    goto/16 :goto_4

    .line 564
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #err:Ljava/lang/LinkageError;
    :pswitch_d4
    new-instance v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;-><init>()V

    .line 565
    .local v3, fragment:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 566
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v5, v3, p3, p4}, Lcom/google/android/apps/plus/views/HostLayout;->showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V

    goto/16 :goto_4

    .line 571
    .end local v3           #fragment:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;
    :pswitch_e3
    new-instance v3, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;-><init>()V

    .line 572
    .local v3, fragment:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;
    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 573
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v5, v3, v7, p4}, Lcom/google/android/apps/plus/views/HostLayout;->showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V

    goto/16 :goto_4

    .line 489
    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
        :pswitch_66
        :pswitch_79
        :pswitch_e3
        :pswitch_d4
        :pswitch_4
        :pswitch_36
    .end packed-switch
.end method

.method private onNotificationClick(I)V
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 580
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 581
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_c

    .line 595
    :cond_b
    :goto_b
    return-void

    .line 585
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->newViewNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v1

    .line 587
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_b

    .line 589
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v4, :cond_29

    .line 590
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, notificationId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    .line 593
    .end local v2           #notificationId:Ljava/lang/String;
    :cond_29
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method private refreshNotifications()V
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 757
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;

    .line 758
    return-void
.end method

.method private restoreNavigationBarScrollPosition()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 761
    iget v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarScrollPosition:I

    if-eq v0, v2, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestinationsConfigured:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsLoaded:Z

    if-eqz v0, :cond_16

    .line 762
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBar:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarScrollPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 763
    iput v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarScrollPosition:I

    .line 765
    :cond_16
    return-void
.end method

.method private saveDestinationState()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 255
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    if-eqz v1, :cond_19

    .line 256
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v2, "destination"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, destination:I
    if-eq v0, v3, :cond_19

    .line 258
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestinationState:[Landroid/os/Parcelable;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostLayout;->saveHostedFragmentState()Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v2

    aput-object v2, v1, v0

    .line 261
    .end local v0           #destination:I
    :cond_19
    return-void
.end method

.method private showCurrentDestination()V
    .registers 5

    .prologue
    .line 358
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    if-eqz v1, :cond_9

    .line 359
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HostActionBar;->dismissPopupMenus()V

    .line 362
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->dismissDialogs()V

    .line 364
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v2, "destination"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, destinationId:I
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/HomeActivity;->navigateToDestination(ILandroid/os/Bundle;ZLandroid/support/v4/app/Fragment$SavedState;)V

    .line 366
    return-void
.end method

.method private showError(IZ)V
    .registers 4
    .parameter "messageId"
    .parameter "finishOnOk"

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/phone/HomeActivity;->showError(Ljava/lang/String;Z)V

    .line 876
    return-void
.end method

.method private showError(Ljava/lang/String;Z)V
    .registers 10
    .parameter "message"
    .parameter "finishOnOk"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 841
    const-string v1, "showError: message=%s finishOnOk=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    invoke-static {v6, p1, v1, v6, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 845
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setCancelable(Z)V

    .line 846
    new-instance v1, Lcom/google/android/apps/plus/phone/HomeActivity$3;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/plus/phone/HomeActivity$3;-><init>(Lcom/google/android/apps/plus/phone/HomeActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V

    .line 871
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private showPromotions()V
    .registers 4

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->isContactsStatsSyncPreferenceNeeded()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 792
    new-instance v0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;-><init>(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 793
    .local v0, dialog:Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "new_features"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 804
    .end local v0           #dialog:Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;
    :cond_18
    :goto_18
    return-void

    .line 801
    :cond_19
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->isContactsSyncPreferenceNeeded()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 802
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getContactsSyncConfigActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/SignOnManager;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 837
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HOME:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/SignOnManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 693
    :goto_8
    return-void

    .line 692
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_8
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    if-eqz v0, :cond_10

    instance-of v0, p1, Lcom/google/android/apps/plus/phone/HostedFragment;

    if-eqz v0, :cond_10

    .line 343
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/phone/HostedFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/HostLayout;->onAttachFragment(Lcom/google/android/apps/plus/phone/HostedFragment;)V

    .line 346
    :cond_10
    instance-of v0, p1, Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_28

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDialogTags:Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDialogTags:Ljava/util/ArrayList;

    .line 350
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDialogTags:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_28
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostLayout;->isNavigationBarVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostLayout;->hideNavigationBar()V

    .line 274
    :goto_d
    return-void

    .line 273
    :cond_e
    invoke-super {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onBackPressed()V

    goto :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 99
    if-eqz p1, :cond_e

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 103
    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_32

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "destination"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, destination:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x4

    if-ne v0, v2, :cond_32

    .line 113
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->finish()V

    .line 196
    .end local v0           #destination:I
    :cond_31
    :goto_31
    return-void

    .line 118
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/android/apps/plus/phone/SignOnManager;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_31

    .line 124
    const v2, 0x7f030057

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->setContentView(I)V

    .line 126
    const v2, 0x7f09013a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/HostLayout;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    .line 127
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/HostLayout;->setListener(Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;)V

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostLayout;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    .line 130
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/HostActionBar;->setOnUpButtonClickListener(Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    const v3, 0x7f08045a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/HostActionBar;->setUpButtonContentDescription(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostLayout;->getNavigationBar()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBar:Landroid/widget/ListView;

    .line 136
    new-instance v2, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    .line 137
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBar:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBar:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->configureDestinations()V

    .line 142
    if-eqz p1, :cond_e6

    .line 143
    const-string v2, "reqId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 144
    const-string v2, "reqId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;

    .line 146
    :cond_a6
    const-string v2, "scrollPos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarScrollPosition:I

    .line 151
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostLayout;->attachActionBar()V

    .line 152
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_bc

    .line 153
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 168
    :cond_bc
    :goto_bc
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 169
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    iget v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationCount:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/HostActionBar;->setNotificationCount(I)V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v1

    .line 172
    .local v1, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v1, :cond_31

    .line 173
    new-instance v2, Lcom/google/android/apps/plus/phone/HomeActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/phone/HomeActivity$1;-><init>(Lcom/google/android/apps/plus/phone/HomeActivity;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mShakeListener:Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;

    .line 193
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mShakeListener:Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/ShakeDetector;->addEventListener(Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;)V

    .line 194
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    goto/16 :goto_31

    .line 155
    .end local v1           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_e6
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/SignOnManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 156
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->buildDestinationBundleForIntent()V

    .line 157
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->showCurrentDestination()V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_notifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 160
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostLayout;->showNavigationBarDelayed()V

    .line 163
    :cond_105
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->showPromotions()V

    goto :goto_bc
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .parameter "id"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 700
    packed-switch p1, :pswitch_data_1e

    .line 714
    :cond_4
    :goto_4
    return-object v4

    .line 702
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    .line 703
    .local v7, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v7, :cond_4

    .line 707
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 709
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "timestamp DESC"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_4

    .line 700
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onDestroy()V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 205
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_15

    .line 206
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mShakeListener:Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->removeEventListener(Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;)V

    .line 207
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    .line 209
    :cond_15
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->isNotificationHeader(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 455
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->refreshNotifications()V

    .line 482
    :goto_b
    return-void

    .line 457
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getDestinationId(I)I

    move-result v0

    .line 458
    .local v0, destinationId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_62

    .line 459
    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    .line 460
    invoke-static {p0}, Lcom/google/android/apps/plus/util/MapUtils;->getPlacesActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 461
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HostLayout;->hideNavigationBar()V

    goto :goto_b

    .line 465
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v2, "destination"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_39

    .line 467
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HostLayout;->hideNavigationBar()V

    goto :goto_b

    .line 471
    :cond_39
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->saveDestinationState()V

    .line 473
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    .line 474
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v2, "account"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 475
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const-string v2, "destination"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestinationState:[Landroid/os/Parcelable;

    aget-object v1, v1, v0

    check-cast v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->navigateToDestination(ILandroid/os/Bundle;ZLandroid/support/v4/app/Fragment$SavedState;)V

    goto :goto_b

    .line 479
    :cond_62
    invoke-direct {p0, p3}, Lcom/google/android/apps/plus/phone/HomeActivity;->onNotificationClick(I)V

    goto :goto_b
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->setNotifications(Landroid/database/Cursor;)V

    .line 723
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getUnreadNotificationCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationCount:I

    .line 724
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    iget v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->setNotificationCount(I)V

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsLoaded:Z

    .line 727
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->restoreNavigationBarScrollPosition()V

    .line 728
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/HomeActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onNavigationBarVisibilityChange(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 440
    if-nez p1, :cond_17

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBarAdapter:Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getUnreadNotificationCount()I

    move-result v1

    if-lez v1, :cond_17

    .line 442
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 443
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_17

    .line 444
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->tellServerNotificationsWereRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    .line 447
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_17
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/SignOnManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/HomeActivity;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->buildDestinationBundleForIntent()V

    .line 224
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->showCurrentDestination()V

    .line 226
    const-string v0, "show_notifications"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostLayout;->showNavigationBarDelayed()V

    .line 230
    :cond_28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 641
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/plus/views/HostLayout;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 678
    :goto_9
    return v3

    .line 645
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_58

    .line 678
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_9

    .line 647
    :sswitch_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getPostSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 648
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 653
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_23
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/HomeActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 654
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_9

    .line 659
    :sswitch_2c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    .line 660
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 665
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08046a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, helpUrlParam:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 668
    .local v0, helpUrl:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/HomeActivity;->startExternalActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 673
    .end local v0           #helpUrl:Landroid/net/Uri;
    .end local v1           #helpUrlParam:Ljava/lang/String;
    :sswitch_52
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/SignOnManager;->signOut()V

    goto :goto_9

    .line 645
    :sswitch_data_58
    .sparse-switch
        0x7f0902a9 -> :sswitch_16
        0x7f0902ab -> :sswitch_2c
        0x7f0902ac -> :sswitch_23
        0x7f0902ad -> :sswitch_38
        0x7f0902f2 -> :sswitch_52
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/SignOnManager;->onPause()V

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 304
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 613
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 614
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v2, :cond_1e

    .line 615
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 616
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_24

    .line 625
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 622
    :sswitch_1a
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_17

    .line 631
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1e
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/HostLayout;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 633
    return v4

    .line 616
    :sswitch_data_24
    .sparse-switch
        0x7f0902a9 -> :sswitch_1a
        0x7f0902ab -> :sswitch_1a
        0x7f0902ac -> :sswitch_1a
        0x7f0902ad -> :sswitch_1a
        0x7f0902f2 -> :sswitch_1a
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onResume()V

    .line 282
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mSignOnManager:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/SignOnManager;->onResume()Z

    move-result v0

    .line 283
    .local v0, signInJustCompleted:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 286
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mDestinationState:[Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    :cond_1a
    if-eqz v0, :cond_25

    .line 290
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->configureDestinations()V

    .line 291
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->buildDestinationBundleForIntent()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->showCurrentDestination()V

    .line 294
    :cond_25
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 239
    const-string v0, "reqId"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBar:Landroid/widget/ListView;

    if-eqz v0, :cond_21

    .line 242
    const-string v0, "scrollPos"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNavigationBar:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    :cond_21
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->saveDestinationState()V

    .line 249
    return-void
.end method

.method public onUpButtonClick()V
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostLayout;->toggleNavigationBarVisibility()V

    .line 433
    return-void
.end method
