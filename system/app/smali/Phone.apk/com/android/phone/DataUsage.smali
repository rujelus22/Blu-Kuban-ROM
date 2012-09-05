.class public Lcom/android/phone/DataUsage;
.super Landroid/preference/PreferenceActivity;
.source "DataUsage.java"


# instance fields
.field private mCurrentUsagePref:Landroid/preference/Preference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mHelpPref:Landroid/preference/Preference;

.field private mHelpUri:Ljava/lang/String;

.field private mThrottleManager:Landroid/net/ThrottleManager;

.field private mThrottleRatePref:Landroid/preference/Preference;

.field private mTimeFramePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "throttle"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ThrottleManager;

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleManager:Landroid/net/ThrottleManager;

    .line 53
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->addPreferencesFromResource(I)V

    .line 55
    const-string v0, "throttle_current_usage"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 56
    const-string v0, "throttle_time_frame"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mTimeFramePref:Landroid/preference/Preference;

    .line 57
    const-string v0, "throttle_rate"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleRatePref:Landroid/preference/Preference;

    .line 58
    const-string v0, "throttle_help"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    .line 60
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0}, Landroid/net/ThrottleManager;->getHelpUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    if-nez v0, :cond_56

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    :goto_48
    new-instance v0, Lcom/android/phone/DataUsageListener;

    iget-object v1, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/DataUsage;->mTimeFramePref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/DataUsage;->mThrottleRatePref:Landroid/preference/Preference;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 69
    return-void

    .line 64
    :cond_56
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    const v1, 0x7f0e00d6

    invoke-virtual {p0, v1}, Lcom/android/phone/DataUsage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_48
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 81
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_14

    .line 89
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    .local v0, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    .line 96
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_14
    :goto_14
    const/4 v1, 0x1

    return v1

    .line 91
    :catch_16
    move-exception v1

    goto :goto_14
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 75
    return-void
.end method
