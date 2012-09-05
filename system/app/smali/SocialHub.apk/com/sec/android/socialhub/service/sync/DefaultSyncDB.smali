.class public Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;
.super Ljava/lang/Object;
.source "DefaultSyncDB.java"

# interfaces
.implements Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;


# instance fields
.field private final SYNC_TIME:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->SYNC_TIME:I

    return-void
.end method

.method private checkTaskIsRunning(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    .line 730
    const/4 v3, 0x0

    .line 731
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 733
    .local v1, bMainAcitivityResume:Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 735
    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_17

    .line 737
    const-string v5, "DefaultSyncDB"

    const-string v6, "checkTaskIsRunning()"

    const-string v7, "ActivityManager is null!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 772
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_16
    return v4

    .line 741
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_17
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 743
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_7e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7e

    .line 745
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.socialhub.activity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 747
    const-string v5, "DefaultSyncDB"

    const-string v6, "checkTaskIsRunning()"

    const-string v7, "Activity is running!!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const/4 v3, 0x1

    :goto_43
    move v4, v3

    .line 772
    .restart local v4       #ret:I
    goto :goto_16

    .line 752
    .end local v4           #ret:I
    :cond_45
    sget-object v5, Lcom/sec/android/socialhub/service/SocialHubService;->mServiceSharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "syncFlag"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 753
    const-string v5, "DefaultSyncDB"

    const-string v6, "checkTaskIsRunning()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bMainAcitivityResume = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    if-eqz v1, :cond_74

    .line 757
    const/4 v3, 0x1

    .line 758
    const-string v5, "DefaultSyncDB"

    const-string v6, "checkTaskIsRunning()"

    const-string v7, "Activity is running!!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 762
    :cond_74
    const-string v5, "DefaultSyncDB"

    const-string v6, "checkTaskIsRunning()"

    const-string v7, "Activity is Not!!! running!!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 768
    :cond_7e
    const/4 v3, 0x0

    .line 769
    const-string v5, "DefaultSyncDB"

    const-string v6, "checkTaskIsRunning()"

    const-string v7, "info is null or size is zero!!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method private extractEncString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "rawBytes"
    .parameter "charset"

    .prologue
    .line 1151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1153
    const-string p1, ""

    .line 1161
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 1155
    .restart local p1
    :cond_9
    if-eqz p2, :cond_8

    .line 1161
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private getReceiverNames(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const v8, 0x7f080046

    const/4 v6, 0x0

    .line 1168
    const-string v0, "content://com.sec.android.app.provider.sns/message/thread/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1173
    const-string v1, "receiver"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1174
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "receiver_id"

    aput-object v4, v2, v6

    const-string v4, "receiver_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1183
    if-nez v2, :cond_3d

    .line 1184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1249
    :cond_3c
    :goto_3c
    return-object v0

    .line 1191
    :cond_3d
    :try_start_3d
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1192
    if-eqz v3, :cond_9f

    .line 1194
    invoke-virtual {p2, p4}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v4

    .line 1198
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v6

    .line 1200
    :goto_4b
    if-ge v0, v3, :cond_79

    .line 1202
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1204
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1206
    if-nez v1, :cond_64

    .line 1208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f08001f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1211
    :cond_64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    move-object v1, p5

    .line 1217
    :cond_6b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1218
    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1219
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 1222
    :cond_79
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1223
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 1227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_98
    .catchall {:try_start_3d .. :try_end_98} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_98} :catch_ab

    move-result-object v0

    .line 1243
    :cond_99
    :goto_99
    if-eqz v2, :cond_3c

    .line 1245
    :goto_9b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 1233
    :cond_9f
    :try_start_9f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_a9
    .catchall {:try_start_9f .. :try_end_a9} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a9} :catch_ab

    move-result-object v0

    goto :goto_99

    .line 1237
    :catch_ab
    move-exception v0

    .line 1239
    :try_start_ac
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_b9
    .catchall {:try_start_ac .. :try_end_b9} :catchall_bd

    move-result-object v0

    .line 1243
    if-eqz v2, :cond_3c

    goto :goto_9b

    :catchall_bd
    move-exception v0

    if-eqz v2, :cond_c3

    .line 1245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1243
    :cond_c3
    throw v0
.end method


# virtual methods
.method public doSyncAll(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 4
    .parameter "context"
    .parameter "ext"

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->doSyncEmail(Landroid/content/Context;)Z

    .line 1110
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->doSyncIM(Landroid/content/Context;)Z

    .line 1111
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->doSyncMsg(Landroid/content/Context;)Z

    .line 1112
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->doSyncSns(Landroid/content/Context;Ljava/lang/Object;)Z

    .line 1113
    const/4 v0, 0x1

    return v0
.end method

.method public doSyncEmail(Landroid/content/Context;)Z
    .registers 29
    .parameter "context"

    .prologue
    .line 84
    if-nez p1, :cond_d

    .line 86
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "context is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v3, 0x0

    .line 356
    :goto_c
    return v3

    .line 90
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 92
    .local v2, mResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 93
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 95
    .local v9, cursor_local:Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v11, email_id_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "START"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v17

    .line 107
    .local v17, startTime:J
    :try_start_25
    sget-object v3, Lcom/sec/android/socialhub/db/Emailcontent$EmailMessage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/socialhub/db/Emailcontent$EmailMessage;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "timeStamp > 0 and mailboxkey in (select _id from Mailbox where type=0)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    if-eqz v8, :cond_39

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_74

    .line 114
    :cond_39
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "END (no email messages)"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type in (400, 410)"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4a} :catch_3cf

    .line 116
    const/4 v3, 0x0

    .line 346
    if-eqz v8, :cond_51

    .line 348
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 349
    const/4 v8, 0x0

    .line 352
    :cond_51
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 354
    .local v12, endTime:J
    const-string v4, "DefaultSyncDB"

    const-string v5, "doSyncEmail()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "END. total sync time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v25, v12, v17

    move-wide/from16 v0, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 119
    .end local v12           #endTime:J
    :cond_74
    :try_start_74
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$EmailSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_3cf

    .line 124
    :try_start_7b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3be

    .line 126
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v24, value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_87
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v23, value:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v3, "flagRead"

    const/4 v4, 0x4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v3, "flagFavorite"

    const/4 v4, 0x5

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v3, "flag_op"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_87

    .line 140
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e2

    .line 141
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$EmailSyncTable;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Lcom/sec/android/socialhub/service/util/DataBaseUtil;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I

    .line 151
    .end local v23           #value:Landroid/content/ContentValues;
    .end local v24           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_e2
    :goto_e2
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v16, same:Landroid/content/ContentValues;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v22, updated:Landroid/content/ContentValues;
    const-string v3, "flag_op"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v3, "flag_op"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$EmailSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id in (select _id_origin from messages where app_type in (400,410))"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 158
    .local v20, update_1:I
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$EmailSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "flag_op=1 and _id not in (select messages._id_origin from messages join temp_email_sync on (temp_email_sync.flag_op=1 and messages._id_origin=temp_email_sync._id and messages.new=temp_email_sync.flagRead and messages.flagFavorite=temp_email_sync.flagFavorite and messages.app_type in (400, 410)))"

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .line 160
    .local v21, update_2:I
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update_1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", update_2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type in (400, 410) and _id_origin not in (select _id from temp_email_sync where flag_op<>0)"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "temporary working DB created!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_153
    .catchall {:try_start_7b .. :try_end_153} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_153} :catch_3c9

    .line 177
    .end local v16           #same:Landroid/content/ContentValues;
    .end local v20           #update_1:I
    .end local v21           #update_2:I
    .end local v22           #updated:Landroid/content/ContentValues;
    :goto_153
    :try_start_153
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v19, unread:Landroid/content/ContentValues;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v14, read:Landroid/content/ContentValues;
    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v3, "new"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type in (400, 410) and _id_origin in (select _id from temp_email_sync where flag_op=2 and flagRead=1)"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type in (400, 410) and _id_origin in (select _id from temp_email_sync where flag_op=2 and flagRead=0)"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_153 .. :try_end_185} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_185} :catch_3f7

    .line 194
    .end local v14           #read:Landroid/content/ContentValues;
    .end local v19           #unread:Landroid/content/ContentValues;
    :goto_185
    :try_start_185
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "Insert Start"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18e
    .catchall {:try_start_185 .. :try_end_18e} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_18e} :catch_3cf

    .line 205
    :try_start_18e
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$EmailSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "flag_op"

    aput-object v6, v4, v5

    const-string v5, "flag_op=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 212
    :goto_1a5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_427

    .line 214
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c0
    .catchall {:try_start_18e .. :try_end_1c0} :catchall_44c
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1c0} :catch_1c1

    goto :goto_1a5

    .line 220
    :catch_1c1
    move-exception v10

    .line 222
    .local v10, e:Ljava/lang/Exception;
    :try_start_1c2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c5
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_44c

    .line 226
    if-eqz v9, :cond_1cb

    .line 228
    :try_start_1c7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 229
    .end local v10           #e:Ljava/lang/Exception;
    :goto_1ca
    const/4 v9, 0x0

    .line 233
    :cond_1cb
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_487

    .line 236
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .restart local v24       #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1d7
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_354

    .line 242
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .restart local v23       #value:Landroid/content/ContentValues;
    const-string v3, "_id_origin"

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v3, "app_type"

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v3, "date"

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_454

    .line 252
    const-string v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 260
    :goto_232
    const/16 v3, 0x9

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_462

    .line 262
    const-string v3, "email_address"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 269
    :goto_241
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_471

    .line 271
    const-string v3, "m_subject"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 279
    :goto_24f
    const/16 v3, 0xa

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->getEmailRecipientCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 281
    .local v15, receiverCnt:I
    const-string v3, "sns_receiver_count"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v3, "new"

    const/4 v4, 0x4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v3, "count"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v3, "hasAttachment"

    const/4 v4, 0x6

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v3, "account_id"

    const/16 v4, 0x8

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v3, "flagFavorite"

    const/4 v4, 0x5

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v3, "thread_id"

    const/16 v4, 0xc

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v3, "flagStatus"

    const/16 v4, 0xe

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v3, "importance"

    const/16 v4, 0xd

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v3, "smimeFlags"

    const/16 v4, 0xf

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v4, "umCallerId"

    const/16 v3, 0x10

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_47f

    const-string v3, ""

    :goto_309
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "messageType"

    const/16 v4, 0x12

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v3, "flags"

    const/4 v4, 0x7

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v3, "lastVerb"

    const/16 v4, 0x11

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v3, "m_content"

    const/16 v4, 0x13

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v15           #receiverCnt:I
    .end local v23           #value:Landroid/content/ContentValues;
    :cond_354
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1d7

    .line 317
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_367

    .line 319
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Lcom/sec/android/socialhub/service/util/DataBaseUtil;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I

    .line 327
    .end local v24           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_367
    :goto_367
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 329
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total email messages count>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "Insert End"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_394
    .catchall {:try_start_1c7 .. :try_end_394} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_394} :catch_3cf

    .line 334
    const/4 v8, 0x0

    .line 346
    if-eqz v8, :cond_39b

    .line 348
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 349
    const/4 v8, 0x0

    .line 352
    :cond_39b
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 354
    .restart local v12       #endTime:J
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "END. total sync time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v12, v17

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3b8
    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v3, 0x1

    goto/16 :goto_c

    .line 146
    .end local v12           #endTime:J
    :cond_3be
    :try_start_3be
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "something wrong!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c7
    .catchall {:try_start_3be .. :try_end_3c7} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_3be .. :try_end_3c7} :catch_3c9

    goto/16 :goto_e2

    .line 167
    :catch_3c9
    move-exception v10

    .line 169
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_3ca
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3cd
    .catchall {:try_start_3ca .. :try_end_3cd} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_3ca .. :try_end_3cd} :catch_3cf

    goto/16 :goto_153

    .line 340
    .end local v10           #e:Ljava/lang/Exception;
    :catch_3cf
    move-exception v10

    .line 342
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_3d0
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d3
    .catchall {:try_start_3d0 .. :try_end_3d3} :catchall_3fd

    .line 346
    if-eqz v8, :cond_3d9

    .line 348
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 349
    const/4 v8, 0x0

    .line 352
    :cond_3d9
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 354
    .restart local v12       #endTime:J
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "END. total sync time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v12, v17

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3b8

    .line 186
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #endTime:J
    :catch_3f7
    move-exception v10

    .line 188
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_3f8
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3fb
    .catchall {:try_start_3f8 .. :try_end_3fb} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_3f8 .. :try_end_3fb} :catch_3cf

    goto/16 :goto_185

    .line 346
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_3fd
    move-exception v3

    if-eqz v8, :cond_404

    .line 348
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 349
    const/4 v8, 0x0

    .line 352
    :cond_404
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 354
    .restart local v12       #endTime:J
    const-string v4, "DefaultSyncDB"

    const-string v5, "doSyncEmail()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "END. total sync time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v25, v12, v17

    move-wide/from16 v0, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    throw v3

    .line 217
    .end local v12           #endTime:J
    :cond_427
    :try_start_427
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new map size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_445
    .catchall {:try_start_427 .. :try_end_445} :catchall_44c
    .catch Ljava/lang/Exception; {:try_start_427 .. :try_end_445} :catch_1c1

    .line 226
    if-eqz v9, :cond_1cb

    .line 228
    :try_start_447
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1ca

    .line 226
    :catchall_44c
    move-exception v3

    if-eqz v9, :cond_453

    .line 228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v9, 0x0

    .line 226
    :cond_453
    throw v3

    .line 256
    .restart local v23       #value:Landroid/content/ContentValues;
    .restart local v24       #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_454
    const-string v3, "name"

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_232

    .line 266
    :cond_462
    const-string v3, "email_address"

    const/16 v4, 0x9

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_241

    .line 275
    :cond_471
    const-string v3, "m_subject"

    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24f

    .line 291
    .restart local v15       #receiverCnt:I
    :cond_47f
    const/16 v3, 0x10

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_309

    .line 324
    .end local v15           #receiverCnt:I
    .end local v23           #value:Landroid/content/ContentValues;
    .end local v24           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_487
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncEmail()"

    const-string v5, "something wrong!!2"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_490
    .catchall {:try_start_447 .. :try_end_490} :catchall_3fd
    .catch Ljava/lang/Exception; {:try_start_447 .. :try_end_490} :catch_3cf

    goto/16 :goto_367
.end method

.method public doSyncIM(Landroid/content/Context;)Z
    .registers 24
    .parameter "context"

    .prologue
    .line 533
    if-nez p1, :cond_d

    .line 535
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    const-string v4, "context is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v2, 0x0

    .line 724
    :cond_c
    :goto_c
    return v2

    .line 539
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->checkTaskIsRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 541
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    const-string v4, "Activity is not running!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v2, 0x0

    goto :goto_c

    .line 545
    :cond_1e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.socialhub.action.MSG_SYNC_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 549
    .local v1, mResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 550
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 551
    .local v9, cursor2:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 552
    .local v10, cursor3:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 555
    .local v11, cursor4:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 556
    .local v7, account_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v16, lastMsgId_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 559
    .local v17, msgNewState_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    const-string v4, "START."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    .line 565
    .local v18, startTime:J
    :try_start_4e
    const-string v2, "content://com.seven.provider.email/accounts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "account_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "name_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "im_mode"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 567
    if-nez v8, :cond_98

    .line 569
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    const-string v4, "cursor is null!! maybe seven is not installed"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_4e .. :try_end_7d} :catchall_16d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_7d} :catch_f7

    .line 570
    const/4 v2, 0x0

    .line 700
    if-eqz v8, :cond_84

    .line 702
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 703
    const/4 v8, 0x0

    .line 706
    :cond_84
    if-eqz v9, :cond_8a

    .line 708
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 709
    const/4 v9, 0x0

    .line 712
    :cond_8a
    if-eqz v10, :cond_90

    .line 714
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 715
    const/4 v10, 0x0

    .line 718
    :cond_90
    if-eqz v11, :cond_c

    .line 720
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 573
    :cond_98
    :goto_98
    :try_start_98
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_116

    .line 575
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->getIMIspType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put data,  _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_98 .. :try_end_f6} :catchall_16d
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_f6} :catch_f7

    goto :goto_98

    .line 694
    :catch_f7
    move-exception v13

    .line 696
    .local v13, e:Ljava/lang/Exception;
    :try_start_f8
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_16d

    .line 700
    if-eqz v8, :cond_101

    .line 702
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 703
    const/4 v8, 0x0

    .line 706
    :cond_101
    if-eqz v9, :cond_107

    .line 708
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 709
    const/4 v9, 0x0

    .line 712
    :cond_107
    if-eqz v10, :cond_10d

    .line 714
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 715
    const/4 v10, 0x0

    .line 718
    :cond_10d
    if-eqz v11, :cond_113

    .line 720
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 721
    .end local v13           #e:Ljava/lang/Exception;
    :goto_112
    const/4 v11, 0x0

    .line 724
    :cond_113
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 578
    :cond_116
    :try_start_116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 579
    const/4 v8, 0x0

    .line 581
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id_origin"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "thread_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "new"

    aput-object v5, v3, v4

    const-string v4, "app_type=700"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 583
    if-eqz v8, :cond_18b

    .line 585
    :goto_138
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 587
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16c
    .catchall {:try_start_116 .. :try_end_16c} :catchall_16d
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_16c} :catch_f7

    goto :goto_138

    .line 700
    :catchall_16d
    move-exception v2

    if-eqz v8, :cond_174

    .line 702
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 703
    const/4 v8, 0x0

    .line 706
    :cond_174
    if-eqz v9, :cond_17a

    .line 708
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 709
    const/4 v9, 0x0

    .line 712
    :cond_17a
    if-eqz v10, :cond_180

    .line 714
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 715
    const/4 v10, 0x0

    .line 718
    :cond_180
    if-eqz v11, :cond_186

    .line 720
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v11, 0x0

    .line 700
    :cond_186
    throw v2

    .line 590
    :cond_187
    :try_start_187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 591
    const/4 v8, 0x0

    .line 594
    :cond_18b
    const-string v2, "content://com.seven.provider.im/chats"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "contact_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "last_unread_message"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "last_message_date"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 598
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v21, value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_351

    .line 602
    :goto_1b6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_351

    .line 604
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 606
    .local v12, data:Landroid/content/ContentValues;
    const-string v2, "content://com.seven.provider.im/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "nickname"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "account"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "username"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contacts._id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 608
    if-eqz v9, :cond_200

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_234

    .line 610
    :cond_200
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IM contact_id["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is not unique ??? count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b6

    .line 614
    :cond_234
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 616
    const-string v2, "_id_origin"

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v2, "app_type"

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v2, "date"

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 620
    const-string v2, "name"

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v2, "m_content"

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v2, "account_id"

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    const-string v2, "thread_id"

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const-string v3, "sp_type"

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v2, "email_address"

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "contactid"

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v2, "content://com.seven.provider.im/presence"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mode"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "presence._id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 630
    if-eqz v10, :cond_307

    .line 632
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 633
    const-string v2, "presence"

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 635
    const/4 v10, 0x0

    .line 661
    :cond_307
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_CONTACTS_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "unreadcount"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contacts._id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 663
    if-eqz v11, :cond_346

    .line 665
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 666
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 667
    .local v20, unread_cnt:I
    const-string v2, "new"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 669
    const/4 v11, 0x0

    .line 672
    .end local v20           #unread_cnt:I
    :cond_346
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 675
    const/4 v9, 0x0

    .line 677
    goto/16 :goto_1b6

    .line 682
    .end local v12           #data:Landroid/content/ContentValues;
    :cond_351
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "app_type=700"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 684
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v1, v2, v0}, Lcom/sec/android/socialhub/service/util/DataBaseUtil;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I

    .line 686
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor count >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v14

    .line 690
    .local v14, endTime:J
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncIM()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END. total sync time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v14, v18

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_3a1
    .catchall {:try_start_187 .. :try_end_3a1} :catchall_16d
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_3a1} :catch_f7

    .line 700
    if-eqz v8, :cond_3a7

    .line 702
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 703
    const/4 v8, 0x0

    .line 706
    :cond_3a7
    if-eqz v9, :cond_3ad

    .line 708
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 709
    const/4 v9, 0x0

    .line 712
    :cond_3ad
    if-eqz v10, :cond_3b3

    .line 714
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 715
    const/4 v10, 0x0

    .line 718
    :cond_3b3
    if-eqz v11, :cond_113

    .line 720
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_112
.end method

.method public doSyncMsg(Landroid/content/Context;)Z
    .registers 25
    .parameter

    .prologue
    .line 777
    if-nez p1, :cond_d

    .line 779
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncMsg()"

    const-string v4, "context is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v2, 0x0

    .line 1104
    :cond_c
    :goto_c
    return v2

    .line 783
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->checkTaskIsRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 785
    const-string v2, "DefaultSyncDB"

    const-string v3, "doSyncMsg()"

    const-string v4, "Activity is not running!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v2, 0x0

    goto :goto_c

    .line 789
    :cond_1e
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->isSupport(I)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 791
    const-string v2, "DefaultSyncDB"

    const-string v3, "requestDBSync()"

    const-string v4, "sync doesn\'t support only notify"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 793
    const/4 v2, 0x0

    goto :goto_c

    .line 796
    :cond_3e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.socialhub.action.MSG_SYNC_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 800
    const/4 v8, 0x0

    .line 801
    const/4 v9, 0x0

    .line 802
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 803
    const-string v3, "simple"

    const-string v4, "true"

    invoke-virtual {v10, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 804
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 805
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 807
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncMSG()"

    const-string v5, "START"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v13

    .line 813
    :try_start_74
    const-string v3, "content://mms-sms/canonical-addresses"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8d
    .catchall {:try_start_74 .. :try_end_8d} :catchall_24a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8d} :catch_af

    move-result-object v8

    .line 815
    if-eqz v8, :cond_f2

    .line 817
    :goto_90
    :try_start_90
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 819
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 820
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catchall {:try_start_90 .. :try_end_ae} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ae} :catch_af

    goto :goto_90

    .line 1085
    :catch_af
    move-exception v2

    move-object v3, v9

    .line 1087
    :goto_b1
    :try_start_b1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_5c7

    .line 1091
    if-eqz v8, :cond_b9

    .line 1093
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_b9
    if-eqz v3, :cond_be

    .line 1099
    :goto_bb
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1104
    :cond_be
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 823
    :cond_c1
    :try_start_c1
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncMSG()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.isNull(1) == true : id - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_c1 .. :try_end_e0} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_e0} :catch_af

    goto :goto_90

    .line 1091
    :catchall_e1
    move-exception v2

    move-object v4, v8

    :goto_e3
    if-eqz v4, :cond_e8

    .line 1093
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_e8
    if-eqz v9, :cond_ed

    .line 1099
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1091
    :cond_ed
    throw v2

    .line 827
    :cond_ee
    :try_start_ee
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 828
    const/4 v8, 0x0

    .line 831
    :cond_f2
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "unread_count"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "message_count"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "error"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_118
    .catchall {:try_start_ee .. :try_end_118} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_118} :catch_af

    move-result-object v4

    .line 833
    if-eqz v4, :cond_121

    :try_start_11b
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_145

    .line 835
    :cond_121
    const-string v3, "DefaultSyncDB"

    const-string v5, "doSyncMSG()"

    const-string v6, "END(no messages) remove all data"

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    if-eqz v4, :cond_12f

    .line 838
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_12f
    .catchall {:try_start_11b .. :try_end_12f} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_12f} :catch_5da

    .line 840
    :cond_12f
    const/4 v8, 0x0

    .line 842
    :try_start_130
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type in (200, 300, 310)"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_130 .. :try_end_138} :catchall_24a
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_138} :catch_af

    .line 843
    const/4 v2, 0x0

    .line 1091
    if-eqz v8, :cond_13e

    .line 1093
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_13e
    if-eqz v9, :cond_c

    .line 1099
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    .line 847
    :cond_145
    :try_start_145
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MsgSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14c
    .catchall {:try_start_145 .. :try_end_14c} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_14c} :catch_5da

    .line 852
    :try_start_14c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 854
    :goto_151
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1fa

    .line 856
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 858
    const-string v6, "_id"

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v6, "date"

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 860
    const-string v6, "unread_count"

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string v6, "flag_op"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v6, "message_count"

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v6, "error"

    const/4 v7, 0x4

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1af
    .catchall {:try_start_14c .. :try_end_1af} :catchall_24e
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_1af} :catch_1b0

    goto :goto_151

    .line 886
    :catch_1b0
    move-exception v3

    .line 888
    :try_start_1b1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_24e

    .line 892
    if-eqz v4, :cond_5fe

    .line 894
    :try_start_1b6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1b9
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1b9} :catch_5da

    .line 895
    const/4 v8, 0x0

    .line 897
    :goto_1ba
    :try_start_1ba
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncMSG()"

    const-string v5, "temporary working DB created!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_1c3
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MsgSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "flag_op"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d8
    .catchall {:try_start_1ba .. :try_end_1d8} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1d8} :catch_af

    move-result-object v3

    .line 904
    if-eqz v3, :cond_607

    .line 906
    :goto_1db
    :try_start_1db
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_25f

    .line 908
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f6
    .catchall {:try_start_1db .. :try_end_1f6} :catchall_5c7
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1f6} :catch_1f7

    goto :goto_1db

    .line 1085
    :catch_1f7
    move-exception v2

    goto/16 :goto_b1

    .line 869
    :cond_1fa
    :try_start_1fa
    sget-object v5, Lcom/sec/android/socialhub/db/SocialHubDB$MsgSyncTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v3}, Lcom/sec/android/socialhub/service/util/DataBaseUtil;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I

    .line 871
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 872
    const/4 v4, 0x0

    .line 876
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 877
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 879
    const-string v6, "flag_op"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    const-string v6, "flag_op"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    sget-object v6, Lcom/sec/android/socialhub/db/SocialHubDB$MsgSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id in (select _id_origin from messages where app_type in (200, 300, 310))"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 883
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MsgSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "flag_op=1 and _id not in (select messages._id_origin from messages join temp_messaging_sync on (temp_messaging_sync.flag_op=1 and messages._id_origin=temp_messaging_sync._id and messages.date=temp_messaging_sync.date and messages.new=temp_messaging_sync.unread_count and messages.count =temp_messaging_sync.message_count and messages.error = temp_messaging_sync.error and messages.app_type in (200, 300, 310)))"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 884
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "app_type in (200, 300, 310) and _id_origin not in (select _id from temp_messaging_sync where flag_op<>0)"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_239
    .catchall {:try_start_1fa .. :try_end_239} :catchall_24e
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_239} :catch_1b0

    .line 892
    if-eqz v4, :cond_5fb

    .line 894
    :try_start_23b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_23e} :catch_5f2

    .line 895
    const/4 v8, 0x0

    .line 897
    :goto_23f
    :try_start_23f
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncMSG()"

    const-string v5, "temporary working DB created!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_248
    .catchall {:try_start_23f .. :try_end_248} :catchall_24a
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_248} :catch_af

    goto/16 :goto_1c3

    .line 1091
    :catchall_24a
    move-exception v2

    move-object v4, v8

    goto/16 :goto_e3

    .line 892
    :catchall_24e
    move-exception v2

    if-eqz v4, :cond_601

    .line 894
    :try_start_251
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_254
    .catchall {:try_start_251 .. :try_end_254} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_254} :catch_5da

    .line 895
    const/4 v8, 0x0

    .line 897
    :goto_255
    :try_start_255
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncMSG()"

    const-string v5, "temporary working DB created!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    throw v2
    :try_end_25f
    .catchall {:try_start_255 .. :try_end_25f} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_25f} :catch_af

    .line 911
    :cond_25f
    :try_start_25f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_262
    .catchall {:try_start_25f .. :try_end_262} :catchall_5c7
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_262} :catch_1f7

    .line 912
    const/4 v9, 0x0

    .line 922
    :goto_263
    :try_start_263
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "recipient_ids"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "snippet"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "unread_count"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "message_count"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "has_attachment"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "error"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "snippet_cs"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29f
    .catchall {:try_start_263 .. :try_end_29f} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_29f} :catch_5f7

    move-result-object v4

    .line 933
    :try_start_2a0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 935
    if-eqz v4, :cond_5c4

    .line 937
    :cond_2a7
    :goto_2a7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5bf

    .line 939
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 941
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 943
    const/4 v5, 0x2

    if-ne v3, v5, :cond_449

    .line 945
    const-string v3, "date"

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 953
    const-string v3, "m_content"

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->extractEncString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v3, "new"

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    const-string v3, "count"

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string v3, "hasAttachment"

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v3, "status"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    const-string v3, "error"

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id_origin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and app_type in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x12c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x136

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v8, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 967
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 969
    const-string v3, "DefaultSyncDB"

    const-string v5, "doSyncMSG()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Messaging record updated id:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_398
    .catchall {:try_start_2a0 .. :try_end_398} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_398} :catch_39a

    goto/16 :goto_2a7

    .line 1045
    :catch_39a
    move-exception v3

    .line 1047
    :goto_39b
    :try_start_39b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39e
    .catchall {:try_start_39b .. :try_end_39e} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_39b .. :try_end_39e} :catch_5df

    move-object v10, v4

    .line 1051
    :goto_39f
    :try_start_39f
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MsgSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    const-string v5, "flag_op=2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3b0
    .catchall {:try_start_39f .. :try_end_3b0} :catchall_5cc
    .catch Ljava/lang/Exception; {:try_start_39f .. :try_end_3b0} :catch_5e4

    move-result-object v3

    .line 1053
    if-eqz v3, :cond_604

    .line 1055
    :try_start_3b3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3d9

    .line 1057
    const-string v4, "DefaultSyncDB"

    const-string v5, "doSyncMSG()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessagingDBSync DB sync(update) complete-count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_3d9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3dc
    .catchall {:try_start_3b3 .. :try_end_3dc} :catchall_5d0
    .catch Ljava/lang/Exception; {:try_start_3b3 .. :try_end_3dc} :catch_5e9

    .line 1060
    const/4 v8, 0x0

    .line 1064
    :goto_3dd
    :try_start_3dd
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MsgSyncTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    const-string v5, "flag_op=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3ee
    .catchall {:try_start_3dd .. :try_end_3ee} :catchall_5d5
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_3ee} :catch_5ed

    move-result-object v3

    .line 1066
    if-eqz v3, :cond_41b

    .line 1068
    :try_start_3f1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_417

    .line 1070
    const-string v2, "DefaultSyncDB"

    const-string v4, "doSyncMSG()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessagingDBSync DB sync(insert) complete-count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_417
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v3, 0x0

    .line 1076
    :cond_41b
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1079
    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 1082
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 1083
    const-string v2, "DefaultSyncDB"

    const-string v6, "doSyncMSG()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "END. total sync time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v4, v13

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v6, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_440
    .catchall {:try_start_3f1 .. :try_end_440} :catchall_5d0
    .catch Ljava/lang/Exception; {:try_start_3f1 .. :try_end_440} :catch_5e9

    .line 1091
    if-eqz v10, :cond_445

    .line 1093
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_445
    if-eqz v3, :cond_be

    goto/16 :goto_bb

    .line 971
    :cond_449
    if-nez v3, :cond_2a7

    .line 973
    :try_start_44b
    const-string v3, "_id_origin"

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    const-string v3, "thread_id"

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    const-string v3, "app_type"

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string v3, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v3, "date"

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 984
    const-string v3, "m_content"

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->extractEncString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v3, "new"

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    const-string v3, "count"

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v3, "hasAttachment"

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v3, "error"

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_59f

    .line 994
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 995
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 996
    const/4 v5, 0x0

    .line 997
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 999
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v6, v5

    move v5, v3

    :goto_4fd
    move/from16 v0, v17

    if-ge v5, v0, :cond_57f

    aget-object v3, v16, v5

    .line 1001
    if-eqz v6, :cond_513

    .line 1003
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1004
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    :cond_513
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_55e

    .line 1009
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1010
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    invoke-static/range {p1 .. p1}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getContact(Ljava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-result-object v18

    .line 1013
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_557

    .line 1015
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1027
    :goto_551
    add-int/lit8 v6, v6, 0x1

    .line 999
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4fd

    .line 1019
    :cond_557
    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_551

    .line 1091
    :catchall_55b
    move-exception v2

    goto/16 :goto_e3

    .line 1024
    :cond_55e
    const-string v18, "DefaultSyncDB"

    const-string v19, "doSyncMSG()"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Messaging new record inserted but it can\'t find address in address_id_map : id - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_551

    .line 1030
    :cond_57f
    const-string v3, "number"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v3, "name"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v3, "sns_receiver_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    :goto_59a
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a7

    .line 1036
    :cond_59f
    const-string v3, "DefaultSyncDB"

    const-string v5, "doSyncMSG()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Messaging new record inserted but there is no RECIPIENT_IDS : id - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59a

    .line 1042
    :cond_5bf
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v7}, Lcom/sec/android/socialhub/service/util/DataBaseUtil;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I
    :try_end_5c4
    .catchall {:try_start_44b .. :try_end_5c4} :catchall_55b
    .catch Ljava/lang/Exception; {:try_start_44b .. :try_end_5c4} :catch_39a

    :cond_5c4
    move-object v10, v4

    .line 1048
    goto/16 :goto_39f

    .line 1091
    :catchall_5c7
    move-exception v2

    move-object v9, v3

    move-object v4, v8

    goto/16 :goto_e3

    :catchall_5cc
    move-exception v2

    move-object v4, v10

    goto/16 :goto_e3

    :catchall_5d0
    move-exception v2

    move-object v9, v3

    move-object v4, v10

    goto/16 :goto_e3

    :catchall_5d5
    move-exception v2

    move-object v9, v8

    move-object v4, v10

    goto/16 :goto_e3

    .line 1085
    :catch_5da
    move-exception v2

    move-object v3, v9

    move-object v8, v4

    goto/16 :goto_b1

    :catch_5df
    move-exception v2

    move-object v3, v9

    move-object v8, v4

    goto/16 :goto_b1

    :catch_5e4
    move-exception v2

    move-object v3, v9

    move-object v8, v10

    goto/16 :goto_b1

    :catch_5e9
    move-exception v2

    move-object v8, v10

    goto/16 :goto_b1

    :catch_5ed
    move-exception v2

    move-object v3, v8

    move-object v8, v10

    goto/16 :goto_b1

    :catch_5f2
    move-exception v2

    move-object v3, v9

    move-object v8, v4

    goto/16 :goto_b1

    .line 1045
    :catch_5f7
    move-exception v3

    move-object v4, v8

    goto/16 :goto_39b

    :cond_5fb
    move-object v8, v4

    goto/16 :goto_23f

    :cond_5fe
    move-object v8, v4

    goto/16 :goto_1ba

    :cond_601
    move-object v8, v4

    goto/16 :goto_255

    :cond_604
    move-object v8, v3

    goto/16 :goto_3dd

    :cond_607
    move-object v9, v3

    goto/16 :goto_263
.end method

.method public doSyncSns(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 32
    .parameter "context"
    .parameter "ext"

    .prologue
    .line 361
    if-nez p1, :cond_d

    .line 363
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncSns()"

    const-string v5, "context is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v3, 0x0

    .line 528
    :cond_c
    :goto_c
    return v3

    .line 367
    :cond_d
    const/16 v19, 0x0

    .line 369
    .local v19, profile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-eqz v3, :cond_ab

    move-object/from16 v19, p2

    .line 371
    check-cast v19, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 381
    .local v2, mResolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 383
    .local v9, cursor:Landroid/database/Cursor;
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncSNS()"

    const-string v5, "START"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v21

    .line 389
    .local v21, startTime:J
    :try_start_2b
    const-string v3, "content://com.sec.android.app.provider.sns/message"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "service_provider"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "message_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "content"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "send_time"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "sender_id"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "sender_name"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "folder"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "thread_id"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "representative_receiver_id"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "representative_receiver"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "receiver_count"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "read_state"

    aput-object v6, v4, v5

    const-string v5, "folder is not null"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 391
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type=600 and status = 0"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 393
    if-eqz v9, :cond_99

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_b7

    .line 395
    :cond_99
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncSNS()"

    const-string v5, "cursor is null or count is 0."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_2b .. :try_end_a2} :catchall_22c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a2} :catch_11b

    .line 396
    const/4 v3, 0x0

    .line 518
    if-eqz v9, :cond_c

    .line 520
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 521
    const/4 v9, 0x0

    goto/16 :goto_c

    .line 375
    .end local v2           #mResolver:Landroid/content/ContentResolver;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v21           #startTime:J
    :cond_ab
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncSns()"

    const-string v5, "profile is not instance of SocialHubFeedProfile"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 400
    .restart local v2       #mResolver:Landroid/content/ContentResolver;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v21       #startTime:J
    :cond_b7
    const/4 v15, 0x1

    .line 401
    .local v15, itype:I
    const/4 v7, -0x1

    .line 402
    .local v7, spType:I
    const/4 v14, 0x0

    .line 403
    .local v14, flag_view:I
    :try_start_ba
    const-string v17, ""

    .line 404
    .local v17, name:Ljava/lang/String;
    const-string v18, ""

    .line 405
    .local v18, peopleId:Ljava/lang/String;
    const/16 v23, 0x0

    .line 407
    .local v23, thread_id:Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v26, value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_c5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_26c

    .line 412
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .local v10, data:Landroid/content/ContentValues;
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 417
    .local v16, message_id:Ljava/lang/String;
    const-string v3, "app_type"

    const/16 v4, 0x258

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v3, "number"

    const/4 v4, 0x6

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "date"

    const/4 v4, 0x5

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v3, "sns_pkey"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    const/16 v3, 0x8

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 424
    .local v24, type:Ljava/lang/String;
    if-nez v24, :cond_14a

    .line 426
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncSNS()"

    const-string v5, "service mail box is null(in/out)!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_11a
    .catchall {:try_start_ba .. :try_end_11a} :catchall_22c
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_11a} :catch_11b

    goto :goto_c5

    .line 512
    .end local v7           #spType:I
    .end local v10           #data:Landroid/content/ContentValues;
    .end local v14           #flag_view:I
    .end local v15           #itype:I
    .end local v16           #message_id:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #peopleId:Ljava/lang/String;
    .end local v23           #thread_id:Ljava/lang/String;
    .end local v24           #type:Ljava/lang/String;
    .end local v26           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_11b
    move-exception v11

    .line 514
    .local v11, e:Ljava/lang/Exception;
    :try_start_11c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_22c

    .line 518
    if-eqz v9, :cond_125

    .line 520
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 521
    .end local v11           #e:Ljava/lang/Exception;
    :goto_124
    const/4 v9, 0x0

    .line 525
    :cond_125
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 527
    .local v12, endTime:J
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncSNS()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "END. total sync time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v27, v12, v21

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v3, 0x1

    goto/16 :goto_c

    .line 431
    .end local v12           #endTime:J
    .restart local v7       #spType:I
    .restart local v10       #data:Landroid/content/ContentValues;
    .restart local v14       #flag_view:I
    .restart local v15       #itype:I
    .restart local v16       #message_id:Ljava/lang/String;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v18       #peopleId:Ljava/lang/String;
    .restart local v23       #thread_id:Ljava/lang/String;
    .restart local v24       #type:Ljava/lang/String;
    .restart local v26       #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_14a
    const/4 v3, 0x1

    :try_start_14b
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 434
    const-string v3, "inbox"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_234

    .line 436
    const/4 v15, 0x1

    .line 437
    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 438
    const/4 v3, 0x7

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 453
    :goto_164
    invoke-static {v7}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :try_end_167
    .catchall {:try_start_14b .. :try_end_167} :catchall_22c
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_167} :catch_11b

    move-result-object v20

    .line 457
    .local v20, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v20, :cond_1a5

    .line 459
    const/4 v3, 0x4

    :try_start_16b
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_192

    const/16 v3, 0xc

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_192

    .line 461
    const/16 v3, 0x9

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x7

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;->getReceiverNames(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 464
    :cond_192
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25b

    .line 466
    const/16 v3, 0x9

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1a1
    .catchall {:try_start_16b .. :try_end_1a1} :catchall_22c
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_16b .. :try_end_1a1} :catch_260
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_1a1} :catch_11b

    move-result-object v23

    .line 467
    move-object/from16 v16, v23

    .line 468
    const/4 v14, 0x1

    .line 483
    :cond_1a5
    :goto_1a5
    :try_start_1a5
    const-string v3, "type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    const-string v4, "new"

    const/16 v3, 0xd

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_269

    const/16 v3, 0xd

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_266

    const/4 v3, 0x0

    :goto_1c7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    const-string v3, "name"

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v3, "name_original"

    const/4 v4, 0x7

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v3, "contactid"

    move-object/from16 v0, v18

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v3, "m_content"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v3, "m_subject"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v3, "sns_receiver_count"

    const/16 v4, 0xc

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v3, "thread_id"

    move-object/from16 v0, v23

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v3, "_id_origin"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v3, "sp_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    const-string v3, "flag_view"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22a
    .catchall {:try_start_1a5 .. :try_end_22a} :catchall_22c
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_22a} :catch_11b

    goto/16 :goto_c5

    .line 518
    .end local v7           #spType:I
    .end local v10           #data:Landroid/content/ContentValues;
    .end local v14           #flag_view:I
    .end local v15           #itype:I
    .end local v16           #message_id:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #peopleId:Ljava/lang/String;
    .end local v20           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v23           #thread_id:Ljava/lang/String;
    .end local v24           #type:Ljava/lang/String;
    .end local v26           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catchall_22c
    move-exception v3

    if-eqz v9, :cond_233

    .line 520
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 521
    const/4 v9, 0x0

    .line 518
    :cond_233
    throw v3

    .line 440
    .restart local v7       #spType:I
    .restart local v10       #data:Landroid/content/ContentValues;
    .restart local v14       #flag_view:I
    .restart local v15       #itype:I
    .restart local v16       #message_id:Ljava/lang/String;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v18       #peopleId:Ljava/lang/String;
    .restart local v23       #thread_id:Ljava/lang/String;
    .restart local v24       #type:Ljava/lang/String;
    .restart local v26       #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_234
    :try_start_234
    const-string v3, "outbox"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24d

    .line 442
    const/4 v15, 0x2

    .line 443
    const/16 v3, 0xa

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 444
    const/16 v3, 0xb

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_164

    .line 448
    :cond_24d
    const-string v3, "DefaultSyncDB"

    const-string v4, "doSyncSNS()"

    const-string v5, "undefined service mail box(in/out)!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_c5

    .line 472
    .restart local v20       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_25b
    move-object/from16 v23, v16

    .line 473
    const/4 v14, 0x0

    goto/16 :goto_1a5

    .line 478
    :catch_260
    move-exception v11

    .line 480
    .local v11, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v11}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto/16 :goto_1a5

    .line 484
    .end local v11           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_266
    const/4 v3, 0x1

    goto/16 :goto_1c7

    :cond_269
    const/4 v3, 0x0

    goto/16 :goto_1c7

    .line 500
    .end local v10           #data:Landroid/content/ContentValues;
    .end local v16           #message_id:Ljava/lang/String;
    .end local v20           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v24           #type:Ljava/lang/String;
    :cond_26c
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Lcom/sec/android/socialhub/service/util/DataBaseUtil;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I

    .line 502
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v9, 0x0

    .line 505
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 506
    .local v25, value:Landroid/content/ContentValues;
    const-string v3, "flag_view"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type=600 and _id_origin in (select _id_origin from messages join (select sp_type, contactid,max(date) as date from messages where app_type=600 and status = 0 group by contactid,sp_type) as jt on (messages.app_type=600 and messages.sp_type=jt.sp_type and messages.contactid=jt.contactid and messages.date=jt.date))"

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 510
    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->SNS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_298
    .catchall {:try_start_234 .. :try_end_298} :catchall_22c
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_298} :catch_11b

    .line 518
    if-eqz v9, :cond_125

    .line 520
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_124
.end method

.method protected getEmailRecipientCount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1118
    const-string v1, "DefaultSyncDB"

    const-string v2, "getEmailRecipientCount"

    const-string v3, "start getEmailRecipientCount"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const/4 v2, 0x1

    .line 1127
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 1129
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1132
    array-length v1, v1

    .line 1135
    :goto_1c
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1137
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1139
    array-length v0, v0

    .line 1142
    :cond_2d
    add-int/2addr v0, v1

    .line 1144
    const-string v1, "DefaultSyncDB"

    const-string v2, "getEmailRecipientCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total count  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    return v0

    :cond_49
    move v1, v0

    goto :goto_1c
.end method

.method protected getIMIspType(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 1256
    const/16 v0, 0x9

    .line 1258
    const-string v1, "aim"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1260
    const/4 v0, 0x0

    .line 1279
    :cond_b
    :goto_b
    return v0

    .line 1262
    :cond_c
    const-string v1, "gmail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "googlemail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1264
    :cond_1c
    const/4 v0, 0x5

    goto :goto_b

    .line 1266
    :cond_1e
    const-string v1, "icq"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1268
    const/4 v0, 0x6

    goto :goto_b

    .line 1270
    :cond_28
    const-string v1, "msn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "hotmail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1272
    :cond_38
    const/4 v0, 0x1

    goto :goto_b

    .line 1274
    :cond_3a
    const-string v1, "yahoo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1276
    const/4 v0, 0x2

    goto :goto_b
.end method
