.class public Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;
.super Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.source "MessengerSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;,
        Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$TimeoutRunnable;,
        Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;
    }
.end annotation


# instance fields
.field private mAclSummaryToSet:Ljava/lang/Integer;

.field private mAclValueToSet:Ljava/lang/String;

.field private mCurrentBackend:Ljava/lang/String;

.field private mRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;-><init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 274
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclValueToSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclSummaryToSet:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mCurrentBackend:Ljava/lang/String;

    return-object v0
.end method

.method private static isDebugBuild()Z
    .registers 1

    .prologue
    .line 288
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->debuggable()Z

    move-result v0

    return v0
.end method

.method private processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V
    .registers 11
    .parameter "command"

    .prologue
    const v8, 0x7f080001

    const/4 v7, 0x1

    .line 248
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    .line 249
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSetAclsResponse()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 250
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v4

    .line 251
    .local v4, response:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    if-eqz v4, :cond_58

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->hasStatus()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v5

    sget-object v6, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    if-ne v5, v6, :cond_58

    .line 253
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 255
    .local v0, aclPreference:Landroid/preference/ListPreference;
    iget-object v5, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclValueToSet:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclSummaryToSet:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 258
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 260
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 261
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclValueToSet:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->dismissDialog(I)V

    .line 265
    iget-object v5, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    .end local v0           #aclPreference:Landroid/preference/ListPreference;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #response:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    :goto_57
    return-void

    .line 270
    :cond_58
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->dismissDialog(I)V

    .line 271
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->showDialog(I)V

    goto :goto_57
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f080004

    .line 124
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    if-eqz p1, :cond_41

    .line 127
    const-string v10, "request_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 128
    const-string v10, "request_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    .line 130
    :cond_1d
    const-string v10, "acl_value"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 131
    const-string v10, "acl_value"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclValueToSet:Ljava/lang/String;

    .line 133
    :cond_2d
    const-string v10, "acl_summary_string_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 134
    const-string v10, "acl_summary_string_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclSummaryToSet:Ljava/lang/Integer;

    .line 138
    :cond_41
    const v10, 0x7f05000e

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->addPreferencesFromResource(I)V

    .line 139
    invoke-static {}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->isDebugBuild()Z

    move-result v10

    if-eqz v10, :cond_78

    .line 140
    const v10, 0x7f05000d

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 142
    .local v2, backend:Landroid/preference/Preference;
    new-instance v10, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;

    invoke-direct {v10, p0, v12}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;)V

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 145
    .local v8, settings:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f080002

    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mCurrentBackend:Ljava/lang/String;

    .line 150
    .end local v2           #backend:Landroid/preference/Preference;
    .end local v8           #settings:Landroid/content/SharedPreferences;
    :cond_78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 153
    .local v5, prefs:Landroid/content/SharedPreferences;
    const v10, 0x7f080001

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, key:Ljava/lang/String;
    const/high16 v10, 0x7f08

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, acl:Ljava/lang/String;
    const/4 v9, -0x1

    .line 157
    .local v9, subtitle:I
    const v10, 0x7f0803af

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 158
    const v9, 0x7f0802e0

    .line 165
    :cond_9e
    :goto_9e
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 166
    .local v1, aclPreference:Landroid/preference/Preference;
    new-instance v10, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;

    invoke-direct {v10, p0}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)V

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const/4 v10, -0x1

    if-eq v9, v10, :cond_b0

    .line 168
    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 171
    :cond_b0
    const v10, 0x7f08000d

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 173
    .local v7, ringtonePreference:Landroid/preference/Preference;
    const v10, 0x7f08000c

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, defaultRingtonePath:Ljava/lang/String;
    invoke-virtual {p0, v12, v4, v3}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getRingtoneName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, ringtoneName:Ljava/lang/String;
    new-instance v10, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;

    invoke-direct {v10, p0, v4, v3}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/BaseSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    if-eqz v6, :cond_d3

    .line 179
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    :cond_d3
    return-void

    .line 159
    .end local v1           #aclPreference:Landroid/preference/Preference;
    .end local v3           #defaultRingtonePath:Ljava/lang/String;
    .end local v6           #ringtoneName:Ljava/lang/String;
    .end local v7           #ringtonePreference:Landroid/preference/Preference;
    :cond_d4
    const v10, 0x7f0803b0

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e5

    .line 160
    const v9, 0x7f0802e2

    goto :goto_9e

    .line 161
    :cond_e5
    const v10, 0x7f0803b1

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 162
    const v9, 0x7f0802e4

    goto :goto_9e
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 228
    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    .line 231
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 232
    .local v1, newDialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0802e5

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    const v2, 0x7f0802e6

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 235
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 244
    .end local v1           #newDialog:Landroid/app/ProgressDialog;
    :cond_24
    :goto_24
    return-object v1

    .line 237
    :cond_25
    const/4 v2, 0x2

    if-ne p1, v2, :cond_24

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0802e7

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 240
    const v2, 0x7f0802e8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_24
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onPause()V

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 210
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 185
    invoke-super {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onResume()V

    .line 187
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_31

    .line 189
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->isRequestPending(I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 190
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-result-object v1

    .line 191
    .local v1, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 192
    invoke-virtual {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    .line 193
    .local v0, command:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    .line 203
    .end local v0           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .end local v1           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_31
    :goto_31
    return-void

    .line 195
    .restart local v1       #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_32
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->dismissDialog(I)V

    .line 196
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->showDialog(I)V

    goto :goto_31

    .line 200
    .end local v1           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_3b
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_31
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 216
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclValueToSet:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 219
    const-string v0, "acl_value"

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclValueToSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclSummaryToSet:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    .line 222
    const-string v0, "acl_summary_string_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclSummaryToSet:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    :cond_2c
    return-void
.end method
