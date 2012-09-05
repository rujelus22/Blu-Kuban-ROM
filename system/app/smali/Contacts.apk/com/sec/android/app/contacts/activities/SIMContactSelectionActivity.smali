.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
    }
.end annotation


# static fields
.field private static mCP_Start:I

.field private static mDialog:Landroid/app/ProgressDialog;

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionCode:I

.field private mCanceled:Z

.field private mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

.field private mHomeCheck:Z

.field private mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 655
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 97
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    .line 853
    new-instance v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800()Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    sput-object p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .registers 4
    .parameter "actionBar"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 244
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_20

    .line 254
    :goto_9
    return-void

    .line 246
    :sswitch_a
    const v1, 0x7f0a027f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 250
    :sswitch_15
    const v1, 0x7f0a00bb

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 244
    :sswitch_data_20
    .sparse-switch
        0x12c -> :sswitch_a
        0x136 -> :sswitch_15
    .end sparse-switch
.end method

.method private setButtonClickable(Z)V
    .registers 4
    .parameter "clickable"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 351
    :cond_22
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 302
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 345
    :goto_c
    return-void

    .line 306
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 307
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_c0

    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :sswitch_35
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 310
    .local v0, fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 311
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 312
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    .line 313
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 314
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 315
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 316
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 336
    :goto_54
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e5

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_c

    .line 321
    .end local v0           #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_9e
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 322
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 323
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 324
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    .line 325
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 326
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0xb

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 327
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 328
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_54

    .line 307
    nop

    :sswitch_data_c0
    .sparse-switch
        0x12c -> :sswitch_35
        0x136 -> :sswitch_9e
    .end sparse-switch
.end method

.method public getActionCode()I
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method public isSIMEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 376
    .local v1, isSIMEnabled:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1c

    move v0, v2

    .line 379
    .local v0, isAirplaneMode:Z
    :goto_17
    if-eqz v1, :cond_1e

    if-nez v0, :cond_1e

    :goto_1b
    return v2

    .end local v0           #isAirplaneMode:Z
    :cond_1c
    move v0, v3

    .line 376
    goto :goto_17

    .restart local v0       #isAirplaneMode:Z
    :cond_1e
    move v2, v3

    .line 379
    goto :goto_1b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 494
    if-ne p2, v3, :cond_1a

    .line 495
    const-string v2, "namecard_string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, rtData:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "namecard_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 500
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #rtData:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 114
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_b

    .line 115
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setupActionListener()V

    .line 118
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v0, :cond_d

    .line 266
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 267
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 269
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v0, :cond_15

    .line 270
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 271
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 273
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 276
    :cond_1e
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 486
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_d

    .line 487
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 489
    :goto_c
    return v1

    :cond_d
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    if-eqz p1, :cond_15

    .line 125
    const-string v9, "actionCode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 126
    const-string v9, "mode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    .line 130
    :cond_15
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 131
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v9

    if-nez v9, :cond_31

    .line 132
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 218
    :goto_30
    return-void

    .line 137
    :cond_31
    const-string v9, "DTM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    const-string v9, "MAX"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    const-string v9, "TMZ"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    const-string v9, "COS"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    const-string v9, "CRO"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 140
    :cond_77
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "CP_Start"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    .line 143
    :cond_84
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v6

    .line 144
    .local v6, redirect:Landroid/content/Intent;
    if-eqz v6, :cond_93

    .line 146
    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    goto :goto_30

    .line 151
    :cond_93
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactsRequest;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, accountName:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactsRequest;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b2

    .line 155
    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    .line 158
    :cond_b2
    const v9, 0x7f0400c0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setContentView(I)V

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureListFragment()V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 165
    .local v2, actionBar:Landroid/app/ActionBar;
    if-eqz v2, :cond_11f

    .line 166
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 168
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040018

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 169
    .local v4, customActionBarView:Landroid/view/View;
    const v9, 0x7f0d009d

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 170
    .local v8, saveMenuItem:Landroid/view/View;
    new-instance v9, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v9, 0x7f0d009e

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 179
    .local v7, revertMenuItem:Landroid/view/View;
    new-instance v9, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const/16 v9, 0x1e

    const/16 v10, 0x1e

    invoke-virtual {v2, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 194
    const-string v3, ""

    .line 195
    .local v3, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string v9, "he"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_110

    const-string v9, "iw"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_151

    .line 198
    :cond_110
    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x13

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 207
    :goto_11c
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    .line 210
    .end local v3           #currentLang:Ljava/lang/String;
    .end local v4           #customActionBarView:Landroid/view/View;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #revertMenuItem:Landroid/view/View;
    .end local v8           #saveMenuItem:Landroid/view/View;
    :cond_11f
    const v9, 0x7f0d00e9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SearchView;

    iput-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 211
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 212
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 213
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->clearFocus()V

    .line 214
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const v10, 0x7f0a01ad

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 217
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    goto/16 :goto_30

    .line 202
    .restart local v3       #currentLang:Ljava/lang/String;
    .restart local v4       #customActionBarView:Landroid/view/View;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v7       #revertMenuItem:Landroid/view/View;
    .restart local v8       #saveMenuItem:Landroid/view/View;
    :cond_151
    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x15

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_11c
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 283
    const-string v1, "DTM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "MAX"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "TMZ"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "COS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "CRO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 286
    :cond_49
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x136

    if-ne v1, v2, :cond_62

    .line 287
    sget v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_62

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SIM_IMPORT_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    .end local v0           #intent:Landroid/content/Intent;
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 296
    :cond_6b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 868
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 875
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 870
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 871
    const/4 v0, 0x1

    goto :goto_b

    .line 868
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v0, :cond_11

    .line 231
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 232
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 234
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v0, :cond_1d

    .line 235
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 236
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 238
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 239
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 6
    .parameter "newText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    :goto_11
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSearchMode(Z)V

    .line 366
    return v2

    :cond_15
    move v1, v2

    .line 365
    goto :goto_11
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .parameter "query"

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v0, "mode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method public onUserLeaveHint()V
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onUserLeaveHint()V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    .line 260
    return-void
.end method

.method public setupActionListener()V
    .registers 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    if-eqz v0, :cond_14

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V

    .line 360
    return-void

    .line 358
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
