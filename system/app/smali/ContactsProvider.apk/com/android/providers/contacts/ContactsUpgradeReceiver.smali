.class public Lcom/android/providers/contacts/ContactsUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x26e

    const/4 v10, 0x1

    .line 49
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 52
    .local v4, startTime:J
    const-string v7, "ContactsUpgradeReceiver"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v7, "db_version"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 56
    .local v1, prefVersion:I
    if-eq v1, v9, :cond_66

    .line 61
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "db_version"

    const/16 v9, 0x26e

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    .line 68
    .local v0, helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 69
    const-string v7, "ContactsUpgradeReceiver"

    const-string v8, "Creating or opening contacts database"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3f} :catch_67

    .line 71
    :try_start_3f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const v8, 0x7f050003

    invoke-virtual {p1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4e} :catch_81
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_4e} :catch_67

    .line 75
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    :cond_51
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->close()V

    .line 79
    invoke-static {p1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v3

    .line 80
    .local v3, profileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    invoke-virtual {v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    invoke-virtual {v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->close()V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Lcom/android/providers/contacts/EventLogTags;->writeContactsUpgradeReceiver(J)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_66} :catch_67

    .line 95
    .end local v0           #helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .end local v1           #prefVersion:I
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #profileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .end local v4           #startTime:J
    :cond_66
    :goto_66
    return-void

    .line 86
    :catch_67
    move-exception v6

    .line 89
    .local v6, t:Ljava/lang/Throwable;
    const-string v7, "ContactsUpgradeReceiver"

    const-string v8, "Error during upgrade attempt. Disabling receiver."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_66

    .line 73
    .end local v6           #t:Ljava/lang/Throwable;
    .restart local v0       #helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .restart local v1       #prefVersion:I
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #startTime:J
    :catch_81
    move-exception v7

    goto :goto_4e
.end method
