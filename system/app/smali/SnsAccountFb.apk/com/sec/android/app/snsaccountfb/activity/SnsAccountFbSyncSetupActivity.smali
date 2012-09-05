.class public Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;
.super Landroid/preference/PreferenceActivity;
.source "SnsAccountFbSyncSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

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

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_44

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 99
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-ne v1, v3, :cond_41

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 107
    aget-object v1, v0, v4

    const-string v2, "com.android.calendar"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 108
    aget-object v1, v0, v4

    const-string v2, "com.android.calendar"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 111
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 112
    aget-object v1, v0, v4

    const-string v2, "com.sec.android.app.provider.sns"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 114
    aget-object v1, v0, v4

    const-string v2, "com.sec.android.app.provider.sns"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 118
    :cond_41
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->finish()V

    .line 121
    .end local v0           #account:[Landroid/accounts/Account;
    :cond_44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iput-object p0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mAppContext:Landroid/content/Context;

    .line 64
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v1, "snsaccount_sync_message"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mMessageCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v1, "snsaccount_sync_calendar"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbSyncSetupActivity;->mCalendarCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 126
    return-void
.end method
