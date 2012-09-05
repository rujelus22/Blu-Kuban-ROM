.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$6;,
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
    }
.end annotation


# static fields
.field private static SEND_ALL_NAMECARDS:I

.field private static SEND_INDIVIDUAL_NAMECARDS:I

.field private static mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

.field private static sendType:I


# instance fields
.field private final CONTACTS_TAG:Ljava/lang/String;

.field private final FAVORITES_TAG:Ljava/lang/String;

.field private final GROUPS_TAG:Ljava/lang/String;

.field private final LOGS_TAG:Ljava/lang/String;

.field count:I

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mActionbartitle:Ljava/lang/String;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

.field private mCurrentCount:I

.field private mDisplayTab:Z

.field private mDoneButtonClickable:Z

.field protected mExtraValue:I

.field private mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

.field private mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mLimitedCount:I

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSpeedDial:Z

.field private mTabChanged:Z

.field public mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field protected saveMenuItem:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    .line 139
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabChanged:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 135
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->count:I

    .line 146
    const-string v0, "tab-contacts"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->CONTACTS_TAG:Ljava/lang/String;

    .line 147
    const-string v0, "tab-groups"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->GROUPS_TAG:Ljava/lang/String;

    .line 148
    const-string v0, "tab-logs"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->LOGS_TAG:Ljava/lang/String;

    .line 149
    const-string v0, "tab-favorites"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->FAVORITES_TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return v0
.end method

.method private actionbarTitle()Ljava/lang/String;
    .registers 6

    .prologue
    const v4, 0x7f0a0011

    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 470
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    move-object v2, v1

    .line 486
    .end local v1           #title:Ljava/lang/String;
    .local v2, title:Ljava/lang/String;
    :goto_15
    return-object v2

    .line 474
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 475
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_2a

    .line 484
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_23
    move-object v2, v1

    .line 486
    .end local v1           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    goto :goto_15

    .line 480
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :sswitch_25
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 481
    goto :goto_23

    .line 475
    :sswitch_data_2a
    .sparse-switch
        0x96 -> :sswitch_25
        0xa0 -> :sswitch_25
        0xaa -> :sswitch_25
    .end sparse-switch
.end method

.method private configureContactsFragments()V
    .registers 5

    .prologue
    .line 361
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureContactsFragments"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMultiSelectEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setLegacyCompatibilityMode(Z)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMMSinformation(III)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSpeedDial(Z)V

    .line 368
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_65

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchMode(Z)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectoryResultLimit(I)V

    .line 378
    :cond_65
    :goto_65
    return-void

    .line 375
    :cond_66
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    goto :goto_65
.end method

.method private configureFavoritesFragments()V
    .registers 5

    .prologue
    .line 381
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureFavoritesFragments"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setMultiSelectEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setLegacyCompatibilityMode(Z)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setMMSinformation(III)V

    .line 386
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_5e

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchMode(Z)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectorySearchMode(I)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectoryResultLimit(I)V

    .line 396
    :cond_5e
    :goto_5e
    return-void

    .line 393
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectorySearchMode(I)V

    goto :goto_5e
.end method

.method private configureFragments(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 333
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 336
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setInteractionPickContactsListener(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setInteractionPickFavoritesListener(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;)V

    .line 357
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    .line 358
    return-void
.end method

.method private createViewsAndMultipleFragments(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0d00e5

    .line 257
    const-string v2, "InteractionTabActivity"

    const-string v3, "createViewsAndMultipleFragments"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    sput-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .line 260
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 261
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V

    .line 262
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_2d

    .line 263
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 266
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 267
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 269
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 271
    const-string v2, "tab-groups"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 273
    const-string v2, "tab-logs"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 274
    const-string v2, "tab-favorites"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v2, :cond_99

    .line 283
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 284
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 285
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-direct {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 286
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const-string v3, "tab-contacts"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const-string v3, "tab-favorites"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const-string v3, "tab-groups"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const-string v3, "tab-logs"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 294
    :cond_99
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 299
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 300
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFragments(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    .line 303
    return-void
.end method

.method private createViewsAndSingleFragments(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 308
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 311
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 314
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v2, :cond_27

    .line 315
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 316
    const v2, 0x7f0d00e5

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const-string v4, "tab-contacts"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 318
    :cond_27
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 319
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 321
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setInteractionPickContactsListener(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;)V

    .line 330
    return-void
.end method

.method private hideSoftKeyboard()V
    .registers 4

    .prologue
    .line 1072
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1073
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1074
    return-void
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 918
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 919
    .local v1, keyStrings:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, dataStrings:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .local v2, resultString:Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 924
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :goto_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 934
    :cond_3b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36
.end method

.method private updateMultipleFragmentVisibility()V
    .registers 7

    .prologue
    .line 618
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateMultipleFragmentVisibility"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 621
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 622
    .local v1, ft:Landroid/app/FragmentTransaction;
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$6;->$SwitchMap$com$sec$android$app$contacts$interaction$InteractionActionBarAdapter$TabState:[I

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_14c

    .line 706
    :goto_1c
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 707
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 708
    :goto_22
    return-void

    .line 624
    :pswitch_23
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->GROUPS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setMMSinformation(III)V

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 629
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 630
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->reloadData()V

    .line 631
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 632
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 633
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->reloadData()V

    .line 636
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 637
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 638
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 639
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_1c

    .line 642
    :pswitch_68
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->CONTACTS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_83

    .line 645
    :cond_7b
    const-string v2, "InteractionTabActivity"

    const-string v3, "mContactsFragment null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 648
    :cond_83
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 649
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchQuery()V

    .line 652
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 653
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 654
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->reloadData()V

    .line 657
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 658
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 659
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 660
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_1c

    .line 663
    :pswitch_b0
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->FAVORITES"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_cc

    .line 666
    :cond_c3
    const-string v2, "InteractionTabActivity"

    const-string v3, "mFavoritesFragment null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 669
    :cond_cc
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabChanged:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_df

    .line 670
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 671
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 673
    :cond_df
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    .line 674
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchQuery()V

    .line 677
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 678
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 679
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->reloadData()V

    .line 682
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 683
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 684
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 685
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_1c

    .line 688
    :pswitch_10c
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->LOGS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 692
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 693
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->reloadData()V

    .line 694
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 695
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 696
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->reloadData()V

    .line 697
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 700
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 701
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 702
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 703
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_1c

    .line 622
    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_68
        :pswitch_b0
        :pswitch_10c
    .end packed-switch
.end method

.method private updateSingleFragmentVisibility()V
    .registers 5

    .prologue
    .line 601
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateSingleFragmentVisibility"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 604
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 606
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_23

    .line 607
    :cond_1b
    const-string v2, "InteractionTabActivity"

    const-string v3, "mContactsFragment null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_22
    return-void

    .line 610
    :cond_23
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 611
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchQuery()V

    .line 613
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 614
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_22
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .registers 10

    .prologue
    const/16 v8, 0x1e

    const/4 v7, -0x2

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 400
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_7d

    .line 401
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 404
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 407
    .local v2, customActionBarView:Landroid/view/View;
    const v5, 0x7f0d009d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    .line 409
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 410
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    :goto_34
    const v5, 0x7f0d009e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 432
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v5, :cond_4b

    .line 440
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 441
    :cond_4b
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    .line 442
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 446
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    const-string v1, ""

    .line 450
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 451
    const-string v5, "he"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    const-string v5, "iw"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 453
    :cond_73
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 462
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    :cond_7d
    :goto_7d
    return-object v0

    .line 429
    .restart local v2       #customActionBarView:Landroid/view/View;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    :cond_7e
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34

    .line 457
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v4       #revertMenuItem:Landroid/view/View;
    :cond_86
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_7d
.end method

.method public getCurrentTab()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    .registers 2

    .prologue
    .line 1077
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 1045
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1047
    packed-switch p1, :pswitch_data_2e

    .line 1069
    :cond_7
    :goto_7
    return-void

    .line 1049
    :pswitch_8
    if-ne p2, v3, :cond_7

    .line 1050
    if-eqz p3, :cond_f

    .line 1051
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1053
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_7

    .line 1059
    :pswitch_13
    if-ne p2, v3, :cond_7

    .line 1060
    const-string v0, "namecard_string"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1062
    const-string v2, "namecard_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1063
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_7

    .line 1047
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 529
    const-string v0, "InteractionTabActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_69

    .line 531
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_25

    .line 532
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 553
    :cond_24
    :goto_24
    return-void

    .line 536
    .restart local p1
    :cond_25
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_3f

    .line 537
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_24

    .line 541
    .restart local p1
    :cond_3f
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_4f

    .line 542
    const-string v0, "InteractionTabActivity"

    const-string v1, "mGroupsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    goto :goto_24

    .line 544
    .restart local p1
    :cond_4f
    instance-of v0, p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v0, :cond_24

    .line 545
    const-string v0, "InteractionTabActivity"

    const-string v1, "mCallLogFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_24

    .line 551
    .restart local p1
    :cond_69
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupActionListener()V

    goto :goto_24
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 509
    .local v0, rot:I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setPhoneLayoutAttribute(I)V

    .line 510
    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 511
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_20

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 516
    :cond_20
    :goto_20
    return-void

    .line 513
    :cond_21
    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public onContactListFilterChanged()V
    .registers 3

    .prologue
    .line 726
    const-string v0, "InteractionTabActivity"

    const-string v1, "notifyContactListFilterChanged -> onContactListFilterChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 735
    :cond_2b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0xfa

    const/4 v2, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const-string v1, "InteractionTabActivity"

    const-string v3, "onCreate"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v1, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 169
    if-eqz p1, :cond_f4

    const/4 v1, 0x1

    :goto_28
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    .line 170
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_f7

    .line 171
    const-string v1, "InteractionTabActivity"

    const-string v2, "mIsRecreatedInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 173
    const-string v1, "extraValue"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 174
    const-string v1, "maxRecipientCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 175
    const-string v1, "existingRecipientCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 176
    const-string v1, "from_speed_dial"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 177
    const-string v1, "displayTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    .line 178
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_8f

    .line 179
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->fromInt(I)Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 180
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRecreatedInstance-mTabState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_8f
    const-string v1, "doneButtonClickable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    .line 233
    :goto_97
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActionCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLimitedCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 238
    .local v0, redirect:Landroid/content/Intent;
    if-eqz v0, :cond_1ad

    .line 240
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 254
    .end local v0           #redirect:Landroid/content/Intent;
    :goto_f3
    return-void

    :cond_f4
    move v1, v2

    .line 169
    goto/16 :goto_28

    .line 185
    :cond_f7
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 190
    const-string v1, "InteractionTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtraValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_138

    .line 192
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_f3

    .line 201
    :cond_138
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    .line 204
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0x96

    if-ne v1, v3, :cond_181

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 224
    :goto_15f
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "existingRecipientCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "from_speed_dial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    goto/16 :goto_97

    .line 216
    :cond_181
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_194

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_15f

    .line 218
    :cond_194
    sget v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    if-ne v1, v3, :cond_1a0

    .line 219
    const v1, 0xffff

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_15f

    .line 221
    :cond_1a0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_15f

    .line 245
    .restart local v0       #redirect:Landroid/content/Intent;
    :cond_1ad
    const v1, 0x7f04003b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setContentView(I)V

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 249
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_1c2

    .line 250
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndMultipleFragments(Landroid/os/Bundle;)V

    goto/16 :goto_f3

    .line 252
    :cond_1c2
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndSingleFragments(Landroid/os/Bundle;)V

    goto/16 :goto_f3
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 524
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 525
    const-string v0, "InteractionTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 493
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 501
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 495
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 496
    const/4 v0, 0x1

    goto :goto_b

    .line 493
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 586
    const-string v0, "InteractionTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 588
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 568
    const-string v0, "InteractionTabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 575
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_17

    .line 576
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V

    .line 577
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateMultipleFragmentVisibility()V

    .line 582
    :goto_16
    return-void

    .line 579
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateSingleFragmentVisibility()V

    goto :goto_16
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 712
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 714
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    const-string v0, "extraValue"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 718
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 719
    const-string v0, "displayTab"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    const-string v0, "currentTab"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 721
    const-string v0, "doneButtonClickable"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 722
    return-void
.end method

.method public onSelectedTabChanged(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .registers 5
    .parameter "Tab"

    .prologue
    const/4 v2, 0x0

    .line 592
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSelectedTabChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabChanged:Z

    .line 595
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateMultipleFragmentVisibility()V

    .line 596
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 597
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabChanged:Z

    .line 598
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 833
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 835
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 836
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 838
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 839
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 842
    :goto_24
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 843
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 844
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const/16 v1, 0x3b

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 849
    :cond_44
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 850
    const-string v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 851
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    if-eqz v3, :cond_44

    .line 856
    :cond_59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    .line 857
    goto :goto_24

    .line 859
    :cond_5e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 861
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 863
    const-string v2, "result"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 864
    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 868
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 869
    const-string v2, "index"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    const-string v2, "phone_data_id"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 872
    :cond_a1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 873
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;J)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 885
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 886
    const-string v0, "datatype"

    const-string v2, "contact"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "has_result"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 888
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 889
    const-string v0, "index"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "index"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 890
    const-string v0, "phone_data_id"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 892
    :cond_4e
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 893
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 961
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 962
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 965
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 967
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 944
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1d

    .line 946
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    const-string v1, "CONTACT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 948
    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 949
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_1c} :catch_29

    .line 958
    :goto_1c
    return-void

    .line 955
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 956
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 957
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto :goto_1c

    .line 950
    :catch_29
    move-exception v0

    goto :goto_1c
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 900
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 902
    const/4 v1, 0x0

    .line 903
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v5, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v4, v5, :cond_2a

    .line 904
    const-string v1, ";"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    :goto_26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 906
    :cond_2a
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v5, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v4, v5, :cond_4c

    .line 907
    const-string v1, ";"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 912
    :cond_37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 913
    const-string v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 914
    const-string v1, "datatype"

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 916
    return-void

    :cond_4c
    move-object v0, v1

    goto :goto_26
.end method

.method public sendContactsIntent(Ljava/util/HashMap;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 973
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 974
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 975
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 978
    :cond_29
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 981
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 982
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 983
    return-void
.end method

.method public sendVcardByMultiUriIntent(Ljava/util/HashMap;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1017
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1020
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1021
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1024
    :cond_29
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_4f

    .line 1025
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1029
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1041
    :goto_4e
    return-void

    .line 1031
    :cond_4f
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_74

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1036
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1037
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_4e

    .line 1039
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendVcardIntent(Ljava/util/HashMap;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 989
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 993
    :cond_28
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 996
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v1, v2, :cond_5c

    .line 997
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1001
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1002
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1013
    :goto_5b
    return-void

    .line 1003
    :cond_5c
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_81

    .line 1004
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1005
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1008
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_5b

    .line 1011
    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setDoneButtonClickable(Z)V
    .registers 4
    .parameter "clickable"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 739
    return-void

    .line 738
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected setPhoneLayoutAttribute(I)V
    .registers 4
    .parameter "orientation"

    .prologue
    const/4 v1, -0x1

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 520
    return-void
.end method

.method public setupActionListener()V
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 558
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_22

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 564
    :cond_22
    return-void
.end method
