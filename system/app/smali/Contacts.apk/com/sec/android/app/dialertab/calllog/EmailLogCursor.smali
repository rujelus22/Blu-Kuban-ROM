.class public Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;
.super Landroid/database/AbstractCursor;
.source "EmailLogCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field public static dataLenth:I

.field public static mDateFormat:Ljava/lang/String;


# instance fields
.field private idxDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;",
            ">;"
        }
    .end annotation
.end field

.field mCalendar:Ljava/util/Calendar;

.field mCurrentDay:I

.field mCurrentMonth:I

.field mCurrentYear:I

.field mCursor:Landroid/database/Cursor;

.field private mIndex:I

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 34
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isSep"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "service_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    .line 66
    sput v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->dataLenth:I

    .line 71
    const-string v0, "MM-dd-yyyy"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mDateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArg"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    .line 68
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCurrentYear:I

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCurrentMonth:I

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCurrentDay:I

    .line 101
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    .line 103
    const-string v0, "EmailLogCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchEmailLog Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->fetchEmailLog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    const-string v0, "EmailLogCursor"

    const-string v1, "fetchEmailLog End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method private fetchEmailLog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 22
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArg"

    .prologue
    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 131
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "name"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "number"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "date"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "type"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "contactid"

    aput-object v5, v4, v3

    const/4 v3, 0x6

    const-string v5, "logtype"

    aput-object v5, v4, v3

    const/4 v3, 0x7

    const-string v5, "duration"

    aput-object v5, v4, v3

    .line 144
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "date_format"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mDateFormat:Ljava/lang/String;

    .line 149
    const-string v7, "date DESC"

    .line 150
    .local v7, sortOrder:Ljava/lang/String;
    const-string v3, "EmailLogCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez p2, :cond_a3

    .line 152
    const-string v3, "EmailLogCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmailLogsDBProvider.CONTENT_URI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    .line 168
    :goto_80
    const-string v3, "EmailLogCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCursor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_cc

    .line 231
    :cond_a2
    :goto_a2
    return-void

    .line 160
    :cond_a3
    const-string v3, "EmailLogCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmailLogsDBProvider.CONTENT_URI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_80

    .line 173
    :cond_cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 174
    .local v8, count:I
    const-string v3, "EmailLogCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v8, :cond_a2

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    sput v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->dataLenth:I

    .line 181
    const-string v3, "EmailLogCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchEmailLog dataLenth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->dataLenth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->dataLenth:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "date"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 186
    .local v16, idxDate:I
    const/4 v11, 0x1

    .line 187
    .local v11, iSepCount:I
    const/4 v14, 0x0

    .line 188
    .local v14, idxCount:I
    const/16 v17, 0x0

    .line 189
    .local v17, strPrevDay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    const/4 v13, 0x0

    .line 195
    .local v13, idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    :cond_132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 196
    .local v9, date:J
    if-nez v17, :cond_17e

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 199
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .end local v13           #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    neg-int v3, v11

    invoke-direct {v13, v3}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;-><init>(I)V

    .line 200
    .restart local v13       #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->strSeparatorArray:[Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    .end local v11           #iSepCount:I
    .local v12, iSepCount:I
    aput-object v17, v3, v11

    .line 204
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .end local v13           #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #idxCount:I
    .local v15, idxCount:I
    invoke-direct {v13, v14}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;-><init>(I)V

    .line 205
    .restart local v13       #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v15

    .end local v15           #idxCount:I
    .restart local v14       #idxCount:I
    move v11, v12

    .line 226
    .end local v12           #iSepCount:I
    .restart local v11       #iSepCount:I
    :cond_16b
    :goto_16b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_132

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_a2

    .line 208
    :cond_17e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1bc

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 211
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .end local v13           #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    neg-int v3, v11

    invoke-direct {v13, v3}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;-><init>(I)V

    .line 212
    .restart local v13       #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->strSeparatorArray:[Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    .end local v11           #iSepCount:I
    .restart local v12       #iSepCount:I
    aput-object v17, v3, v11

    .line 216
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .end local v13           #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #idxCount:I
    .restart local v15       #idxCount:I
    invoke-direct {v13, v14}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;-><init>(I)V

    .line 217
    .restart local v13       #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v15

    .end local v15           #idxCount:I
    .restart local v14       #idxCount:I
    move v11, v12

    .end local v12           #iSepCount:I
    .restart local v11       #iSepCount:I
    goto :goto_16b

    .line 220
    :cond_1bc
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_16b

    .line 221
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .end local v13           #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #idxCount:I
    .restart local v15       #idxCount:I
    invoke-direct {v13, v14}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;-><init>(I)V

    .line 222
    .restart local v13       #idx:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v15

    .end local v15           #idxCount:I
    .restart local v14       #idxCount:I
    goto :goto_16b
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .registers 16
    .parameter "context"
    .parameter "date"

    .prologue
    const/16 v11, 0x30

    const/16 v10, 0x2f

    const/16 v9, 0xa

    .line 507
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 508
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 509
    .local v4, year:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 510
    .local v3, month:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 512
    .local v2, day:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 514
    .local v1, dateBuffer:Ljava/lang/StringBuffer;
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCurrentYear:I

    if-ne v5, v4, :cond_46

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCurrentMonth:I

    if-ne v5, v3, :cond_46

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCurrentDay:I

    if-ne v5, v2, :cond_46

    .line 517
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0264

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    :goto_41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 520
    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 522
    .local v0, cl:I
    if-lez v0, :cond_67

    const/16 v5, 0xb40

    if-ge v0, v5, :cond_67

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0265

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 526
    :cond_67
    const-string v5, "EmailLogCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmailLogCursor>>>>>>>>>>>>  mDateFormat : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v5, "MM-dd-yyyy"

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 529
    if-ge v3, v9, :cond_90

    .line 530
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 532
    :cond_90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 534
    if-ge v2, v9, :cond_9b

    .line 535
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    :cond_9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 539
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 541
    :cond_a5
    const-string v5, "yyyy-MM-dd"

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 543
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 544
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 545
    if-ge v3, v9, :cond_ba

    .line 546
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    :cond_ba
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 549
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 550
    if-ge v2, v9, :cond_c5

    .line 551
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 553
    :cond_c5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_41

    .line 560
    :cond_ca
    if-ge v2, v9, :cond_cf

    .line 561
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 563
    :cond_cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 564
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 566
    if-ge v3, v9, :cond_da

    .line 567
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    :cond_da
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 570
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_41
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 111
    const-string v0, "EmailLogCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    .line 117
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_35

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    .line 121
    :cond_35
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 122
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 8
    .parameter "columnName"

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 246
    if-nez p1, :cond_9

    .line 247
    const/4 v0, -0x1

    .line 275
    :cond_8
    :goto_8
    return v0

    .line 248
    :cond_9
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 250
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    .line 251
    goto :goto_8

    .line 252
    :cond_1f
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v2

    .line 253
    goto :goto_8

    .line 254
    :cond_2b
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v3

    .line 255
    goto :goto_8

    .line 256
    :cond_37
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v4

    .line 257
    goto :goto_8

    .line 258
    :cond_43
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 259
    const/4 v0, 0x6

    goto :goto_8

    .line 260
    :cond_50
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 261
    const/4 v0, 0x7

    goto :goto_8

    .line 262
    :cond_5d
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 263
    const/16 v0, 0x8

    goto :goto_8

    .line 264
    :cond_6c
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 265
    const/16 v0, 0x9

    goto :goto_8

    .line 266
    :cond_7b
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 267
    const/16 v0, 0xa

    goto/16 :goto_8

    .line 268
    :cond_8b
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 269
    const/16 v0, 0xb

    goto/16 :goto_8

    .line 270
    :cond_9b
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 271
    const/16 v0, 0xc

    goto/16 :goto_8

    .line 275
    :cond_ab
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_8
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 297
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 8
    .parameter "column"

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    const/4 v0, 0x0

    .line 312
    .local v0, idxType:I
    packed-switch p1, :pswitch_data_c8

    .line 373
    :pswitch_5
    const/4 v3, 0x0

    .line 375
    .local v3, val:I
    :goto_6
    return v3

    .line 318
    .end local v3           #val:I
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 319
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 321
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 322
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 323
    .restart local v3       #val:I
    goto :goto_6

    .line 327
    .end local v3           #val:I
    :pswitch_27
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 328
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 331
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 332
    .restart local v3       #val:I
    goto :goto_6

    .line 336
    .end local v3           #val:I
    :pswitch_47
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 337
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 339
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "logtype"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 340
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 341
    .restart local v3       #val:I
    goto :goto_6

    .line 345
    .end local v3           #val:I
    :pswitch_67
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 346
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 348
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 349
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget v1, v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    .line 350
    .local v1, pos:I
    move v3, v1

    .line 351
    .restart local v3       #val:I
    goto :goto_6

    .line 355
    .end local v1           #pos:I
    .end local v3           #val:I
    :pswitch_86
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 356
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 358
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "contactid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 359
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 360
    .restart local v3       #val:I
    goto/16 :goto_6

    .line 365
    .end local v3           #val:I
    :pswitch_a7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 366
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "service_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 369
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 370
    .restart local v3       #val:I
    goto/16 :goto_6

    .line 312
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_27
        :pswitch_5
        :pswitch_67
        :pswitch_86
        :pswitch_47
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_a7
    .end packed-switch
.end method

.method public getLong(I)J
    .registers 8
    .parameter "column"

    .prologue
    .line 381
    const-wide/16 v1, 0x0

    .line 382
    .local v1, longData:J
    const/4 v0, 0x0

    .line 383
    .local v0, idx:I
    const/4 v3, 0x0

    .line 384
    .local v3, temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    sparse-switch p1, :sswitch_data_70

    .line 415
    :cond_7
    :goto_7
    return-wide v1

    .line 387
    :sswitch_8
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 388
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 390
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "date"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 391
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 392
    goto :goto_7

    .line 395
    :sswitch_28
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 396
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 398
    iget v4, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    if-ltz v4, :cond_7

    .line 399
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 400
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_7

    .line 404
    :sswitch_4c
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 405
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 407
    iget v4, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    if-ltz v4, :cond_7

    .line 408
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "duration"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 409
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_7

    .line 384
    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_28
        0x3 -> :sswitch_8
        0x9 -> :sswitch_4c
    .end sparse-switch
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 8
    .parameter "column"

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, idx:I
    const/4 v3, 0x0

    .line 429
    .local v3, temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    sparse-switch p1, :sswitch_data_90

    .line 475
    const/4 v2, 0x0

    .line 478
    .local v2, str:Ljava/lang/String;
    :goto_6
    return-object v2

    .line 432
    .end local v2           #str:Ljava/lang/String;
    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 433
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 435
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 436
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_6

    .line 440
    .end local v2           #str:Ljava/lang/String;
    :sswitch_27
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 441
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 443
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "number"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 444
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_6

    .line 449
    .end local v2           #str:Ljava/lang/String;
    :sswitch_47
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 450
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 452
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "cnap_name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 453
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 454
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_6

    .line 458
    .end local v2           #str:Ljava/lang/String;
    :sswitch_67
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 459
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 461
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;

    .line 462
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
    iget v1, v3, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    .line 464
    .local v1, pos:I
    if-gez v1, :cond_8d

    .line 466
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->strSeparatorArray:[Ljava/lang/String;

    neg-int v5, v1

    aget-object v2, v4, v5

    .restart local v2       #str:Ljava/lang/String;
    goto/16 :goto_6

    .line 469
    .end local v2           #str:Ljava/lang/String;
    :cond_8d
    const/4 v2, 0x0

    .line 472
    .restart local v2       #str:Ljava/lang/String;
    goto/16 :goto_6

    .line 429
    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_27
        0x6 -> :sswitch_67
        0xa -> :sswitch_47
    .end sparse-switch
.end method

.method public isNull(I)Z
    .registers 6
    .parameter "column"

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_28

    .line 496
    const/4 v1, 0x0

    .line 499
    .local v1, str:Ljava/lang/String;
    :goto_4
    if-nez v1, :cond_26

    .line 500
    const/4 v2, 0x1

    .line 502
    :goto_7
    return v2

    .line 488
    .end local v1           #str:Ljava/lang/String;
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 489
    .local v0, idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_4

    .line 492
    .end local v0           #idx:I
    .end local v1           #str:Ljava/lang/String;
    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v3, "number"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 493
    .restart local v0       #idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_4

    .line 502
    .end local v0           #idx:I
    :cond_26
    const/4 v2, 0x0

    goto :goto_7

    .line 486
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_8
        :pswitch_17
    .end packed-switch
.end method

.method public onMove(II)Z
    .registers 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, rc:Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_c

    .line 237
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;->mIndex:I

    .line 238
    const/4 v0, 0x1

    .line 241
    :cond_c
    return v0
.end method
