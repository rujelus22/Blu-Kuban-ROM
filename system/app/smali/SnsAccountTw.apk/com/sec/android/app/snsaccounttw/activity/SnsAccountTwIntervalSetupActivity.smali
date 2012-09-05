.class public Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;
.super Landroid/preference/PreferenceActivity;
.source "SnsAccountTwIntervalSetupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;
    }
.end annotation


# instance fields
.field private mMessageIntervalPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->setSyncInterval(II)V

    return-void
.end method

.method private getSyncIntervalFromDB(I)I
    .registers 11
    .parameter "syncType"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 129
    const/4 v6, -0x1

    .line 130
    .local v6, pollingTime:I
    const/4 v7, 0x0

    .line 132
    .local v7, snsCursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "time"

    aput-object v3, v2, v8

    const-string v3, "synctype = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "message"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 141
    :cond_20
    if-eqz v7, :cond_38

    :try_start_22
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 142
    const-string v0, "time"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_40

    move-result v6

    .line 147
    :goto_32
    if-eqz v7, :cond_37

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_37
    return v6

    .line 144
    :cond_38
    :try_start_38
    const-string v0, "SnsAccountTw"

    const-string v1, "Fail to read sync_interval_value from DB."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    goto :goto_32

    .line 147
    :catchall_40
    move-exception v0

    if-eqz v7, :cond_46

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_46
    throw v0
.end method

.method private setSyncInterval(II)V
    .registers 13
    .parameter "syncType"
    .parameter "syncInterval"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 100
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    if-ne p1, v9, :cond_24

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "synctype = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "message"

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    :cond_24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v1, extra:Landroid/os/Bundle;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 113
    .local v0, account:[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_41

    .line 114
    if-ne p1, v9, :cond_41

    .line 115
    if-nez p2, :cond_42

    .line 116
    aget-object v3, v0, v8

    const-string v4, "com.sec.android.app.provider.sns"

    invoke-static {v3, v4, v1}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    :cond_41
    :goto_41
    return-void

    .line 119
    :cond_42
    aget-object v3, v0, v8

    const-string v4, "com.sec.android.app.provider.sns"

    int-to-long v5, p2

    invoke-static {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 121
    const-string v3, "SnsAccountTw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMessagePeriodicSync spType :2 sec :"

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
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, -0x1

    .line 62
    .local v0, returnedMessagePollingTime:I
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->addPreferencesFromResource(I)V

    .line 63
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->getSyncIntervalFromDB(I)I

    move-result v0

    .line 68
    const-string v1, "message_interval"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    :cond_52
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 80
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 83
    const-string v3, "message_interval"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    move-object v3, p2

    .line 84
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, value:I
    new-instance v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;II)V

    .line 88
    .local v0, doBackgroundSetSyncInterval:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 91
    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity;->mMessageIntervalPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0           #doBackgroundSetSyncInterval:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwIntervalSetupActivity$SyncIntervalThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    .end local v2           #value:I
    :cond_3f
    const/4 v3, 0x1

    return v3
.end method
