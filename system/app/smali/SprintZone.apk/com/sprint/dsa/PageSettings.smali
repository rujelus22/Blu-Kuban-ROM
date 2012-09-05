.class public Lcom/sprint/dsa/PageSettings;
.super Landroid/preference/PreferenceActivity;
.source "PageSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone:PageSettings"


# instance fields
.field private final KEY_POLL_INTERVAL:Ljava/lang/String;

.field private mResources:Lcom/sprint/dsa/res/SzResources;

.field private m_context:Landroid/content/Context;

.field private m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

.field private m_metrics:Landroid/util/DisplayMetrics;

.field private m_prefs:Lcom/sprint/dsa/Prefs;

.field private m_settings:Lcom/sprint/dsa/SzSettings;

.field private m_tapStage:I

.field private touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    const-string v0, "poll"

    iput-object v0, p0, Lcom/sprint/dsa/PageSettings;->KEY_POLL_INTERVAL:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/PageSettings;->m_tapStage:I

    .line 75
    new-instance v0, Lcom/sprint/dsa/PageSettings$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageSettings$1;-><init>(Lcom/sprint/dsa/PageSettings;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageSettings;->touchListener:Landroid/view/View$OnTouchListener;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/PageSettings;)I
    .registers 2
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/sprint/dsa/PageSettings;->m_tapStage:I

    return v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/PageSettings;)Landroid/util/DisplayMetrics;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sprint/dsa/PageSettings;->m_metrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/PageSettings;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/sprint/dsa/PageSettings;->m_tapStage:I

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/dsa/PageSettings;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/dsa/PageSettings;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 12

    .prologue
    const v10, 0x7f08001c

    .line 106
    invoke-virtual {p0}, Lcom/sprint/dsa/PageSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 108
    .local v3, root:Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/sprint/dsa/PageSettings;->m_settings:Lcom/sprint/dsa/SzSettings;

    invoke-virtual {v6}, Lcom/sprint/dsa/SzSettings;->getAllGroups()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_64

    .line 126
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, category:Landroid/preference/PreferenceCategory;
    const v6, 0x7f08001e

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 128
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 132
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 133
    .local v2, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v2, v10}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 134
    const-string v6, "poll"

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 135
    iget-object v6, p0, Lcom/sprint/dsa/PageSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6}, Lcom/sprint/dsa/Prefs;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 136
    const v6, 0x7f060002

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 137
    const v6, 0x7f060003

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 142
    :goto_4a
    iget-object v6, p0, Lcom/sprint/dsa/PageSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6}, Lcom/sprint/dsa/Prefs;->getPollInterval()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v10}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 144
    const v6, 0x7f08001d

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 147
    return-object v3

    .line 108
    .end local v0           #category:Landroid/preference/PreferenceCategory;
    .end local v2           #listPref:Landroid/preference/ListPreference;
    :cond_64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 110
    .local v1, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 111
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Lcom/sprint/dsa/SzSettings$SettingGroup;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    invoke-virtual {v1}, Lcom/sprint/dsa/SzSettings$SettingGroup;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_81
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprint/dsa/SzSettings$Setting;

    .line 116
    .local v4, setting:Lcom/sprint/dsa/SzSettings$Setting;
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 117
    .local v5, settingPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Lcom/sprint/dsa/SzSettings$Setting;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4}, Lcom/sprint/dsa/SzSettings$Setting;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v4}, Lcom/sprint/dsa/SzSettings$Setting;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 121
    invoke-virtual {v4}, Lcom/sprint/dsa/SzSettings$Setting;->isShowing()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_81

    .line 139
    .end local v1           #group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    .end local v4           #setting:Lcom/sprint/dsa/SzSettings$Setting;
    .end local v5           #settingPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #listPref:Landroid/preference/ListPreference;
    :cond_b6
    const/high16 v6, 0x7f06

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 140
    const v6, 0x7f060001

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4a
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sprint/dsa/PageSettings;->mResources:Lcom/sprint/dsa/res/SzResources;

    if-nez v0, :cond_f

    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageSettings;->mResources:Lcom/sprint/dsa/res/SzResources;

    .line 255
    :cond_f
    iget-object v0, p0, Lcom/sprint/dsa/PageSettings;->mResources:Lcom/sprint/dsa/res/SzResources;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    .line 48
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PageSettings;->requestWindowFeature(I)Z

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f020014

    invoke-virtual {p0, v2, v1}, Lcom/sprint/dsa/PageSettings;->setFeatureDrawableResource(II)V

    .line 54
    new-instance v1, Lcom/sprint/dsa/Prefs;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprint/dsa/PageSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    .line 58
    :try_start_14
    new-instance v1, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 59
    iget-object v1, p0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_28} :catch_57

    .line 64
    :cond_28
    :goto_28
    iput-object p0, p0, Lcom/sprint/dsa/PageSettings;->m_context:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/sprint/dsa/PageSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 66
    .local v0, myView:Landroid/view/View;
    iget-object v1, p0, Lcom/sprint/dsa/PageSettings;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object v1, p0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->getSettings()Lcom/sprint/dsa/SzSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/PageSettings;->m_settings:Lcom/sprint/dsa/SzSettings;

    .line 69
    invoke-direct {p0}, Lcom/sprint/dsa/PageSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 71
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/sprint/dsa/PageSettings;->m_metrics:Landroid/util/DisplayMetrics;

    .line 72
    invoke-virtual {p0}, Lcom/sprint/dsa/PageSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dsa/PageSettings;->m_metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    return-void

    .line 60
    .end local v0           #myView:Landroid/view/View;
    :catch_57
    move-exception v1

    goto :goto_28
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-virtual {p0}, Lcom/sprint/dsa/PageSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    .line 224
    const/4 v3, 0x0

    .line 226
    .local v3, showingCount:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    .local v1, pref:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/sprint/dsa/PageSettings;->m_settings:Lcom/sprint/dsa/SzSettings;

    invoke-virtual {v5}, Lcom/sprint/dsa/SzSettings;->getAllGroups()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_29

    .line 239
    if-nez v3, :cond_6c

    .line 240
    invoke-virtual {p0}, Lcom/sprint/dsa/PageSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Settings not saved, Please select at least one Sprint Zone category."

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 245
    :goto_28
    return v4

    .line 227
    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 228
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    invoke-virtual {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Notification"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_13

    .line 229
    invoke-virtual {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_44
    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/dsa/SzSettings$Setting;

    .line 232
    .local v2, setting:Lcom/sprint/dsa/SzSettings$Setting;
    invoke-virtual {v2}, Lcom/sprint/dsa/SzSettings$Setting;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-virtual {v2}, Lcom/sprint/dsa/SzSettings$Setting;->isShowing()Z

    move-result v8

    .line 232
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sprint/dsa/SzSettings$Setting;->setShow(Z)V

    .line 234
    invoke-virtual {v2}, Lcom/sprint/dsa/SzSettings$Setting;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_44

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 245
    .end local v0           #group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    .end local v2           #setting:Lcom/sprint/dsa/SzSettings$Setting;
    :cond_6c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_28
.end method

.method protected onPause()V
    .registers 20

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/dsa/PageSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    .line 166
    const/4 v12, 0x0

    .line 168
    .local v12, showingCount:I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 169
    .local v10, pref:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/PageSettings;->m_settings:Lcom/sprint/dsa/SzSettings;

    invoke-virtual {v15}, Lcom/sprint/dsa/SzSettings;->getAllGroups()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_14
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_a2

    .line 186
    if-nez v12, :cond_12d

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/dsa/PageSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "Setting not saved, no item is selected"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 197
    :goto_2b
    const-string v15, "poll"

    const-string v16, "-1"

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, poll:Ljava/lang/String;
    const-string v15, "-1"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_97

    .line 199
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 200
    .local v4, newPoll:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/PageSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v15}, Lcom/sprint/dsa/Prefs;->getPollInterval()J

    move-result-wide v15

    cmp-long v15, v4, v15

    if-eqz v15, :cond_97

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-static {v15, v4, v5}, Lcom/sprint/dsa/Reporting;->reportPollChange(Lcom/sprint/dsa/data/DbAdapter;J)V

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/PageSettings;->m_prefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v15, v4, v5}, Lcom/sprint/dsa/Prefs;->setPollInterval(J)V

    .line 204
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 205
    .local v13, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    add-long/2addr v15, v4

    move-wide v0, v15

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 206
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 207
    .local v6, nextUpdate:J
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v14, updateIntent:Landroid/content/Intent;
    const-class v15, Lcom/sprint/dsa/UpdateService;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 209
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v14, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 210
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    const-string v15, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sprint/dsa/PageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 211
    .local v2, alarmManager:Landroid/app/AlarmManager;
    const/4 v15, 0x1

    invoke-virtual {v2, v15, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 215
    .end local v2           #alarmManager:Landroid/app/AlarmManager;
    .end local v4           #newPoll:J
    .end local v6           #nextUpdate:J
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v13           #time:Landroid/text/format/Time;
    .end local v14           #updateIntent:Landroid/content/Intent;
    :cond_97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v15}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 217
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 218
    return-void

    .line 169
    .end local v9           #poll:Ljava/lang/String;
    :cond_a2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 170
    .local v3, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    invoke-virtual {v3}, Lcom/sprint/dsa/SzSettings$SettingGroup;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b0
    :goto_b0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sprint/dsa/SzSettings$Setting;

    .line 173
    .local v11, setting:Lcom/sprint/dsa/SzSettings$Setting;
    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_105

    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_105

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sprint/dsa/Reporting;->reportSettingRemove(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 179
    :cond_e3
    :goto_e3
    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    .line 180
    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->isShowing()Z

    move-result v18

    .line 179
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sprint/dsa/SzSettings$Setting;->setShow(Z)V

    .line 181
    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_b0

    add-int/lit8 v12, v12, 0x1

    goto :goto_b0

    .line 175
    :cond_105
    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->isShowing()Z

    move-result v17

    if-nez v17, :cond_e3

    .line 176
    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e3

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/sprint/dsa/SzSettings$Setting;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sprint/dsa/Reporting;->reportSettingAdd(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    goto :goto_e3

    .line 189
    .end local v3           #group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    .end local v11           #setting:Lcom/sprint/dsa/SzSettings$Setting;
    :cond_12d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/PageSettings;->m_settings:Lcom/sprint/dsa/SzSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/dsa/SzSettings;->saveToDb(Lcom/sprint/dsa/data/DbAdapter;)V

    goto/16 :goto_2b
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 155
    iget-object v0, p0, Lcom/sprint/dsa/PageSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 157
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/PageSettings;->m_tapStage:I

    .line 158
    return-void
.end method
