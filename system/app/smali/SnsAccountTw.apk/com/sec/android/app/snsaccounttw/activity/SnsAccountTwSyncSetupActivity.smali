.class public Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;
.super Landroid/preference/PreferenceActivity;
.source "SnsAccountTwSyncSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDoneButton:Landroid/widget/Button;

.field mMessageCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2e

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 78
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-ne v1, v3, :cond_2b

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 80
    aget-object v1, v0, v4

    const-string v2, "com.sec.android.app.provider.sns"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 82
    aget-object v1, v0, v4

    const-string v2, "com.sec.android.app.provider.sns"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 86
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->finish()V

    .line 89
    .end local v0           #account:[Landroid/accounts/Account;
    :cond_2e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iput-object p0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mAppContext:Landroid/content/Context;

    .line 58
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v1, "snsaccount_sync_message"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 94
    return-void
.end method
