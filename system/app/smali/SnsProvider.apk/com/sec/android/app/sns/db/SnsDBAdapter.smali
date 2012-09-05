.class public Lcom/sec/android/app/sns/db/SnsDBAdapter;
.super Ljava/lang/Object;
.source "SnsDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;
    }
.end annotation


# instance fields
.field private final ACTIVITY_MAX_ROW:I

.field private final FRIEND_GROUPING_MAX_ROW:I

.field private final MAX_RECORD_OFFSET:J

.field private final MESSAGE_MAX_ROW:I

.field private final SCHEDULE_MAX_ROW:I

.field private final mAppContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

.field private mUriString:Ljava/lang/String;

.field private mbConstraintStop:Z

.field private mbIsLoggable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/16 v3, 0xbb8

    const/4 v2, 0x0

    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->MAX_RECORD_OFFSET:J

    .line 106
    const/16 v0, 0x1388

    iput v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->ACTIVITY_MAX_ROW:I

    .line 108
    iput v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->MESSAGE_MAX_ROW:I

    .line 110
    iput v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->SCHEDULE_MAX_ROW:I

    .line 112
    iput v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->FRIEND_GROUPING_MAX_ROW:I

    .line 114
    iput-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    .line 117
    iput-object p1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/db/SnsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mOpenHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

    .line 119
    const-string v0, "content://com.sec.android.app.provider.sns/"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 123
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "SNS_DB"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    .line 128
    :goto_3b
    return-void

    .line 126
    :cond_3c
    iput-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    goto :goto_3b
.end method

.method private UpdateNullFriendResponseTimeBySP(I)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 6042
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6046
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6048
    const-string v2, "full_response_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6049
    const-string v2, "updated_response_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6050
    const-string v2, "friendlist_full_response_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6051
    const-string v2, "friendlist_updated_response_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6053
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "friend_responsetime"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_44} :catch_45

    .line 6058
    return-void

    .line 6055
    :catch_45
    move-exception v0

    .line 6056
    throw v0
.end method

.method private checkCommonActivity(ILjava/lang/String;)I
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 6088
    const/4 v9, -0x1

    .line 6091
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getReadableDatabase()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_5} :catch_63

    .line 6097
    if-nez p2, :cond_8

    .line 6129
    :goto_7
    return v9

    .line 6100
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 6101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6105
    const/4 v0, 0x0

    move v11, v0

    :goto_2b
    :try_start_2b
    sget-object v0, Lcom/sec/android/app/sns/type/SnsActivityType;->TABLE_NAME:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_67

    .line 6109
    if-eq v11, p1, :cond_65

    .line 6110
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v11}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6113
    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_57

    .line 6114
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 6115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_55
    move v9, v0

    .line 6129
    goto :goto_7

    :cond_57
    move-object v0, v1

    .line 6121
    :goto_58
    if-eqz v0, :cond_5d

    .line 6122
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5d} :catch_61

    .line 6105
    :cond_5d
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2b

    .line 6125
    :catch_61
    move-exception v0

    .line 6126
    throw v0

    .line 6092
    :catch_63
    move-exception v0

    goto :goto_7

    :cond_65
    move-object v0, v10

    goto :goto_58

    :cond_67
    move v0, v9

    goto :goto_55
.end method

.method private clearDuplicateThread(Ljava/lang/String;Ljava/lang/String;J)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 5128
    .line 5133
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "send_time"

    aput-object v4, v2, v3

    const-string v3, "thread_id = ? AND message_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5139
    if-eqz v4, :cond_b2

    .line 5140
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 5141
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 5142
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5144
    :goto_37
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 5146
    :goto_3a
    iget-boolean v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v4, :cond_86

    .line 5147
    const-string v4, "SNS_DB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    const-string v4, "SNS_DB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local sent_time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    const-string v4, "SNS_DB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote sentTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    :cond_86
    cmp-long v4, v2, v8

    if-eqz v4, :cond_a1

    .line 5152
    cmp-long v2, p3, v2

    if-lez v2, :cond_a1

    .line 5153
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message"

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5160
    :cond_a1
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    const-string v2, "message_id is null AND service_provider = 0"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ab} :catch_ad

    move-result v0

    .line 5166
    return v0

    .line 5162
    :catch_ad
    move-exception v0

    .line 5163
    throw v0

    :cond_af
    move-wide v0, v8

    move-wide v2, v8

    goto :goto_37

    :cond_b2
    move-wide v0, v8

    move-wide v2, v8

    goto :goto_3a
.end method

.method private clearDuplicateThread(Ljava/lang/String;J)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5176
    .line 5177
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "send_time"

    aput-object v3, v2, v10

    const-string v3, "_id = ? "

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5182
    if-eqz v2, :cond_9b

    .line 5183
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 5184
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 5187
    :goto_27
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5190
    :goto_2a
    iget-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v2, :cond_76

    .line 5191
    const-string v2, "SNS_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    const-string v2, "SNS_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local sent_time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    const-string v2, "SNS_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    :cond_76
    cmp-long v2, v0, v8

    if-eqz v2, :cond_8b

    .line 5197
    cmp-long v0, p2, v0

    if-lez v0, :cond_8b

    .line 5198
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    const-string v2, "_id = ? "

    new-array v3, v11, [Ljava/lang/String;

    aput-object p1, v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5204
    :cond_8b
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "msg_receiver_map"

    const-string v2, "message_id = ? "

    new-array v3, v11, [Ljava/lang/String;

    aput-object p1, v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5208
    return-void

    :cond_99
    move-wide v0, v8

    goto :goto_27

    :cond_9b
    move-wide v0, v8

    goto :goto_2a
.end method

.method private clearIncompleteFriend(I)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4867
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_39

    .line 4874
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4875
    const-string v1, "new =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4876
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4877
    const-string v1, "service_provider =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4879
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_37

    move-result v0

    .line 4887
    :goto_36
    return v0

    .line 4883
    :catch_37
    move-exception v0

    .line 4884
    throw v0

    .line 4868
    :catch_39
    move-exception v1

    goto :goto_36
.end method

.method private clearIncompleteFriendList(I)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4892
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_39

    .line 4899
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4900
    const-string v1, "new =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4901
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4902
    const-string v1, "service_provider =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4904
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_37

    move-result v0

    .line 4912
    :goto_36
    return v0

    .line 4908
    :catch_37
    move-exception v0

    .line 4909
    throw v0

    .line 4893
    :catch_39
    move-exception v1

    goto :goto_36
.end method

.method private clearIncompleteMessage(I)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4924
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_39

    .line 4931
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4932
    const-string v1, "new =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4933
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4934
    const-string v1, "service_provider =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4936
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_37

    move-result v0

    .line 4944
    :goto_36
    return v0

    .line 4940
    :catch_37
    move-exception v0

    .line 4941
    throw v0

    .line 4925
    :catch_39
    move-exception v1

    goto :goto_36
.end method

.method private clearMaxRowActivity()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4971
    .line 4974
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4975
    const-string v1, "_id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4976
    const-string v1, "(SELECT _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4977
    const-string v1, " FROM activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4978
    const-string v1, " ORDER BY time DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4979
    const-string v1, " LIMIT 10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4980
    const-string v1, " OFFSET 5000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4981
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4983
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "activity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result v0

    .line 4987
    return v0

    .line 4984
    :catch_36
    move-exception v0

    .line 4985
    throw v0
.end method

.method private clearMaxRowFriendActivity()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4991
    .line 4994
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4995
    const-string v1, "_id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4996
    const-string v1, "(SELECT _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4997
    const-string v1, " FROM friend_activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4998
    const-string v1, " ORDER BY time DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4999
    const-string v1, " LIMIT 10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5000
    const-string v1, " OFFSET 5000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5001
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5003
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend_activity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result v0

    .line 5008
    return v0

    .line 5005
    :catch_36
    move-exception v0

    .line 5006
    throw v0
.end method

.method private clearMaxRowFriendGrouping()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5033
    .line 5036
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5037
    const-string v1, "_id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5038
    const-string v1, "(SELECT _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5039
    const-string v1, " FROM friend_grouping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5040
    const-string v1, " ORDER BY name DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5041
    const-string v1, " LIMIT 10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5042
    const-string v1, " OFFSET 3000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5043
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5045
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend_grouping"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result v0

    .line 5050
    return v0

    .line 5047
    :catch_36
    move-exception v0

    .line 5048
    throw v0
.end method

.method private clearMaxRowGroupActivity()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5012
    .line 5015
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5016
    const-string v1, "_id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5017
    const-string v1, "(SELECT _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5018
    const-string v1, " FROM group_activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5019
    const-string v1, " ORDER BY time DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5020
    const-string v1, " LIMIT 10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5021
    const-string v1, " OFFSET 5000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5022
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5024
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "group_activity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result v0

    .line 5029
    return v0

    .line 5026
    :catch_36
    move-exception v0

    .line 5027
    throw v0
.end method

.method private clearMaxRowMessage()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5075
    .line 5078
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5079
    const-string v1, "_id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5080
    const-string v1, "(SELECT _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5081
    const-string v1, " FROM message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5082
    const-string v1, " ORDER BY send_time DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5083
    const-string v1, " LIMIT 10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5084
    const-string v1, " OFFSET 3000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5085
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5087
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result v0

    .line 5092
    return v0

    .line 5088
    :catch_36
    move-exception v0

    .line 5089
    throw v0
.end method

.method private clearMaxRowSchedule()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5054
    .line 5057
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5058
    const-string v1, "_id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5059
    const-string v1, "(SELECT _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    const-string v1, " FROM event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5061
    const-string v1, " ORDER BY start_time ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5062
    const-string v1, " LIMIT 10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5063
    const-string v1, " OFFSET 3000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5064
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5066
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result v0

    .line 5071
    return v0

    .line 5067
    :catch_36
    move-exception v0

    .line 5068
    throw v0
.end method

.method private clearNotificationList()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5103
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_e

    .line 5110
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notification_list"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_11

    move-result v0

    .line 5115
    :goto_d
    return v0

    .line 5104
    :catch_e
    move-exception v0

    .line 5105
    const/4 v0, 0x0

    goto :goto_d

    .line 5111
    :catch_11
    move-exception v0

    .line 5112
    throw v0
.end method

.method private clearOldFriend(I)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 5220
    .line 5224
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5225
    const-string v1, "new =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5226
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5227
    const-string v1, "service_provider =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5228
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5232
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "friend"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 5236
    iget-boolean v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v3, :cond_61

    .line 5237
    const-string v3, "SNS_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "del count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5239
    :cond_61
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5240
    const-string v3, "new"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5241
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "friend"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v2, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5243
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_98

    .line 5244
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_98} :catch_99

    .line 5251
    :cond_98
    return v8

    .line 5246
    :catch_99
    move-exception v0

    .line 5248
    throw v0
.end method

.method private clearOldFriendList(I)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 5265
    .line 5269
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5270
    const-string v1, "new =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5271
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5272
    const-string v1, "service_provider =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5273
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5277
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "friend_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 5281
    iget-boolean v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v3, :cond_61

    .line 5282
    const-string v3, "SNS_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "del count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    :cond_61
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5285
    const-string v3, "new"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5286
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "friend_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v2, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5288
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_98

    .line 5289
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_98} :catch_99

    .line 5296
    :cond_98
    return v8

    .line 5291
    :catch_99
    move-exception v0

    .line 5293
    throw v0
.end method

.method private clearOldMessage(I)Z
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 5310
    .line 5314
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5315
    const-string v1, "new =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5316
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5317
    const-string v1, "service_provider =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5318
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5322
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 5328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5329
    const-string v4, "service_provider =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5330
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5331
    const-string v4, "new IS NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5333
    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "message"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v3, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5339
    iget-boolean v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v3, :cond_8c

    .line 5340
    const-string v3, "SNS_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "del count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    :cond_8c
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5343
    const-string v3, "new"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5344
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v2, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5346
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_c3

    .line 5347
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c3} :catch_c4

    .line 5354
    :cond_c3
    return v9

    .line 5349
    :catch_c4
    move-exception v0

    .line 5351
    throw v0
.end method

.method private clearPhotoAlbum()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4811
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_f

    .line 4815
    const/4 v1, 0x0

    .line 4818
    .local v1, result:I
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "album"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_12

    move-result v1

    .line 4823
    .end local v1           #result:I
    :goto_e
    return v1

    .line 4812
    :catch_f
    move-exception v0

    .line 4813
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    goto :goto_e

    .line 4819
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #result:I
    :catch_12
    move-exception v0

    .line 4820
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method

.method private clearPhotoByAlbumId(Ljava/lang/String;I)I
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4780
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_34

    .line 4787
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4788
    const-string v1, "album_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4789
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4790
    const-string v1, "service_provider = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4792
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "photo"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_32

    move-result v0

    .line 4800
    :goto_31
    return v0

    .line 4796
    :catch_32
    move-exception v0

    .line 4797
    throw v0

    .line 4781
    :catch_34
    move-exception v1

    goto :goto_31
.end method

.method private clearStatusList()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4955
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_f

    .line 4959
    const/4 v1, 0x0

    .line 4962
    .local v1, result:I
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "activity_statuslist"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_12

    move-result v1

    .line 4967
    .end local v1           #result:I
    :goto_e
    return v1

    .line 4956
    :catch_f
    move-exception v0

    .line 4957
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    goto :goto_e

    .line 4963
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #result:I
    :catch_12
    move-exception v0

    .line 4964
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method

.method private clearThreadMsg()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4683
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_e

    .line 4690
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "thread_message"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_11

    move-result v0

    .line 4694
    :goto_d
    return v0

    .line 4684
    :catch_e
    move-exception v0

    .line 4685
    const/4 v0, 0x0

    goto :goto_d

    .line 4691
    :catch_11
    move-exception v0

    .line 4692
    throw v0
.end method

.method private clearUseContactFriend(I)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4834
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_31

    .line 4841
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4842
    const-string v1, "sp =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4843
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4844
    const-string v1, "f_id NOT IN (SELECT friend_id FROM friend)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4847
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "use_contact"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2d} :catch_2f

    move-result v0

    .line 4855
    :goto_2e
    return v0

    .line 4851
    :catch_2f
    move-exception v0

    .line 4852
    throw v0

    .line 4835
    :catch_31
    move-exception v1

    goto :goto_2e
.end method

.method private getFirstLastName(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;Z)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 6134
    iget-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFirstName:Ljava/lang/String;

    .line 6135
    iget-object v1, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mLastName:Ljava/lang/String;

    .line 6136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6137
    if-eqz p2, :cond_36

    .line 6138
    if-eqz v0, :cond_30

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6139
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6140
    if-eqz v1, :cond_33

    move-object v0, v1

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6146
    :goto_1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2f

    .line 6148
    iget-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFullName:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 6149
    iget-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFullName:Ljava/lang/String;

    .line 6155
    :cond_2f
    :goto_2f
    return-object v0

    .line 6138
    :cond_30
    const-string v0, ""

    goto :goto_d

    .line 6140
    :cond_33
    const-string v0, ""

    goto :goto_18

    .line 6142
    :cond_36
    if-eqz v1, :cond_46

    :goto_38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6143
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6144
    if-eqz v0, :cond_49

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 6142
    :cond_46
    const-string v1, ""

    goto :goto_38

    .line 6144
    :cond_49
    const-string v0, ""

    goto :goto_42

    .line 6151
    :cond_4c
    iget-object v0, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mDisplayName:Ljava/lang/String;

    goto :goto_2f
.end method

.method private declared-synchronized getReadableDatabase()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v1, :cond_10

    .line 185
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mOpenHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 186
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->increaseDBRefCount()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 191
    :cond_10
    monitor-exit p0

    return-void

    .line 187
    :catch_12
    move-exception v0

    .line 188
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_13
    throw v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    .line 183
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getReceiverIdByName(ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 6286
    .line 6290
    const/4 v0, 0x1

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "actor_id"

    aput-object v1, v2, v0

    .line 6294
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service_provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "actor_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' group by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6298
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_9e

    .line 6299
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6301
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "receiver_id"

    aput-object v1, v2, v0

    .line 6305
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "msg_receiver_map"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service_provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "receiver_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' group by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6310
    :cond_9e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_f1

    .line 6311
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6313
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "sender_id"

    aput-object v1, v2, v0

    .line 6317
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service_provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sender_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' group by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6322
    :cond_f1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_103

    .line 6323
    const-string v1, "SNS_DB"

    const-string v2, " *** getReceiverIdByName() : CANNOT find ReceiverId !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6324
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 6334
    :goto_102
    return-object v0

    .line 6326
    :cond_103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 6327
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_113} :catch_115

    move-result-object v0

    goto :goto_102

    .line 6330
    :catch_115
    move-exception v0

    .line 6331
    throw v0

    :cond_117
    move-object v0, v8

    goto :goto_102
.end method

.method public static getTypicalContentUriByReqType(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xf

    const/4 v0, 0x0

    .line 6179
    const-string v1, "content://com.sec.android.app.provider.sns/"

    .line 6181
    sparse-switch p0, :sswitch_data_200

    move-object v1, v0

    .line 6280
    :cond_9
    :goto_9
    if-eqz v1, :cond_f

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_f
    return-object v0

    .line 6183
    :sswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dirt_activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6185
    const-string v2, "SnsActivityType.ACTIVITY"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 6186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 6187
    :cond_45
    const-string v2, "SnsActivityType.FRIEND_ACTIVITY"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 6188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 6190
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 6195
    :sswitch_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6196
    if-eqz p2, :cond_a9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a9

    .line 6197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/target/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_a9
    move-object v1, v0

    .line 6201
    goto/16 :goto_9

    .line 6204
    :sswitch_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "comment_favorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 6209
    :sswitch_c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6211
    if-ltz p1, :cond_f1

    if-gt p1, v3, :cond_f1

    .line 6212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_f1
    move-object v1, v0

    .line 6217
    goto/16 :goto_9

    .line 6220
    :sswitch_f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6222
    if-ltz p1, :cond_124

    if-gt p1, v3, :cond_124

    .line 6223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_124
    move-object v1, v0

    .line 6228
    goto/16 :goto_9

    .line 6231
    :sswitch_127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 6236
    :sswitch_13c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread_message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 6241
    :sswitch_151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "people"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6243
    if-ltz p1, :cond_181

    if-gt p1, v3, :cond_181

    .line 6244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_181
    move-object v1, v0

    .line 6249
    goto/16 :goto_9

    .line 6252
    :sswitch_184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 6257
    :sswitch_199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6259
    if-ltz p1, :cond_1e8

    if-gt p1, v3, :cond_1e8

    .line 6260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6261
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 6262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_1e8
    move-object v1, v0

    .line 6268
    goto/16 :goto_9

    .line 6271
    :sswitch_1eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 6181
    :sswitch_data_200
    .sparse-switch
        0x5 -> :sswitch_10
        0x8 -> :sswitch_ac
        0xa -> :sswitch_75
        0xc -> :sswitch_f4
        0xe -> :sswitch_c1
        0x13 -> :sswitch_127
        0x16 -> :sswitch_13c
        0x1a -> :sswitch_151
        0x1d -> :sswitch_184
        0x1e -> :sswitch_199
        0x24 -> :sswitch_1eb
    .end sparse-switch
.end method

.method private declared-synchronized getWritableDatabase()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v1, :cond_10

    .line 196
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mOpenHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 197
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->increaseDBRefCount()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 202
    :cond_10
    monitor-exit p0

    return-void

    .line 198
    :catch_12
    move-exception v0

    .line 199
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_13
    throw v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    .line 194
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private insertActivityRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 32
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 633
    const/16 v19, 0x1

    .line 635
    const/4 v6, 0x0

    .line 636
    const/4 v5, 0x0

    .line 638
    const/4 v4, -0x1

    move-object/from16 v12, p2

    .line 640
    check-cast v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 643
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 645
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v7, :cond_2c

    .line 646
    const-string v7, "SNS_DB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activityData : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_2c
    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_87

    .line 651
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    move-object v4, v0

    .line 653
    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActivityType()I

    move-result v7

    .line 655
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getStartOffset()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_54

    .line 656
    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    const/4 v8, 0x1

    if-eq v4, v8, :cond_54

    .line 658
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteActivity(I)I

    :cond_54
    move/from16 v18, v7

    .line 667
    :goto_56
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 668
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 669
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 674
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    move-object v15, v12

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 676
    :goto_79
    if-eqz v15, :cond_2ad

    .line 678
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    if-nez v4, :cond_9b

    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    if-nez v4, :cond_9b

    .line 679
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    move-object v15, v4

    .line 680
    goto :goto_79

    .line 661
    :cond_87
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v7

    const/16 v8, 0x17

    if-eq v7, v8, :cond_97

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v7

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_a1c

    .line 664
    :cond_97
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_56

    .line 683
    :cond_9b
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 684
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 686
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a19

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    move v14, v4

    .line 689
    :goto_af
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    .line 690
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_d0
    const-string v4, "service_provider"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v4, "activity_id"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v5, 0x0

    .line 697
    const/4 v4, 0x0

    .line 698
    iget-object v6, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    if-eqz v6, :cond_389

    .line 699
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    iget-object v13, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mID:Ljava/lang/String;

    .line 701
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_163

    .line 703
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "actor_name"

    aput-object v5, v6, v4

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "actor_id= \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "service_provider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "= \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 712
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_163

    .line 713
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_160

    .line 714
    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mDisplayName:Ljava/lang/String;

    .line 716
    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    sget-object v6, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mType:Ljava/lang/String;

    .line 718
    :cond_160
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_163
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    iget-object v5, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mDisplayName:Ljava/lang/String;

    .line 723
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mType:Ljava/lang/String;

    move-object v6, v13

    .line 727
    :goto_16c
    if-eqz v6, :cond_175

    .line 728
    const-string v7, "target_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_175
    if-eqz v5, :cond_17e

    .line 732
    const-string v6, "target_display_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_17e
    if-eqz v4, :cond_187

    .line 736
    const-string v5, "target_type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_187
    const-string v4, "content"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mContent:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActTime:Ljava/lang/Long;

    if-eqz v4, :cond_1a8

    .line 741
    const-string v4, "time"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    :cond_1a8
    const-string v4, "comment_type"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentType:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v4, "comment_target_id"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentTargetID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v4, "comment_sub_id"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentSubID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v4, "comment_count"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentsCount:Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    const-string v4, "commentable"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentable:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 750
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    if-eqz v4, :cond_20d

    .line 751
    const-string v4, "actor_id"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v4, "actor_name"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v4, "is_friend"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mIsFriend:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v4, :cond_38d

    .line 755
    const-string v4, "actor_photo_url"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_20d
    :goto_20d
    const-string v4, "forwardable"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwardable:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    if-eqz v4, :cond_243

    .line 768
    const-string v4, "forwarder_id"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v4, "forwarder_name"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v4, :cond_243

    .line 772
    const-string v4, "forwarder_photo_url"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_243
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mIconURL:Ljava/lang/String;

    if-eqz v4, :cond_250

    .line 778
    const-string v4, "icon_url"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mIconURL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_250
    const-string v4, "recommend_count"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mRecommendsCount:Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    const-string v4, "recommendable"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mRecommendable:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v4, "is_favorite"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mIsFavorite:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 785
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mApplication:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;

    if-eqz v4, :cond_27a

    .line 786
    const-string v4, "application"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mApplication:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;->mName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_27a
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->checkCommonActivity(ILjava/lang/String;)I

    move-result v10

    const/4 v4, 0x1

    if-ne v10, v4, :cond_293

    .line 792
    const-string v4, "common_status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    :cond_293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_3be

    .line 797
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    .line 1048
    :cond_2ad
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2be

    .line 1049
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateActorPhotoUrl(Ljava/util/ArrayList;Ljava/util/Map;I)V

    .line 1051
    :cond_2be
    if-nez v18, :cond_9cb

    .line 1052
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearMaxRowActivity()I
    :try_end_2c3
    .catchall {:try_start_2c .. :try_end_2c3} :catchall_3a3
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c3} :catch_3a1

    .line 1063
    :goto_2c3
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    if-eqz v4, :cond_2dc

    move-object/from16 v4, p1

    .line 1064
    check-cast v4, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    .line 1065
    iget v5, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a06

    const/4 v5, 0x1

    .line 1069
    :goto_2d3
    if-eqz v5, :cond_a09

    .line 1072
    :try_start_2d5
    iget-object v5, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_2dc
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2dc} :catch_a17

    .line 1087
    :cond_2dc
    :goto_2dc
    if-nez v18, :cond_9da

    .line 1088
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    .line 1094
    :cond_2e4
    :goto_2e4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_9f4

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "people"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "people"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1102
    const/4 v4, 0x0

    :goto_349
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9f4

    .line 1103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "people"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1102
    add-int/lit8 v4, v4, 0x1

    goto :goto_349

    .line 725
    :cond_389
    :try_start_389
    iget-object v6, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTargetID:Ljava/lang/String;

    goto/16 :goto_16c

    .line 760
    :cond_38d
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mID:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39f
    .catchall {:try_start_389 .. :try_end_39f} :catchall_3a3
    .catch Ljava/lang/Exception; {:try_start_389 .. :try_end_39f} :catch_3a1

    goto/16 :goto_20d

    .line 1058
    :catch_3a1
    move-exception v4

    .line 1060
    :try_start_3a2
    throw v4
    :try_end_3a3
    .catchall {:try_start_3a2 .. :try_end_3a3} :catchall_3a3

    .line 1063
    :catchall_3a3
    move-exception v4

    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    if-eqz v5, :cond_3bd

    .line 1064
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    .line 1065
    iget v5, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9f5

    const/4 v5, 0x1

    .line 1069
    :goto_3b2
    if-eqz v5, :cond_9f8

    .line 1072
    :try_start_3b4
    iget-object v5, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_3bd
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_3bd} :catch_a04

    .line 1063
    :cond_3bd
    :goto_3bd
    throw v4

    .line 801
    :cond_3be
    const/4 v6, 0x0

    :try_start_3bf
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 802
    const-string v6, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v6, " = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 806
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 807
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v4

    move/from16 v5, v16

    move-object/from16 v6, v17

    .line 808
    :goto_3e7
    if-eqz v9, :cond_81f

    .line 809
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 810
    const-string v4, "attachment_type"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mType:Ljava/lang/String;

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v5, v11, v7, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 814
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 816
    const-string v5, "target_id"

    iget-object v7, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v5, "attachment_name"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v5, "href"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mHref:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v5, "caption"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mCaption:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v5, "description"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v5, "type"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v5, "album_name"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v5, "profile_id"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProfileID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v5, "photo_id"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mPhotoID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v5, "album_id"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mAlbumID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v5, "event_id"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mEventID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v5, "group_id"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mGroupID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v5, "note_id"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mNoteID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v5, "video_id"

    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mVideoID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v5, 0x1

    if-ne v10, v5, :cond_617

    .line 836
    const/4 v5, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 837
    const-string v5, "target_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v5, " = \'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "attachment"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-static {v5, v7, v4, v8, v13}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    move-wide v7, v4

    .line 846
    :goto_4b0
    const-string v4, "attach_target_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52f

    .line 847
    const-string v4, "attach_target_id"

    iget-object v5, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v4, "attach_albumid"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mAlbumID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v4, "attach_caption"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mCaption:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v4, "attach_desc"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mDescription:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v4, "attach_eventid"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mEventID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v4, "attach_groupid"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mGroupID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v4, "attach_name"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v4, "attach_noteid"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mNoteID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v4, "attach_photoid"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mPhotoID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v4, "attach_profid"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProfileID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v4, "attach_type"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mType:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v4, "attach_album_name"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mAlbumName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v4, "attach_videoid"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mVideoID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_52f
    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProperty:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    .line 863
    const/4 v4, 0x0

    .line 864
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 865
    :goto_537
    if-eqz v5, :cond_639

    .line 866
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 868
    const-string v16, "attachment_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 869
    const-string v16, "property_name"

    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v16, "property_text"

    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v16, "property_href"

    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mHref:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_625

    .line 876
    const/16 v16, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 877
    const-string v16, "attachment_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v16, " = \'"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    const-string v17, "property"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v13, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 886
    :goto_5cc
    const/16 v16, 0xf

    move/from16 v0, v16

    if-ge v4, v0, :cond_611

    .line 887
    sget-object v16, Lcom/sec/android/app/sns/db/SnsDB;->PROPERTYS:[[Ljava/lang/String;

    aget-object v16, v16, v4

    const/16 v17, 0x0

    aget-object v16, v16, v17

    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    sget-object v16, Lcom/sec/android/app/sns/db/SnsDB;->PROPERTYS:[[Ljava/lang/String;

    aget-object v16, v16, v4

    const/16 v17, 0x1

    aget-object v16, v16, v17

    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    sget-object v16, Lcom/sec/android/app/sns/db/SnsDB;->PROPERTYS:[[Ljava/lang/String;

    aget-object v16, v16, v4

    const/16 v17, 0x2

    aget-object v16, v16, v17

    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mHref:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_611
    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    .line 893
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_537

    .line 844
    :cond_617
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "attachment"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    move-wide v7, v4

    goto/16 :goto_4b0

    .line 884
    :cond_625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    const-string v17, "property"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5cc

    .line 896
    :cond_639
    iget-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mMedia:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    .line 897
    const/4 v5, 0x0

    .line 898
    :goto_63c
    if-eqz v4, :cond_81a

    .line 899
    add-int/lit8 v5, v5, 0x1

    .line 900
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 902
    const-string v16, "attachment_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 903
    const-string v16, "photo_id"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mPhotoID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v16, "album_id"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlbumID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v16, "video_id"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mVideoID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v16, "note_id"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mNoteID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v16, "mood_id"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mMoodID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v16, "media_href"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mHref:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v16, "media_alt"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlt:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v16, "media_type"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v16, "media_src"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mSrc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v16, "thumbnail_url"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mThumbnailURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v16, "wapphoto_id"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mWapPhotoID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v16, "album_name"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlbumName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    if-nez v6, :cond_6f2

    .line 917
    iget-object v6, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mThumbnailURL:Ljava/lang/String;

    .line 922
    :cond_6f2
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_805

    .line 923
    const/16 v16, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 924
    const-string v16, "attachment_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const-string v16, " = \'"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    const-string v17, "attachmedia"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v13, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 933
    :goto_74e
    const-string v13, "attachm_attachid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_801

    .line 934
    const-string v13, "attachm_albumid"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlbumID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v13, "attachm_attachid"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 936
    const-string v13, "attachm_m_alt"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlt:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v13, "attachm_m_href"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mHref:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v13, "attachm_m_src"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mSrc:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v13, "attachm_m_type"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v13, "attachm_moodid"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mMoodID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v13, "attachm_noteid"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mNoteID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v13, "attachm_photoid"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mPhotoID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v13, "attachm_thumb_url"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mThumbnailURL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v13, "attachm_wapphotoid"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mWapPhotoID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v13, "attachm_album_name"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlbumName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v13, "attachm_videoid"

    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mVideoID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_801
    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    goto/16 :goto_63c

    .line 931
    :cond_805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    const-string v17, "attachmedia"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_74e

    .line 955
    :cond_81a
    iget-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    move-object v9, v4

    .line 956
    goto/16 :goto_3e7

    .line 958
    :cond_81f
    if-eqz v6, :cond_83c

    .line 959
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 961
    const-string v7, "attachment_url"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v4, v8, v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 964
    const/4 v6, 0x0

    .line 967
    :cond_83c
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    .line 968
    :goto_83e
    if-eqz v4, :cond_8cf

    .line 969
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 971
    const-string v7, "target_id"

    iget-object v8, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v7, "tag_id"

    iget-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mID:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v7, "name"

    iget-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mName:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const/4 v7, 0x1

    if-ne v10, v7, :cond_8c4

    .line 978
    const/4 v7, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 979
    const-string v7, "target_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v7, " = \'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "activity_tag"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-static {v7, v8, v11, v9, v13}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 988
    :goto_89b
    const-string v7, "tag_target_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8c0

    .line 989
    const-string v7, "tag_name"

    iget-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v7, "tag_tag_id"

    iget-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v7, "tag_target_id"

    iget-object v8, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_8c0
    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    goto/16 :goto_83e

    .line 986
    :cond_8c4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "activity_tag"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_89b

    .line 997
    :cond_8cf
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    .line 999
    :goto_8d1
    if-eqz v4, :cond_94c

    .line 1000
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1001
    const-string v7, "activity_id"

    iget-object v8, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v7, "service_provider"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1003
    const-string v7, "activity_targetId"

    iget-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mID:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v7, "activity_target_displayname"

    iget-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v7, "activity_target_type"

    iget-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mType:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/4 v7, 0x1

    if-ne v10, v7, :cond_941

    .line 1010
    const/4 v7, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1011
    const-string v7, "activity_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const-string v7, " = \'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "activity_target"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-static {v7, v8, v11, v9, v13}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1020
    :goto_93e
    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    goto :goto_8d1

    .line 1018
    :cond_941
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "activity_target"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_93e

    .line 1023
    :cond_94c
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_997

    .line 1026
    const/4 v4, 0x1

    if-ne v10, v4, :cond_9be

    .line 1027
    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1028
    const-string v4, "attach_target_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v4, " = \'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dirt_activity"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v7, v0, v8, v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1038
    :cond_997
    :goto_997
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1039
    const-string v7, "media_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v7, v8, v4, v9, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1044
    iget-object v4, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    move-object v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 1045
    goto/16 :goto_79

    .line 1035
    :cond_9be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dirt_activity"

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_997

    .line 1053
    :cond_9cb
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_9d5

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearMaxRowFriendActivity()I

    goto/16 :goto_2c3

    .line 1056
    :cond_9d5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearMaxRowGroupActivity()I
    :try_end_9d8
    .catchall {:try_start_3bf .. :try_end_9d8} :catchall_3a3
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_9d8} :catch_3a1

    goto/16 :goto_2c3

    .line 1089
    :cond_9da
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_9e7

    .line 1090
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    goto/16 :goto_2e4

    .line 1091
    :cond_9e7
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_2e4

    .line 1092
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    goto/16 :goto_2e4

    .line 1110
    :cond_9f4
    return v19

    .line 1065
    :cond_9f5
    const/4 v5, 0x0

    goto/16 :goto_3b2

    .line 1074
    :cond_9f8
    :try_start_9f8
    move-object/from16 v0, p2

    iget v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3bd

    .line 1077
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_a02
    .catch Ljava/lang/Exception; {:try_start_9f8 .. :try_end_a02} :catch_a04

    goto/16 :goto_3bd

    .line 1079
    :catch_a04
    move-exception v4

    .line 1080
    throw v4

    .line 1065
    :cond_a06
    const/4 v5, 0x0

    goto/16 :goto_2d3

    .line 1074
    :cond_a09
    :try_start_a09
    move-object/from16 v0, p2

    iget v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2dc

    .line 1077
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_a15
    .catch Ljava/lang/Exception; {:try_start_a09 .. :try_end_a15} :catch_a17

    goto/16 :goto_2dc

    .line 1079
    :catch_a17
    move-exception v4

    .line 1080
    throw v4

    :cond_a19
    move v14, v4

    goto/16 :goto_af

    :cond_a1c
    move/from16 v18, v4

    goto/16 :goto_56
.end method

.method private insertAlbumRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v5, -0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1123
    .line 1126
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    if-nez p2, :cond_15

    .line 1129
    const-string v0, "SNS_DB"

    const-string v2, "insertAlbumRecords:parsedData is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_14
    return v1

    :cond_15
    move-object v0, p1

    .line 1133
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    .line 1134
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .line 1138
    :try_start_1a
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    if-eqz v3, :cond_33

    .line 1139
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getStartOffset()I

    move-result v0

    if-ne v0, v2, :cond_3a

    .line 1140
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearPhotoAlbum()I

    move-object v3, p2

    move v4, v5

    .line 1144
    :goto_29
    if-eqz v3, :cond_162

    .line 1145
    iget-object v0, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mID:Ljava/lang/String;

    if-nez v0, :cond_3d

    .line 1146
    iget-object v0, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    move-object v3, v0

    .line 1147
    goto :goto_29

    .line 1142
    :cond_33
    const-string v0, "SNS_DB"

    const-string v3, "Failed to clear album : req is NOT instanceof SnsRequestPhotoAlbumGet"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    move-object v3, p2

    move v4, v5

    goto :goto_29

    .line 1150
    :cond_3d
    iget-object v0, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mSP:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_49

    .line 1151
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v0

    .line 1153
    :cond_49
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1154
    const-string v7, "service_provider"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1155
    const-string v7, "album_id"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mID:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v7, "wap_id"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mWapID:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v7, "title"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v7, "visible"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mVisible:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v7, "place"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mPlace:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v7, "creater_id"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCreatorID:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCreateTime:Ljava/lang/Long;

    if-eqz v7, :cond_95

    .line 1163
    const-string v7, "create_time"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1165
    :cond_95
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mModifyTime:Ljava/lang/Long;

    if-eqz v7, :cond_a9

    .line 1166
    const-string v7, "modify_time"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mModifyTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1168
    :cond_a9
    const-string v7, "photo_count"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mPhotosCount:Ljava/lang/Integer;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1169
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCoverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    if-eqz v7, :cond_bd

    .line 1170
    const-string v7, "cover_photo_url"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCoverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_bd
    iget-object v7, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "album"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1174
    iget-object v4, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCreatorID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    .line 1175
    iget-object v4, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCreatorID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_d2
    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    :try_end_d4
    .catchall {:try_start_1a .. :try_end_d4} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_d4} :catch_d7

    move v4, v0

    .line 1178
    goto/16 :goto_29

    .line 1179
    :catch_d7
    move-exception v0

    .line 1181
    :try_start_d8
    throw v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d9

    .line 1184
    :catchall_d9
    move-exception v0

    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    if-eqz v3, :cond_eb

    .line 1185
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    .line 1186
    iget v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v3, v2, :cond_15a

    .line 1189
    :goto_e4
    if-eqz v2, :cond_15c

    .line 1191
    :try_start_e6
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_eb} :catch_160

    .line 1184
    :cond_eb
    :goto_eb
    throw v0

    .line 1194
    :cond_ec
    :try_start_ec
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_176

    .line 1203
    :cond_ef
    :goto_ef
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "album"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1206
    :goto_111
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_157

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "album"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_111

    :cond_157
    move v1, v2

    .line 1213
    goto/16 :goto_14

    :cond_15a
    move v2, v1

    .line 1186
    goto :goto_e4

    .line 1194
    :cond_15c
    :try_start_15c
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_160

    goto :goto_eb

    .line 1196
    :catch_160
    move-exception v0

    .line 1197
    throw v0

    .line 1184
    :cond_162
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    if-eqz v0, :cond_ef

    .line 1185
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    .line 1186
    iget v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v0, v2, :cond_178

    move v0, v2

    .line 1189
    :goto_16d
    if-eqz v0, :cond_ec

    .line 1191
    :try_start_16f
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_174} :catch_176

    goto/16 :goto_ef

    .line 1196
    :catch_176
    move-exception v0

    .line 1197
    throw v0

    :cond_178
    move v0, v1

    .line 1186
    goto :goto_16d
.end method

.method private insertComment(Landroid/content/ContentValues;)J
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4111
    .line 4114
    :try_start_0
    const-string v0, "comment_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 4115
    const-string v0, "comment_id"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "comment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-wide v0

    .line 4122
    return-wide v0

    .line 4118
    :catch_19
    move-exception v0

    .line 4119
    throw v0
.end method

.method private insertCommentRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1226
    const/4 v2, 0x1

    .line 1227
    const-wide/16 v3, 0x0

    .line 1228
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    .line 1230
    if-nez p2, :cond_16

    .line 1231
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_14

    .line 1232
    const-string v1, "SNS_DB"

    const-string v2, "insertCommentRecords:parsedData is NULL !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_14
    const/4 v1, 0x0

    .line 1347
    :goto_15
    return v1

    .line 1237
    :cond_16
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1238
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1242
    :try_start_1d
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    if-eqz v1, :cond_d8

    .line 1243
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    move-object v1, v0

    .line 1244
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getStartOffset()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_33

    .line 1245
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearCommentByTargetId(Ljava/lang/String;)I

    .line 1250
    :cond_33
    :goto_33
    const/16 v1, 0xa

    if-ne v5, v1, :cond_b2

    .line 1251
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_5c

    .line 1252
    const-string v1, "SNS_DB"

    const-string v7, "------ Delete NULL IDs -------"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string v1, "SNS_DB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "commentData.mTargetID(RETRIEVE) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTargetID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target_id = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTargetID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v7, " AND "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v7, "comment_id is null"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    iget-object v7, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "comment"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1262
    iget-boolean v7, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v7, :cond_b2

    .line 1263
    const-string v7, "SNS_DB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleted row cnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_b2
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_ce

    .line 1268
    const-string v1, "SNS_DB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "commentData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    move-object v1, p2

    .line 1271
    :goto_cf
    if-eqz v1, :cond_179

    .line 1272
    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mID:Ljava/lang/String;

    if-nez v7, :cond_108

    .line 1273
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    goto :goto_cf

    .line 1247
    :cond_d8
    const-string v1, "SNS_DB"

    const-string v7, "Failed to clear comment : req is NOT instanceof SnsRequestCommentRetrieve"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_1d .. :try_end_df} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_df} :catch_e1

    goto/16 :goto_33

    .line 1304
    :catch_e1
    move-exception v1

    .line 1306
    :try_start_e2
    throw v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e3

    .line 1308
    :catchall_e3
    move-exception v1

    instance-of v2, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    if-eqz v2, :cond_107

    .line 1309
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    .line 1311
    iget v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21d

    const/4 v2, 0x1

    .line 1313
    :goto_f0
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mID:Ljava/lang/String;

    if-nez v3, :cond_100

    .line 1314
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getSpType()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateActivityCommentCnt(Ljava/lang/String;IZ)I

    .line 1317
    :cond_100
    if-eqz v2, :cond_220

    .line 1319
    :try_start_102
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_107} :catch_225

    .line 1308
    :cond_107
    :goto_107
    throw v1

    .line 1277
    :cond_108
    :try_start_108
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1278
    const-string v7, "service_provider"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    const-string v7, "comment_id"

    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v7, "content"

    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mContent:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCreateTime:Ljava/lang/Long;

    if-eqz v7, :cond_13c

    .line 1282
    const-string v7, "time"

    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1284
    :cond_13c
    const-string v7, "commenter_id"

    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v7, "commenter_name"

    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v7, :cond_15f

    .line 1287
    const-string v7, "commenter_photo_url"

    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_15f
    const/16 v7, 0xa

    if-ne v5, v7, :cond_1fb

    .line 1292
    const-string v3, "target_id"

    iget-object v4, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTargetID:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "comment"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_172
    .catchall {:try_start_108 .. :try_end_172} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_172} :catch_e1

    move-result-wide v3

    .line 1299
    :cond_173
    :goto_173
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_20e

    .line 1308
    :cond_179
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    if-eqz v1, :cond_19d

    move-object v1, p1

    .line 1309
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    .line 1311
    iget v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_227

    const/4 v3, 0x1

    .line 1313
    :goto_186
    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mID:Ljava/lang/String;

    if-nez v4, :cond_196

    .line 1314
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getSpType()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateActivityCommentCnt(Ljava/lang/String;IZ)I

    .line 1317
    :cond_196
    if-eqz v3, :cond_22a

    .line 1319
    :try_start_198
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19d} :catch_22f

    .line 1330
    :cond_19d
    :goto_19d
    const/4 v1, 0x0

    .line 1332
    const/16 v3, 0xa

    if-ne v5, v3, :cond_212

    .line 1333
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    .line 1334
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v1

    .line 1340
    :cond_1a8
    :goto_1a8
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1343
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/target/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v1, v2

    .line 1347
    goto/16 :goto_15

    .line 1294
    :cond_1fb
    const/16 v7, 0x9

    if-ne v5, v7, :cond_173

    .line 1295
    :try_start_1ff
    const-string v3, "target_id"

    iget-object v4, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mID:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertComment(Landroid/content/ContentValues;)J

    move-result-wide v3

    goto/16 :goto_173

    .line 1302
    :cond_20e
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    :try_end_210
    .catchall {:try_start_1ff .. :try_end_210} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_210} :catch_e1

    goto/16 :goto_cf

    .line 1335
    :cond_212
    const/16 v3, 0x9

    if-ne v5, v3, :cond_1a8

    .line 1336
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;

    .line 1337
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getTargetID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a8

    .line 1311
    :cond_21d
    const/4 v2, 0x0

    goto/16 :goto_f0

    .line 1321
    :cond_220
    :try_start_220
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_223} :catch_225

    goto/16 :goto_107

    .line 1323
    :catch_225
    move-exception v1

    .line 1324
    throw v1

    .line 1311
    :cond_227
    const/4 v3, 0x0

    goto/16 :goto_186

    .line 1321
    :cond_22a
    :try_start_22a
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_22d} :catch_22f

    goto/16 :goto_19d

    .line 1323
    :catch_22f
    move-exception v1

    .line 1324
    throw v1
.end method

.method private insertFaceBookMsg(Landroid/content/ContentValues;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2947
    .line 2948
    const-string v0, "thread_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2949
    const-string v1, "send_time"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2952
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2953
    const-string v4, "thread_id = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    const-string v4, "send_time < ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2956
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2960
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2961
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3f} :catch_41

    move-result-wide v0

    .line 2965
    return-wide v0

    .line 2962
    :catch_41
    move-exception v0

    .line 2963
    throw v0
.end method

.method private insertFavoriteRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1361
    .line 1362
    const-wide/16 v4, 0x0

    .line 1363
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v6

    .line 1365
    if-nez p2, :cond_17

    .line 1366
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_15

    .line 1367
    const-string v1, "SNS_DB"

    const-string v3, "insertFavoriteRecords:parsedData is NULL !!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move v1, v2

    .line 1428
    :goto_16
    return v1

    .line 1372
    :cond_17
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1373
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    .line 1377
    :try_start_1e
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    if-eqz v1, :cond_39

    .line 1378
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    move-object v1, v0

    .line 1379
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->getStartOffset()I

    move-result v1

    if-ne v1, v3, :cond_2f

    .line 1380
    invoke-virtual {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearCommentFavorite()I

    :cond_2f
    move-object v1, p2

    .line 1385
    :goto_30
    if-eqz v1, :cond_80

    .line 1386
    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mID:Ljava/lang/String;

    if-nez v8, :cond_42

    .line 1387
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    goto :goto_30

    .line 1382
    :cond_39
    const-string v1, "SNS_DB"

    const-string v8, "Failed to clear CommentFavorite : req is NOT instanceof SnsRequestCommentFavoriteGetUser"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    goto :goto_30

    .line 1390
    :cond_42
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1391
    const-string v8, "service_provider"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    const-string v8, "user_id"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mID:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v8, "user_name"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v8, :cond_6d

    .line 1395
    const-string v8, "user_photo_url"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_6d
    const/16 v8, 0x8

    if-ne v6, v8, :cond_7a

    .line 1399
    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "comment_favorite"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_79
    .catchall {:try_start_1e .. :try_end_79} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_79} :catch_97

    move-result-wide v4

    .line 1402
    :cond_7a
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_94

    .line 1411
    :cond_80
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    if-eqz v1, :cond_92

    .line 1412
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    .line 1414
    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v1, v3, :cond_8b

    move v2, v3

    .line 1417
    :cond_8b
    if-eqz v2, :cond_b4

    .line 1418
    :try_start_8d
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_b8

    :cond_92
    :goto_92
    move v1, v3

    .line 1428
    goto :goto_16

    .line 1405
    :cond_94
    :try_start_94
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_96} :catch_97

    goto :goto_30

    .line 1407
    :catch_97
    move-exception v1

    .line 1409
    :try_start_98
    throw v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_99

    .line 1411
    :catchall_99
    move-exception v1

    instance-of v4, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    if-eqz v4, :cond_ab

    .line 1412
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    .line 1414
    iget v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v4, v3, :cond_ac

    .line 1417
    :goto_a4
    if-eqz v3, :cond_ae

    .line 1418
    :try_start_a6
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ab} :catch_b2

    .line 1411
    :cond_ab
    :goto_ab
    throw v1

    :cond_ac
    move v3, v2

    .line 1414
    goto :goto_a4

    .line 1420
    :cond_ae
    :try_start_ae
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_ab

    .line 1422
    :catch_b2
    move-exception v1

    .line 1423
    throw v1

    .line 1420
    :cond_b4
    :try_start_b4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_92

    .line 1422
    :catch_b8
    move-exception v1

    .line 1423
    throw v1
.end method

.method private insertFriendGroupingRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 1842
    .line 1844
    const/4 v3, 0x0

    .line 1846
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1847
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .line 1849
    instance-of v2, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;

    if-eqz v2, :cond_129

    move-object v0, p1

    .line 1850
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;

    .line 1853
    :try_start_13
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getStartOffset()I

    move-result v2

    if-ne v2, v1, :cond_4c

    .line 1854
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_131

    .line 1855
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getSpType()I

    move-result v0

    .line 1857
    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1858
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service_provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "friend_grouping"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v0, v5, v2, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1864
    :cond_4c
    :goto_4c
    if-eqz p2, :cond_de

    .line 1866
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mID:Ljava/lang/String;

    if-nez v0, :cond_55

    .line 1867
    iget-object p2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    goto :goto_4c

    .line 1871
    :cond_55
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1873
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mSP:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_64

    .line 1874
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v0

    .line 1876
    :cond_64
    const-string v2, "service_provider"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1877
    const-string v0, "grouping_id"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mID:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v0, "name"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v0, "full_name"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFullName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string v0, "description"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v0, "mode"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mMode:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v0, "friend_count"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFriendCount:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const-string v0, "following"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFollowing:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-string v0, "follower"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFollower:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    if-eqz v0, :cond_cc

    .line 1887
    const-string v0, "owner"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mID:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v0, "owner_name"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v0, :cond_cc

    .line 1890
    const-string v0, "owner_photo_url"

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    :cond_cc
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend_grouping"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_123

    .line 1897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    .line 1906
    :cond_de
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearMaxRowFriendGrouping()I

    .line 1908
    iget-boolean v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v0, :cond_fd

    .line 1909
    const-string v0, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasNext : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_fd} :catch_127

    :cond_fd
    move v0, v1

    .line 1922
    :goto_fe
    if-eqz v0, :cond_122

    .line 1923
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend_grouping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1927
    :cond_122
    return v0

    .line 1903
    :cond_123
    :try_start_123
    iget-object p2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_125} :catch_127

    goto/16 :goto_4c

    .line 1912
    :catch_127
    move-exception v0

    .line 1914
    throw v0

    .line 1917
    :cond_129
    const-string v1, "SNS_DB"

    const-string v2, "Failed to clear thread : req is NOT instanceof SnsXmlParsedDataFriendGrouping"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    :cond_131
    move v0, v2

    goto/16 :goto_25
.end method

.method private insertFriendListRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1709
    .line 1715
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object v1, p2

    .line 1716
    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 1721
    :try_start_b
    instance-of v2, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    if-eqz v2, :cond_45

    .line 1722
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    move-object v2, v0

    .line 1723
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getStartOffset()I

    move-result v3

    if-ne v3, v4, :cond_39

    .line 1724
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v3, :cond_27

    const-string v3, "nochange"

    iget-object v6, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 1726
    :cond_27
    iget-object v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 1727
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getSpType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearFriendListDataBySP(I)V

    .line 1728
    :cond_32
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getSpType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearIncompleteFriendList(I)I

    :cond_39
    move-object v3, v1

    move v6, v5

    .line 1736
    :goto_3b
    if-eqz v3, :cond_ff

    .line 1738
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    if-nez v2, :cond_5d

    .line 1739
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    move-object v3, v2

    .line 1740
    goto :goto_3b

    .line 1730
    :cond_45
    instance-of v2, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;

    if-eqz v2, :cond_53

    .line 1731
    const-string v2, "SNS_DB"

    const-string v3, "insertFriendListRecords - Follow specific friend."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    move v6, v5

    goto :goto_3b

    .line 1733
    :cond_53
    const-string v2, "SNS_DB"

    const-string v3, "Failed to clear friend old data : req is NOT instanceof SnsRequestFriendListRetrieveEx"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    move v6, v5

    goto :goto_3b

    .line 1743
    :cond_5d
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1745
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_6d

    .line 1746
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    .line 1748
    :cond_6d
    const-string v8, "service_provider"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1749
    const-string v2, "friend_id"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v2, "first_name"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFirstName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v2, "last_name"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mLastName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const-string v2, "full_name"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFullName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const-string v2, "display_name"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v2, "firstlast_name"

    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFirstLastName(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v2, "lastfirst_name"

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFirstLastName(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v2, "new"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1758
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_d6

    .line 1759
    const-string v2, "small_photo_url"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v2, "medium_photo_url"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v2, "full_photo_url"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :cond_d6
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-eqz v2, :cond_210

    .line 1764
    const-string v2, "email_address"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mValue:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 1768
    :goto_e4
    const-string v8, "email_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1771
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "friend_list"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_1a4

    .line 1772
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    .line 1786
    :cond_ff
    iget-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v2, :cond_11b

    .line 1787
    const-string v2, "SNS_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasNext : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_b .. :try_end_11b} :catchall_1c9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11b} :catch_1c7

    .line 1793
    :cond_11b
    instance-of v2, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    if-eqz v2, :cond_151

    move-object v2, p1

    .line 1794
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    .line 1796
    if-eqz v1, :cond_151

    .line 1797
    iget v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v3, v4, :cond_129

    move v5, v4

    .line 1800
    :cond_129
    :try_start_129
    iget-object v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v3, :cond_137

    const-string v3, "nochange"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13e

    .line 1802
    :cond_137
    if-eqz v5, :cond_20b

    .line 1804
    iget-object v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J

    .line 1809
    :cond_13e
    :goto_13e
    iget-object v2, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v2, :cond_151

    .line 1810
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v3

    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFriendResponseTime(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_151} :catch_209

    .line 1820
    :cond_151
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1823
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1828
    return v4

    .line 1776
    :cond_1a4
    :try_start_1a4
    iget-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v2, :cond_1c0

    .line 1777
    const-string v2, "SNS_DB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inserted count: rowId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_1c0
    iget v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    .line 1783
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :try_end_1c4
    .catchall {:try_start_1a4 .. :try_end_1c4} :catchall_1c9
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1c4} :catch_1c7

    move-object v3, v2

    goto/16 :goto_3b

    .line 1789
    :catch_1c7
    move-exception v2

    .line 1791
    :try_start_1c8
    throw v2
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c9

    .line 1793
    :catchall_1c9
    move-exception v2

    move-object v3, v2

    instance-of v2, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    if-eqz v2, :cond_200

    move-object v2, p1

    .line 1794
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    .line 1796
    if-eqz v1, :cond_200

    .line 1797
    iget v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v6, v4, :cond_201

    .line 1800
    :goto_1d8
    :try_start_1d8
    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v5, :cond_1e6

    const-string v5, "nochange"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1ed

    .line 1802
    :cond_1e6
    if-eqz v4, :cond_205

    .line 1804
    iget-object v4, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J

    .line 1809
    :cond_1ed
    :goto_1ed
    iget-object v2, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v2, :cond_200

    .line 1810
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFriendResponseTime(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_200} :catch_203

    .line 1793
    :cond_200
    throw v3

    :cond_201
    move v4, v5

    .line 1797
    goto :goto_1d8

    .line 1812
    :catch_203
    move-exception v1

    .line 1813
    throw v1

    .line 1806
    :cond_205
    :try_start_205
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_208} :catch_203

    goto :goto_1ed

    .line 1812
    :catch_209
    move-exception v1

    .line 1813
    throw v1

    .line 1806
    :cond_20b
    :try_start_20b
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_20e} :catch_209

    goto/16 :goto_13e

    :cond_210
    move v2, v5

    goto/16 :goto_e4
.end method

.method private insertFriendRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 23
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1442
    const/4 v14, 0x1

    .line 1445
    const/4 v3, 0x0

    .line 1446
    const/4 v11, 0x0

    .line 1447
    const/4 v10, 0x0

    .line 1448
    const/4 v2, 0x0

    .line 1450
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1451
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1452
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, p2

    .line 1453
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 1457
    :try_start_18
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    if-eqz v1, :cond_70

    .line 1458
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    move-object v1, v0

    .line 1459
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getStartOffset()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_64

    .line 1460
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v4, :cond_3c

    const-string v4, "nochange"

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 1462
    :cond_3c
    iget-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    if-nez v4, :cond_52

    .line 1463
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getSpType()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearFriendDataBySP(I)V

    .line 1464
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getSpType()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearFriendListDataBySP(I)V

    .line 1466
    :cond_52
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getSpType()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearIncompleteFriend(I)I

    .line 1467
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getSpType()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearIncompleteFriendList(I)I

    :cond_64
    move-object v13, v9

    move v1, v2

    .line 1475
    :goto_66
    if-eqz v13, :cond_19a

    .line 1477
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    if-nez v2, :cond_8a

    .line 1478
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    move-object v13, v2

    .line 1479
    goto :goto_66

    .line 1469
    :cond_70
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;

    if-eqz v1, :cond_80

    .line 1470
    const-string v1, "SNS_DB"

    const-string v4, "insertFriendRecords - Follow specific friend."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v9

    move v1, v2

    goto :goto_66

    .line 1472
    :cond_80
    const-string v1, "SNS_DB"

    const-string v4, "Failed to clear friend old data : req is NOT instanceof SnsRequestFriendListRetrieve"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v9

    move v1, v2

    goto :goto_66

    .line 1482
    :cond_8a
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1484
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9a

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    .line 1487
    :cond_9a
    const-string v4, "service_provider"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1488
    const-string v2, "friend_id"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v2, "first_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFirstName:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const-string v2, "last_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mLastName:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string v2, "full_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFullName:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const-string v2, "display_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const-string v2, "firstlast_name"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFirstLastName(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const-string v2, "lastfirst_name"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFirstLastName(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v2, "birthday"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mBirthday:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v2, "company"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mCompany:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v2, "city"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mCity:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string v2, "jobtitle"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mJobTitle:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const-string v2, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1500
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_123

    .line 1501
    const-string v2, "small_photo_url"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v2, "medium_photo_url"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v2, "full_photo_url"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_123
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    if-eqz v2, :cond_14b

    .line 1506
    const-string v2, "mood_id"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mID:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v2, "mood_text"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mText:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v2, "mood_iconid"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconID:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v2, "mood_iconurl"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconURL:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :cond_14b
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    if-eqz v2, :cond_184

    .line 1513
    const-string v2, "status_id"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mID:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const-string v2, "status_status"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v2, "status_commentscount"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCommentsCount:Ljava/lang/Integer;

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1516
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    if-eqz v2, :cond_184

    .line 1517
    const-string v2, "status_createtime"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1523
    :cond_184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "friend"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_251

    .line 1524
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    .line 1655
    :cond_19a
    :goto_19a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_1b8

    .line 1656
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasNext : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catchall {:try_start_18 .. :try_end_1b8} :catchall_31e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b8} :catch_31c

    .line 1662
    :cond_1b8
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    if-eqz v1, :cond_1f4

    move-object/from16 v1, p1

    .line 1663
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    .line 1665
    iget v2, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4f7

    const/4 v2, 0x1

    .line 1668
    :goto_1c8
    :try_start_1c8
    iget-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v3, :cond_1d6

    const-string v3, "nochange"

    iget-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1df

    .line 1670
    :cond_1d6
    if-eqz v2, :cond_4fc

    .line 1672
    iget-object v2, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J

    .line 1677
    :cond_1df
    :goto_1df
    iget-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v1, :cond_1f4

    .line 1678
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v2

    iget-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    iget-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFriendResponseTime(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1f4} :catch_4fa

    .line 1687
    :cond_1f4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1695
    return v14

    .line 1528
    :cond_251
    :try_start_251
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 1529
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_506

    .line 1530
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    move v12, v2

    .line 1532
    :goto_262
    const-string v2, "service_provider"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1533
    const-string v2, "friend_id"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string v2, "first_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFirstName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v2, "last_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mLastName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v2, "full_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFullName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v2, "display_name"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v2, "firstlast_name"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFirstLastName(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v2, "lastfirst_name"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getFirstLastName(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const-string v2, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_2e7

    .line 1545
    const-string v2, "small_photo_url"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const-string v2, "medium_photo_url"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v2, "full_photo_url"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    :cond_2e7
    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-eqz v2, :cond_2f7

    .line 1553
    const-string v1, "email_address"

    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mValue:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const/4 v1, 0x1

    .line 1557
    :cond_2f7
    const-string v2, "email_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend_list"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    const-wide/16 v1, -0x1

    cmp-long v1, v18, v1

    if-nez v1, :cond_35d

    .line 1561
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z
    :try_end_31a
    .catchall {:try_start_251 .. :try_end_31a} :catchall_31e
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_31a} :catch_31c

    goto/16 :goto_19a

    .line 1658
    :catch_31c
    move-exception v1

    .line 1660
    :try_start_31d
    throw v1
    :try_end_31e
    .catchall {:try_start_31d .. :try_end_31e} :catchall_31e

    .line 1662
    :catchall_31e
    move-exception v1

    move-object v2, v1

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    if-eqz v1, :cond_35c

    move-object/from16 v1, p1

    .line 1663
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    .line 1665
    iget v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4eb

    const/4 v3, 0x1

    .line 1668
    :goto_330
    :try_start_330
    iget-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v4, :cond_33e

    const-string v4, "nochange"

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_347

    .line 1670
    :cond_33e
    if-eqz v3, :cond_4f0

    .line 1672
    iget-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J

    .line 1677
    :cond_347
    :goto_347
    iget-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v1, :cond_35c

    .line 1678
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v3

    iget-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFriendResponseTime(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_35c} :catch_4ee

    .line 1662
    :cond_35c
    throw v2

    .line 1566
    :cond_35d
    const-wide/16 v1, -0x1

    cmp-long v1, v18, v1

    if-eqz v1, :cond_3e2

    .line 1567
    :try_start_363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const-string v1, " AND "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "use_contact"

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1575
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3df

    .line 1576
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1577
    const-string v3, "sp"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1578
    const-string v3, "f_id"

    iget-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "use_contact"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1582
    :cond_3df
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1586
    :cond_3e2
    iget-object v1, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 1587
    if-nez v1, :cond_3f3

    .line 1588
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v2, :cond_3f3

    .line 1589
    const-string v2, "SNS_DB"

    const-string v3, "friendData.mEmail is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_3f3
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-eqz v2, :cond_503

    move-object v2, v1

    move v1, v11

    .line 1594
    :goto_3fb
    if-eqz v2, :cond_43a

    iget-object v3, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mValue:Ljava/lang/String;

    if-eqz v3, :cond_43a

    .line 1596
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1597
    const-string v4, "service_provider"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1598
    const-string v4, "people_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1599
    const-string v4, "email_address"

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const-string v4, "email_dist"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "email"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1604
    add-int/lit8 v11, v1, 0x1

    .line 1605
    iget-object v1, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    move-object v2, v1

    move v1, v11

    .line 1606
    goto :goto_3fb

    :cond_43a
    move v3, v1

    .line 1610
    :goto_43b
    iget-object v1, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 1611
    if-nez v1, :cond_44c

    .line 1612
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v2, :cond_44c

    .line 1613
    const-string v2, "SNS_DB"

    const-string v4, "friendData.mPhoneNum is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_44c
    const-wide/16 v4, -0x1

    cmp-long v2, v18, v4

    if-eqz v2, :cond_49e

    move-object v2, v1

    move v1, v10

    .line 1618
    :goto_454
    if-eqz v2, :cond_49f

    iget-object v4, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mValue:Ljava/lang/String;

    if-eqz v4, :cond_49f

    .line 1620
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1621
    const-string v5, "service_provider"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1622
    const-string v5, "people_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1623
    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mType:Ljava/lang/String;

    if-eqz v5, :cond_47c

    .line 1624
    const-string v5, "phone_type"

    iget-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :cond_47c
    const-string v5, "phone_number"

    iget-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v5, "phone_dist"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "phonenumber"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1630
    add-int/lit8 v10, v1, 0x1

    .line 1631
    iget-object v1, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    move-object v2, v1

    move v1, v10

    .line 1632
    goto :goto_454

    :cond_49e
    move v1, v10

    .line 1635
    :cond_49f
    iget v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    .line 1637
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1638
    const-string v5, "phone_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    const-string v1, "email_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1641
    const/4 v1, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1642
    const-string v1, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    const-string v1, " = "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "friend"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v3, v2, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1649
    const/4 v10, 0x0

    .line 1650
    const/4 v11, 0x0

    .line 1651
    const/4 v2, 0x0

    .line 1652
    iget-object v1, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :try_end_4e6
    .catchall {:try_start_363 .. :try_end_4e6} :catchall_31e
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_4e6} :catch_31c

    move-object v13, v1

    move v3, v4

    move v1, v2

    .line 1653
    goto/16 :goto_66

    .line 1665
    :cond_4eb
    const/4 v3, 0x0

    goto/16 :goto_330

    .line 1680
    :catch_4ee
    move-exception v1

    .line 1681
    throw v1

    .line 1674
    :cond_4f0
    :try_start_4f0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_4f5
    .catch Ljava/lang/Exception; {:try_start_4f0 .. :try_end_4f5} :catch_4ee

    goto/16 :goto_347

    .line 1665
    :cond_4f7
    const/4 v2, 0x0

    goto/16 :goto_1c8

    .line 1680
    :catch_4fa
    move-exception v1

    .line 1681
    throw v1

    .line 1674
    :cond_4fc
    :try_start_4fc
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_501
    .catch Ljava/lang/Exception; {:try_start_4fc .. :try_end_501} :catch_4fa

    goto/16 :goto_1df

    :cond_503
    move v3, v11

    goto/16 :goto_43b

    :cond_506
    move v12, v2

    goto/16 :goto_262
.end method

.method private insertGroupRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1941
    .line 1944
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .line 1948
    :try_start_5
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    if-eqz v1, :cond_57

    .line 1949
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    move-object v1, v0

    .line 1950
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;->getStartOffset()I

    move-result v4

    if-ne v4, v2, :cond_46

    .line 1951
    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mSP:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v11, :cond_f8

    .line 1952
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;->getSpType()I

    move-result v1

    .line 1954
    :goto_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1955
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service_provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "groups"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v1, v5, v4, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_46
    move-object v4, p2

    move v5, v2

    .line 1964
    :goto_48
    if-eqz v4, :cond_e0

    .line 1965
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1967
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mID:Ljava/lang/String;

    if-nez v1, :cond_61

    .line 1968
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    move-object v4, v1

    .line 1969
    goto :goto_48

    .line 1960
    :cond_57
    const-string v1, "SNS_DB"

    const-string v4, "Failed to clear thread : req is NOT instanceof SnsXmlParsedDataGroup"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p2

    move v5, v3

    .line 1961
    goto :goto_48

    .line 1972
    :cond_61
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mSP:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v11, :cond_6d

    .line 1973
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    .line 1975
    :cond_6d
    const-string v7, "service_provider"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1976
    const-string v1, "group_id"

    iget-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mID:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v1, "name"

    iget-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mName:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v1, "type"

    iget-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mType:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v1, "description"

    iget-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v1, "modify_time"

    iget-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mModifyTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1982
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mCoverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    if-eqz v1, :cond_b1

    .line 1983
    const-string v1, "cover_photo_url"

    iget-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mCoverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_b1
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "groups"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1987
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    :try_end_bb
    .catchall {:try_start_5 .. :try_end_bb} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_bb} :catch_bd

    move-object v4, v1

    .line 1988
    goto :goto_48

    .line 1989
    :catch_bd
    move-exception v1

    .line 1991
    :try_start_be
    throw v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    .line 1993
    :catchall_bf
    move-exception v1

    instance-of v4, p1, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    if-eqz v4, :cond_d3

    .line 1994
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    .line 1996
    if-eqz p2, :cond_d3

    .line 1997
    iget v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v4, v2, :cond_d8

    .line 2000
    :goto_cc
    if-eqz v2, :cond_da

    .line 2002
    :try_start_ce
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d3} :catch_de

    .line 1993
    :cond_d3
    :goto_d3
    throw v1

    .line 2004
    :cond_d4
    :try_start_d4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_f4

    .line 2013
    :cond_d7
    :goto_d7
    return v5

    :cond_d8
    move v2, v3

    .line 1997
    goto :goto_cc

    .line 2004
    :cond_da
    :try_start_da
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_d3

    .line 2006
    :catch_de
    move-exception v1

    .line 2007
    throw v1

    .line 1993
    :cond_e0
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    if-eqz v1, :cond_d7

    .line 1994
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    .line 1996
    if-eqz p2, :cond_d7

    .line 1997
    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v1, v2, :cond_f6

    .line 2000
    :goto_ec
    if-eqz v2, :cond_d4

    .line 2002
    :try_start_ee
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f3} :catch_f4

    goto :goto_d7

    .line 2006
    :catch_f4
    move-exception v1

    .line 2007
    throw v1

    :cond_f6
    move v2, v3

    .line 1997
    goto :goto_ec

    :cond_f8
    move v1, v4

    goto/16 :goto_1f
.end method

.method private insertLinkRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3331
    const/4 v0, 0x1

    .line 3332
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;

    .line 3333
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;

    .line 3335
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_21

    .line 3336
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commentData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "deeplink"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3343
    if-eqz p2, :cond_5f

    .line 3344
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3346
    const-string v2, "service_provider"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getSpType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3347
    const-string v2, "link_type"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getLinkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    const-string v2, "target_id"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getTargetID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    const-string v2, "url"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "deeplink"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5f} :catch_60

    .line 3358
    :cond_5f
    return v0

    .line 3353
    :catch_60
    move-exception v0

    .line 3355
    throw v0
.end method

.method private insertMessage(ILandroid/content/ContentValues;)J
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2977
    .line 2980
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = \'success\' AND service_provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2982
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_25

    move-result-wide v0

    .line 2986
    return-wide v0

    .line 2983
    :catch_25
    move-exception v0

    .line 2984
    throw v0
.end method

.method private insertMessageDB(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3364
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3368
    :try_start_5
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_e0

    .line 3369
    const-string v1, "SNS_DB"

    const-string v2, "=== MESSAGE_POST Values ==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "THREAD_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TITLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONTENT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SENDER_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SENDER_NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOLDER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    :cond_e0
    const-string v1, "service_provider"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3381
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    const-string v1, "content"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    iget-object v1, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    if-eqz v1, :cond_115

    .line 3386
    const-string v1, "send_time"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3388
    :cond_115
    const-string v1, "sent"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    const-string v1, "read_state"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mUnread:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->convertBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    const-string v1, "result"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    const-string v1, "sender_id"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    const-string v1, "sender_name"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    const-string v1, "sender_photo_url"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    const-string v1, "folder"

    iget-object v2, p1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15a} :catch_15c

    move-result-wide v0

    .line 3401
    return-wide v0

    .line 3397
    :catch_15c
    move-exception v0

    .line 3398
    throw v0
.end method

.method private insertMessageRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 28
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2477
    const/4 v13, 0x1

    .line 2478
    const/4 v12, 0x0

    .line 2479
    const/4 v11, 0x0

    .line 2481
    const/4 v4, 0x0

    .line 2483
    const/4 v3, 0x0

    .line 2484
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    .line 2485
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v16

    .line 2487
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 2490
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2491
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2493
    const/16 v6, 0x13

    if-ne v5, v6, :cond_6a0

    .line 2494
    const/4 v4, 0x1

    move/from16 v20, v4

    .line 2498
    :goto_20
    const/16 v4, 0x13

    if-eq v5, v4, :cond_28

    const/16 v4, 0x14

    if-ne v5, v4, :cond_4cf

    .line 2500
    :cond_28
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v4

    .line 2502
    const/16 v6, 0x13

    if-ne v5, v6, :cond_7d

    .line 2503
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    move-object v3, v0

    .line 2504
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v5

    .line 2505
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v4

    .line 2506
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getStartOffset()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5d

    .line 2507
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getSpType()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearIncompleteMessage(I)I

    :cond_5d
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 2511
    :goto_61
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2512
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, p2

    move v3, v12

    .line 2513
    :goto_6e
    if-eqz v17, :cond_2c1

    .line 2515
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    if-nez v4, :cond_8c

    .line 2516
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    move-object/from16 v17, v4

    .line 2517
    goto :goto_6e

    .line 2509
    :cond_7d
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto :goto_61

    .line 2520
    :cond_8c
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 2522
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_69d

    move/from16 v12, v16

    .line 2525
    :goto_9c
    const/16 v4, 0x10

    move/from16 v0, v16

    if-ne v0, v4, :cond_b7

    .line 2526
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    .line 2527
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    :cond_b7
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    if-nez v4, :cond_1ee

    .line 2532
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 2537
    :goto_c2
    const-string v4, "service_provider"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2538
    const-string v4, "thread_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    const-string v4, "message_id"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const-string v4, "title"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    const-string v4, "content"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    if-eqz v4, :cond_111

    .line 2543
    const-string v4, "send_time"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2545
    :cond_111
    const-string v4, "sent"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSent:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    const-string v4, "read_state"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mUnread:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/sns/db/SnsDBUtil;->convertBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    const-string v4, "result"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    if-eqz v4, :cond_16d

    .line 2550
    const-string v4, "sender_id"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const-string v4, "sender_name"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v4, :cond_1f5

    .line 2554
    const-string v4, "sender_photo_url"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    :cond_16d
    :goto_16d
    const-string v4, "folder"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const-string v4, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2566
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    if-eqz v4, :cond_1ca

    .line 2567
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_235

    .line 2569
    const-string v4, "representative_receiver_id"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    const-string v4, "representative_receiver"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v4, :cond_1ca

    .line 2572
    const-string v4, "representative_receiver_url"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    :cond_1ca
    :goto_1ca
    if-nez v12, :cond_35d

    .line 2595
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    if-eqz v4, :cond_294

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->isInConflictWithSender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_294

    .line 2598
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    move-object/from16 v17, v4

    .line 2599
    goto/16 :goto_6e

    .line 2534
    :cond_1ee
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    move-object v6, v4

    goto/16 :goto_c2

    .line 2557
    :cond_1f5
    if-eqz v19, :cond_16d

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16d

    if-eqz v18, :cond_16d

    .line 2558
    const-string v4, "sender_photo_url"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_210
    .catchall {:try_start_28 .. :try_end_210} :catchall_214
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_210} :catch_212

    goto/16 :goto_16d

    .line 2756
    :catch_212
    move-exception v3

    .line 2758
    :try_start_213
    throw v3
    :try_end_214
    .catchall {:try_start_213 .. :try_end_214} :catchall_214

    .line 2760
    :catchall_214
    move-exception v3

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    if-eqz v4, :cond_234

    if-eqz p2, :cond_234

    .line 2761
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    .line 2763
    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_67a

    const/4 v4, 0x1

    .line 2766
    :goto_227
    if-eqz v4, :cond_67d

    .line 2768
    :try_start_229
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_234} :catch_682

    .line 2760
    :cond_234
    :goto_234
    throw v3

    .line 2575
    :cond_235
    :try_start_235
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ca

    .line 2577
    const-string v4, "representative_receiver_id"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const-string v4, "representative_receiver"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v4, :cond_277

    .line 2581
    const-string v4, "representative_receiver_url"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ca

    .line 2584
    :cond_277
    if-eqz v19, :cond_1ca

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ca

    if-eqz v18, :cond_1ca

    .line 2585
    const-string v4, "representative_receiver_url"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ca

    .line 2601
    :cond_294
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    if-nez v4, :cond_350

    const-wide/16 v4, 0x0

    :goto_2a4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearDuplicateThread(Ljava/lang/String;Ljava/lang/String;J)I

    .line 2603
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertFaceBookMsg(Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 2609
    :goto_2b1
    const-wide/16 v4, -0x1

    cmp-long v4, v14, v4

    if-nez v4, :cond_699

    .line 2611
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_367

    .line 2612
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    .line 2699
    :cond_2c1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearMaxRowMessage()I
    :try_end_2c4
    .catchall {:try_start_235 .. :try_end_2c4} :catchall_214
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_2c4} :catch_212

    move v4, v11

    move v5, v3

    move v6, v13

    .line 2760
    :goto_2c7
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    if-eqz v3, :cond_2e6

    if-eqz p2, :cond_2e6

    .line 2761
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    .line 2763
    move-object/from16 v0, p2

    iget v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_684

    const/4 v3, 0x1

    .line 2766
    :goto_2d9
    if-eqz v3, :cond_687

    .line 2768
    :try_start_2db
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_2e6
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2e6} :catch_68c

    .line 2778
    :cond_2e6
    :goto_2e6
    if-eqz v6, :cond_679

    .line 2779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2782
    const/4 v3, 0x0

    :goto_310
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_603

    .line 2783
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/sp/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2782
    add-int/lit8 v3, v3, 0x1

    goto :goto_310

    .line 2601
    :cond_350
    :try_start_350
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    goto/16 :goto_2a4

    .line 2606
    :cond_35d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertMessage(ILandroid/content/ContentValues;)J

    move-result-wide v14

    goto/16 :goto_2b1

    .line 2615
    :cond_367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2616
    const-string v3, "message_id"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    const-string v3, " = \'"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    const-string v3, "\' AND "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    const-string v3, "thread_id"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    const-string v3, " = \'"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2622
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    const-string v3, "\'"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2631
    if-eqz v5, :cond_696

    .line 2632
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_693

    .line 2633
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2635
    :goto_3cb
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2637
    :goto_3ce
    const/4 v5, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2638
    const-string v5, "message_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    const-string v5, " = "

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2642
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "msg_receiver_map"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2645
    const/4 v5, 0x1

    move-wide v7, v3

    move v4, v5

    .line 2649
    :goto_3fc
    const/4 v3, 0x0

    .line 2650
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-eqz v5, :cond_48d

    .line 2651
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 2652
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2653
    :goto_40c
    if-eqz v5, :cond_475

    .line 2654
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 2655
    const-string v4, "message_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2656
    const-string v4, "service_provider"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2657
    const-string v4, "receiver_id"

    iget-object v6, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    invoke-virtual {v9, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    const-string v4, "receiver_name"

    iget-object v6, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v9, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    iget-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v4, :cond_450

    .line 2660
    const-string v4, "receiver_photo_url"

    iget-object v6, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v9, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    :cond_43e
    :goto_43e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "msg_receiver_map"

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2671
    const/4 v6, 0x1

    .line 2673
    iget-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 2674
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    move v4, v6

    goto :goto_40c

    .line 2663
    :cond_450
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v6, v6, v10

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43e

    if-eqz v19, :cond_43e

    iget-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43e

    if-eqz v18, :cond_43e

    .line 2665
    const-string v4, "receiver_photo_url"

    move-object/from16 v0, v18

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43e

    .line 2677
    :cond_475
    if-nez v12, :cond_48d

    .line 2678
    const/4 v11, 0x1

    .line 2680
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48d

    .line 2681
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    :cond_48d
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2687
    const/4 v6, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2688
    const-string v6, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2689
    const-string v6, " = "

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2692
    const-string v6, "receiver_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "message"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2697
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    move-object/from16 v17, v3

    move v3, v4

    .line 2698
    goto/16 :goto_6e

    .line 2700
    :cond_4cf
    const/16 v3, 0x15

    if-ne v5, v3, :cond_68e

    .line 2702
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getPostType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50c

    .line 2704
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReceiverID()[Ljava/lang/String;

    move-result-object v3

    .line 2705
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertNewSentMessage(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;[Ljava/lang/String;)V

    .line 2706
    const/4 v12, 0x1

    move v3, v11

    move v4, v12

    move v5, v13

    .line 2754
    :goto_4fa
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v4

    move v4, v3

    goto/16 :goto_2c7

    .line 2707
    :cond_50c
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getPostType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reply"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5fe

    .line 2713
    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "sender_name"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "sender_id"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "sender_photo_url"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v5, v3

    .line 2718
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReceiverID()[Ljava/lang/String;

    move-result-object v14

    .line 2720
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyThreadID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a5

    .line 2722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyThreadID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "thread_id ASC"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2725
    if-eqz v3, :cond_59f

    .line 2726
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2, v14}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertReplySentMessageHasThread(Lcom/sec/android/app/sns/request/data/SnsRequest;Landroid/database/Cursor;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;[Ljava/lang/String;)V

    .line 2727
    const/4 v12, 0x1

    .line 2728
    const/4 v11, 0x1

    .line 2730
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5fe

    .line 2731
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_4fa

    .line 2733
    :cond_59f
    const/4 v13, 0x0

    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_4fa

    .line 2734
    :cond_5a5
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyMessageID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f7

    .line 2736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message_id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyMessageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2742
    if-eqz v3, :cond_5f1

    .line 2743
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2, v14}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertReplySentMessageNoThread(Lcom/sec/android/app/sns/request/data/SnsRequest;Landroid/database/Cursor;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;[Ljava/lang/String;)V

    .line 2744
    const/4 v12, 0x1

    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_4fa

    .line 2746
    :cond_5f1
    const/4 v13, 0x0

    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_4fa

    .line 2748
    :cond_5f7
    const-string v3, "SNS_DB"

    const-string v4, "insertMessageRecords : Invalid message post, reply type must have msgid or threadid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5fe
    .catchall {:try_start_350 .. :try_end_5fe} :catchall_214
    .catch Ljava/lang/Exception; {:try_start_350 .. :try_end_5fe} :catch_212

    :cond_5fe
    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_4fa

    .line 2788
    :cond_603
    if-eqz v5, :cond_62c

    .line 2789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "msg_receiver_map"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2793
    :cond_62c
    if-eqz v4, :cond_679

    .line 2794
    const/4 v3, 0x0

    move v4, v3

    :goto_630
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_679

    .line 2795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "message"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/thread/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/receiver"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2794
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_630

    .line 2802
    :cond_679
    return v6

    .line 2763
    :cond_67a
    const/4 v4, 0x0

    goto/16 :goto_227

    .line 2770
    :cond_67d
    :try_start_67d
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_680
    .catch Ljava/lang/Exception; {:try_start_67d .. :try_end_680} :catch_682

    goto/16 :goto_234

    .line 2772
    :catch_682
    move-exception v3

    .line 2773
    throw v3

    .line 2763
    :cond_684
    const/4 v3, 0x0

    goto/16 :goto_2d9

    .line 2770
    :cond_687
    :try_start_687
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_68a
    .catch Ljava/lang/Exception; {:try_start_687 .. :try_end_68a} :catch_68c

    goto/16 :goto_2e6

    .line 2772
    :catch_68c
    move-exception v3

    .line 2773
    throw v3

    :cond_68e
    move v4, v11

    move v5, v12

    move v6, v13

    goto/16 :goto_2c7

    :cond_693
    move-wide v3, v14

    goto/16 :goto_3cb

    :cond_696
    move-wide v3, v14

    goto/16 :goto_3ce

    :cond_699
    move-wide v7, v14

    move v4, v3

    goto/16 :goto_3fc

    :cond_69d
    move v12, v4

    goto/16 :goto_9c

    :cond_6a0
    move/from16 v20, v4

    goto/16 :goto_20
.end method

.method private insertMsgThreadRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2301
    const/4 v2, 0x1

    .line 2304
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2305
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .line 2306
    if-eqz p2, :cond_e

    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    if-nez v1, :cond_10

    .line 2307
    :cond_e
    const/4 v1, 0x0

    .line 2462
    :goto_f
    return v1

    .line 2310
    :cond_10
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 2313
    :try_start_12
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    if-eqz v1, :cond_1b5

    .line 2314
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    move-object v1, v0

    .line 2315
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getStartOffset()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_24

    .line 2316
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearThreadMsg()I

    .line 2321
    :cond_24
    :goto_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v3

    .line 2323
    :goto_2a
    if-eqz v4, :cond_102

    .line 2324
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2325
    if-eqz v4, :cond_2b1

    .line 2326
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3e

    .line 2327
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    .line 2329
    :cond_3e
    const-string v3, "service_provider"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2330
    const-string v1, "thread_id"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mID:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    const-string v1, "message_id"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    const-string v1, "title"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    const-string v1, "content"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    if-eqz v1, :cond_79

    .line 2335
    const-string v1, "send_time"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2337
    :cond_79
    const-string v1, "sent"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSent:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const-string v1, "read_state"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mUnread:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/sns/db/SnsDBUtil;->convertBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    const-string v1, "result"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    const-string v1, "sender_id"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const-string v1, "sender_name"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v1, :cond_b5

    .line 2343
    const-string v1, "sender_photo_url"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    :cond_b5
    const-string v1, "folder"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    if-eqz v1, :cond_f0

    .line 2349
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 2351
    const-string v1, "representative_receiver_id"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    const-string v1, "representative_receiver"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v1, :cond_f0

    .line 2354
    const-string v1, "representative_receiver_url"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    :cond_f0
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "thread_message"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2363
    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_244

    .line 2364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z
    :try_end_102
    .catchall {:try_start_12 .. :try_end_102} :catchall_1c0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_102} :catch_1be

    .line 2407
    :cond_102
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    if-eqz v1, :cond_116

    move-object v1, p1

    .line 2408
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    .line 2409
    iget v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c4

    const/4 v3, 0x1

    .line 2412
    :goto_10f
    if-eqz v3, :cond_2c7

    .line 2414
    :try_start_111
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_116} :catch_2cc

    .line 2426
    :cond_116
    :goto_116
    :try_start_116
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mID:Ljava/lang/String;

    .line 2427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2429
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_12c

    .line 2430
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    .line 2432
    :cond_12c
    const-string v6, "thread_id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    const-string v6, "service_provider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2440
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2441
    const-string v1, "read_state"

    const-string v6, "true"

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "message"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v1, v6, v5, v4, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2446
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_183

    .line 2447
    const-string v1, "SNS_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set read_state to true : thread id = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_183} :catch_2c2

    .line 2457
    :cond_183
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "thread_message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v1, v2

    .line 2462
    goto/16 :goto_f

    .line 2318
    :cond_1b5
    :try_start_1b5
    const-string v1, "SNS_DB"

    const-string v4, "Failed to clear thread : req is NOT instanceof SnsRequestMessageThreadRetrieve"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catchall {:try_start_1b5 .. :try_end_1bc} :catchall_1c0
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1bc} :catch_1be

    goto/16 :goto_24

    .line 2401
    :catch_1be
    move-exception v1

    .line 2403
    :try_start_1bf
    throw v1
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1c0

    .line 2407
    :catchall_1c0
    move-exception v1

    move-object v2, v1

    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    if-eqz v1, :cond_1d6

    move-object v1, p1

    .line 2408
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    .line 2409
    iget v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b8

    const/4 v3, 0x1

    .line 2412
    :goto_1cf
    if-eqz v3, :cond_2bb

    .line 2414
    :try_start_1d1
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d6} :catch_2c0

    .line 2426
    :cond_1d6
    :goto_1d6
    :try_start_1d6
    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mID:Ljava/lang/String;

    .line 2427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2429
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1ec

    .line 2430
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    .line 2432
    :cond_1ec
    const-string v6, "thread_id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    const-string v6, "service_provider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2440
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2441
    const-string v1, "read_state"

    const-string v6, "true"

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "message"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v1, v6, v5, v4, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2446
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_243

    .line 2447
    const-string v1, "SNS_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set read_state to true : thread id = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_243} :catch_2b6

    .line 2407
    :cond_243
    throw v2

    .line 2368
    :cond_244
    :try_start_244
    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 2370
    const/4 v1, 0x0

    .line 2371
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2372
    :goto_24c
    if-eqz v3, :cond_282

    .line 2373
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 2374
    const-string v10, "message_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2375
    const-string v10, "receiver_id"

    iget-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    const-string v10, "receiver_name"

    iget-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    iget-object v10, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v10, :cond_275

    .line 2378
    const-string v10, "receiver_photo_url"

    iget-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v11, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    :cond_275
    iget-object v10, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "thread_msg_receiver_map"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2383
    add-int/lit8 v1, v1, 0x1

    .line 2385
    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    goto :goto_24c

    .line 2388
    :cond_282
    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v6, v3, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2389
    const-string v3, "_id"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    const-string v3, "="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2391
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2393
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2395
    const-string v7, "receiver_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2396
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "thread_message"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v1, v7, v3, v8, v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2399
    :cond_2b1
    iget-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    :try_end_2b3
    .catchall {:try_start_244 .. :try_end_2b3} :catchall_1c0
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_2b3} :catch_1be

    move-object v4, v1

    goto/16 :goto_2a

    .line 2450
    :catch_2b6
    move-exception v1

    .line 2452
    throw v1

    .line 2409
    :cond_2b8
    const/4 v3, 0x0

    goto/16 :goto_1cf

    .line 2416
    :cond_2bb
    :try_start_2bb
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2be} :catch_2c0

    goto/16 :goto_1d6

    .line 2418
    :catch_2c0
    move-exception v1

    .line 2420
    throw v1

    .line 2450
    :catch_2c2
    move-exception v1

    .line 2452
    throw v1

    .line 2409
    :cond_2c4
    const/4 v3, 0x0

    goto/16 :goto_10f

    .line 2416
    :cond_2c7
    :try_start_2c7
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2ca} :catch_2cc

    goto/16 :goto_116

    .line 2418
    :catch_2cc
    move-exception v1

    .line 2420
    throw v1
.end method

.method private insertNewSentMessage(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;[Ljava/lang/String;)V
    .registers 26
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3820
    .line 3821
    const/4 v5, 0x0

    .line 3822
    const/4 v6, 0x0

    .line 3826
    :try_start_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v4

    const/4 v2, -0x1

    if-ne v4, v2, :cond_11

    .line 3827
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    .line 3830
    :cond_11
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    if-eqz v2, :cond_ef

    .line 3831
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    .line 3837
    :goto_1b
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_fa

    .line 3838
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mTitle:Ljava/lang/String;

    .line 3844
    :goto_25
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    if-nez v2, :cond_103

    .line 3845
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2f
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 3850
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertMessageDB(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v19

    .line 3855
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 3857
    const/4 v14, 0x0

    .line 3858
    const/4 v13, 0x0

    .line 3859
    const/4 v5, 0x0

    .line 3861
    const/16 v16, 0x0

    .line 3863
    const/4 v15, 0x0

    .line 3864
    const/4 v6, 0x0

    .line 3865
    const/4 v3, 0x0

    .line 3869
    const/4 v2, 0x0

    move/from16 v18, v2

    move-object v2, v5

    :goto_48
    move-object/from16 v0, p3

    array-length v5, v0

    move/from16 v0, v18

    if-ge v0, v5, :cond_558

    .line 3871
    aget-object v5, p3, v18

    if-eqz v5, :cond_531

    .line 3873
    const/4 v5, 0x1

    .line 3877
    const-string v7, "@"

    aget-object v8, p3, v18

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 3879
    aget-object v7, p3, v18

    const/4 v8, 0x1

    aget-object v9, p3, v18

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 3881
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getReceiverIdByName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_109

    .line 3882
    const/4 v5, 0x0

    .line 3889
    :goto_7c
    if-eqz v5, :cond_59f

    .line 3891
    aget-object v5, p3, v18

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 3892
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    .line 3893
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    .line 3894
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 4069
    :goto_a0
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 4070
    const-string v5, "message_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4071
    const-string v5, "service_provider"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4072
    const-string v5, "receiver_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    const-string v5, "receiver_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4074
    const-string v5, "receiver_photo_url"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "msg_receiver_map"

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v7, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4076
    add-int/lit8 v9, v16, 0x1

    .line 4079
    if-nez v14, :cond_596

    move-object v2, v3

    move-object v5, v6

    move-object v7, v8

    :goto_e1
    move-object v13, v5

    move-object v5, v2

    move v2, v9

    .line 3869
    :goto_e4
    add-int/lit8 v9, v18, 0x1

    move/from16 v18, v9

    move-object v15, v8

    move/from16 v16, v2

    move-object v14, v7

    move-object v2, v5

    goto/16 :goto_48

    .line 3833
    :cond_ef
    const-string v2, "SNS_DB"

    const-string v3, " *** insertMessageRecords() : New Message Post : message.mID is null !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f6} :catch_f8

    goto/16 :goto_1b

    .line 4098
    :catch_f8
    move-exception v2

    .line 4099
    throw v2

    .line 3840
    :cond_fa
    :try_start_fa
    const-string v2, "SNS_DB"

    const-string v3, " *** insertMessageRecords() : New Message Post : message.mTitle is null !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 3847
    :cond_103
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    goto/16 :goto_2f

    .line 3885
    :cond_109
    aput-object v7, p3, v18

    :cond_10b
    move-object/from16 v17, v6

    goto/16 :goto_7c

    .line 3897
    :cond_10f
    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "friend_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "full_name"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "small_photo_url"

    aput-object v6, v7, v5

    .line 3902
    const/16 v5, 0xe

    if-eq v4, v5, :cond_1ad

    .line 3903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "friend"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "friend_id= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3915
    :goto_164
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_1f1

    .line 3916
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_59a

    .line 3917
    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3918
    const/16 v3, 0xe

    if-eq v4, v3, :cond_1ee

    .line 3919
    const/4 v3, 0x1

    aget-object v3, v7, v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_19a

    .line 3921
    const-string v3, "display_name"

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3926
    :cond_19a
    :goto_19a
    const/4 v3, 0x2

    aget-object v3, v7, v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v17

    move-object v8, v15

    .line 4065
    :goto_1a8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a0

    .line 3908
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "friend"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "display_name= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_164

    .line 3924
    :cond_1ee
    aget-object v17, p3, v18

    goto :goto_19a

    .line 3933
    :cond_1f1
    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "friend_id"

    aput-object v8, v7, v6

    const/4 v6, 0x1

    const-string v8, "full_name"

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string v8, "small_photo_url"

    aput-object v8, v7, v6

    .line 3938
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3939
    const/16 v5, 0xe

    if-eq v4, v5, :cond_3c0

    .line 3940
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "friend_list"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "friend_id= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3953
    :goto_249
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2a7

    .line 3955
    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "actor_id"

    aput-object v8, v7, v6

    const/4 v6, 0x1

    const-string v8, "actor_name"

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string v8, "actor_photo_url"

    aput-object v8, v7, v6

    .line 3960
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3961
    const/16 v5, 0xe

    if-eq v4, v5, :cond_401

    .line 3962
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actor_id= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3976
    :cond_2a7
    :goto_2a7
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2f3

    .line 3979
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3980
    const/16 v5, 0xe

    if-eq v4, v5, :cond_442

    .line 3981
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "friend_activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actor_id= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3997
    :cond_2f3
    :goto_2f3
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_351

    .line 4001
    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "receiver_id"

    aput-object v8, v7, v6

    const/4 v6, 0x1

    const-string v8, "receiver_name"

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string v8, "receiver_photo_url"

    aput-object v8, v7, v6

    .line 4007
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4009
    const/16 v5, 0xe

    if-eq v4, v5, :cond_483

    .line 4010
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "msg_receiver_map"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receiver_id= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4026
    :cond_351
    :goto_351
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_3af

    .line 4029
    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "sender_id"

    aput-object v8, v7, v6

    const/4 v6, 0x1

    const-string v8, "sender_name"

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string v8, "sender_photo_url"

    aput-object v8, v7, v6

    .line 4034
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4036
    const/16 v5, 0xe

    if-eq v4, v5, :cond_4c4

    .line 4037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "message"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sender_id= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4051
    :cond_3af
    :goto_3af
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_505

    .line 4052
    const-string v2, "SNS_DB"

    const-string v3, " *** insertMessageRecords() : New Message Post : Receiver is unavailable !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4101
    :goto_3bf
    return-void

    .line 3945
    :cond_3c0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "friend_list"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "display_name= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_249

    .line 3967
    :cond_401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actor_name= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_2a7

    .line 3987
    :cond_442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "friend_activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actor_name= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_2f3

    .line 4016
    :cond_483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "msg_receiver_map"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receiver_name= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_351

    .line 4042
    :cond_4c4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "message"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sender_name= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "service_provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_3af

    .line 4057
    :cond_505
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_59a

    .line 4058
    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4059
    const/4 v3, 0x1

    aget-object v3, v7, v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 4060
    const/4 v3, 0x2

    aget-object v3, v7, v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v17

    move-object v8, v15

    goto/16 :goto_1a8

    .line 4085
    :cond_531
    const-string v5, "SNS_DB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " *** insertMessageRecords() : New Message Post : Receiver["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is NULL!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v15

    move-object v5, v2

    move-object v7, v14

    move/from16 v2, v16

    goto/16 :goto_e4

    .line 4090
    :cond_558
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4091
    const-string v4, "representative_receiver_id"

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    const-string v4, "representative_receiver"

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4093
    const-string v4, "representative_receiver_url"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    const-string v2, "receiver_count"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v3, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_594
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_594} :catch_f8

    goto/16 :goto_3bf

    :cond_596
    move-object v5, v13

    move-object v7, v14

    goto/16 :goto_e1

    :cond_59a
    move-object/from16 v6, v17

    move-object v8, v15

    goto/16 :goto_1a8

    :cond_59f
    move-object/from16 v6, v17

    move-object v8, v15

    goto/16 :goto_a0
.end method

.method private insertNotificationListRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2863
    .line 2864
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    .line 2866
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .line 2870
    :try_start_8
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    move-object v1, v0

    .line 2871
    instance-of v5, p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    if-eqz v5, :cond_28

    .line 2872
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;->getStartOffset()I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 2873
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearNotificationList()I

    .line 2878
    :cond_19
    :goto_19
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object v1, p2

    .line 2880
    :goto_1f
    if-eqz v1, :cond_e9

    .line 2882
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mID:Ljava/lang/String;

    if-nez v6, :cond_47

    .line 2883
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    goto :goto_1f

    .line 2875
    :cond_28
    const-string v1, "SNS_DB"

    const-string v5, "Failed to clear notification list : req is NOT instanceof SnsRequestNotificationRetrieve"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_30

    goto :goto_19

    .line 2913
    :catch_30
    move-exception v1

    .line 2915
    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 2918
    :catchall_32
    move-exception v1

    instance-of v4, p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    if-eqz v4, :cond_46

    if-eqz p2, :cond_46

    .line 2919
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    .line 2920
    iget v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v4, v2, :cond_df

    .line 2924
    :goto_3f
    if-eqz v2, :cond_e2

    .line 2926
    :try_start_41
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_e7

    .line 2918
    :cond_46
    :goto_46
    throw v1

    .line 2887
    :cond_47
    :try_start_47
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2889
    const-string v6, "service_provider"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2890
    const-string v6, "notification_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    const-string v6, "name"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const-string v6, "content"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mContent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    const-string v6, "related_type"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    const-string v6, "related_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    const-string v6, "related_name"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    const-string v6, "related_content"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedContent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    const-string v6, "related_href"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedHref:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    const-string v6, "sub_related_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mSubRelatedID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    const-string v6, "owner_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mOwnerID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    const-string v6, "owner_name"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    const-string v6, "owner_photo_url"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mOwnerProfilePhotoURL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    const-string v6, "type_icon_url"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mTypeIconURL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mCreateTime:Ljava/lang/Long;

    if-eqz v6, :cond_c4

    .line 2905
    const-string v6, "create_time"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2907
    :cond_c4
    const-string v6, "unread"

    iget-boolean v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mUnread:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2909
    iget-object v6, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "notification_list"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2910
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    :try_end_d9
    .catchall {:try_start_47 .. :try_end_d9} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_d9} :catch_30

    goto/16 :goto_1f

    .line 2928
    :cond_db
    :try_start_db
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_fe

    .line 2935
    :cond_de
    :goto_de
    return v2

    :cond_df
    move v2, v3

    .line 2920
    goto/16 :goto_3f

    .line 2928
    :cond_e2
    :try_start_e2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_e7

    goto/16 :goto_46

    .line 2930
    :catch_e7
    move-exception v1

    .line 2931
    throw v1

    .line 2918
    :cond_e9
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    if-eqz v1, :cond_de

    if-eqz p2, :cond_de

    .line 2919
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    .line 2920
    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v1, v2, :cond_f6

    move v3, v2

    .line 2924
    :cond_f6
    if-eqz v3, :cond_db

    .line 2926
    :try_start_f8
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fd} :catch_fe

    goto :goto_de

    .line 2930
    :catch_fe
    move-exception v1

    .line 2931
    throw v1
.end method

.method private insertNotificationRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 2815
    .line 2818
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .line 2821
    :goto_3
    if-eqz p2, :cond_75

    .line 2822
    :try_start_5
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mSp:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 2823
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v0

    .line 2825
    :cond_12
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mName:Ljava/lang/String;

    .line 2826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2827
    const-string v3, "service_provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "notification"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v2, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2838
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2839
    const-string v3, "service_provider"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2840
    const-string v0, "name"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    const-string v0, "count"

    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2842
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notification"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2844
    iget-object p2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_72} :catch_73

    goto :goto_3

    .line 2846
    :catch_73
    move-exception v0

    .line 2848
    throw v0

    .line 2850
    :cond_75
    return v8
.end method

.method private insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4135
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4138
    const/4 v0, -0x1

    .line 4140
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    if-eqz v3, :cond_5e

    move-object v0, p1

    .line 4142
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    .line 4143
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getStartOffset()I

    move-result v3

    .line 4144
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getMaxCount()I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    .line 4248
    :goto_1a
    :try_start_1a
    const-string v5, "service_provider"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4249
    const-string v5, "offset_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4252
    const-string v0, "start_offset"

    add-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4253
    const-string v0, "max_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4254
    const-string v0, "start_context"

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    const-string v0, "content"

    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    if-gt v3, v2, :cond_15e

    .line 4259
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5c} :catch_165

    move-result-wide v0

    .line 4261
    :goto_5d
    return-wide v0

    .line 4147
    :cond_5e
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    if-eqz v3, :cond_6f

    move-object v0, p1

    .line 4149
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    .line 4150
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getStartOffset()I

    move-result v3

    .line 4151
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getMaxCount()I

    move-result v1

    .line 4152
    const/4 v0, 0x3

    .line 4154
    goto :goto_1a

    :cond_6f
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    if-eqz v3, :cond_80

    move-object v0, p1

    .line 4156
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    .line 4157
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->getStartOffset()I

    move-result v3

    .line 4158
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->getMaxCount()I

    move-result v1

    .line 4159
    const/4 v0, 0x4

    .line 4161
    goto :goto_1a

    :cond_80
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    if-eqz v3, :cond_91

    move-object v0, p1

    .line 4163
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    .line 4164
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getStartOffset()I

    move-result v3

    .line 4165
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getMaxCount()I

    move-result v1

    move v0, v2

    .line 4168
    goto :goto_1a

    :cond_91
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    if-eqz v3, :cond_a3

    move-object v0, p1

    .line 4170
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    .line 4171
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getStartOffset()I

    move-result v3

    .line 4172
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getMaxCount()I

    move-result v1

    .line 4173
    const/4 v0, 0x2

    .line 4175
    goto/16 :goto_1a

    :cond_a3
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    if-eqz v3, :cond_b6

    move-object v0, p1

    .line 4177
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    .line 4178
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getStartOffset()I

    move-result v3

    .line 4179
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getMaxCount()I

    move-result v1

    .line 4180
    const/16 v0, 0xe

    .line 4182
    goto/16 :goto_1a

    :cond_b6
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    if-eqz v3, :cond_c8

    move-object v0, p1

    .line 4184
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    .line 4185
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getStartOffset()I

    move-result v3

    .line 4186
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getMaxCount()I

    move-result v1

    .line 4187
    const/4 v0, 0x6

    .line 4189
    goto/16 :goto_1a

    :cond_c8
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    if-eqz v3, :cond_da

    move-object v0, p1

    .line 4191
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    .line 4192
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getStartOffset()I

    move-result v3

    .line 4193
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getMaxCount()I

    move-result v1

    .line 4194
    const/4 v0, 0x7

    .line 4196
    goto/16 :goto_1a

    :cond_da
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    if-eqz v3, :cond_ed

    move-object v0, p1

    .line 4198
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    .line 4199
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;->getStartOffset()I

    move-result v3

    .line 4200
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;->getMaxCount()I

    move-result v1

    .line 4201
    const/16 v0, 0x8

    .line 4203
    goto/16 :goto_1a

    :cond_ed
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    if-eqz v3, :cond_100

    move-object v0, p1

    .line 4205
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    .line 4206
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getStartOffset()I

    move-result v3

    .line 4207
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getMaxCount()I

    move-result v1

    .line 4208
    const/16 v0, 0x9

    .line 4210
    goto/16 :goto_1a

    :cond_100
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    if-eqz v3, :cond_113

    move-object v0, p1

    .line 4212
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    .line 4213
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;->getStartOffset()I

    move-result v3

    .line 4214
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;->getMaxCount()I

    move-result v1

    .line 4215
    const/16 v0, 0xa

    .line 4217
    goto/16 :goto_1a

    :cond_113
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    if-eqz v3, :cond_126

    move-object v0, p1

    .line 4219
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    .line 4220
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getStartOffset()I

    move-result v3

    .line 4221
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getMaxCount()I

    move-result v1

    .line 4222
    const/16 v0, 0xc

    .line 4224
    goto/16 :goto_1a

    :cond_126
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;

    if-eqz v3, :cond_138

    move-object v0, p1

    .line 4225
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;

    .line 4226
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getStartOffset()I

    move-result v3

    .line 4227
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getMaxCount()I

    move-result v1

    .line 4228
    const/4 v0, 0x5

    .line 4230
    goto/16 :goto_1a

    :cond_138
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    if-eqz v3, :cond_14b

    move-object v0, p1

    .line 4232
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    .line 4233
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getStartOffset()I

    move-result v3

    .line 4234
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getMaxCount()I

    move-result v1

    .line 4235
    const/16 v0, 0xd

    .line 4237
    goto/16 :goto_1a

    :cond_14b
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    if-eqz v3, :cond_167

    move-object v0, p1

    .line 4239
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    .line 4240
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getStartOffset()I

    move-result v3

    .line 4241
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getMaxCount()I

    move-result v1

    .line 4242
    const/16 v0, 0xb

    goto/16 :goto_1a

    .line 4261
    :cond_15e
    :try_start_15e
    invoke-direct {p0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateOffset(Landroid/content/ContentValues;)I
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_161} :catch_165

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_5d

    .line 4263
    :catch_165
    move-exception v0

    .line 4264
    throw v0

    :cond_167
    move v3, v1

    goto/16 :goto_1a
.end method

.method private insertPeopleRecord(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 2999
    .line 3002
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 3003
    iget-boolean v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v0, :cond_1f

    .line 3004
    const-string v0, "SNS_DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commentData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_1f
    :goto_1f
    if-eqz p2, :cond_158

    .line 3009
    :try_start_21
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 3010
    iget-object p2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    goto :goto_1f

    .line 3014
    :cond_28
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3015
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_218

    .line 3016
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v0

    move v1, v0

    .line 3018
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3019
    const-string v3, "people_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    const-string v3, " = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    const-string v3, "service_provider"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    const-string v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "people"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v0, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3027
    const-string v0, "people_id"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    const-string v0, "service_provider"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3029
    const-string v0, "first_name"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mFirstName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    const-string v0, "last_name"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mLastName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    const-string v0, "name"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    const-string v0, "display_name"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    const-string v0, "birthday"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v0, :cond_c6

    .line 3036
    const-string v0, "small_photo_url"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    const-string v0, "medium_photo_url"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    const-string v0, "full_photo_url"

    iget-object v3, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    :cond_c6
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 3042
    if-eqz v0, :cond_da

    .line 3043
    const-string v3, "company"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mEmployer:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const-string v3, "jobtitle"

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mPosition:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    :cond_da
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 3048
    if-eqz v0, :cond_109

    .line 3049
    const-string v3, "status_id"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    const-string v3, "status"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    const-string v3, "comments_count"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCommentsCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3052
    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    if-eqz v3, :cond_109

    .line 3053
    const-string v3, "create_time"

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3057
    :cond_109
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    .line 3058
    if-eqz v0, :cond_129

    .line 3059
    const-string v3, "mood_id"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    const-string v3, "mood_text"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    const-string v3, "mood_iconid"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    const-string v3, "mood_iconurl"

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    :cond_129
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mFriendship:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;

    .line 3066
    if-eqz v0, :cond_149

    .line 3067
    const-string v3, "follower_number"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mFollowerNum:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3068
    const-string v3, "following_number"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mFollowingNum:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3069
    const-string v3, "friend_number"

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mFriendNum:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3070
    const-string v3, "degree"

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mDegree:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3073
    :cond_149
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "people"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 3075
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_159

    .line 3128
    :cond_158
    return v8

    .line 3079
    :cond_159
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 3080
    :goto_15d
    if-eqz v0, :cond_192

    .line 3081
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3082
    const-string v5, "service_provider"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3083
    const-string v5, "people_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3084
    const-string v5, "email_address"

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    const-string v5, "email_dist"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3087
    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "email"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3089
    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    goto :goto_15d

    .line 3092
    :cond_192
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 3093
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3094
    :goto_19b
    if-eqz v0, :cond_1d2

    .line 3095
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 3096
    const-string v5, "service_provider"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3097
    const-string v5, "city"

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mCity:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    const-string v5, "detail"

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mDetail:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    const-string v5, "people_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3100
    const-string v5, "zipcode"

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mZipCode:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "address"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3104
    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    goto :goto_19b

    .line 3107
    :cond_1d2
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 3108
    if-eqz v0, :cond_212

    .line 3109
    :goto_1d8
    if-eqz v0, :cond_212

    .line 3110
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 3111
    const-string v5, "service_provider"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3112
    const-string v5, "people_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3113
    const-string v5, "phone_type"

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    const-string v5, "phone_number"

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    const-string v5, "phone_dist"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3117
    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "phonenumber"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3118
    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    goto :goto_1d8

    .line 3121
    :cond_212
    iget-object p2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_214} :catch_216

    goto/16 :goto_1f

    .line 3123
    :catch_216
    move-exception v0

    .line 3125
    throw v0

    :cond_218
    move v1, v0

    goto/16 :goto_3b
.end method

.method private insertPhotoRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2026
    .line 2028
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    .line 2030
    packed-switch v5, :pswitch_data_1b0

    move-object v2, v1

    .line 2039
    :goto_b
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 2043
    :try_start_d
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    if-eqz v1, :cond_b1

    .line 2044
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    move-object v1, v0

    .line 2045
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getStartOffset()I

    move-result v6

    if-ne v6, v3, :cond_26

    .line 2046
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getAlbumID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getSpType()I

    move-result v1

    invoke-direct {p0, v6, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearPhotoByAlbumId(Ljava/lang/String;I)I

    .line 2052
    :cond_26
    :goto_26
    const/16 v1, 0x21

    if-ne v5, v1, :cond_1ad

    move-object v1, p2

    .line 2053
    :goto_2b
    if-eqz v1, :cond_177

    .line 2054
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2056
    const-string v5, "service_provider"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mSP:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2057
    const-string v5, "status"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mID:Ljava/lang/String;

    if-eqz v5, :cond_5d

    const-string v5, "null"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 2060
    const-string v5, "photo_id"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mID:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    :cond_5d
    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumID:Ljava/lang/String;

    if-eqz v5, :cond_72

    const-string v5, "null"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    .line 2063
    const-string v5, "album_id"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumID:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    :cond_72
    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mURL:Ljava/lang/String;

    if-eqz v5, :cond_87

    const-string v5, "null"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 2066
    const-string v5, "url"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    :cond_87
    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v5, :cond_9c

    const-string v5, "null"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 2069
    const-string v5, "thumbnail_url"

    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    :cond_9c
    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "photo_upload_body"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2074
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :try_end_a6
    .catchall {:try_start_d .. :try_end_a6} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a6} :catch_be

    goto :goto_2b

    :pswitch_a7
    move-object v1, p1

    .line 2032
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getAlbumID()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2033
    goto/16 :goto_b

    .line 2047
    :cond_b1
    :try_start_b1
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    if-nez v1, :cond_26

    .line 2048
    const-string v1, "SNS_DB"

    const-string v6, "Failed to clear photo : req is NOT instanceof SnsRequestPhotoAlbumRetrieve"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_bc} :catch_be

    goto/16 :goto_26

    .line 2128
    :catch_be
    move-exception v1

    .line 2130
    :try_start_bf
    throw v1
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    .line 2134
    :catchall_c0
    move-exception v1

    instance-of v2, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    if-eqz v2, :cond_c7

    .line 2135
    if-nez p2, :cond_17f

    .line 2134
    :cond_c7
    :goto_c7
    throw v1

    .line 2083
    :cond_c8
    :try_start_c8
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2085
    const-string v6, "photo_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const-string v6, "service_provider"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2088
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mUploadTime:Ljava/lang/Long;

    if-eqz v6, :cond_f7

    .line 2089
    const-string v6, "upload_time"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mUploadTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2091
    :cond_f7
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumID:Ljava/lang/String;

    if-eqz v6, :cond_141

    .line 2092
    const-string v6, "album_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    :goto_102
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

    if-eqz v6, :cond_147

    .line 2098
    const-string v6, "author_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string v6, "author_name"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :goto_118
    const-string v6, "title"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    const-string v6, "content"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mContent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const-string v6, "comment_count"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mCommentsCount:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2108
    const-string v6, "location"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mLocation:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;

    if-nez v6, :cond_156

    .line 2077
    :cond_138
    :goto_138
    if-eqz v1, :cond_177

    .line 2078
    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mID:Ljava/lang/String;

    if-nez v5, :cond_c8

    .line 2079
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    goto :goto_138

    .line 2094
    :cond_141
    const-string v6, "album_id"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_102

    .line 2101
    :cond_147
    const-string v6, "author_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthorID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    const-string v6, "author_name"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthorName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    .line 2114
    :cond_156
    const-string v6, "thumbnail_url"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mMainPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;

    if-eqz v6, :cond_138

    .line 2120
    const-string v6, "main_url"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mMainPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget-object v6, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "photo"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2124
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :try_end_176
    .catchall {:try_start_c8 .. :try_end_176} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_176} :catch_be

    goto :goto_138

    .line 2134
    :cond_177
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    if-eqz v1, :cond_17e

    .line 2135
    if-nez p2, :cond_198

    move v3, v4

    .line 2155
    :cond_17e
    :goto_17e
    return v3

    .line 2138
    :cond_17f
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    .line 2139
    iget v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v2, v3, :cond_191

    move v2, v3

    .line 2142
    :goto_186
    if-eqz v2, :cond_193

    .line 2144
    :try_start_188
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18d} :catch_18f

    goto/16 :goto_c7

    .line 2148
    :catch_18f
    move-exception v1

    .line 2150
    throw v1

    :cond_191
    move v2, v4

    .line 2139
    goto :goto_186

    .line 2146
    :cond_193
    :try_start_193
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_196} :catch_18f

    goto/16 :goto_c7

    .line 2138
    :cond_198
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    .line 2139
    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v1, v3, :cond_19f

    move v4, v3

    .line 2142
    :cond_19f
    if-eqz v4, :cond_1a9

    .line 2144
    :try_start_1a1
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a6} :catch_1a7

    goto :goto_17e

    .line 2148
    :catch_1a7
    move-exception v1

    .line 2150
    throw v1

    .line 2146
    :cond_1a9
    :try_start_1a9
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1ac} :catch_1a7

    goto :goto_17e

    :cond_1ad
    move-object v1, p2

    goto :goto_138

    .line 2030
    nop

    :pswitch_data_1b0
    .packed-switch 0x1e
        :pswitch_a7
    .end packed-switch
.end method

.method private insertReplySentMessageHasThread(Lcom/sec/android/app/sns/request/data/SnsRequest;Landroid/database/Cursor;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;[Ljava/lang/String;)V
    .registers 34
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3406
    .line 3407
    const/4 v7, 0x0

    .line 3408
    const/4 v8, 0x0

    .line 3409
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    .line 3412
    :try_start_6
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v6

    const/4 v4, -0x1

    if-ne v6, v4, :cond_15

    .line 3413
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    .line 3415
    :cond_15
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    if-eqz v4, :cond_1f

    .line 3416
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    .line 3419
    :cond_1f
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3420
    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_33
    move-object/from16 v4, p0

    move-object/from16 v5, p3

    .line 3422
    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertMessageDB(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v23

    .line 3426
    const/16 v16, 0x0

    .line 3427
    const/4 v15, 0x0

    .line 3428
    const/4 v14, 0x0

    .line 3429
    const/4 v13, 0x0

    .line 3431
    const/4 v12, 0x0

    .line 3433
    const/4 v11, -0x1

    .line 3434
    const/4 v10, -0x1

    .line 3435
    const/4 v5, -0x1

    .line 3436
    const/4 v4, -0x1

    .line 3437
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 3439
    const/16 v18, 0x0

    .line 3441
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_4c8

    .line 3442
    const/4 v4, 0x4

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "receiver_id"

    aput-object v5, v12, v4

    const/4 v4, 0x1

    const-string v5, "receiver_name"

    aput-object v5, v12, v4

    const/4 v4, 0x2

    const-string v5, "receiver_email"

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string v5, "receiver_photo_url"

    aput-object v5, v12, v4

    .line 3448
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4be

    .line 3449
    const-string v4, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3450
    const-string v4, "sender_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3451
    const-string v4, "sender_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3452
    const-string v4, "sender_photo_url"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3454
    :goto_a8
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 3456
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c9

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1c9

    .line 3457
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "msg_receiver_map"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message_id= \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "receiver_id ASC"

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3468
    :goto_eb
    const-string v4, "receiver_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 3469
    const-string v4, "receiver_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3470
    const-string v4, "receiver_email"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3471
    const-string v4, "receiver_photo_url"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3473
    const/4 v10, 0x0

    .line 3474
    const/4 v5, 0x0

    .line 3475
    const/4 v4, 0x0

    .line 3477
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4ba

    move/from16 v11, v18

    .line 3480
    :cond_116
    const/16 v17, 0x0

    :goto_118
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_212

    .line 3481
    aget-object v18, p4, v17

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1c5

    .line 3482
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 3483
    const-string v18, "message_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3484
    const-string v18, "service_provider"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3485
    const-string v18, "receiver_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    const-string v18, "receiver_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    const-string v18, "receiver_email"

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    const-string v18, "receiver_photo_url"

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    const-string v26, "msg_receiver_map"

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3494
    add-int/lit8 v11, v11, 0x1

    .line 3498
    if-nez v10, :cond_1c5

    .line 3499
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3500
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3501
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3480
    :cond_1c5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_118

    .line 3461
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "msg_receiver_map"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message_id= \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "receiver_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!= \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "receiver_id ASC"

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    goto/16 :goto_eb

    .line 3506
    :cond_212
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_116

    .line 3509
    :goto_218
    if-eqz v20, :cond_4b6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_4b6

    .line 3510
    const-string v17, "SNS_DB"

    const-string v18, "insertReplySentMessageHasThread mSenderId != null && mSenderId.compareTo(message.mSender.mID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 3513
    const-string v17, "message_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3514
    const-string v17, "service_provider"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3515
    const-string v6, "receiver_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    const-string v6, "receiver_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    const-string v6, "receiver_photo_url"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v17, "msg_receiver_map"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v6, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3519
    add-int/lit8 v6, v11, 0x1

    .line 3521
    if-nez v10, :cond_4af

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    move v10, v6

    move-object/from16 v6, v20

    .line 3528
    :goto_28d
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3529
    const-string v17, "representative_receiver_id"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    const-string v6, "representative_receiver"

    invoke-virtual {v11, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    const-string v5, "representative_receiver_url"

    invoke-virtual {v11, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    const-string v4, "receiver_count"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "message"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v4, v5, v11, v6, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move/from16 v17, v15

    move-object/from16 v18, v16

    move-object/from16 v11, v19

    move v15, v13

    move/from16 v16, v14

    move-object/from16 v19, v22

    move-object/from16 v13, v20

    move v14, v12

    move-object/from16 v12, v21

    .line 3543
    :goto_2db
    const/4 v10, 0x0

    .line 3544
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3545
    const-string v5, "thread_id"

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    const-string v5, "message_id"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    const-string v5, "title"

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    const-string v5, "content"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    if-eqz v5, :cond_313

    .line 3550
    const-string v5, "send_time"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3552
    :cond_313
    const-string v5, "sent"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    const-string v5, "read_state"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mUnread:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/android/app/sns/db/SnsDBUtil;->convertBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    const-string v5, "result"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    const-string v5, "sender_id"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    const-string v5, "sender_name"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    const-string v5, "folder"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "thread_message"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 3563
    const/4 v6, 0x0

    .line 3564
    const/4 v5, 0x0

    .line 3565
    const/4 v4, 0x0

    .line 3567
    if-eqz v18, :cond_491

    .line 3568
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_49e

    move v7, v10

    .line 3570
    :cond_368
    const/4 v8, 0x0

    :goto_369
    move-object/from16 v0, p4

    array-length v9, v0

    if-ge v8, v9, :cond_3f1

    .line 3571
    aget-object v9, p4, v8

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3ed

    .line 3572
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 3573
    const-string v9, "message_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3574
    const-string v9, "receiver_id"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    const-string v9, "receiver_name"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3578
    const-string v9, "receiver_email"

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    const-string v9, "receiver_photo_url"

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3582
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "thread_msg_receiver_map"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v9, v10, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3583
    add-int/lit8 v7, v7, 0x1

    .line 3587
    if-nez v6, :cond_3ed

    .line 3588
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3589
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3590
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3570
    :cond_3ed
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_369

    .line 3594
    :cond_3f1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_368

    .line 3596
    if-eqz v18, :cond_3fc

    .line 3597
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 3605
    :cond_3fc
    :goto_3fc
    if-eqz v13, :cond_440

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_440

    .line 3606
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 3607
    const-string v8, "message_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3608
    const-string v8, "receiver_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    const-string v8, "receiver_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3610
    const-string v8, "receiver_photo_url"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "thread_msg_receiver_map"

    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v8, v9, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3612
    add-int/lit8 v7, v7, 0x1

    .line 3615
    if-nez v6, :cond_440

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    .line 3622
    :cond_440
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3623
    const-string v9, "representative_receiver_id"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    const-string v6, "representative_receiver"

    invoke-virtual {v8, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3625
    const-string v5, "representative_receiver_url"

    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    const-string v4, "receiver_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "thread_message"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v8, v6, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3631
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    if-nez v4, :cond_4a1

    const-wide/16 v4, 0x0

    :goto_484
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearDuplicateThread(Ljava/lang/String;J)V

    .line 3633
    if-eqz v18, :cond_490

    .line 3634
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 3638
    :cond_490
    return-void

    .line 3600
    :cond_491
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v7, :cond_49e

    .line 3601
    const-string v7, "TAG"

    const-string v8, "Cursor is NULL!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49e
    move v7, v10

    goto/16 :goto_3fc

    .line 3631
    :cond_4a1
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_4a8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4a8} :catch_4ad

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    goto :goto_484

    .line 3635
    :catch_4ad
    move-exception v4

    .line 3636
    throw v4

    :cond_4af
    move-object/from16 v28, v10

    move v10, v6

    move-object/from16 v6, v28

    goto/16 :goto_28d

    :cond_4b6
    move-object v6, v10

    move v10, v11

    goto/16 :goto_28d

    :cond_4ba
    move/from16 v11, v18

    goto/16 :goto_218

    :cond_4be
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    goto/16 :goto_a8

    :cond_4c8
    move/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v16

    move-object v11, v13

    move-object v12, v15

    move/from16 v16, v10

    move-object v13, v14

    move v15, v5

    move v14, v4

    goto/16 :goto_2db
.end method

.method private insertReplySentMessageNoThread(Lcom/sec/android/app/sns/request/data/SnsRequest;Landroid/database/Cursor;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;[Ljava/lang/String;)V
    .registers 28
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3642
    .line 3643
    const/4 v6, 0x0

    .line 3645
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 3648
    :try_start_d
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v5

    const/4 v3, -0x1

    if-ne v5, v3, :cond_1c

    .line 3649
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    .line 3651
    :cond_1c
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 3652
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    .line 3655
    :cond_26
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mTitle:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    .line 3657
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertMessageDB(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    .line 3661
    const/4 v4, 0x0

    .line 3662
    const/16 v16, 0x0

    .line 3663
    const/16 v17, 0x0

    .line 3664
    const/4 v15, 0x0

    .line 3666
    const/4 v3, 0x0

    .line 3672
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 3674
    const/4 v14, 0x0

    .line 3676
    move-object/from16 v0, p4

    array-length v6, v0

    if-eqz v6, :cond_332

    .line 3677
    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "receiver_id"

    aput-object v6, v8, v3

    const/4 v3, 0x1

    const-string v6, "receiver_name"

    aput-object v6, v8, v3

    const/4 v3, 0x2

    const-string v6, "receiver_email"

    aput-object v6, v8, v3

    const/4 v3, 0x3

    const-string v6, "receiver_photo_url"

    aput-object v6, v8, v3

    .line 3683
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_33d

    .line 3684
    const-string v3, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3685
    const-string v4, "sender_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3686
    const-string v4, "sender_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3687
    const-string v4, "sender_photo_url"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3689
    :goto_99
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 3691
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_189

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_189

    .line 3692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "msg_receiver_map"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message_id= \'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "receiver_id ASC"

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3710
    :goto_d9
    const-string v3, "receiver_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3711
    const-string v3, "receiver_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3712
    const-string v3, "receiver_email"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3713
    const-string v3, "receiver_photo_url"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3715
    const/4 v6, 0x0

    .line 3716
    const/4 v4, 0x0

    .line 3717
    const/4 v3, 0x0

    .line 3719
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_33a

    move v7, v14

    .line 3722
    :cond_fb
    const/4 v9, 0x0

    :goto_fc
    move-object/from16 v0, p4

    array-length v14, v0

    if-ge v9, v14, :cond_284

    .line 3723
    const/16 v14, 0xe

    if-eq v5, v14, :cond_202

    .line 3724
    aget-object v14, p4, v9

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_185

    .line 3725
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 3726
    const-string v14, "message_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3727
    const-string v14, "service_provider"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3728
    const-string v14, "receiver_id"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3730
    const-string v14, "receiver_name"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3732
    const-string v14, "receiver_email"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    const-string v14, "receiver_photo_url"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3736
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v21, "msg_receiver_map"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3737
    add-int/lit8 v7, v7, 0x1

    .line 3741
    if-nez v6, :cond_185

    .line 3742
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3743
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3744
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3722
    :cond_185
    :goto_185
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_fc

    .line 3696
    :cond_189
    const/16 v4, 0xe

    if-eq v5, v4, :cond_1d3

    .line 3697
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "msg_receiver_map"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message_id= \'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "receiver_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "receiver_id ASC"

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_d9

    .line 3703
    :cond_1d3
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyMessageID()Ljava/lang/String;

    .line 3704
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "msg_receiver_map"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message_id= \'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "receiver_id ASC"

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_d9

    .line 3749
    :cond_202
    aget-object v14, p4, v9

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_185

    .line 3750
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 3751
    const-string v14, "message_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3752
    const-string v14, "service_provider"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3753
    const-string v14, "receiver_id"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3755
    const-string v14, "receiver_name"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    const-string v14, "receiver_email"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    const-string v14, "receiver_photo_url"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v21, "msg_receiver_map"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3762
    add-int/lit8 v7, v7, 0x1

    .line 3765
    if-nez v6, :cond_185

    .line 3766
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3767
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3768
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_185

    .line 3774
    :cond_284
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_fb

    .line 3778
    :goto_28a
    if-eqz v17, :cond_2e8

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2e8

    .line 3779
    const-string v9, "SNS_DB"

    const-string v10, "addReplySentMessage mSenderId != null && mSenderId.compareTo(message.mSender.mID"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 3782
    const-string v9, "message_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3783
    const-string v9, "service_provider"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3784
    const-string v9, "receiver_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3785
    const-string v9, "receiver_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3786
    const-string v9, "receiver_photo_url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3787
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "msg_receiver_map"

    const/4 v11, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v9, v10, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3788
    add-int/lit8 v7, v7, 0x1

    .line 3790
    if-nez v6, :cond_2e8

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    .line 3797
    :cond_2e8
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3798
    const-string v10, "representative_receiver_id"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    const-string v6, "representative_receiver"

    invoke-virtual {v9, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    const-string v4, "representative_receiver_url"

    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3801
    const-string v3, "receiver_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3803
    const/16 v3, 0xe

    if-ne v5, v3, :cond_312

    .line 3804
    const-string v3, "thread_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3806
    :cond_312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v9, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v3, v8

    .line 3810
    :cond_332
    if-eqz v3, :cond_337

    .line 3811
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_337
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_337} :catch_338

    .line 3815
    :cond_337
    return-void

    .line 3812
    :catch_338
    move-exception v3

    .line 3813
    throw v3

    :cond_33a
    move v7, v14

    goto/16 :goto_28a

    :cond_33d
    move-object v3, v4

    goto/16 :goto_99
.end method

.method private insertScheduleRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2168
    const/4 v1, 0x1

    .line 2171
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2172
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 2175
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    if-eqz v0, :cond_1a9

    move-object v0, p1

    .line 2176
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    .line 2179
    :try_start_f
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getStartOffset()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    .line 2180
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    .line 2181
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v2

    .line 2183
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service_provider = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "event"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v4, v3, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4a
    move-object v4, p2

    .line 2189
    :goto_4b
    if-eqz v4, :cond_138

    .line 2191
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mID:Ljava/lang/String;

    if-nez v2, :cond_55

    .line 2192
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    move-object v4, v2

    .line 2193
    goto :goto_4b

    .line 2197
    :cond_55
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2199
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_65

    .line 2200
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v2

    .line 2202
    :cond_65
    const-string v3, "service_provider"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2203
    const-string v2, "event_id"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mID:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v2, "event_type"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mType:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v2, "title"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const-string v2, "content"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mContent:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string v2, "more_description"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    const-string v2, "hostname"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mHostName:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    if-eqz v2, :cond_bf

    .line 2211
    const-string v2, "owner"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mID:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    const-string v2, "owner_name"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mName:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_bf

    .line 2214
    const-string v2, "owner_photo_url"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :cond_bf
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPhotoThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;

    if-eqz v2, :cond_cc

    .line 2220
    const-string v2, "photo_url"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPhotoThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    :cond_cc
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mStartTime:Ljava/lang/Long;

    if-eqz v2, :cond_e2

    .line 2223
    const-string v2, "start_time"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2225
    :cond_e2
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mEndTime:Ljava/lang/Long;

    if-eqz v2, :cond_f8

    .line 2226
    const-string v2, "end_time"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mEndTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2228
    :cond_f8
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPostTime:Ljava/lang/Long;

    if-eqz v2, :cond_10e

    .line 2229
    const-string v2, "post_time"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPostTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2231
    :cond_10e
    const-string v2, "place"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPlace:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    if-eqz v2, :cond_126

    .line 2234
    const-string v2, "mem_count"

    iget-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    iget v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mMembersCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2238
    :cond_126
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "event"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2239
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_152

    .line 2240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    .line 2260
    :cond_138
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearMaxRowSchedule()I
    :try_end_13b
    .catchall {:try_start_f .. :try_end_13b} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13b} :catch_190

    .line 2265
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    if-eqz v0, :cond_150

    if-eqz p2, :cond_150

    .line 2266
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    .line 2268
    iget v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1ba

    const/4 v0, 0x1

    .line 2271
    :goto_149
    if-eqz v0, :cond_1bc

    .line 2273
    :try_start_14b
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_150} :catch_1c0

    :cond_150
    :goto_150
    move v0, v1

    .line 2288
    :goto_151
    return v0

    .line 2244
    :cond_152
    :try_start_152
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    move-object v3, v2

    .line 2245
    :goto_155
    if-eqz v3, :cond_18b

    .line 2246
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    .line 2247
    :goto_159
    if-eqz v2, :cond_187

    .line 2248
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2249
    const-string v8, "event_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2250
    const-string v8, "event_member_id"

    iget-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mID:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    const-string v8, "event_member_name"

    iget-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    const-string v8, "event_type"

    iget-object v9, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mType:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v8, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "event_rsvp_map"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2254
    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    goto :goto_159

    .line 2256
    :cond_187
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    move-object v3, v2

    .line 2257
    goto :goto_155

    .line 2258
    :cond_18b
    iget-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    :try_end_18d
    .catchall {:try_start_152 .. :try_end_18d} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_18d} :catch_190

    move-object v4, v2

    .line 2259
    goto/16 :goto_4b

    .line 2261
    :catch_190
    move-exception v0

    .line 2263
    :try_start_191
    throw v0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_192

    .line 2265
    :catchall_192
    move-exception v0

    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    if-eqz v1, :cond_1a8

    if-eqz p2, :cond_1a8

    .line 2266
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    .line 2268
    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b2

    const/4 v1, 0x1

    .line 2271
    :goto_1a1
    if-eqz v1, :cond_1b4

    .line 2273
    :try_start_1a3
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a8} :catch_1b8

    .line 2265
    :cond_1a8
    :goto_1a8
    throw v0

    .line 2284
    :cond_1a9
    const-string v0, "SNS_DB"

    const-string v1, "Failed to clear thread : req is NOT instanceof SnsXmlParsedDataSchedule"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/4 v0, 0x0

    goto :goto_151

    .line 2268
    :cond_1b2
    const/4 v1, 0x0

    goto :goto_1a1

    .line 2275
    :cond_1b4
    :try_start_1b4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b7} :catch_1b8

    goto :goto_1a8

    .line 2277
    :catch_1b8
    move-exception v0

    .line 2278
    throw v0

    .line 2268
    :cond_1ba
    const/4 v0, 0x0

    goto :goto_149

    .line 2275
    :cond_1bc
    :try_start_1bc
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1bf} :catch_1c0

    goto :goto_150

    .line 2277
    :catch_1c0
    move-exception v0

    .line 2278
    throw v0
.end method

.method private insertSearchingRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 17
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v11, 0x26

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3142
    .line 3143
    const-wide/16 v4, 0x0

    .line 3144
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v6

    .line 3146
    if-nez p2, :cond_1b

    .line 3147
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_19

    .line 3148
    const-string v1, "SNS_DB"

    const-string v3, "insertSearchingRecords:parsedData is NULL !!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move v1, v2

    .line 3253
    :goto_1a
    return v1

    .line 3153
    :cond_1b
    if-ne v6, v11, :cond_102

    .line 3154
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3155
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    .line 3159
    :try_start_24
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    if-eqz v1, :cond_40

    .line 3160
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    move-object v1, v0

    .line 3161
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getStartOffset()I

    move-result v1

    if-ne v1, v3, :cond_35

    .line 3162
    invoke-virtual {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearSearching()I

    :cond_35
    move-object/from16 v1, p2

    .line 3167
    :goto_37
    if-eqz v1, :cond_cc

    .line 3168
    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mID:Ljava/lang/String;

    if-nez v8, :cond_4a

    .line 3169
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    goto :goto_37

    .line 3164
    :cond_40
    const-string v1, "SNS_DB"

    const-string v8, "Failed to clear Searching : req is NOT instanceof SnsRequestSearchingSearch"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    goto :goto_37

    .line 3173
    :cond_4a
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 3174
    const-string v8, "service_provider"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3175
    const-string v8, "searching_id"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mID:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    const-string v8, "type"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    const-string v8, "create_time"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3178
    const-string v8, "title"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    const-string v8, "content"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mContent:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    const-string v8, "rep_photo_url"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mRepPhotoURL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    const-string v8, "url"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mURL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    if-eqz v8, :cond_bb

    .line 3184
    const-string v8, "creator_id"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mID:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    const-string v8, "creator_name"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    iget-object v8, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v8, :cond_bb

    .line 3188
    const-string v8, "creator_profile_photo"

    iget-object v9, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    :cond_bb
    if-ne v6, v11, :cond_c6

    .line 3194
    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "searching"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c5
    .catchall {:try_start_24 .. :try_end_c5} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_c5} :catch_e9

    move-result-wide v4

    .line 3197
    :cond_c6
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_e5

    .line 3206
    :cond_cc
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    if-eqz v1, :cond_e2

    .line 3207
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    .line 3209
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v1, v3, :cond_d9

    move v2, v3

    .line 3212
    :cond_d9
    if-eqz v2, :cond_172

    .line 3213
    :try_start_db
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e2} :catch_177

    :cond_e2
    :goto_e2
    move v1, v3

    .line 3253
    goto/16 :goto_1a

    .line 3200
    :cond_e5
    :try_start_e5
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    :try_end_e7
    .catchall {:try_start_e5 .. :try_end_e7} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e7} :catch_e9

    goto/16 :goto_37

    .line 3202
    :catch_e9
    move-exception v1

    .line 3204
    :try_start_ea
    throw v1
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    .line 3206
    :catchall_eb
    move-exception v1

    instance-of v4, p1, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    if-eqz v4, :cond_101

    .line 3207
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    .line 3209
    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v4, v3, :cond_16a

    .line 3212
    :goto_f8
    if-eqz v3, :cond_16c

    .line 3213
    :try_start_fa
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_101} :catch_170

    .line 3206
    :cond_101
    :goto_101
    throw v1

    .line 3222
    :cond_102
    const/16 v1, 0x25

    if-ne v6, v1, :cond_e2

    .line 3223
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3224
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    .line 3229
    :try_start_10d
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "searching_keywords"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3231
    :goto_116
    if-eqz p2, :cond_e2

    .line 3232
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mID:Ljava/lang/String;

    if-nez v2, :cond_125

    .line 3233
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    move-object/from16 p2, v0

    goto :goto_116

    .line 3237
    :cond_125
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3238
    const-string v2, "service_provider"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3239
    const-string v2, "keyword_id"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    const-string v2, "value"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    const-string v2, "created_time"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mCreatedTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3243
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "searching_keywords"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3245
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    move-object/from16 p2, v0
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_167} :catch_168

    goto :goto_116

    .line 3247
    :catch_168
    move-exception v1

    .line 3249
    throw v1

    :cond_16a
    move v3, v2

    .line 3209
    goto :goto_f8

    .line 3215
    :cond_16c
    :try_start_16c
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_16f} :catch_170

    goto :goto_101

    .line 3217
    :catch_170
    move-exception v1

    .line 3218
    throw v1

    .line 3215
    :cond_172
    :try_start_172
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_175} :catch_177

    goto/16 :goto_e2

    .line 3217
    :catch_177
    move-exception v1

    .line 3218
    throw v1
.end method

.method private insertStatusListRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 528
    .line 529
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    .line 530
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    .line 532
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 536
    :try_start_d
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    move-object v1, v0

    .line 537
    instance-of v6, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    if-eqz v6, :cond_30

    .line 538
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getStartOffset()I

    move-result v1

    if-ne v1, v2, :cond_1e

    .line 539
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearStatusList()I

    .line 544
    :cond_1e
    :goto_1e
    const/4 v1, 0x6

    if-ne v5, v1, :cond_138

    .line 545
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object v1, p2

    .line 547
    :goto_27
    if-eqz v1, :cond_138

    .line 549
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mID:Ljava/lang/String;

    if-nez v6, :cond_4f

    .line 550
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    goto :goto_27

    .line 541
    :cond_30
    const-string v1, "SNS_DB"

    const-string v6, "Failed to clear statuslist : req is NOT instanceof SnsRequestActivityStatuslistGet"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_38

    goto :goto_1e

    .line 591
    :catch_38
    move-exception v1

    .line 593
    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 596
    :catchall_3a
    move-exception v1

    instance-of v4, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    if-eqz v4, :cond_4e

    if-eqz p2, :cond_4e

    .line 597
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    .line 598
    iget v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v4, v2, :cond_12e

    .line 601
    :goto_47
    if-eqz v2, :cond_131

    .line 603
    :try_start_49
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_136

    .line 596
    :cond_4e
    :goto_4e
    throw v1

    .line 554
    :cond_4f
    :try_start_4f
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 556
    const-string v6, "service_provider"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    const-string v6, "status_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    if-eqz v6, :cond_78

    .line 560
    const-string v6, "status_createtime"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 562
    :cond_78
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mUTCoffset:Ljava/lang/Integer;

    if-eqz v6, :cond_83

    .line 563
    const-string v6, "UTC_offset"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mUTCoffset:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    :cond_83
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwardable:Ljava/lang/String;

    if-eqz v6, :cond_8e

    .line 565
    const-string v6, "forwardable"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwardable:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_8e
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mIsFavorite:Ljava/lang/Boolean;

    if-eqz v6, :cond_99

    .line 567
    const-string v6, "is_favorite"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mIsFavorite:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 568
    :cond_99
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    if-eqz v6, :cond_a4

    .line 569
    const-string v6, "content"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_a4
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    if-eqz v6, :cond_db

    .line 572
    const-string v6, "creator_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v6, "creator_name"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v6, "creator_fullname"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mFullName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v6, "creator_isfollowing"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-boolean v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->bFollowing:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 578
    const-string v6, "creator_photo_url"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_db
    iget-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    if-eqz v6, :cond_fc

    .line 582
    const-string v6, "forwarder_id"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v6, "forwarder_name"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v6, "forwarder_photo_url"

    iget-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_fc
    iget-object v6, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "activity_statuslist"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 588
    iget-object v1, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    :try_end_106
    .catchall {:try_start_4f .. :try_end_106} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_106} :catch_38

    goto/16 :goto_27

    .line 605
    :cond_108
    :try_start_108
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_14d

    .line 614
    :cond_10b
    :goto_10b
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activity_statuslist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 618
    return v2

    :cond_12e
    move v2, v3

    .line 598
    goto/16 :goto_47

    .line 605
    :cond_131
    :try_start_131
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_136

    goto/16 :goto_4e

    .line 607
    :catch_136
    move-exception v1

    .line 608
    throw v1

    .line 596
    :cond_138
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    if-eqz v1, :cond_10b

    if-eqz p2, :cond_10b

    .line 597
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    .line 598
    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-ne v1, v2, :cond_145

    move v3, v2

    .line 601
    :cond_145
    if-eqz v3, :cond_108

    .line 603
    :try_start_147
    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)J
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14c} :catch_14d

    goto :goto_10b

    .line 607
    :catch_14d
    move-exception v1

    .line 608
    throw v1
.end method

.method private insertStatusRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3266
    const/4 v2, 0x1

    .line 3268
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    .line 3270
    check-cast p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 3273
    :try_start_7
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3275
    :goto_c
    if-eqz p2, :cond_97

    .line 3277
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 3278
    iget-object p2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    goto :goto_c

    .line 3282
    :cond_15
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1f

    move v0, v1

    .line 3285
    :cond_1f
    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 3288
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 3290
    const-string v5, "person_id"

    iget-object v6, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    const-string v5, "service_provider"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3293
    if-eqz v4, :cond_61

    .line 3297
    const-string v0, "status_id"

    iget-object v5, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mID:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    const-string v0, "content"

    iget-object v5, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    if-eqz v0, :cond_5a

    .line 3300
    const-string v0, "create_time"

    iget-object v5, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3302
    :cond_5a
    const-string v0, "comments_count"

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCommentsCount:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3305
    :cond_61
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    if-eqz v0, :cond_89

    .line 3306
    const-string v0, "mood_id"

    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    const-string v0, "mood_text"

    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mText:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    const-string v0, "mood_iconid"

    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    const-string v0, "mood_iconurl"

    iget-object v4, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconURL:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    :cond_89
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "status"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3312
    iget-object p2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_93} :catch_95

    goto/16 :goto_c

    .line 3314
    :catch_95
    move-exception v0

    .line 3316
    throw v0

    .line 3319
    :cond_97
    return v2
.end method

.method private isInConflictWithSender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 6159
    .line 6161
    :try_start_2
    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6174
    :cond_13
    :goto_13
    return v0

    .line 6164
    :cond_14
    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_27

    move-result v2

    if-eqz v2, :cond_13

    :cond_25
    move v0, v1

    goto :goto_13

    .line 6168
    :catch_27
    move-exception v1

    .line 6169
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInConflictWithSender : folderType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sender_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", people_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private updateActorPhotoUrl(Ljava/util/ArrayList;Ljava/util/Map;I)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5960
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5961
    const/4 v2, 0x0

    .line 5962
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 5964
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .line 5965
    const/4 v1, 0x0

    const-string v4, "actor_photo_url"

    aput-object v4, v3, v1

    .line 5967
    const/4 v1, 0x0

    move v11, v1

    move-object v12, v2

    :goto_16
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_c9

    .line 5968
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 5969
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5971
    const/4 v2, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v13, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actor_id = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5973
    const-string v1, "actor_photo_url IS NOT NULL"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5976
    :try_start_56
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6a} :catch_cd

    move-result-object v2

    .line 5979
    if-eqz v2, :cond_b5

    :try_start_6d
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_b5

    .line 5980
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5982
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 5983
    const-string v1, "actor_photo_url"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5985
    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v13, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity_id = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5988
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v4, v14, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_6d .. :try_end_b5} :catchall_c2
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_b5} :catch_c0

    .line 5994
    :cond_b5
    if-eqz v2, :cond_ba

    .line 5995
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5967
    :cond_ba
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move-object v12, v2

    goto/16 :goto_16

    .line 5991
    :catch_c0
    move-exception v1

    .line 5992
    :goto_c1
    :try_start_c1
    throw v1
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    .line 5994
    :catchall_c2
    move-exception v1

    :goto_c3
    if-eqz v2, :cond_c8

    .line 5995
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5994
    :cond_c8
    throw v1

    .line 5998
    :cond_c9
    return-void

    .line 5994
    :catchall_ca
    move-exception v1

    move-object v2, v12

    goto :goto_c3

    .line 5991
    :catch_cd
    move-exception v1

    move-object v2, v12

    goto :goto_c1
.end method

.method private updateOffset(Landroid/content/ContentValues;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5925
    .line 5927
    const-string v0, "service_provider"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5928
    const-string v1, "offset_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5929
    const-string v2, "content"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5932
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service_provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset_type = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5936
    if-nez v2, :cond_6c

    .line 5937
    const-string v0, "content IS NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5941
    :goto_5e
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "offset"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5947
    return v0

    .line 5939
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_88} :catch_89

    goto :goto_5e

    .line 5943
    :catch_89
    move-exception v0

    .line 5944
    throw v0
.end method

.method private updateUseContact(I)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 6063
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6065
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6066
    const-string v1, "f_id NOT IN (SELECT friend_id FROM friend)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6069
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "use_contact"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 6074
    return-void

    .line 6070
    :catch_36
    move-exception v0

    .line 6071
    throw v0
.end method


# virtual methods
.method public activityNotifychange(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 6449
    const-string v0, "content://com.sec.android.app.provider.sns/"

    .line 6451
    packed-switch p1, :pswitch_data_100

    .line 6480
    :goto_6
    return-void

    .line 6453
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6455
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dirt_activity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/owner"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_6

    .line 6460
    :pswitch_4e
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend_activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6462
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dirt_activity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/friend"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_6

    .line 6467
    :pswitch_96
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "group_activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6469
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dirt_activity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/group"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_6

    .line 6475
    :pswitch_de
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "activity_statuslist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_6

    .line 6451
    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4e
        :pswitch_96
        :pswitch_de
    .end packed-switch
.end method

.method public clearCommentByTargetId(Ljava/lang/String;)I
    .registers 9
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4706
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_16

    .line 4710
    const/4 v1, 0x0

    .line 4713
    .local v1, result:I
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "comment"

    const-string v4, "target_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_18

    move-result v1

    .line 4721
    .end local v1           #result:I
    :goto_15
    return v1

    .line 4707
    :catch_16
    move-exception v0

    .line 4708
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    goto :goto_15

    .line 4717
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #result:I
    :catch_18
    move-exception v0

    .line 4718
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method

.method public clearCommentFavorite()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4732
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_f

    .line 4736
    const/4 v1, 0x0

    .line 4739
    .local v1, result:I
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "comment_favorite"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_12

    move-result v1

    .line 4744
    .end local v1           #result:I
    :goto_e
    return v1

    .line 4733
    :catch_f
    move-exception v0

    .line 4734
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    goto :goto_e

    .line 4740
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #result:I
    :catch_12
    move-exception v0

    .line 4741
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method

.method public clearDataBySP(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 4434
    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "activity_statuslist"

    aput-object v2, v1, v0

    const-string v2, "activity"

    aput-object v2, v1, v4

    const-string v2, "activity_target"

    aput-object v2, v1, v5

    const-string v2, "address"

    aput-object v2, v1, v6

    const-string v2, "album"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "comment"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "comment_favorite"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "deeplink"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "email"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "friend"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "friend_list"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "friend_grouping"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "groups"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "message"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "notification"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "msg_receiver_map"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "photo"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "photo_upload_body"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "people"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "event"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "thread_message"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "phonenumber"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "offset"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "polling_log"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "use_contact"

    aput-object v3, v1, v2

    .line 4447
    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "service_provider"

    aput-object v3, v2, v0

    const-string v3, "service_provider"

    aput-object v3, v2, v4

    const-string v3, "service_provider"

    aput-object v3, v2, v5

    const-string v3, "service_provider"

    aput-object v3, v2, v6

    const-string v3, "service_provider"

    aput-object v3, v2, v7

    const/4 v3, 0x5

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "service_provider"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "sp"

    aput-object v4, v2, v3

    .line 4459
    :try_start_12b
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_12e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12b .. :try_end_12e} :catch_17b

    .line 4464
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 4466
    :try_start_135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4467
    :goto_13a
    array-length v4, v1

    if-ge v0, v4, :cond_161

    .line 4468
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4469
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4473
    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    aget-object v5, v1, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4467
    add-int/lit8 v0, v0, 0x1

    goto :goto_13a

    .line 4476
    :cond_161
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearUseContactFriend(I)I

    .line 4477
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->UpdateNullFriendResponseTimeBySP(I)V

    .line 4478
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "COMMIT TRANSACTION"

    invoke-static {v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_16e} :catch_16f

    .line 4483
    :goto_16e
    return-void

    .line 4479
    :catch_16f
    move-exception v0

    .line 4480
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ROLLBACK TRANSACTION"

    invoke-static {v1, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 4481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16e

    .line 4460
    :catch_17b
    move-exception v0

    goto :goto_16e
.end method

.method public clearFriendDataBySP(I)V
    .registers 7
    .parameter "spType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4493
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_22

    .line 4499
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service_provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4501
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearUseContactFriend(I)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_24

    .line 4505
    :goto_21
    return-void

    .line 4494
    :catch_22
    move-exception v0

    .line 4495
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    goto :goto_21

    .line 4502
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_24
    move-exception v0

    .line 4503
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method

.method public clearFriendListDataBySP(I)V
    .registers 7
    .parameter "spType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4515
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 4521
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend_list"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service_provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_21

    .line 4526
    :goto_1e
    return-void

    .line 4516
    :catch_1f
    move-exception v0

    .line 4517
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    goto :goto_1e

    .line 4523
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_21
    move-exception v0

    .line 4524
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method

.method public clearSearching()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4755
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_e

    .line 4762
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "searching"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_11

    move-result v0

    .line 4767
    :goto_d
    return v0

    .line 4756
    :catch_e
    move-exception v0

    .line 4757
    const/4 v0, 0x0

    goto :goto_d

    .line 4763
    :catch_11
    move-exception v0

    .line 4764
    throw v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_11

    .line 174
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->decreaseDBRefCount()V

    .line 175
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getDBRefCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_11

    .line 176
    invoke-static {}, Lcom/sec/android/app/sns/db/SnsDBHelper;->resetDBRefCount()V

    .line 179
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 180
    return-void
.end method

.method public deleteActivity(I)I
    .registers 8
    .parameter "activityType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4530
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 4535
    const/4 v1, 0x0

    .line 4539
    .local v1, result:I
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_14

    move-result v1

    .line 4545
    .end local v1           #result:I
    :goto_10
    return v1

    .line 4531
    :catch_11
    move-exception v0

    .line 4532
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_10

    .line 4541
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:I
    :catch_14
    move-exception v0

    .line 4542
    .restart local v0       #e:Ljava/lang/Exception;
    throw v0
.end method

.method public deleteAllOffset()I
    .registers 7

    .prologue
    .line 4556
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_f

    .line 4561
    const/4 v1, 0x0

    .line 4564
    .local v1, result:I
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "offset"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_12

    move-result v1

    .line 4569
    .end local v1           #result:I
    :goto_e
    return v1

    .line 4557
    :catch_f
    move-exception v0

    .line 4558
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    goto :goto_e

    .line 4565
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #result:I
    :catch_12
    move-exception v0

    .line 4566
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4567
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public deleteFriend(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 4370
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_5} :catch_107

    .line 4377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4380
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4381
    const-string v1, "forwarder_id =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4382
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "activity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4387
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4388
    const-string v2, "actor_id =? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4389
    const-string v2, "forwarder_id IS NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "activity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4395
    iget-boolean v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v2, :cond_6a

    .line 4396
    const-string v2, "SNS_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEL ACTIVITY_TABLE count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    :cond_6a
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateIsFriendStatus(Ljava/lang/String;Z)V

    .line 4399
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    .line 4401
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4402
    const-string v1, "friend_id =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4403
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friend"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4407
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_ad

    .line 4408
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEL FRIEND_TABLE count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_ad} :catch_102

    .line 4414
    :cond_ad
    if-lez v0, :cond_101

    .line 4415
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4418
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4423
    :cond_101
    :goto_101
    return v0

    .line 4409
    :catch_102
    move-exception v0

    .line 4410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4411
    throw v0

    .line 4371
    :catch_107
    move-exception v1

    goto :goto_101
.end method

.method public deleteMessage(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;)I
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 4302
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_5} :catch_3a

    move-object v0, p1

    .line 4308
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;->getThreadID()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    .line 4309
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;->getMessageID()Ljava/lang/String;

    move-result-object v0

    .line 4310
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;->getSpType()I

    move-result v3

    .line 4312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4315
    if-eqz v2, :cond_ca

    .line 4316
    :try_start_20
    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    if-eqz v0, :cond_3d

    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mSP:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_3d

    move v0, v1

    .line 4358
    :cond_39
    :goto_39
    return v0

    .line 4303
    :catch_3a
    move-exception v0

    move v0, v1

    .line 4304
    goto :goto_39

    .line 4320
    :cond_3d
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4321
    const-string v0, "thread_id =?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v1, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4327
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_78

    .line 4328
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEL MESSAGE_TABLE count( for thread ) : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_78} :catch_122

    .line 4350
    :cond_78
    :goto_78
    if-lez v0, :cond_39

    .line 4351
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4354
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/sp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_39

    .line 4330
    :cond_ca
    :try_start_ca
    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    if-eqz v2, :cond_e5

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    iget-object v2, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mSP:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_e5

    move v0, v1

    .line 4332
    goto/16 :goto_39

    .line 4334
    :cond_e5
    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4335
    const-string v1, "message_id =?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4336
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v2, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4341
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_78

    .line 4342
    const-string v1, "SNS_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEL MESSAGE_TABLE count( for no thread ) : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_120} :catch_122

    goto/16 :goto_78

    .line 4345
    :catch_122
    move-exception v0

    .line 4346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4347
    throw v0
.end method

.method public deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4581
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_ef

    .line 4587
    const/4 v1, -0x1

    .line 4588
    invoke-static {p1}, Lcom/sec/android/app/sns/db/SnsDBUtil;->combineOffsetContent(Lcom/sec/android/app/sns/request/data/SnsRequest;)Ljava/lang/String;

    move-result-object v2

    .line 4590
    instance-of v3, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    if-eqz v3, :cond_63

    .line 4651
    :goto_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service_provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4654
    if-nez v2, :cond_c5

    .line 4655
    const-string v0, "content IS NULL"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4665
    :goto_55
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "offset"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_61} :catch_cf

    move-result v0

    .line 4670
    :goto_62
    return v0

    .line 4594
    :cond_63
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    if-eqz v0, :cond_69

    .line 4596
    const/4 v0, 0x3

    goto :goto_d

    .line 4598
    :cond_69
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    if-eqz v0, :cond_6f

    .line 4600
    const/4 v0, 0x4

    goto :goto_d

    .line 4602
    :cond_6f
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    if-eqz v0, :cond_75

    .line 4604
    const/4 v0, 0x1

    goto :goto_d

    .line 4606
    :cond_75
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    if-eqz v0, :cond_7b

    .line 4608
    const/4 v0, 0x2

    goto :goto_d

    .line 4610
    :cond_7b
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    if-eqz v0, :cond_82

    .line 4612
    const/16 v0, 0xe

    goto :goto_d

    .line 4614
    :cond_82
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    if-eqz v0, :cond_88

    .line 4616
    const/4 v0, 0x6

    goto :goto_d

    .line 4618
    :cond_88
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    if-eqz v0, :cond_8e

    .line 4620
    const/4 v0, 0x7

    goto :goto_d

    .line 4621
    :cond_8e
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    if-eqz v0, :cond_96

    .line 4623
    const/16 v0, 0x8

    goto/16 :goto_d

    .line 4625
    :cond_96
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    if-eqz v0, :cond_9e

    .line 4627
    const/16 v0, 0x9

    goto/16 :goto_d

    .line 4629
    :cond_9e
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    if-eqz v0, :cond_a6

    .line 4631
    const/16 v0, 0xa

    goto/16 :goto_d

    .line 4633
    :cond_a6
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    if-eqz v0, :cond_ae

    .line 4635
    const/16 v0, 0xc

    goto/16 :goto_d

    .line 4637
    :cond_ae
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    if-eqz v0, :cond_b6

    .line 4639
    const/16 v0, 0xd

    goto/16 :goto_d

    .line 4641
    :cond_b6
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;

    if-eqz v0, :cond_bd

    .line 4643
    const/4 v0, 0x5

    goto/16 :goto_d

    .line 4645
    :cond_bd
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    if-eqz v0, :cond_f2

    .line 4647
    const/16 v0, 0xb

    goto/16 :goto_d

    .line 4659
    :cond_c5
    :try_start_c5
    instance-of v0, p1, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    if-eqz v0, :cond_d1

    .line 4660
    const-string v0, "content IS NOT NULL"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ce} :catch_cf

    goto :goto_55

    .line 4666
    :catch_cf
    move-exception v0

    .line 4667
    throw v0

    .line 4662
    :cond_d1
    :try_start_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ed} :catch_cf

    goto/16 :goto_55

    .line 4582
    :catch_ef
    move-exception v1

    goto/16 :goto_62

    :cond_f2
    move v0, v1

    goto/16 :goto_d
.end method

.method public dropAllTables()Z
    .registers 5

    .prologue
    .line 4278
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_11

    .line 4283
    const/4 v0, 0x0

    .line 4285
    .local v0, bSuccess:Z
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_10

    .line 4286
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mOpenHelper:Lcom/sec/android/app/sns/db/SnsDBHelper;

    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sns/db/SnsDBHelper;->upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4287
    const/4 v0, 0x1

    .line 4290
    .end local v0           #bSuccess:Z
    :cond_10
    :goto_10
    return v0

    .line 4279
    :catch_11
    move-exception v1

    .line 4280
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .registers 2

    .prologue
    .line 6487
    invoke-virtual {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    return-object v0
.end method

.method public getConstraintStopFlag()Z
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbConstraintStop:Z

    return v0
.end method

.method public getFriendResponseTime(IILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 6398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6403
    :try_start_a
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getReadableDatabase()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_d} :catch_75

    .line 6408
    const-string v0, "full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6409
    if-ne p2, v4, :cond_59

    .line 6410
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "friendlist_full_response_time"

    aput-object v0, v2, v1

    .line 6428
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6431
    :try_start_37
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "friend_responsetime"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6434
    if-eqz v1, :cond_79

    .line 6435
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 6436
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6438
    :goto_54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_57} :catch_70

    :goto_57
    move-object v8, v0

    .line 6445
    :goto_58
    return-object v8

    .line 6414
    :cond_59
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "full_response_time"

    aput-object v0, v2, v1

    goto :goto_1d

    .line 6418
    :cond_60
    if-ne p2, v4, :cond_69

    .line 6419
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "friendlist_updated_response_time"

    aput-object v0, v2, v1

    goto :goto_1d

    .line 6423
    :cond_69
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "updated_response_time"

    aput-object v0, v2, v1

    goto :goto_1d

    .line 6440
    :catch_70
    move-exception v0

    .line 6441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58

    .line 6404
    :catch_75
    move-exception v0

    goto :goto_58

    :cond_77
    move-object v0, v8

    goto :goto_54

    :cond_79
    move-object v0, v8

    goto :goto_57
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 6483
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    .line 209
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    .line 212
    iget-boolean v6, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v6, :cond_43

    .line 213
    const-string v6, "SNS_DB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v6, "SNS_DB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "req type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_43
    :try_start_43
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_46} :catch_bc

    .line 231
    :try_start_46
    iget-object v6, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {v6, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_5d1

    .line 233
    :try_start_4d
    iget v6, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    packed-switch v6, :pswitch_data_5d6

    .line 427
    :pswitch_52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    .line 431
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    if-eqz v1, :cond_4f6

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "COMMIT TRANSACTION"

    invoke-static {v1, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_60} :catch_11d

    .line 439
    :goto_60
    :try_start_60
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    if-eqz v1, :cond_513

    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v1, v9, :cond_513

    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-eq v1, v2, :cond_513

    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    if-eqz v1, :cond_513

    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v1, :cond_7e

    const-string v1, "nochange"

    iget-object v5, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_513

    .line 443
    :cond_7e
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_89

    .line 444
    const-string v1, "SNS_DB"

    const-string v5, "************ [BEGIN] FRIEND UPDATE TRANSACTION *************"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_89
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {v1, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_90} :catch_5d1

    .line 448
    :try_start_90
    invoke-direct {p0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearOldFriend(I)Z

    move-result v1

    if-eqz v1, :cond_4ff

    invoke-direct {p0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearOldFriendList(I)Z

    move-result v1

    if-eqz v1, :cond_4ff

    .line 449
    invoke-direct {p0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateUseContact(I)V

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "COMMIT TRANSACTION"

    invoke-static {v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 452
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_b1

    .line 453
    const-string v1, "SNS_DB"

    const-string v3, "************ [END] FRIEND UPDATE TRANSACTION *************"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b1} :catch_11d

    .line 520
    :cond_b1
    :goto_b1
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    if-eqz v1, :cond_5c9

    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_bb
    return-object v1

    .line 219
    :catch_bc
    move-exception v2

    .line 220
    iget-boolean v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v3, :cond_e3

    .line 221
    const-string v3, "SNS_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SnsDBAdapter : insertEntry() - SQL Exception : message = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_e3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_bb

    .line 235
    :pswitch_e7
    :try_start_e7
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertActivityRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 236
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_177

    .line 237
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActivityType()I

    move-result v1

    if-nez v1, :cond_12f

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "dirt_activity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/owner"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_11b} :catch_11d

    goto/16 :goto_55

    .line 510
    :catch_11d
    move-exception v1

    .line 512
    :goto_11e
    if-eqz v2, :cond_127

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ROLLBACK TRANSACTION"

    invoke-static {v2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 516
    :cond_127
    const-string v2, "content://ERROR"

    iput-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    .line 517
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b1

    .line 239
    :cond_12f
    :try_start_12f
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActivityType()I

    move-result v1

    if-ne v1, v2, :cond_158

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "dirt_activity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/friend"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 243
    :cond_158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "dirt_activity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/group"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 245
    :cond_177
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    const/16 v5, 0x1b

    if-ne v1, v5, :cond_19e

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "dirt_activity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/owner"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 247
    :cond_19e
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    const/16 v5, 0x17

    if-ne v1, v5, :cond_55

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "dirt_activity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/owner"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 251
    :cond_1c5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 254
    :pswitch_1ca
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertAlbumRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_1f3

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "album"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 257
    :cond_1f3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 262
    :pswitch_1f8
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertCommentRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v6

    if-eqz v6, :cond_238

    .line 264
    if-ne v5, v9, :cond_22b

    .line 265
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    move-object v1, v0

    .line 266
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_208
    :goto_208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "comment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/target/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 267
    :cond_22b
    const/16 v6, 0x9

    if-ne v5, v6, :cond_208

    .line 268
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;

    move-object v1, v0

    .line 269
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getTargetID()Ljava/lang/String;

    move-result-object v1

    goto :goto_208

    .line 275
    :cond_238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 280
    :pswitch_23d
    const/16 v1, 0xe

    if-ne v5, v1, :cond_26f

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertFriendRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "friend"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 284
    :cond_26a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 285
    :cond_26f
    const/16 v1, 0xc

    if-ne v5, v1, :cond_55

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertFriendListRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_29c

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "friend_list"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 289
    :cond_29c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 294
    :pswitch_2a1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertGroupRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_2c0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "groups"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 297
    :cond_2c0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 301
    :pswitch_2c5
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertFriendGroupingRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_2ee

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "friend_grouping"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 304
    :cond_2ee
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 308
    :pswitch_2f3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertMessageRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_312

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "message"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 311
    :cond_312
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 316
    :pswitch_317
    const/16 v1, 0x18

    if-ne v5, v1, :cond_33f

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertNotificationRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_33a

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "notification"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 320
    :cond_33a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 322
    :cond_33f
    const/16 v1, 0x19

    if-ne v5, v1, :cond_55

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertNotificationListRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_362

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "notification_list"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 326
    :cond_362
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 332
    :pswitch_367
    const/16 v1, 0x1c

    if-ne v5, v1, :cond_38f

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertStatusRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_38a

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "status"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 336
    :cond_38a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 339
    :cond_38f
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertPeopleRecord(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_3ae

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "people"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 342
    :cond_3ae
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 348
    :pswitch_3b3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertPhotoRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_3ef

    .line 349
    const/16 v1, 0x21

    if-ne v5, v1, :cond_3d6

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "photo_upload_body"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 352
    :cond_3d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "photo"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 354
    :cond_3ef
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 359
    :pswitch_3f4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertMsgThreadRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_413

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "thread_message"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 362
    :cond_413
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 367
    :pswitch_418
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertScheduleRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_437

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "event"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 370
    :cond_437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 375
    :pswitch_43c
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertSearchingRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_481

    .line 376
    const/16 v1, 0x25

    if-ne v5, v1, :cond_45f

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "searching_keywords"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 378
    :cond_45f
    const/16 v1, 0x26

    if-ne v5, v1, :cond_47c

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "searching"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 381
    :cond_47c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 383
    :cond_481
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 388
    :pswitch_486
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertStatusListRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_4a5

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "activity_statuslist"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 391
    :cond_4a5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 396
    :pswitch_4aa
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertFavoriteRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_4cd

    .line 397
    const/16 v1, 0x8

    if-ne v5, v1, :cond_55

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "comment_favorite"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 402
    :cond_4cd
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 407
    :pswitch_4d2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertLinkRecords(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Z

    move-result v1

    if-eqz v1, :cond_4f1

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "deeplink"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 410
    :cond_4f1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    goto/16 :goto_55

    .line 435
    :cond_4f6
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ROLLBACK TRANSACTION"

    invoke-static {v1, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_60

    .line 456
    :cond_4ff
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ROLLBACK TRANSACTION"

    invoke-static {v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 457
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_b1

    .line 458
    const-string v1, "SNS_DB"

    const-string v3, "************ [FAILED] FRIEND UPDATE TRANSACTION *************"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_511
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_511} :catch_11d

    goto/16 :goto_b1

    .line 464
    :cond_513
    :try_start_513
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    if-eqz v1, :cond_56b

    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v5, 0xf

    if-ne v1, v5, :cond_56b

    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-eq v1, v2, :cond_56b

    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    if-eqz v1, :cond_56b

    .line 467
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_530

    .line 468
    const-string v1, "SNS_DB"

    const-string v4, "************ [BEGIN] MESSAGE UPDATE TRANSACTION *************"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_530
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {v1, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_539
    .catch Ljava/lang/Exception; {:try_start_513 .. :try_end_539} :catch_5d1

    .line 473
    :try_start_539
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearOldMessage(I)Z

    move-result v1

    if-eqz v1, :cond_557

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "COMMIT TRANSACTION"

    invoke-static {v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 476
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_b1

    .line 477
    const-string v1, "SNS_DB"

    const-string v3, "************ [END] MESSAGE UPDATE TRANSACTION *************"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b1

    .line 480
    :cond_557
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ROLLBACK TRANSACTION"

    invoke-static {v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 481
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_b1

    .line 482
    const-string v1, "SNS_DB"

    const-string v3, "************ [FAILED] MESSAGE UPDATE TRANSACTION *************"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_569
    .catch Ljava/lang/Exception; {:try_start_539 .. :try_end_569} :catch_11d

    goto/16 :goto_b1

    .line 486
    :cond_56b
    :try_start_56b
    instance-of v1, p1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    if-eqz v1, :cond_b1

    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v1, v9, :cond_b1

    iget v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    if-eq v1, v2, :cond_b1

    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mUriString:Ljava/lang/String;

    if-eqz v1, :cond_b1

    iget-object v1, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v1, :cond_589

    const-string v1, "nochange"

    iget-object v5, p2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 490
    :cond_589
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_594

    .line 491
    const-string v1, "SNS_DB"

    const-string v5, "************ [BEGIN] FRIEND UPDATE TRANSACTION *************"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_594
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {v1, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_59b
    .catch Ljava/lang/Exception; {:try_start_56b .. :try_end_59b} :catch_5d1

    .line 495
    :try_start_59b
    invoke-direct {p0, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearOldFriendList(I)Z

    move-result v1

    if-eqz v1, :cond_5b5

    .line 496
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "COMMIT TRANSACTION"

    invoke-static {v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 498
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_b1

    .line 499
    const-string v1, "SNS_DB"

    const-string v3, "************ [END] FRIEND UPDATE TRANSACTION *************"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b1

    .line 502
    :cond_5b5
    iget-object v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ROLLBACK TRANSACTION"

    invoke-static {v1, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 503
    iget-boolean v1, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mbIsLoggable:Z

    if-eqz v1, :cond_b1

    .line 504
    const-string v1, "SNS_DB"

    const-string v3, "************ [FAILED] FRIEND UPDATE TRANSACTION *************"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c7
    .catch Ljava/lang/Exception; {:try_start_59b .. :try_end_5c7} :catch_11d

    goto/16 :goto_b1

    .line 520
    :cond_5c9
    const-string v1, "content://ERROR"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_bb

    .line 510
    :catch_5d1
    move-exception v1

    move v2, v3

    goto/16 :goto_11e

    .line 233
    nop

    :pswitch_data_5d6
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_1ca
        :pswitch_52
        :pswitch_52
        :pswitch_1f8
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_23d
        :pswitch_52
        :pswitch_2a1
        :pswitch_2c5
        :pswitch_4d2
        :pswitch_2f3
        :pswitch_52
        :pswitch_317
        :pswitch_367
        :pswitch_3b3
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_418
        :pswitch_43c
        :pswitch_486
        :pswitch_52
        :pswitch_3f4
        :pswitch_52
        :pswitch_4aa
    .end packed-switch
.end method

.method public open()Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    return-object p0
.end method

.method public updateActivityCommentCnt(Ljava/lang/String;IZ)I
    .registers 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5501
    const/4 v8, 0x0

    .line 5503
    const/4 v13, 0x0

    .line 5506
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 5507
    const-string v0, "activity_id = ?"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5508
    const-string v0, " AND "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5509
    const-string v0, "service_provider = ?"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5511
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 5516
    :try_start_23
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_26} :catch_b1

    .line 5522
    :try_start_26
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "activity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "comment_count"

    aput-object v5, v2, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5525
    if-eqz v0, :cond_103

    .line 5526
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_b4

    .line 5527
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "friend_activity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "comment_count"

    aput-object v5, v2, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5530
    const/4 v1, 0x1

    .line 5531
    if-eqz v0, :cond_ff

    .line 5532
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_ff

    .line 5533
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "group_activity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "comment_count"

    aput-object v5, v2, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5536
    const/4 v1, 0x2

    move v2, v1

    move-object v1, v0

    .line 5542
    :goto_7f
    if-eqz v1, :cond_fd

    .line 5543
    if-eqz p3, :cond_b8

    .line 5544
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 5545
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 5546
    add-int/lit8 v13, v0, 0x1

    move v0, v13

    .line 5568
    :goto_91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5571
    :goto_94
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5572
    const-string v3, "comment_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5574
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5581
    :goto_b0
    return v0

    .line 5517
    :catch_b1
    move-exception v0

    .line 5518
    const/4 v0, -0x1

    goto :goto_b0

    .line 5540
    :cond_b4
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    goto :goto_7f

    .line 5549
    :cond_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5550
    const-string v3, "target_id = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5551
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5552
    const-string v3, "service_provider = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5554
    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v9, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    .line 5558
    iget-object v5, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "comment"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "service_provider"

    aput-object v8, v7, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5562
    if-eqz v0, :cond_f9

    .line 5563
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 5564
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_f9} :catch_fb

    :cond_f9
    move v0, v13

    goto :goto_91

    .line 5577
    :catch_fb
    move-exception v0

    .line 5579
    throw v0

    :cond_fd
    move v0, v13

    goto :goto_94

    :cond_ff
    move v2, v1

    move-object v1, v0

    goto/16 :goto_7f

    :cond_103
    move v0, v8

    goto :goto_b0
.end method

.method public updateActivityReadStatus(JZ)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 5593
    const-string v1, "activity"

    .line 5594
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5597
    const-string v4, "read_status"

    if-ne p3, v0, :cond_3d

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5602
    :try_start_2e
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V

    .line 5603
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_3f

    move-result v0

    .line 5608
    :goto_3c
    return v0

    .line 5597
    :cond_3d
    const/4 v0, 0x0

    goto :goto_11

    .line 5604
    :catch_3f
    move-exception v0

    move-object v1, v0

    .line 5605
    const/4 v0, -0x1

    .line 5606
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public updateFavorite(ILjava/lang/String;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5780
    .line 5781
    const/4 v10, 0x0

    .line 5782
    const/4 v9, -0x1

    .line 5784
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 5787
    :try_start_7
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_a} :catch_18a

    .line 5792
    const/4 v8, 0x0

    .line 5797
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_provider = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5798
    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5801
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "activity"

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_191
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_58} :catch_197

    move-result-object v8

    .line 5803
    if-eqz v8, :cond_1ab

    .line 5804
    :try_start_5b
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_194
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_19c

    move-result v0

    if-lez v0, :cond_6c

    .line 5805
    const/4 v9, 0x0

    move-object v1, v8

    move v2, v9

    .line 5830
    :goto_64
    if-nez v1, :cond_ae

    .line 5869
    if-eqz v1, :cond_6b

    .line 5870
    :goto_68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5875
    :cond_6b
    :goto_6b
    return-void

    .line 5807
    :cond_6c
    :try_start_6c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5808
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "friend_activity"

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5810
    if-eqz v8, :cond_1ab

    .line 5811
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8c

    .line 5812
    const/4 v9, 0x1

    move-object v1, v8

    move v2, v9

    goto :goto_64

    .line 5814
    :cond_8c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5815
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "group_activity"

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9f
    .catchall {:try_start_6c .. :try_end_9f} :catchall_194
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_9f} :catch_19c

    move-result-object v1

    .line 5817
    if-eqz v1, :cond_1a8

    .line 5818
    :try_start_a2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_181
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_1a1

    move-result v0

    if-lez v0, :cond_ab

    .line 5819
    const/4 v9, 0x2

    move v2, v9

    goto :goto_64

    .line 5821
    :cond_ab
    const/4 v9, -0x1

    move v2, v9

    goto :goto_64

    .line 5833
    :cond_ae
    :try_start_ae
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5835
    if-eqz p1, :cond_c1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_c1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_122

    .line 5837
    :cond_c1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5838
    const-string v0, "recommend_count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 5840
    if-eqz p3, :cond_102

    .line 5841
    const-string v4, "recommend_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5842
    const-string v0, "recommendable"

    const-string v4, "done"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5861
    :goto_e2
    if-eqz v3, :cond_1a5

    const/4 v0, -0x1

    if-le v2, v0, :cond_1a5

    .line 5862
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/sec/android/app/sns/type/SnsActivityType;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v4, v3, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_ae .. :try_end_f5} :catchall_181
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_f5} :catch_117

    move-result v0

    .line 5869
    :goto_f6
    if-eqz v1, :cond_fb

    .line 5870
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5873
    :cond_fb
    :goto_fb
    if-lez v0, :cond_6b

    .line 5874
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    goto/16 :goto_6b

    .line 5844
    :cond_102
    if-lez v0, :cond_10f

    .line 5845
    :try_start_104
    const-string v4, "recommend_count"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5847
    :cond_10f
    const-string v0, "recommendable"

    const-string v4, "true"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_116
    .catchall {:try_start_104 .. :try_end_116} :catchall_181
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_116} :catch_117

    goto :goto_e2

    .line 5866
    :catch_117
    move-exception v0

    .line 5867
    :goto_118
    :try_start_118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_181

    .line 5869
    if-eqz v1, :cond_120

    .line 5870
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_120
    move v0, v10

    .line 5871
    goto :goto_fb

    .line 5849
    :cond_122
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18d

    .line 5850
    :try_start_125
    const-string v4, "is_favorite"

    if-eqz p3, :cond_188

    const/4 v0, 0x1

    :goto_12a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service_provider = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5854
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5857
    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "activity_statuslist"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v0, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17f
    .catchall {:try_start_125 .. :try_end_17f} :catchall_181
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_17f} :catch_117

    goto/16 :goto_e2

    .line 5869
    :catchall_181
    move-exception v0

    :goto_182
    if-eqz v1, :cond_187

    .line 5870
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5869
    :cond_187
    throw v0

    .line 5850
    :cond_188
    const/4 v0, 0x0

    goto :goto_12a

    .line 5788
    :catch_18a
    move-exception v0

    goto/16 :goto_6b

    .line 5869
    :cond_18d
    if-eqz v1, :cond_6b

    goto/16 :goto_68

    :catchall_191
    move-exception v0

    move-object v1, v8

    goto :goto_182

    :catchall_194
    move-exception v0

    move-object v1, v8

    goto :goto_182

    .line 5866
    :catch_197
    move-exception v0

    move-object v1, v8

    move v2, v9

    goto/16 :goto_118

    :catch_19c
    move-exception v0

    move-object v1, v8

    move v2, v9

    goto/16 :goto_118

    :catch_1a1
    move-exception v0

    move v2, v9

    goto/16 :goto_118

    :cond_1a5
    move v0, v10

    goto/16 :goto_f6

    :cond_1a8
    move v2, v9

    goto/16 :goto_64

    :cond_1ab
    move-object v1, v8

    move v2, v9

    goto/16 :goto_64
.end method

.method public updateForwardable(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5376
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_17b

    .line 5381
    const/4 v1, 0x0

    .line 5382
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/sec/android/app/sns/db/SnsDBUtil;->findActivity(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 5384
    const-string v4, "content://com.sec.android.app.provider.sns/activity"

    .line 5387
    and-int/lit8 v2, v3, 0x1

    if-lez v2, :cond_66

    .line 5389
    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5390
    const-string v2, "service_provider = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5391
    const-string v2, " AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5392
    const-string v2, "activity_id = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5394
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 5395
    const-string v7, "forwardable"

    const/4 v2, 0x1

    if-ne p3, v2, :cond_17e

    const-string v2, "true"

    :goto_30
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5396
    if-nez p3, :cond_48

    .line 5397
    const-string v2, "forwarder_id"

    invoke-virtual {v6, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5398
    const-string v2, "forwarder_name"

    move-object/from16 v0, p5

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    const-string v2, "forwarder_photo_url"

    move-object/from16 v0, p6

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5402
    :cond_48
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "activity"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v2, v7, v6, v5, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5408
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    .line 5411
    :cond_66
    and-int/lit8 v2, v3, 0x2

    if-lez v2, :cond_c0

    .line 5413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5414
    const-string v2, "service_provider = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5415
    const-string v2, " AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5416
    const-string v2, "activity_id = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5418
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 5419
    const-string v7, "forwardable"

    const/4 v2, 0x1

    if-ne p3, v2, :cond_182

    const-string v2, "true"

    :goto_8a
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5420
    if-nez p3, :cond_a2

    .line 5421
    const-string v2, "forwarder_id"

    invoke-virtual {v6, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5422
    const-string v2, "forwarder_name"

    move-object/from16 v0, p5

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5423
    const-string v2, "forwarder_photo_url"

    move-object/from16 v0, p6

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5426
    :cond_a2
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "friend_activity"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v2, v7, v6, v5, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5432
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    .line 5435
    :cond_c0
    and-int/lit8 v2, v3, 0x4

    if-lez v2, :cond_11a

    .line 5437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5438
    const-string v2, "service_provider = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5439
    const-string v2, " AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5440
    const-string v2, "activity_id = ?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5442
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 5443
    const-string v7, "forwardable"

    const/4 v2, 0x1

    if-ne p3, v2, :cond_186

    const-string v2, "true"

    :goto_e4
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5444
    if-nez p3, :cond_fc

    .line 5445
    const-string v2, "forwarder_id"

    invoke-virtual {v6, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5446
    const-string v2, "forwarder_name"

    move-object/from16 v0, p5

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5447
    const-string v2, "forwarder_photo_url"

    move-object/from16 v0, p6

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5450
    :cond_fc
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "group_activity"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v2, v7, v6, v5, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5456
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V

    .line 5459
    :cond_11a
    and-int/lit8 v2, v3, 0x8

    if-lez v2, :cond_174

    .line 5461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5462
    const-string v2, "service_provider = ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5463
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5464
    const-string v2, "status_id = ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5466
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 5467
    const-string v6, "forwardable"

    const/4 v2, 0x1

    if-ne p3, v2, :cond_18a

    const-string v2, "true"

    :goto_13e
    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5468
    if-nez p3, :cond_156

    .line 5469
    const-string v2, "forwarder_id"

    invoke-virtual {v5, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5470
    const-string v2, "forwarder_name"

    move-object/from16 v0, p5

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5471
    const-string v2, "forwarder_photo_url"

    move-object/from16 v0, p6

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5474
    :cond_156
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "activity_statuslist"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v2, v6, v5, v3, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5480
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->activityNotifychange(I)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_174} :catch_18d

    .line 5486
    :cond_174
    if-eqz v1, :cond_18f

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_17a
    return-object v1

    .line 5377
    :catch_17b
    move-exception v1

    .line 5378
    const/4 v1, 0x0

    goto :goto_17a

    .line 5395
    :cond_17e
    :try_start_17e
    const-string v2, "done"

    goto/16 :goto_30

    .line 5419
    :cond_182
    const-string v2, "done"

    goto/16 :goto_8a

    .line 5443
    :cond_186
    const-string v2, "done"

    goto/16 :goto_e4

    .line 5467
    :cond_18a
    const-string v2, "done"
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_18c} :catch_18d

    goto :goto_13e

    .line 5482
    :catch_18d
    move-exception v1

    .line 5483
    throw v1

    .line 5486
    :cond_18f
    const/4 v1, 0x0

    goto :goto_17a
.end method

.method public updateFriendResponseTime(IILjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    .line 5879
    .line 5881
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5886
    :try_start_22
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_25} :catch_42

    .line 5892
    :try_start_25
    const-string v2, "full"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 5893
    if-ne p2, v4, :cond_45

    .line 5894
    const-string v2, "friendlist_full_response_time"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5905
    :goto_34
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "friend_responsetime"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5912
    :goto_41
    return v0

    .line 5887
    :catch_42
    move-exception v0

    .line 5888
    const/4 v0, -0x1

    goto :goto_41

    .line 5896
    :cond_45
    const-string v2, "full_response_time"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4a} :catch_4b

    goto :goto_34

    .line 5907
    :catch_4b
    move-exception v0

    .line 5909
    throw v0

    .line 5898
    :cond_4d
    if-ne p2, v4, :cond_55

    .line 5899
    :try_start_4f
    const-string v2, "friendlist_updated_response_time"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 5902
    :cond_55
    const-string v2, "updated_response_time"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5a} :catch_4b

    goto :goto_34
.end method

.method public updateFriendUseContact(ILandroid/os/Bundle;)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5720
    const-string v4, "friend"

    .line 5721
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 5722
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5724
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v7

    move v0, v1

    move v2, v1

    .line 5726
    :goto_17
    array-length v3, v7

    if-ge v0, v3, :cond_86

    .line 5727
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5728
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5730
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 5731
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v1, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5733
    const-string v8, "use_contact"

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "service_provider = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5735
    const-string v3, " AND "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "friend_id = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5739
    :try_start_6e
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V

    .line 5740
    iget-object v2, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v2, v4, v5, v3, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7b} :catch_7f

    move-result v2

    .line 5726
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 5741
    :catch_7f
    move-exception v2

    move-object v3, v2

    .line 5742
    const/4 v2, -0x1

    .line 5743
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c

    .line 5747
    :cond_86
    return v2
.end method

.method public updateFriendUseContact(JJ)I
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 5688
    const-string v0, "friend"

    .line 5689
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5693
    const-string v3, "use_contact"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5694
    const-string v3, "friend_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5695
    const-string v3, "(SELECT f_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5696
    const-string v3, " FROM use_contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WHERE used = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5700
    :try_start_40
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V

    .line 5701
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4d} :catch_4f

    move-result v0

    .line 5707
    :goto_4e
    return v0

    .line 5702
    :catch_4f
    move-exception v0

    move-object v1, v0

    .line 5703
    const/4 v0, -0x1

    .line 5704
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method public updateIsFriendStatus(Ljava/lang/String;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 5621
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5624
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V

    .line 5626
    const-string v0, "activity_statuslist"

    .line 5627
    const-string v3, "creator_isfollowing"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creator_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5631
    :try_start_35
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v0, v1, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_f1

    .line 5636
    :goto_3f
    const-string v0, "activity"

    .line 5637
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 5638
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5640
    const-string v3, "is_friend"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actor_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5644
    :try_start_70
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v0, v1, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7a} :catch_f7

    .line 5650
    :goto_7a
    const-string v0, "friend_activity"

    .line 5651
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 5652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5654
    const-string v3, "is_friend"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actor_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5658
    :try_start_ab
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v0, v1, v4, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b5} :catch_fd

    .line 5664
    :goto_b5
    const-string v0, "group_activity"

    .line 5665
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 5666
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5668
    const-string v3, "is_friend"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actor_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5672
    :try_start_e6
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f0} :catch_102

    .line 5677
    :goto_f0
    return-void

    .line 5632
    :catch_f1
    move-exception v0

    .line 5633
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3f

    .line 5645
    :catch_f7
    move-exception v0

    .line 5647
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7a

    .line 5659
    :catch_fd
    move-exception v0

    .line 5661
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5

    .line 5673
    :catch_102
    move-exception v0

    .line 5675
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f0
.end method

.method public updateMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6011
    .line 6012
    const-string v0, "content://com.sec.android.app.provider.sns/"

    .line 6013
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6016
    const-string v3, "read_state"

    invoke-static {p4}, Lcom/sec/android/app/sns/db/SnsDBUtil;->convertBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6018
    if-eqz p2, :cond_57

    .line 6019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6025
    :goto_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V

    .line 6026
    iget-object v3, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v2, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 6029
    if-eqz v1, :cond_6e

    .line 6030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_51} :catch_71

    move-result-object v0

    .line 6038
    :goto_52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 6021
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 6032
    :cond_6e
    :try_start_6e
    const-string v0, "content://ERROR"
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_70} :catch_71

    goto :goto_52

    .line 6033
    :catch_71
    move-exception v0

    move-object v1, v0

    .line 6034
    const-string v0, "content://ERROR"

    .line 6035
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52
.end method

.method public updatePeopleStatus(ILandroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5752
    const/4 v3, 0x0

    .line 5753
    const-string v1, "content://com.sec.android.app.provider.sns/people"

    .line 5755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service_provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5759
    :try_start_1f
    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getWritableDatabase()V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_22} :catch_55

    .line 5764
    const-string v4, "create_time"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5765
    const-string v6, "create_time"

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5768
    :try_start_38
    iget-object v4, p0, Lcom/sec/android/app/sns/db/SnsDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "people"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v4, v5, p2, v2, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter$SnsDBWrapper;->onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_44} :catch_4c

    move-result v2

    .line 5775
    :goto_45
    if-eqz v2, :cond_4b

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_4b
    :goto_4b
    return-object v0

    .line 5770
    :catch_4c
    move-exception v1

    .line 5771
    const-string v2, "content://ERROR"

    .line 5772
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    move v2, v3

    goto :goto_45

    .line 5760
    :catch_55
    move-exception v1

    goto :goto_4b
.end method
