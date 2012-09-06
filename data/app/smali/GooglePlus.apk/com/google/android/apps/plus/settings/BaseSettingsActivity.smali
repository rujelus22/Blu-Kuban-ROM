.class public Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "BaseSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mMasterSwitch:Landroid/widget/Switch;

.field protected mViewNavigationRecorded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->GENERAL_SETTINGS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    sput-object v0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    return-void
.end method

.method private inMyPackage(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 165
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 102
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_b

    .line 103
    sget-object v1, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordReverseViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 105
    :cond_b
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 106
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 170
    .local v0, account:Landroid/os/Parcelable;
    if-nez v0, :cond_f

    move-object v0, v1

    .line 175
    .end local v0           #account:Landroid/os/Parcelable;
    :goto_e
    return-object v0

    .line 172
    .restart local v0       #account:Landroid/os/Parcelable;
    :cond_f
    instance-of v2, v0, Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v2, :cond_16

    .line 173
    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_e

    :cond_16
    move-object v0, v1

    .line 175
    goto :goto_e
.end method

.method protected getMasterSwitch()Landroid/widget/Switch;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method protected getRingtoneName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "ringtonePath"
    .parameter "key"
    .parameter "defaultPath"

    .prologue
    .line 126
    if-nez p1, :cond_a

    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1a

    .line 134
    :cond_12
    const v3, 0x7f08011b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    :goto_19
    return-object v3

    .line 137
    :cond_1a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 138
    .local v2, ringtoneUri:Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 139
    .local v1, ringtone:Landroid/media/Ringtone;
    if-nez v1, :cond_26

    const/4 v3, 0x0

    goto :goto_19

    :cond_26
    invoke-virtual {v1, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19
.end method

.method protected hookMasterSwitch(Landroid/preference/PreferenceCategory;Landroid/preference/CheckBoxPreference;)V
    .registers 10
    .parameter "category"
    .parameter "preference"

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 193
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_5e

    if-eqz p2, :cond_5e

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 195
    :cond_18
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    .line 196
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 197
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 199
    .local v1, padding:I
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 200
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 202
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 207
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;

    invoke-direct {v3, p0, p2}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;-><init>(Lcom/google/android/apps/plus/settings/BaseSettingsActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    if-nez p1, :cond_5f

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #padding:I
    :cond_5e
    :goto_5e
    return-void

    .line 228
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v1       #padding:I
    :cond_5f
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1c

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1c
    if-eqz p1, :cond_21

    :goto_1e
    iput-boolean v1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mViewNavigationRecorded:Z

    .line 86
    return-void

    .line 85
    :cond_21
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 116
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 112
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->finish()V

    .line 113
    const/4 v0, 0x1

    goto :goto_8

    .line 110
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 93
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mViewNavigationRecorded:Z

    if-nez v1, :cond_15

    if-eqz v0, :cond_15

    .line 94
    sget-object v1, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->mViewNavigationRecorded:Z

    .line 97
    :cond_15
    return-void
.end method

.method protected putAccountExtra(Landroid/preference/PreferenceGroup;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "group"
    .parameter "account"

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_5
    if-ge v0, v2, :cond_28

    .line 144
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 145
    .local v3, p:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1c

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->inMyPackage(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 148
    const-string v4, "account"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    :cond_1c
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_25

    .line 151
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3           #p:Landroid/preference/Preference;
    invoke-virtual {p0, v3, p2}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->putAccountExtra(Landroid/preference/PreferenceGroup;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 143
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 154
    .end local v1           #intent:Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method public startExternalActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 121
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
