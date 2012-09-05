.class public Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;
.super Landroid/preference/PreferenceActivity;
.source "SnsAccountMsSyncSetupActivity.java"

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
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2e

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 79
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-ne v1, v3, :cond_2b

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 81
    aget-object v1, v0, v4

    const-string v2, "com.sec.android.app.provider.sns"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 83
    aget-object v1, v0, v4

    const-string v2, "com.sec.android.app.provider.sns"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 87
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->finish()V

    .line 90
    .end local v0           #account:[Landroid/accounts/Account;
    :cond_2e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iput-object p0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mAppContext:Landroid/content/Context;

    .line 59
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v1, "snsaccount_sync_message"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 95
    return-void
.end method
