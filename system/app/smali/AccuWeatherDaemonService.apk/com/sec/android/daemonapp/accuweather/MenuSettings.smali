.class public Lcom/sec/android/daemonapp/accuweather/MenuSettings;
.super Landroid/preference/PreferenceActivity;
.source "MenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoRefresh:I

.field mCtx:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

.field private mTempScale:I

.field private pAppAutoRefresh:Landroid/preference/ListPreference;

.field private pAppTempScale:Landroid/preference/ListPreference;

.field private refreshItems:[Ljava/lang/String;

.field private refreshItemsValue:[Ljava/lang/String;

.field private refreshTimes:[I

.field private settingvalue:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    iput v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    .line 29
    iput v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItems:[Ljava/lang/String;

    .line 35
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_36

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshTimes:[I

    return-void

    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 8

    .prologue
    const v6, 0x7f060004

    const v5, 0x7f060001

    const/4 v4, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 76
    .local v1, root:Landroid/preference/PreferenceScreen;
    iget v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->settingvalue:I

    if-ne v3, v4, :cond_2e

    .line 77
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 78
    .local v2, unitPref:Landroid/preference/ListPreference;
    const-string v3, "Unit"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 79
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 81
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 82
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 83
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 86
    .end local v2           #unitPref:Landroid/preference/ListPreference;
    :cond_2e
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, refreshPref:Landroid/preference/ListPreference;
    const-string v3, "AutoRefresh"

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 89
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 91
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    return-object v1
.end method

.method private static getDateTimeString(JLandroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "timemills"
    .parameter "ctx"

    .prologue
    .line 332
    :try_start_0
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 333
    .local v1, dateformat:Ljava/text/DateFormat;
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 335
    .local v3, timeformat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 336
    .local v0, date:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result-object v4

    .line 339
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateformat:Ljava/text/DateFormat;
    .end local v3           #timeformat:Ljava/text/DateFormat;
    :goto_2c
    return-object v4

    .line 338
    :catch_2d
    move-exception v2

    .line 339
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_2c
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_autorefresh_interval"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    .line 103
    iget v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->settingvalue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aw_daemon_service_key_temp_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    .line 106
    const-string v0, "Unit"

    invoke-virtual {p0, v0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    .line 107
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    :cond_2d
    const-string v0, "AutoRefresh"

    invoke-virtual {p0, v0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    .line 111
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    return-void
.end method

.method private setEntries()V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 117
    iget v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->settingvalue:I

    if-ne v1, v5, :cond_2f

    .line 118
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    new-array v2, v4, [Ljava/lang/String;

    const v3, 0x7f060031

    invoke-virtual {p0, v3}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f060030

    invoke-virtual {p0, v3}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 124
    :cond_2f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshTimes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6f

    .line 126
    if-nez v0, :cond_45

    .line 127
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 124
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 128
    :cond_45
    if-ne v0, v5, :cond_53

    .line 129
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_42

    .line 131
    :cond_53
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f060007

    invoke-virtual {p0, v2}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshTimes:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_42

    .line 133
    :cond_6f
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItems:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method private setValues()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 140
    iget v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->settingvalue:I

    if-ne v3, v5, :cond_48

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "aw_daemon_service_key_temp_scale"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    .line 142
    const-string v3, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tmp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    if-nez v3, :cond_70

    .line 147
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v6, 0x7f060030

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, mTemp:Ljava/lang/String;
    :goto_39
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v6, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    if-ne v3, v5, :cond_7a

    move v3, v4

    :goto_45
    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 158
    .end local v2           #mTemp:Ljava/lang/String;
    :cond_48
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->getAutoRefreshTime()I

    move-result v0

    .line 160
    .local v0, autorefresh:I
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "aw_daemon_service_key_autorefresh_interval"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    .line 162
    if-nez v0, :cond_7c

    .line 163
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, mAutoRefreshValue:Ljava/lang/String;
    :goto_65
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 175
    return-void

    .line 150
    .end local v0           #autorefresh:I
    .end local v1           #mAutoRefreshValue:Ljava/lang/String;
    :cond_70
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v6, 0x7f060031

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #mTemp:Ljava/lang/String;
    goto :goto_39

    :cond_7a
    move v3, v5

    .line 153
    goto :goto_45

    .line 165
    .end local v2           #mTemp:Ljava/lang/String;
    .restart local v0       #autorefresh:I
    :cond_7c
    if-ne v0, v5, :cond_88

    .line 166
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #mAutoRefreshValue:Ljava/lang/String;
    goto :goto_65

    .line 169
    .end local v1           #mAutoRefreshValue:Ljava/lang/String;
    :cond_88
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v6, 0x7f060007

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshTimes:[I

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #mAutoRefreshValue:Ljava/lang/String;
    goto :goto_65
.end method

.method private setValues2()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 178
    iget v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->settingvalue:I

    if-ne v2, v4, :cond_22

    .line 180
    iget v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    if-nez v2, :cond_3c

    .line 181
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v5, 0x7f060030

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, mTemp:Ljava/lang/String;
    :goto_13
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    iget v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    if-ne v2, v4, :cond_46

    move v2, v3

    :goto_1f
    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 192
    .end local v1           #mTemp:Ljava/lang/String;
    :cond_22
    iget v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    if-nez v2, :cond_48

    .line 193
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, mAutoRefreshValue:Ljava/lang/String;
    :goto_2f
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 204
    return-void

    .line 184
    .end local v0           #mAutoRefreshValue:Ljava/lang/String;
    :cond_3c
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v5, 0x7f060031

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #mTemp:Ljava/lang/String;
    goto :goto_13

    :cond_46
    move v2, v4

    .line 187
    goto :goto_1f

    .line 195
    .end local v1           #mTemp:Ljava/lang/String;
    :cond_48
    iget v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    if-ne v2, v4, :cond_56

    .line 196
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mAutoRefreshValue:Ljava/lang/String;
    goto :goto_2f

    .line 199
    .end local v0           #mAutoRefreshValue:Ljava/lang/String;
    :cond_56
    iget-object v2, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    const v5, 0x7f060007

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshTimes:[I

    iget v7, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mAutoRefreshValue:Ljava/lang/String;
    goto :goto_2f
.end method


# virtual methods
.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->close()V

    .line 63
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    .line 65
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppTempScale:Landroid/preference/ListPreference;

    .line 66
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->pAppAutoRefresh:Landroid/preference/ListPreference;

    .line 67
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItems:[Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->refreshTimes:[I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->settingvalue:I

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iput-object p0, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SETTING_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->settingvalue:I

    .line 47
    new-instance v1, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    invoke-direct {v1, p0}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mDbHelper:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    .line 49
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->init()V

    .line 52
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setEntries()V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setValues()V

    .line 55
    const-string v1, ""

    const-string v2, "----------------------- Setting.System at onCreate -----------------------"

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->writeLog()V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->cleanResource()V

    .line 292
    const-string v0, ""

    const-string v1, "----------------------- onDestroy---------------------------"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setValues()V

    .line 276
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 277
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 16
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/high16 v12, 0x800

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Unit"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 207
    const-string v9, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Untset"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v6, p1

    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p1

    .line 208
    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 270
    .end local p1
    :cond_4f
    :goto_4f
    return v8

    .line 212
    .restart local p1
    :cond_50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_13c

    move v4, v7

    .line 214
    .local v4, result:I
    :goto_5b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "TEMPSCALE"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iput v4, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mTempScale:I

    .line 217
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v2}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0, v11, v2}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setResult(ILandroid/content/Intent;)V

    .line 222
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v3, intent2:Landroid/content/Intent;
    const-string v6, "TEMP"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v6, "MENUNUM"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    iget-object v6, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    invoke-static {v6, v8, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 228
    .local v5, sender:Landroid/app/PendingIntent;
    :try_start_8e
    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_91
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8e .. :try_end_91} :catch_13f

    .line 233
    :goto_91
    iget-object v6, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPackages(Landroid/content/Context;)V

    .line 236
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setValues2()V

    .line 239
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #intent2:Landroid/content/Intent;
    .end local v4           #result:I
    .end local v5           #sender:Landroid/app/PendingIntent;
    :cond_99
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v9, "AutoRefresh"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_139

    .line 240
    const-string v9, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AtRfset"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v6, p1

    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mAutoRefresh:I

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v6, "AUTOREFRESH"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v2}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0, v11, v2}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setResult(ILandroid/content/Intent;)V

    .line 253
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v3       #intent2:Landroid/content/Intent;
    const-string v6, "AUTOREFRESH"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v6, "MENUNUM"

    const/4 v9, 0x2

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v6, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    invoke-static {v6, v8, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 260
    .restart local v5       #sender:Landroid/app/PendingIntent;
    :try_start_12e
    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_131
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_12e .. :try_end_131} :catch_145

    .line 265
    :goto_131
    iget-object v6, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->sendPackages(Landroid/content/Context;)V

    .line 267
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setValues2()V

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #intent2:Landroid/content/Intent;
    .end local v5           #sender:Landroid/app/PendingIntent;
    :cond_139
    move v8, v7

    .line 270
    goto/16 :goto_4f

    .restart local p1
    :cond_13c
    move v4, v8

    .line 212
    goto/16 :goto_5b

    .line 229
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #intent2:Landroid/content/Intent;
    .restart local v4       #result:I
    .restart local v5       #sender:Landroid/app/PendingIntent;
    :catch_13f
    move-exception v1

    .line 230
    .local v1, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto/16 :goto_91

    .line 262
    .end local v1           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v4           #result:I
    .end local p1
    :catch_145
    move-exception v1

    .line 263
    .restart local v1       #e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_131
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->setValues()V

    .line 282
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 283
    return-void
.end method

.method public writeLog()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 298
    const-wide/16 v1, 0x0

    .line 301
    .local v1, timeValue:J
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_updated_time"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_d} :catch_117

    move-result-wide v1

    .line 307
    :goto_e
    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->mCtx:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getDateTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, updateTime:Ljava/lang/String;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n SerSta : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_service_status"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AppSerSta : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_app_service_status"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_loc_code"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", AR : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_autorefresh_interval"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n CT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", HT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_high_temp"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LT  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_low_temp"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", TS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", IN : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_icon_num"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", WT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/MenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", L UT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 302
    .end local v3           #updateTime:Ljava/lang/String;
    :catch_117
    move-exception v0

    .line 304
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, ""

    const-string v5, "aw_daemon_service_key_updated_time has not been set yet."

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method
