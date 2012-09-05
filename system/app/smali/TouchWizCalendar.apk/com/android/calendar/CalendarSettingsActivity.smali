.class public Lcom/android/calendar/CalendarSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final DAY_VIEW_EVENT_LIST:Ljava/lang/String;

.field static final DAY_VIEW_TIME_GRID:Ljava/lang/String;

.field static final DEFAULT_DAY_VIEW:Ljava/lang/String;

.field static final DEFAULT_DETAILED_VIEW:Ljava/lang/String;

.field static final DEFAULT_START_VIEW:Ljava/lang/String;

.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field private final SELECT_CALENDAR_ID:I

.field private isDefaultCalendar:Z

.field mAlertType:Landroid/preference/ListPreference;

.field private mCalendarSync:Ljava/lang/String;

.field private mCalendars:Ljava/lang/String;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCurrentCalendarId:I

.field private mCurrentRingtone:Ljava/lang/String;

.field mDayView:Landroid/preference/ListPreference;

.field private mDefaultCalendar:Ljava/lang/String;

.field mDefaultView:Landroid/preference/ListPreference;

.field mFirstDayOfWeek:Landroid/preference/ListPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field private mTZUpdater:Ljava/lang/Runnable;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrateWhen:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 75
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_START_VIEW:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DAY_VIEW_TIME_GRID:Ljava/lang/String;

    .line 108
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DAY_VIEW_EVENT_LIST:Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DAY_VIEW_TIME_GRID:Ljava/lang/String;

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 139
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->SELECT_CALENDAR_ID:I

    .line 143
    iput-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCurrentRingtone:Ljava/lang/String;

    .line 144
    iput-boolean v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->isDefaultCalendar:Z

    .line 145
    iput v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCurrentCalendarId:I

    .line 149
    iput-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mTZUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 153
    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private saveDefaultCalendar(I)V
    .registers 9
    .parameter "id"

    .prologue
    .line 408
    const-string v3, "_id=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/android/calendar/CalendarSettingsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    .line 410
    iget-object v3, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_56

    .line 411
    iget-object v3, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 412
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 413
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v3, "preference_default_calendar_sync_account"

    iget-object v4, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v3, "preference_default_calendar_owner_account"

    iget-object v4, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v3, "preference_default_calendar_sync_account_type"

    iget-object v4, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_56
    return-void
.end method

.method private setSummary()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 425
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 426
    const/4 v2, -0x1

    if-eq p2, v2, :cond_b

    .line 427
    iput-boolean v5, p0, Lcom/android/calendar/CalendarSettingsActivity;->isDefaultCalendar:Z

    .line 447
    :cond_a
    :goto_a
    return-void

    .line 431
    :cond_b
    packed-switch p1, :pswitch_data_3e

    goto :goto_a

    .line 433
    :pswitch_f
    const-string v2, "_id"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 434
    .local v0, CalendarId:I
    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarSettingsActivity;->saveDefaultCalendar(I)V

    .line 437
    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCurrentRingtone:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->isDefaultCalendar:Z

    if-ne v2, v3, :cond_a

    .line 438
    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v2}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 439
    .local v1, rintonePref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_alerts_ringtone"

    iget-object v4, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCurrentRingtone:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    iput-boolean v5, p0, Lcom/android/calendar/CalendarSettingsActivity;->isDefaultCalendar:Z

    .line 441
    iput v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCurrentCalendarId:I

    goto :goto_a

    .line 431
    :pswitch_data_3e
    .packed-switch 0x3e8
        :pswitch_f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19
    .parameter "icicle"

    .prologue
    .line 164
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v9

    .line 169
    .local v9, preferenceManager:Landroid/preference/PreferenceManager;
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 170
    .local v13, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "com.android.calendar_preferences"

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 173
    const v1, 0x7f050002

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarSettingsActivity;->addPreferencesFromResource(I)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 176
    .local v10, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 177
    const-string v1, "preferences_default_view"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    .line 178
    const-string v1, "preferences_day_view"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    .line 179
    const-string v1, "preferences_first_day_of_week"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 181
    .local v12, resource:Landroid/content/res/Resources;
    const v1, 0x7f0a002e

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendars:Ljava/lang/String;

    .line 182
    const v1, 0x7f0a008d

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarSync:Ljava/lang/String;

    .line 184
    const v1, 0x7f0a01a3

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultCalendar:Ljava/lang/String;

    .line 186
    const-string v1, "preferences_alerts_type"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    .line 187
    const-string v1, "preferences_alerts_vibrateWhen"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    .line 188
    const-string v1, "preferences_alerts_ringtone"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mRingtone:Landroid/preference/RingtonePreference;

    .line 190
    const-string v1, "preferences_home_tz_enabled"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    const-string v1, "preferences_home_tz"

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c7

    if-nez v14, :cond_d2

    .line 198
    :cond_c7
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v14

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 204
    :cond_d2
    new-instance v1, Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v14}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/CalendarSettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v2, Lcom/android/calendar/CalendarSettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v2, Lcom/android/calendar/CalendarSettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v15

    .line 209
    .local v15, tzName:Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a1

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    :goto_10c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences_alerts_ringtone"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, defaultRingtone:Ljava/lang/String;
    if-eqz v7, :cond_132

    const-string v1, "default"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 250
    :cond_132
    const-string v1, "content://media/internal/audio/media/67"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 251
    .local v16, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 252
    .local v8, internal_cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "title LIKE \'%On Time%\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 254
    if-eqz v8, :cond_180

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17d

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 260
    :cond_17d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 264
    .local v11, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_alerts_ringtone"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    .end local v8           #internal_cursor:Landroid/database/Cursor;
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_19d
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->setSummary()V

    .line 270
    return-void

    .line 212
    .end local v7           #defaultRingtone:Ljava/lang/String;
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10c
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 452
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_9
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 454
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 396
    packed-switch p1, :pswitch_data_a

    .line 403
    :pswitch_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 400
    :pswitch_8
    const/4 v0, 0x1

    goto :goto_7

    .line 396
    :pswitch_data_a
    .packed-switch 0x52
        :pswitch_8
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1a

    .line 377
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 378
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, tz:Ljava/lang/String;
    :goto_12
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x1

    .end local v0           #tz:Ljava/lang/String;
    :goto_16
    return v1

    .line 380
    :cond_17
    const-string v0, "auto"

    .restart local v0       #tz:Ljava/lang/String;
    goto :goto_12

    .line 382
    .end local v0           #tz:Ljava/lang/String;
    .restart local p2
    :cond_1a
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_32

    move-object v0, p2

    .line 383
    check-cast v0, Ljava/lang/String;

    .line 384
    .restart local v0       #tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 387
    .end local v0           #tz:Ljava/lang/String;
    :cond_32
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendars:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 280
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const-class v2, Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 328
    :goto_1e
    return v0

    .line 287
    :cond_1f
    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarSync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 288
    const-string v1, "authorities"

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v2, "authorities"

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "com.android.calendar"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    .line 296
    :cond_3f
    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultCalendar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 298
    iput-boolean v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->isDefaultCalendar:Z

    .line 300
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    const-class v1, Lcom/android/calendar/CalendarsListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-static {p0}, Lcom/android/calendar/Utils;->getCalendarsConditions(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 305
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v1, v6}, Lcom/android/calendar/CalendarSettingsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_6d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_83

    .line 307
    :cond_6d
    const-string v1, "_id=%d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v1, v6}, Lcom/android/calendar/CalendarSettingsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 310
    :cond_83
    if-eqz v1, :cond_a3

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 314
    iget v3, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCurrentCalendarId:I

    if-eqz v3, :cond_99

    .line 315
    const-string v1, "_id"

    iget v3, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCurrentCalendarId:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    :goto_93
    const/16 v1, 0x3e8

    invoke-virtual {p0, v2, v1}, Lcom/android/calendar/CalendarSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1e

    .line 317
    :cond_99
    const-string v3, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_93

    .line 321
    :cond_a3
    const-string v1, "_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_93

    .line 328
    :cond_a9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_1e
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 342
    const-string v0, "preferences_default_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 343
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    :cond_13
    :goto_13
    return-void

    .line 344
    :cond_14
    const-string v0, "preferences_day_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 345
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setDayView(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 348
    :cond_3a
    const-string v0, "preferences_first_day_of_week"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 349
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setFirstdayOfWeek(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 353
    :cond_60
    const-string v0, "preferences_alerts_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 354
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 355
    :cond_74
    const-string v0, "preferences_alerts_vibrateWhen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 356
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 357
    :cond_88
    const-string v0, "preferences_hide_declined"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "preferences_hide_contacts_events"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 358
    :cond_98
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "strKey"
    .parameter "strValue"

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.calendar.CHANGESHARE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    return-void
.end method
