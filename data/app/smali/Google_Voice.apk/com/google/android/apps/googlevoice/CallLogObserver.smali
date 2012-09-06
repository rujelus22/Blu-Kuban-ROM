.class public Lcom/google/android/apps/googlevoice/CallLogObserver;
.super Landroid/database/ContentObserver;
.source "CallLogObserver.java"


# static fields
.field private static instanceobj:Lcom/google/android/apps/googlevoice/CallLogObserver;


# instance fields
.field private callLogService:Lcom/google/android/apps/googlevoice/CallLogService;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/google/android/apps/googlevoice/CallLogService;)V
    .registers 3
    .parameter "handler"
    .parameter "callLogService"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/CallLogObserver;->callLogService:Lcom/google/android/apps/googlevoice/CallLogService;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/CallLogObserver;)Lcom/google/android/apps/googlevoice/CallLogService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogObserver;->callLogService:Lcom/google/android/apps/googlevoice/CallLogService;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/apps/googlevoice/CallLogObserver;
    .registers 2

    .prologue
    .line 63
    const-class v0, Lcom/google/android/apps/googlevoice/CallLogObserver;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogObserver;->instanceobj:Lcom/google/android/apps/googlevoice/CallLogObserver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeSingleton(Lcom/google/android/apps/googlevoice/CallLogService;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/apps/googlevoice/CallLogObserver;->instanceobj:Lcom/google/android/apps/googlevoice/CallLogObserver;

    if-nez v0, :cond_25

    .line 53
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/apps/googlevoice/CallLogObserver;-><init>(Landroid/os/Handler;Lcom/google/android/apps/googlevoice/CallLogService;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogObserver;->instanceobj:Lcom/google/android/apps/googlevoice/CallLogObserver;

    .line 54
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_19

    .line 55
    const-string v0, "Registering content observer"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 57
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/apps/googlevoice/CallLogObserver;->instanceobj:Lcom/google/android/apps/googlevoice/CallLogObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    :cond_25
    return-void
.end method


# virtual methods
.method public callToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 9
    .parameter "c"

    .prologue
    .line 230
    :try_start_0
    const-string v5, "date"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_44

    move-result-wide v0

    .line 238
    .local v0, date:J
    :try_start_a
    const-string v5, "number"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, number:Ljava/lang/String;
    const-string v5, "name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1d} :catch_4d

    move-result-object v3

    .line 244
    .local v3, name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v0           #date:J
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :goto_43
    return-object v5

    .line 231
    :catch_44
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Could not get date column"

    invoke-static {v5, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    const-string v5, ""

    goto :goto_43

    .line 240
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #date:J
    :catch_4d
    move-exception v2

    .line 241
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Error looking up columns"

    invoke-static {v5, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43
.end method

.method protected deleteContact(Lcom/google/android/apps/googlevoice/CallRecord;)V
    .registers 5
    .parameter "record"

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogObserver$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/CallLogObserver$1;-><init>(Lcom/google/android/apps/googlevoice/CallLogObserver;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/CallRecord;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/CallLogObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method protected getCallLogCursorDateDescending(JJ)Landroid/database/Cursor;
    .registers 16
    .parameter "endTime"
    .parameter "startTime"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "date"

    aput-object v0, v2, v7

    const-string v0, "number"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v9

    .line 202
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "%s > ? AND %s < ?"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v5, "date"

    aput-object v5, v1, v6

    const-string v5, "date"

    aput-object v5, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, whereClause:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 204
    .local v4, args:[Ljava/lang/String;
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_5c

    .line 205
    const-string v0, "Getting calls from %s (%d) to %s (%d)"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v7

    invoke-static {p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 210
    :cond_5c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogObserver;->callLogService:Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/CallLogService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected handleMatchedInterceptedCall(Lcom/google/android/apps/googlevoice/CallRecord;ILcom/google/android/apps/googlevoice/InterceptedCallLog;)V
    .registers 7
    .parameter "record"
    .parameter "id"
    .parameter "interceptedCallLog"

    .prologue
    .line 161
    iget-object v1, p1, Lcom/google/android/apps/googlevoice/CallRecord;->originalNumber:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/google/android/apps/googlevoice/CallLogObserver;->updateCallLog(ILjava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallLogObserver;->deleteContact(Lcom/google/android/apps/googlevoice/CallRecord;)V

    .line 165
    invoke-virtual {p3, p1}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->remove(Lcom/google/android/apps/googlevoice/CallRecord;)Z

    .line 169
    invoke-virtual {p3, p1}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->isLatest(Lcom/google/android/apps/googlevoice/CallRecord;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 170
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_1a

    .line 171
    const-string v1, "CallLogObserver matched intercepted call, putting CallLogService out of foreground"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 174
    :cond_1a
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 175
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogObserver;->callLogService:Lcom/google/android/apps/googlevoice/CallLogService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/SetForegroundHelper;->invokeSetForeground(Landroid/app/Service;Z)V

    .line 178
    :cond_2e
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->doneMakingCall()V

    .line 180
    .end local v0           #dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    :cond_31
    return-void
.end method

.method public onChange(Z)V
    .registers 29
    .parameter "selfChange"

    .prologue
    .line 68
    if-eqz p1, :cond_c

    .line 69
    sget-boolean v23, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v23, :cond_b

    const-string v23, "Found a self induced change in call log, returning"

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 156
    :cond_b
    :goto_b
    return-void

    .line 74
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/CallLogObserver;->callLogService:Lcom/google/android/apps/googlevoice/CallLogService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getInterceptedCallLog(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    move-result-object v10

    .line 76
    .local v10, interceptedCallLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;
    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_26

    .line 77
    sget-boolean v23, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v23, :cond_b

    .line 78
    const-string v23, "Found a change in the call log, but had nothing to replace."

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_b

    .line 82
    :cond_26
    sget-boolean v23, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v23, :cond_47

    .line 83
    const-string v23, "InterceptedCallLog has %d entries."

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 88
    :cond_47
    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->getEarliestTimestamp()J

    move-result-wide v23

    const-wide/16 v25, 0x1388

    sub-long v19, v23, v25

    .line 90
    .local v19, startTimestamp:J
    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->getLatestTimestamp()J

    move-result-wide v12

    .line 91
    .local v12, latestCallRecordTimestamp:J
    const-wide/16 v23, 0x1388

    add-long v6, v12, v23

    .line 93
    .local v6, endTimestamp:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/google/android/apps/googlevoice/CallLogObserver;->getCallLogCursorDateDescending(JJ)Landroid/database/Cursor;

    move-result-object v3

    .line 94
    .local v3, cursor:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-nez v23, :cond_84

    .line 95
    sget-boolean v23, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v23, :cond_b

    .line 96
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Empty cursor, not replacing any calls. Probably the callback from ContactManipulator: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_b

    .line 104
    :cond_84
    const/4 v4, -0x1

    .line 105
    .local v4, dateIndex:I
    const/16 v17, -0x1

    .line 106
    .local v17, numberIndex:I
    const/4 v9, -0x1

    .line 108
    .local v9, idIndex:I
    :try_start_88
    const-string v23, "date"

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 109
    const-string v23, "number"

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 110
    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_9f} :catch_16f

    move-result v9

    .line 117
    const/4 v14, 0x0

    .line 119
    .local v14, matches:I
    :cond_a1
    sget-boolean v23, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v23, :cond_c1

    .line 120
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Trying to find matching entry for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/CallLogObserver;->callToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 122
    :cond_c1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 123
    .local v21, timestamp:J
    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, number:Ljava/lang/String;
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 125
    .local v8, id:I
    move-wide/from16 v0, v21

    move-object/from16 v2, v16

    invoke-virtual {v10, v0, v1, v2}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->findMatchingCallRecord(JLjava/lang/String;)Lcom/google/android/apps/googlevoice/CallRecord;

    move-result-object v15

    .line 126
    .local v15, matchingCall:Lcom/google/android/apps/googlevoice/CallRecord;
    if-eqz v15, :cond_10e

    .line 127
    sget-boolean v23, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v23, :cond_107

    .line 128
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Found a match: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/CallLogObserver;->callToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " -> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lcom/google/android/apps/googlevoice/CallRecord;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 131
    :cond_107
    add-int/lit8 v14, v14, 0x1

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v10}, Lcom/google/android/apps/googlevoice/CallLogObserver;->handleMatchedInterceptedCall(Lcom/google/android/apps/googlevoice/CallRecord;ILcom/google/android/apps/googlevoice/InterceptedCallLog;)V

    .line 134
    :cond_10e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-nez v23, :cond_a1

    .line 136
    if-nez v14, :cond_11f

    .line 137
    sget-boolean v23, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v23, :cond_11f

    .line 138
    const-string v23, "Did not find anything to replace."

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 144
    :cond_11f
    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 145
    const-string v23, "Finished cleaning call log with %d records left."

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->getIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 148
    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/googlevoice/CallRecord;>;"
    :cond_14c
    :goto_14c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 149
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/apps/googlevoice/CallRecord;

    .line 151
    .local v18, record:Lcom/google/android/apps/googlevoice/CallRecord;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/apps/googlevoice/CallRecord;->timestamp:J

    move-wide/from16 v23, v0

    cmp-long v23, v23, v12

    if-gtz v23, :cond_14c

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/CallLogObserver;->deleteContact(Lcom/google/android/apps/googlevoice/CallRecord;)V

    .line 153
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->remove(Lcom/google/android/apps/googlevoice/CallRecord;)Z

    goto :goto_14c

    .line 111
    .end local v8           #id:I
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/googlevoice/CallRecord;>;"
    .end local v14           #matches:I
    .end local v15           #matchingCall:Lcom/google/android/apps/googlevoice/CallRecord;
    .end local v16           #number:Ljava/lang/String;
    .end local v18           #record:Lcom/google/android/apps/googlevoice/CallRecord;
    .end local v21           #timestamp:J
    :catch_16f
    move-exception v5

    .line 112
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v23, "Could not get column indices, not replacing a call."

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b
.end method

.method protected updateCallLog(ILjava/lang/String;)V
    .registers 9
    .parameter "id"
    .parameter "originalNumber"

    .prologue
    const/4 v5, 0x0

    .line 221
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v0, contentvalues:Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 224
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallLogObserver;->callLogService:Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/CallLogService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    return-void
.end method
