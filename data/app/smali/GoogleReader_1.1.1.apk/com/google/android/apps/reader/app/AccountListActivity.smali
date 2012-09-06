.class public Lcom/google/android/apps/reader/app/AccountListActivity;
.super Landroid/app/ListActivity;
.source "AccountListActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;,
        Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MENU_AUTH_CONTACTS_PERMISSION:Ljava/lang/CharSequence; = null

.field private static final MENU_AUTH_READER_PERMISSION:Ljava/lang/CharSequence; = null

.field private static final MENU_INVALIDATE_CONTACTS_TOKEN:Ljava/lang/CharSequence; = null

.field private static final MENU_INVALIDATE_READER_TOKEN:Ljava/lang/CharSequence; = null

.field private static final REQUEST_ADD_ACCOUNT:I = 0x1

.field private static final REQUEST_CONTACTS_TOKEN:I = 0x3

.field private static final REQUEST_READER_TOKEN:I = 0x2

.field private static final REQUEST_TERMS:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final SDK:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHOW_ALL_ACCOUNTS:Z = false

.field private static final STATE_ACCOUNT:Ljava/lang/String; = "reader:account"

.field private static final STATE_ACCOUNT_LIST:Ljava/lang/String; = "reader:account_list"

.field private static final STATE_ACTIVITY_RESULT_PENDING:Ljava/lang/String; = "reader:activity_result_pending"

.field private static final STATE_AUTH_TOKEN:Ljava/lang/String; = "reader:auth_token"

.field private static final TAG:Ljava/lang/String; = "AccountListActivity"


# instance fields
.field private mAccount:Lcom/google/android/accounts/Account;

.field private mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

.field private mActivityResultPending:Z

.field private mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

.field private mAuthToken:Ljava/lang/String;

.field private mLocalPreferences:Landroid/content/SharedPreferences;

.field private mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/apps/reader/app/AccountListActivity;->SDK:I

    .line 111
    const-string v0, "Invalidate Reader Token"

    sput-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_INVALIDATE_READER_TOKEN:Ljava/lang/CharSequence;

    .line 113
    const-string v0, "Invalidate Contacts Token"

    sput-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_INVALIDATE_CONTACTS_TOKEN:Ljava/lang/CharSequence;

    .line 115
    const-string v0, "Change Reader Permission"

    sput-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_AUTH_READER_PERMISSION:Ljava/lang/CharSequence;

    .line 117
    const-string v0, "Change Contacts Permission"

    sput-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_AUTH_CONTACTS_PERMISSION:Ljava/lang/CharSequence;

    .line 135
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/reader/app/AccountListActivity;->SHOW_ALL_ACCOUNTS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 684
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/app/AccountListActivity;)Lcom/google/android/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/reader/app/AccountListActivity;Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;)Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/app/AccountListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->onError()V

    return-void
.end method

.method private addAccount()V
    .registers 3

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->isLoading()Z

    move-result v0

    if-nez v0, :cond_c

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->addAccount(ILcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V

    .line 284
    :cond_c
    return-void
.end method

.method private cancelSyncPreferences()V
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    if-eqz v0, :cond_d

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->cancel(Z)Z

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    .line 449
    :cond_d
    return-void
.end method

.method private changePermission(Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 324
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 325
    const-string v0, "android"

    const-string v2, "android.accounts.GrantCredentialsPermissionActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v0, "android.accounts.Account"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 330
    const-string v2, "account"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 331
    const-string v0, "authTokenLabel"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v0, "authTokenType"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v0, "accountTypeLabel"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v0, "application"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v0, "uid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/AccountListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    .line 342
    :goto_67
    return-void

    .line 339
    :catch_68
    move-exception v0

    .line 340
    const-string v1, "AccountListActivity"

    const-string v2, "Failed to change credentials permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67
.end method

.method private continueSignIn()V
    .registers 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V

    .line 258
    :goto_d
    return-void

    .line 256
    :cond_e
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->startSyncPreferences()V

    goto :goto_d
.end method

.method private getAccounts()V
    .registers 3

    .prologue
    .line 272
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    .local v0, preferences:Landroid/content/SharedPreferences;
    sget-boolean v1, Lcom/google/android/apps/reader/app/AccountListActivity;->SHOW_ALL_ACCOUNTS:Z

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getShowAllAccounts(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 274
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getAllAccounts(Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V

    .line 278
    :goto_13
    return-void

    .line 276
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getReaderAccounts(Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V

    goto :goto_13
.end method

.method private static getAuthTokenTypeForRequestCode(I)Ljava/lang/String;
    .registers 2
    .parameter "requestCode"

    .prologue
    .line 605
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    const-string v0, "reader"

    :goto_5
    return-object v0

    :cond_6
    const-string v0, "cp"

    goto :goto_5
.end method

.method private static getNextAuthTokenType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "authTokenType"

    .prologue
    .line 585
    const-string v0, "reader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "cp"

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static getRequestCodeForAuthTokenType(Ljava/lang/String;)I
    .registers 2
    .parameter "authTokenType"

    .prologue
    .line 595
    const-string v0, "reader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x3

    goto :goto_9
.end method

.method private static isAuthTokenTypeRequired(Ljava/lang/String;)Z
    .registers 2
    .parameter "authTokenType"

    .prologue
    .line 616
    const-string v0, "reader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLoading()Z
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->isLoading()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private onError()V
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 440
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->updateViews()V

    .line 441
    const v0, 0x7f0d004c

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->showToast(I)V

    .line 442
    return-void
.end method

.method private setIsSyncable([Lcom/google/android/accounts/Account;)V
    .registers 10
    .parameter "accounts"

    .prologue
    const/4 v7, 0x1

    .line 406
    invoke-static {p0}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v3

    .line 407
    .local v3, cs:Lcom/google/android/accounts/ContentSyncer;
    const-string v2, "com.google.android.apps.reader"

    .line 408
    .local v2, authority:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Lcom/google/android/accounts/Account;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_a
    if-ge v4, v5, :cond_1a

    aget-object v0, v1, v4

    .line 409
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-virtual {v3, v0, v2}, Lcom/google/android/accounts/ContentSyncer;->getIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v7, :cond_17

    .line 410
    invoke-virtual {v3, v0, v2, v7}, Lcom/google/android/accounts/ContentSyncer;->setIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;I)V

    .line 408
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 413
    .end local v0           #account:Lcom/google/android/accounts/Account;
    :cond_1a
    return-void
.end method

.method private showToast(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 571
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 572
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    return-void
.end method

.method private startSyncPreferences()V
    .registers 3

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->cancelSyncPreferences()V

    .line 455
    new-instance v0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;-><init>(Lcom/google/android/apps/reader/app/AccountListActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    .line 456
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->execute([Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    .line 457
    return-void
.end method

.method private updateViews()V
    .registers 16

    .prologue
    .line 346
    const v12, 0x7f0b000c

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 347
    .local v4, loading:Landroid/view/View;
    const v12, 0x7f0b000d

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, authenticating:Landroid/view/View;
    const v12, 0x7f0b000b

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 349
    .local v2, empty:Landroid/view/View;
    const v12, 0x7f0b0009

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 350
    .local v5, prompt:Landroid/view/View;
    const v12, 0x7f0b000a

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 351
    .local v11, warning:Landroid/view/View;
    const v12, 0x102000a

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 352
    .local v3, list:Landroid/view/View;
    const v12, 0x7f0b000e

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, addAccount:Landroid/view/View;
    const v12, 0x1020015

    invoke-virtual {p0, v12}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 354
    .local v10, subtitleView:Landroid/widget/TextView;
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 355
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 356
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 357
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 358
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const-string v12, ""

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v12, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v12, :cond_6b

    .line 364
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_6a
    :goto_6a
    return-void

    .line 365
    :cond_6b
    iget-object v12, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v12}, Lcom/google/android/apps/reader/accounts/AccountHelper;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_78

    .line 367
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6a

    .line 370
    :cond_78
    sget v12, Lcom/google/android/apps/reader/app/AccountListActivity;->SDK:I

    const/4 v13, 0x5

    if-ge v12, v13, :cond_8f

    const/16 v12, 0x8

    :goto_7f
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v12, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    invoke-virtual {v12}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_91

    .line 373
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6a

    .line 370
    :cond_8f
    const/4 v12, 0x0

    goto :goto_7f

    .line 375
    :cond_91
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 376
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 379
    .local v8, resources:Landroid/content/res/Resources;
    const/high16 v7, 0x7f0e

    .line 380
    .local v7, resId:I
    iget-object v12, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    invoke-virtual {v12}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getCount()I

    move-result v6

    .line 381
    .local v6, quantity:I
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v7, v6, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, subtitle:Ljava/lang/CharSequence;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v12, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    invoke-static {v12}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getShowAllAccounts(Landroid/content/SharedPreferences;)Z

    move-result v12

    if-eqz v12, :cond_6a

    sget-boolean v12, Lcom/google/android/apps/reader/app/AccountListActivity;->SHOW_ALL_ACCOUNTS:Z

    if-nez v12, :cond_6a

    .line 387
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6a
.end method


# virtual methods
.method public onAccountError(Ljava/lang/Exception;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->onError()V

    .line 436
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mActivityResultPending:Z

    .line 538
    packed-switch p1, :pswitch_data_40

    .line 566
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 568
    :goto_b
    :pswitch_b
    return-void

    .line 544
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->cancel()V

    .line 545
    invoke-static {p1}, Lcom/google/android/apps/reader/app/AccountListActivity;->getAuthTokenTypeForRequestCode(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    if-eq p2, v1, :cond_1d

    invoke-static {v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->isAuthTokenTypeRequired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 547
    :cond_1d
    invoke-static {v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->getNextAuthTokenType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    goto :goto_b

    .line 551
    :cond_24
    iput-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 552
    iput-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    .line 553
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->updateViews()V

    goto :goto_b

    .line 557
    :pswitch_2c
    if-ne p2, v1, :cond_3c

    .line 558
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    const-string v1, "terms_accepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b

    .line 562
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->finish()V

    goto :goto_b

    .line 538
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_2c
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 269
    :goto_7
    return-void

    .line 266
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->addAccount()V

    goto :goto_7

    .line 264
    :pswitch_data_c
    .packed-switch 0x7f0b000f
        :pswitch_8
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    .line 301
    .local v3, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v5, :cond_59

    .line 302
    move-object v0, v3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 303
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getItem(I)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 304
    .local v1, account:Lcom/google/android/accounts/Account;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 305
    .local v4, title:Ljava/lang/CharSequence;
    sget-object v5, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_INVALIDATE_READER_TOKEN:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 306
    iget-object v5, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    const-string v6, "reader"

    invoke-virtual {v5, v1, v6, p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->invalidateAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V

    move v5, v7

    .line 319
    .end local v1           #account:Lcom/google/android/accounts/Account;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v4           #title:Ljava/lang/CharSequence;
    :goto_29
    return v5

    .line 308
    .restart local v1       #account:Lcom/google/android/accounts/Account;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v4       #title:Ljava/lang/CharSequence;
    :cond_2a
    sget-object v5, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_INVALIDATE_CONTACTS_TOKEN:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 309
    iget-object v5, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    const-string v6, "cp"

    invoke-virtual {v5, v1, v6, p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->invalidateAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V

    move v5, v7

    .line 310
    goto :goto_29

    .line 311
    :cond_3b
    sget-object v5, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_AUTH_READER_PERMISSION:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 312
    const-string v5, "reader"

    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/reader/app/AccountListActivity;->changePermission(Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    move v5, v7

    .line 313
    goto :goto_29

    .line 314
    :cond_4a
    sget-object v5, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_AUTH_CONTACTS_PERMISSION:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 315
    const-string v5, "cp"

    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/reader/app/AccountListActivity;->changePermission(Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    move v5, v7

    .line 316
    goto :goto_29

    .line 319
    .end local v1           #account:Lcom/google/android/accounts/Account;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_29
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->setContentView(I)V

    .line 179
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 182
    new-instance v0, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v0, Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    .line 194
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->updateViews()V

    .line 196
    if-nez p1, :cond_4c

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terms_accepted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/reader/app/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/app/AccountListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    :cond_4c
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 291
    sget-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_INVALIDATE_READER_TOKEN:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 292
    sget-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_INVALIDATE_CONTACTS_TOKEN:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 293
    sget-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_AUTH_READER_PERMISSION:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 294
    sget-object v0, Lcom/google/android/apps/reader/app/AccountListActivity;->MENU_AUTH_CONTACTS_PERMISSION:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 295
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 478
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 479
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->cancel()V

    .line 208
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 209
    return-void
.end method

.method public onGetAccountsResult([Lcom/google/android/accounts/Account;)V
    .registers 4
    .parameter "accounts"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/AccountListActivity;->setIsSyncable([Lcom/google/android/accounts/Account;)V

    .line 398
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->changeAccounts(Ljava/util/List;)V

    .line 399
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->updateViews()V

    .line 400
    return-void
.end method

.method public onGetAuthTokenResult(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "account"
    .parameter "authTokenType"
    .parameter "result"

    .prologue
    .line 419
    const-string v2, "intent"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 420
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_12

    .line 422
    invoke-static {p2}, Lcom/google/android/apps/reader/app/AccountListActivity;->getRequestCodeForAuthTokenType(Ljava/lang/String;)I

    move-result v1

    .line 423
    .local v1, requestCode:I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/app/AccountListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 429
    .end local v1           #requestCode:I
    :goto_11
    return-void

    .line 426
    :cond_12
    invoke-static {p2}, Lcom/google/android/apps/reader/app/AccountListActivity;->getNextAuthTokenType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    .line 427
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->continueSignIn()V

    goto :goto_11
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 461
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 464
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->cancel()V

    .line 465
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->cancelSyncPreferences()V

    .line 467
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 470
    const-string v0, "reader"

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    .line 471
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->continueSignIn()V

    .line 472
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->updateViews()V

    .line 473
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 504
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 512
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 506
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/preference/LocalPreferences;->setShowAllAccounts(Landroid/content/SharedPreferences;Z)Z

    move v0, v2

    .line 507
    goto :goto_c

    .line 509
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0, v2}, Lcom/google/android/apps/reader/preference/LocalPreferences;->setShowAllAccounts(Landroid/content/SharedPreferences;Z)Z

    move v0, v2

    .line 510
    goto :goto_c

    .line 504
    :pswitch_data_1c
    .packed-switch 0x7f0b006d
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 494
    const v0, 0x7f0b006d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 495
    const v1, 0x7f0b006e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 496
    iget-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mLocalPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getShowAllAccounts(Landroid/content/SharedPreferences;)Z

    move-result v2

    .line 497
    sget-boolean v3, Lcom/google/android/apps/reader/app/AccountListActivity;->SHOW_ALL_ACCOUNTS:Z

    if-nez v3, :cond_3e

    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->isLoading()Z

    move-result v3

    if-nez v3, :cond_3e

    if-nez v2, :cond_3e

    move v3, v5

    :goto_26
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 498
    sget-boolean v0, Lcom/google/android/apps/reader/app/AccountListActivity;->SHOW_ALL_ACCOUNTS:Z

    if-nez v0, :cond_40

    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->isLoading()Z

    move-result v0

    if-nez v0, :cond_40

    if-eqz v2, :cond_40

    move v0, v5

    :goto_36
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 499
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0

    :cond_3e
    move v3, v4

    .line 497
    goto :goto_26

    :cond_40
    move v0, v4

    .line 498
    goto :goto_36
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string v1, "reader:account_list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/accounts/Account;>;"
    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->changeAccounts(Ljava/util/List;)V

    .line 225
    const-string v1, "reader:account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/accounts/Account;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 226
    const-string v1, "reader:auth_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    .line 227
    const-string v1, "reader:activity_result_pending"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mActivityResultPending:Z

    .line 228
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccountHelper:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    :cond_b
    :goto_b
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->updateViews()V

    .line 250
    return-void

    .line 235
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v0, :cond_1b

    .line 236
    iget-boolean v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mActivityResultPending:Z

    if-nez v0, :cond_b

    .line 242
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->continueSignIn()V

    goto :goto_b

    .line 247
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->getAccounts()V

    goto :goto_b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    const-string v0, "reader:account_list"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAdapter:Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/app/AccountListActivity$AccountAdapter;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 215
    const-string v0, "reader:account"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    const-string v0, "reader:auth_token"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mAuthToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "reader:activity_result_pending"

    iget-boolean v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mActivityResultPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 520
    const-string v0, "show_all_accounts"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 521
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 527
    :cond_e
    :goto_e
    return-void

    .line 524
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->getAccounts()V

    .line 525
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity;->updateViews()V

    goto :goto_e
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 531
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity;->mActivityResultPending:Z

    .line 533
    return-void
.end method
