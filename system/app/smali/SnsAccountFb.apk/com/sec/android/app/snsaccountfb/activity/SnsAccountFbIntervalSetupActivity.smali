.class public Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;
.super Landroid/preference/PreferenceActivity;
.source "SnsAccountFbIntervalSetupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;
    }
.end annotation


# instance fields
.field private mCalendarIntervalPreference:Landroid/preference/ListPreference;

.field private mMessageIntervalPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->setSyncInterval(II)V

    return-void
.end method

.method private getSyncIntervalFromDB(I)I
    .registers 12
    .parameter "syncType"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 222
    const/4 v6, -0x1

    .line 223
    .local v6, pollingTime:I
    const/4 v7, 0x0

    .line 232
    .local v7, snsCursor:Landroid/database/Cursor;
    if-ne p1, v4, :cond_37

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "time"

    aput-object v3, v2, v9

    const-string v3, "synctype = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "calendar"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 247
    :cond_1f
    :goto_1f
    if-eqz v7, :cond_53

    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 248
    const-string v0, "time"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_5b

    move-result v6

    .line 253
    :goto_31
    if-eqz v7, :cond_36

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_36
    return v6

    .line 238
    :cond_37
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "time"

    aput-object v3, v2, v9

    const-string v3, "synctype = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "message"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1f

    .line 250
    :cond_53
    :try_start_53
    const-string v0, "SnsAccountFb"

    const-string v1, "Fail to read sync_interval_value from DB."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_31

    .line 253
    :catchall_5b
    move-exception v0

    if-eqz v7, :cond_61

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0
.end method

.method private setSyncInterval(II)V
    .registers 14
    .parameter "syncType"
    .parameter "syncInterval"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 160
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    if-ne p1, v9, :cond_42

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "synctype = ?"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "calendar"

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    :cond_24
    :goto_24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v1, extra:Landroid/os/Bundle;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 183
    .local v0, account:[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_41

    .line 198
    if-ne p1, v9, :cond_77

    .line 199
    if-nez p2, :cond_56

    .line 200
    aget-object v3, v0, v8

    const-string v4, "com.android.calendar"

    invoke-static {v3, v4, v1}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    :cond_41
    :goto_41
    return-void

    .line 173
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v1           #extra:Landroid/os/Bundle;
    :cond_42
    if-ne p1, v10, :cond_24

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "synctype = ?"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "message"

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_24

    .line 202
    .restart local v0       #account:[Landroid/accounts/Account;
    .restart local v1       #extra:Landroid/os/Bundle;
    :cond_56
    aget-object v3, v0, v8

    const-string v4, "com.android.calendar"

    int-to-long v5, p2

    invoke-static {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 204
    const-string v3, "SnsAccountFb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCanlendarPeriodicSync spType :0 sec :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 207
    :cond_77
    if-ne p1, v10, :cond_41

    .line 208
    if-nez p2, :cond_83

    .line 209
    aget-object v3, v0, v8

    const-string v4, "com.sec.android.app.provider.sns"

    invoke-static {v3, v4, v1}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_41

    .line 212
    :cond_83
    aget-object v3, v0, v8

    const-string v4, "com.sec.android.app.provider.sns"

    int-to-long v5, p2

    invoke-static {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 214
    const-string v3, "SnsAccountFb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMessagePeriodicSync spType :0 sec :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, -0x1

    .line 69
    .local v1, returnedContactsPollingTime:I
    const/4 v0, -0x1

    .line 70
    .local v0, returnedCalendarPollingTime:I
    const/4 v2, -0x1

    .line 72
    .local v2, returnedMessagePollingTime:I
    const v3, 0x7f040002

    invoke-virtual {p0, v3}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->addPreferencesFromResource(I)V

    .line 73
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->getSyncIntervalFromDB(I)I

    move-result v0

    .line 88
    const-string v3, "calendar_interval"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    :cond_54
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->getSyncIntervalFromDB(I)I

    move-result v2

    .line 98
    const-string v3, "message_interval"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 103
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    :cond_88
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    .line 128
    const-string v3, "calendar_interval"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    move-object v3, p2

    .line 129
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    .local v2, value:I
    new-instance v0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;

    invoke-direct {v0, p0, v5, v2}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;-><init>(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;II)V

    .line 133
    .local v0, doBackgroundSetSyncInterval:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 136
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 138
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mCalendarIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    .end local v0           #doBackgroundSetSyncInterval:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    .end local v2           #value:I
    :cond_3f
    :goto_3f
    return v5

    .line 140
    .restart local p2
    :cond_40
    const-string v3, "message_interval"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    move-object v3, p2

    .line 141
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    .restart local v2       #value:I
    new-instance v0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v2}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;-><init>(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;II)V

    .line 145
    .restart local v0       #doBackgroundSetSyncInterval:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity$SyncIntervalThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 148
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 150
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3f
.end method
