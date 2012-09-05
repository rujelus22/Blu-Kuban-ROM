.class public Lcom/android/providers/calendar/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/MetaData$Fields;
    }
.end annotation


# static fields
.field private static final sCalendarMetaDataProjection:[Ljava/lang/String;


# instance fields
.field private mFields:Lcom/android/providers/calendar/MetaData$Fields;

.field private mInitialized:Z

.field private final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "localTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "minInstance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "maxInstance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .registers 3
    .parameter "openHelper"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    iput-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    .line 76
    iput-object p1, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 77
    return-void
.end method

.method public static getJulianDay(JJ)I
    .registers 12
    .parameter "millis"
    .parameter "gmtoff"

    .prologue
    .line 252
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_a

    .line 253
    const-wide/32 v4, 0x5265bff

    sub-long/2addr p0, v4

    .line 255
    :cond_a
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 256
    .local v2, offsetMillis:J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 257
    .local v0, julianDay:J
    long-to-int v4, v0

    const v5, 0x253d8c

    add-int/2addr v4, v5

    return v4
.end method

.method private readLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .parameter "db"

    .prologue
    .line 137
    const/4 v13, 0x0

    .line 138
    .local v13, timezone:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .local v11, minInstance:J
    const-wide/16 v9, 0x0

    .line 142
    .local v9, maxInstance:J
    const-string v1, "CalendarMetaData"

    sget-object v2, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 146
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 147
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 148
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_3d

    move-result-wide v9

    .line 151
    :cond_28
    if-eqz v8, :cond_2d

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_2d
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object v13, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide v11, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 159
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide v9, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    .line 163
    return-void

    .line 151
    :catchall_3d
    move-exception v0

    if-eqz v8, :cond_43

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method


# virtual methods
.method public clearInstanceRange()V
    .registers 8

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 234
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 238
    :try_start_9
    iget-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v0, :cond_10

    .line 239
    invoke-direct {p0, v6}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 241
    :cond_10
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 242
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    .line 244
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    return-void

    .line 244
    :catchall_23
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;
    .registers 5

    .prologue
    .line 116
    new-instance v1, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    .line 120
    .local v1, fields:Lcom/android/providers/calendar/MetaData$Fields;
    iget-boolean v2, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v2, :cond_12

    .line 121
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_12
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 126
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 127
    return-object v1
.end method

.method public writeLocked(Ljava/lang/String;JJ)V
    .registers 13
    .parameter "timezone"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 201
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v3, "localTimezone"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v3, "minInstance"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v3, "maxInstance"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    :try_start_27
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "CalendarMetaData"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_33} :catch_40

    .line 219
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object p1, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p2, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 221
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p4, v3, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 222
    return-void

    .line 211
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_40
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v4, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 215
    throw v1
.end method
