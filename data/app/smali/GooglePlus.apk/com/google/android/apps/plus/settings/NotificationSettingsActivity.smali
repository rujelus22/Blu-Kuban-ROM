.class public Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;
.super Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.source "NotificationSettingsActivity.java"


# instance fields
.field private mGetNotificationsRequestId:Ljava/lang/Integer;

.field private mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mSettingsFromServer:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;-><init>(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mSettingsFromServer:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->setupPreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->updatedEnabledStates(Z)V

    return-void
.end method

.method private setupPreferences()V
    .registers 19

    .prologue
    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 158
    .local v12, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_9

    .line 159
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 162
    :cond_9
    const v17, 0x7f05000b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 165
    const v17, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 167
    .local v9, notify:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    .line 168
    .local v2, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v2, :cond_108

    .line 169
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 174
    :goto_39
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->hookMasterSwitch(Landroid/preference/PreferenceCategory;Landroid/preference/CheckBoxPreference;)V

    .line 175
    new-instance v17, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$2;

    invoke-direct/range {v17 .. v18}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$2;-><init>(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    const v17, 0x7f08000b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 185
    .local v14, ringtonePreference:Landroid/preference/Preference;
    const v17, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, defaultRingtonePath:Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v5}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getRingtoneName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, ringtoneName:Ljava/lang/String;
    new-instance v17, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v5}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/BaseSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    if-eqz v13, :cond_85

    .line 191
    invoke-virtual {v14, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    :cond_85
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mSettingsFromServer:Z

    move/from16 v17, v0

    if-eqz v17, :cond_114

    .line 195
    const/4 v6, 0x0

    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getCategoriesCount()I

    move-result v3

    .line 196
    .local v3, categoriesCount:I
    :goto_98
    if-ge v6, v3, :cond_161

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getCategories(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v4

    .line 200
    .local v4, category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    new-instance v11, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 201
    .local v11, prefCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDescription()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    add-int/lit8 v17, v6, 0x2

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 204
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    const/4 v7, 0x0

    .local v7, j:I
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getSettingsCount()I

    move-result v16

    .local v16, settingsCount:I
    :goto_cb
    move/from16 v0, v16

    if-ge v7, v0, :cond_111

    .line 208
    invoke-virtual {v4, v7}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getSettings(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v15

    .line 209
    .local v15, setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    new-instance v10, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 211
    .local v10, pref:Landroid/preference/CheckBoxPreference;
    const v17, 0x7f030061

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 212
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescription()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getEnabled()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    new-instance v17, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;-><init>(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    add-int/lit8 v7, v7, 0x1

    goto :goto_cb

    .line 171
    .end local v3           #categoriesCount:I
    .end local v4           #category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .end local v5           #defaultRingtonePath:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #pref:Landroid/preference/CheckBoxPreference;
    .end local v11           #prefCategory:Landroid/preference/PreferenceCategory;
    .end local v13           #ringtoneName:Ljava/lang/String;
    .end local v14           #ringtonePreference:Landroid/preference/Preference;
    .end local v15           #setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .end local v16           #settingsCount:I
    :cond_108
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_39

    .line 196
    .restart local v3       #categoriesCount:I
    .restart local v4       #category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .restart local v5       #defaultRingtonePath:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v8       #key:Ljava/lang/String;
    .restart local v11       #prefCategory:Landroid/preference/PreferenceCategory;
    .restart local v13       #ringtoneName:Ljava/lang/String;
    .restart local v14       #ringtonePreference:Landroid/preference/Preference;
    .restart local v16       #settingsCount:I
    :cond_111
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    .line 234
    .end local v3           #categoriesCount:I
    .end local v4           #category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v11           #prefCategory:Landroid/preference/PreferenceCategory;
    .end local v16           #settingsCount:I
    :cond_114
    new-instance v11, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 235
    .restart local v11       #prefCategory:Landroid/preference/PreferenceCategory;
    const v17, 0x7f0800d1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    const/16 v17, 0x7d0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 237
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    new-instance v10, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 240
    .local v10, pref:Landroid/preference/Preference;
    const v17, 0x7f030061

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 241
    const v17, 0x7f0800d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    new-instance v17, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;

    invoke-direct/range {v17 .. v18}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;-><init>(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 251
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v11           #prefCategory:Landroid/preference/PreferenceCategory;
    :cond_161
    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->updatedEnabledStates(Z)V

    .line 255
    return-void
.end method

.method private updatedEnabledStates(Z)V
    .registers 8
    .parameter "enabled"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 259
    .local v4, prefScreen:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .local v0, categoryCount:I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 260
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 261
    .local v3, pref:Landroid/preference/Preference;
    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 265
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_15
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 267
    .local v2, notificationsPref:Landroid/preference/Preference;
    if-eqz v2, :cond_26

    .line 268
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 270
    :cond_26
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    if-eqz p1, :cond_3d

    .line 69
    const-string v1, "pending_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 70
    const-string v1, "pending_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    .line 74
    :cond_19
    const-string v1, "settings_from_server"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 75
    const-string v1, "settings_from_server"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mSettingsFromServer:Z

    .line 78
    :cond_29
    const-string v1, "notification_settings"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 80
    :try_start_31
    const-string v1, "notification_settings"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    :try_end_3d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_31 .. :try_end_3d} :catch_3e

    .line 88
    :cond_3d
    :goto_3d
    return-void

    .line 82
    :catch_3e
    move-exception v0

    .line 83
    .local v0, ipbe:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mSettingsFromServer:Z

    goto :goto_3d
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 143
    packed-switch p1, :pswitch_data_1c

    .line 153
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 145
    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 147
    const v1, 0x7f0800c4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5

    .line 143
    :pswitch_data_1c
    .packed-switch 0x7f09003f
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onPause()V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 124
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const v2, 0x7f09003f

    .line 92
    invoke-super {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onResume()V

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 97
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    if-nez v1, :cond_25

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    if-nez v1, :cond_21

    .line 99
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->getNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    .line 100
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->showDialog(I)V

    .line 118
    :cond_20
    :goto_20
    return-void

    .line 102
    :cond_21
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->setupPreferences()V

    goto :goto_20

    .line 105
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    .line 108
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mSettingsFromServer:Z

    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->setupPreferences()V

    .line 111
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->dismissDialog(I)V

    goto :goto_20

    .line 114
    :cond_54
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->getNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    goto :goto_20
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 131
    const-string v0, "pending_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    if-eqz v0, :cond_21

    .line 135
    const-string v0, "notification_settings"

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 138
    :cond_21
    const-string v0, "settings_from_server"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mSettingsFromServer:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method
