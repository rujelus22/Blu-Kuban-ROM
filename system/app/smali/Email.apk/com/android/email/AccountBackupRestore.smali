.class public Lcom/android/email/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# static fields
.field private static ctx:Landroid/content/Context;

.field static mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static sBackupsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    .line 271
    new-instance v0, Lcom/android/email/AccountBackupRestore$1;

    invoke-direct {v0}, Lcom/android/email/AccountBackupRestore$1;-><init>()V

    sput-object v0, Lcom/android/email/AccountBackupRestore;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static backupAccounts(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 86
    const-string v0, "Email"

    const-string v1, "backupAccounts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_b
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/AccountBackupRestore;->doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V

    .line 100
    return-void
.end method

.method static declared-synchronized doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 155
    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    :try_start_3
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v1

    .line 156
    array-length v2, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 157
    invoke-virtual {v3, p1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 168
    :cond_13
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14d

    move-result-wide v7

    .line 169
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_1f

    .line 268
    :goto_1d
    monitor-exit v6

    return-void

    .line 175
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_14d

    move-result-object v1

    .line 178
    :goto_2f
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 179
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 181
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_5d

    .line 182
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_5d
    invoke-static {p0, v0}, Lcom/android/email/LegacyConversions;->makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;

    move-result-object v2

    .line 188
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z
    :try_end_64
    .catchall {:try_start_2f .. :try_end_64} :catchall_148

    move-result v3

    if-eqz v3, :cond_a8

    .line 190
    :try_start_67
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_148
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_70} :catch_150

    .line 196
    :try_start_70
    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 198
    if-eqz v4, :cond_7e

    .line 199
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 201
    :cond_7e
    const-string v4, "com.android.calendar"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 203
    if-eqz v4, :cond_8c

    .line 204
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 206
    :cond_8c
    const-string v4, "com.android.email.provider"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 209
    if-eqz v4, :cond_9a

    .line 210
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 215
    :cond_9a
    const-string v4, "tasks"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 216
    if-eqz v3, :cond_a8

    .line 217
    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x9

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 234
    :cond_a8
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 236
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    .line 237
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Lcom/android/email/Account;->setSyncScheduleData(Ljava/lang/String;)V

    .line 249
    :cond_125
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_131

    .line 250
    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 254
    :cond_131
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_13d

    .line 255
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 261
    :cond_13d
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 263
    invoke-virtual {v2, p1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V
    :try_end_146
    .catchall {:try_start_70 .. :try_end_146} :catchall_148

    goto/16 :goto_2f

    .line 266
    :catchall_148
    move-exception v0

    :try_start_149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_14d
    .catchall {:try_start_149 .. :try_end_14d} :catchall_14d

    .line 155
    :catchall_14d
    move-exception v0

    monitor-exit v6

    throw v0

    .line 192
    :catch_150
    move-exception v0

    .line 193
    :try_start_151
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_148

    goto/16 :goto_2f

    .line 266
    :cond_156
    :try_start_156
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_159
    .catchall {:try_start_156 .. :try_end_159} :catchall_14d

    goto/16 :goto_1d
.end method

.method static declared-synchronized doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z
    .registers 27
    .parameter "context"
    .parameter "preferences"
    .parameter "unitTest"

    .prologue
    .line 352
    const-class v23, Lcom/android/email/AccountBackupRestore;

    monitor-enter v23

    const/16 v20, 0x0

    .line 353
    .local v20, sncAccountAvailable:Z
    const/16 v19, 0x0

    .line 358
    .local v19, sncAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_7
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "typeMsg=0"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v9}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_178

    move-result v16

    .line 360
    .local v16, numAccounts:I
    if-lez v16, :cond_17

    .line 361
    const/4 v3, 0x0

    .line 515
    :goto_15
    monitor-exit v23

    return v3

    .line 364
    :cond_17
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v12

    .line 365
    .local v12, backups:[Lcom/android/email/Account;
    array-length v3, v12

    if-nez v3, :cond_20

    .line 366
    const/4 v3, 0x0

    goto :goto_15

    .line 369
    :cond_20
    sput-object p0, Lcom/android/email/AccountBackupRestore;->ctx:Landroid/content/Context;

    .line 371
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Restoring Email Accounts, found "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v9, v12

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object v10, v12

    .local v10, arr$:[Lcom/android/email/Account;
    array-length v15, v10

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_3e
    if-ge v13, v15, :cond_198

    aget-object v11, v10, v13

    .line 378
    .local v11, backupAccount:Lcom/android/email/Account;
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4b

    .line 375
    :cond_48
    :goto_48
    add-int/lit8 v13, v13, 0x1

    goto :goto_3e

    .line 382
    :cond_4b
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring account:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    .line 385
    .local v22, toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 388
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_83

    .line 389
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 393
    :cond_83
    const-string v3, "snc"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_156

    const/4 v14, 0x1

    .line 394
    .local v14, isSncAccount:Z
    :goto_92
    if-eqz v14, :cond_ee

    .line 395
    invoke-virtual {v11}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v17

    .line 396
    .local v17, sSyncScheduleData:Ljava/lang/String;
    if-eqz v17, :cond_159

    .line 397
    const-string v3, "_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 398
    .local v21, storedData:[Ljava/lang/String;
    new-instance v2, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x2

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x3

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x4

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x5

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 402
    .local v2, syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 418
    .end local v2           #syncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;
    .end local v17           #sSyncScheduleData:Ljava/lang/String;
    .end local v21           #storedData:[Ljava/lang/String;
    :cond_ee
    :goto_ee
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_fe

    .line 419
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 451
    :cond_fe
    const/4 v5, 0x0

    .line 454
    .local v5, email:Z
    const/4 v7, 0x0

    .line 455
    .local v7, contacts:Z
    const/4 v6, 0x0

    .line 456
    .local v6, calendar:Z
    const/4 v8, 0x0

    .line 458
    .local v8, task:Z
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 459
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_190

    const/4 v5, 0x1

    .line 462
    :goto_113
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_192

    const/4 v7, 0x1

    .line 463
    :goto_11a
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_194

    const/4 v6, 0x1

    .line 464
    :goto_121
    iget v3, v11, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v3, v3, 0x9

    if-eqz v3, :cond_196

    const/4 v8, 0x1

    .line 481
    :cond_128
    :goto_128
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 487
    if-nez p2, :cond_13a

    .line 488
    sget-object v9, Lcom/android/email/AccountBackupRestore;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    invoke-static/range {v3 .. v9}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    .line 501
    :cond_13a
    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_48

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v3}, Lcom/android/email/esp/ServiceProvider;->getProviderId(I)I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_48

    .line 503
    const/16 v20, 0x1

    .line 504
    move-object/from16 v19, v22

    goto/16 :goto_48

    .line 393
    .end local v5           #email:Z
    .end local v6           #calendar:Z
    .end local v7           #contacts:Z
    .end local v8           #task:Z
    .end local v14           #isSncAccount:Z
    :cond_156
    const/4 v14, 0x0

    goto/16 :goto_92

    .line 404
    .restart local v14       #isSncAccount:Z
    .restart local v17       #sSyncScheduleData:Ljava/lang/String;
    :cond_159
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 405
    new-instance v3, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x1e0

    const/16 v5, 0x3fc

    const/16 v6, 0x3e

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V
    :try_end_176
    .catchall {:try_start_17 .. :try_end_176} :catchall_178

    goto/16 :goto_ee

    .line 352
    .end local v10           #arr$:[Lcom/android/email/Account;
    .end local v11           #backupAccount:Lcom/android/email/Account;
    .end local v12           #backups:[Lcom/android/email/Account;
    .end local v13           #i$:I
    .end local v14           #isSncAccount:Z
    .end local v15           #len$:I
    .end local v16           #numAccounts:I
    .end local v17           #sSyncScheduleData:Ljava/lang/String;
    .end local v22           #toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catchall_178
    move-exception v3

    monitor-exit v23

    throw v3

    .line 408
    .restart local v10       #arr$:[Lcom/android/email/Account;
    .restart local v11       #backupAccount:Lcom/android/email/Account;
    .restart local v12       #backups:[Lcom/android/email/Account;
    .restart local v13       #i$:I
    .restart local v14       #isSncAccount:Z
    .restart local v15       #len$:I
    .restart local v16       #numAccounts:I
    .restart local v17       #sSyncScheduleData:Ljava/lang/String;
    .restart local v22       #toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_17b
    :try_start_17b
    new-instance v3, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x12c

    const/16 v5, 0x4ec

    const/16 v6, 0x7f

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    goto/16 :goto_ee

    .line 459
    .end local v17           #sSyncScheduleData:Ljava/lang/String;
    .restart local v5       #email:Z
    .restart local v6       #calendar:Z
    .restart local v7       #contacts:Z
    .restart local v8       #task:Z
    :cond_190
    const/4 v5, 0x0

    goto :goto_113

    .line 462
    :cond_192
    const/4 v7, 0x0

    goto :goto_11a

    .line 463
    :cond_194
    const/4 v6, 0x0

    goto :goto_121

    .line 464
    :cond_196
    const/4 v8, 0x0

    goto :goto_128

    .line 509
    .end local v5           #email:Z
    .end local v6           #calendar:Z
    .end local v7           #contacts:Z
    .end local v8           #task:Z
    .end local v11           #backupAccount:Lcom/android/email/Account;
    .end local v14           #isSncAccount:Z
    .end local v22           #toAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_198
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_1ae

    .line 510
    new-instance v18, Lcom/android/email/adapter/SncAdapter;

    invoke-direct/range {v18 .. v18}, Lcom/android/email/adapter/SncAdapter;-><init>()V

    .line 511
    .local v18, snc:Lcom/android/email/adapter/SncAdapter;
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/adapter/SncAdapter;->initProtocol()V

    .line 512
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/email/adapter/SncAdapter;->addBackupAccount(J)V
    :try_end_1ae
    .catchall {:try_start_17b .. :try_end_1ae} :catchall_178

    .line 515
    .end local v18           #snc:Lcom/android/email/adapter/SncAdapter;
    :cond_1ae
    const/4 v3, 0x1

    goto/16 :goto_15
.end method

.method public static declared-synchronized restoreAccountsIfNeeded(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 109
    const-class v3, Lcom/android/email/AccountBackupRestore;

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_31

    if-eqz v2, :cond_9

    .line 144
    :goto_7
    monitor-exit v3

    return-void

    .line 112
    :cond_9
    const/4 v0, 0x0

    .line 117
    .local v0, prefPath:Ljava/lang/String;
    :try_start_a
    const-string v0, "/data/data/com.android.email/shared_prefs"

    .line 133
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/android/email/AccountBackupRestore;->doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;Z)Z

    move-result v1

    .line 134
    .local v1, restored:Z
    if-eqz v1, :cond_2d

    .line 136
    const-string v2, "Email"

    const-string v4, "Register services after restoring accounts"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 140
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 141
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 143
    :cond_2d
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/email/AccountBackupRestore;->sBackupsChecked:Z
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_31

    goto :goto_7

    .line 109
    .end local v0           #prefPath:Ljava/lang/String;
    .end local v1           #restored:Z
    :catchall_31
    move-exception v2

    monitor-exit v3

    throw v2
.end method
