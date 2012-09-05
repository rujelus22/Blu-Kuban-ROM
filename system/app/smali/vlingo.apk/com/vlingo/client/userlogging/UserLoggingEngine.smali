.class public Lcom/vlingo/client/userlogging/UserLoggingEngine;
.super Ljava/lang/Object;
.source "UserLoggingEngine.java"


# static fields
.field public static final ERROR_LOGGING_ENABLED:Z = true

.field public static final FIELD_LOGGING_ENABLED:Z = true

.field public static final HELP_LOGGING_ENABLED:Z = true

.field private static final HelpPageRecord_MAX_LENGTH:I = 0x80

.field public static final LANDING_PAGE_LOGGING_ENABLED:Z = true

.field private static final RECORD_TRANSMIT_THRESHOLD:I = 0x32

.field public static final ULE_HPID_IUX_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field public static final ULE_HPID_IUX_SETUP_EXIT:Ljava/lang/String; = "setup-exit"

.field public static final ULE_HPID_IUX_SETUP_USING_VLINGO:Ljava/lang/String; = "setup-usingvlingo"

.field public static final ULE_HPID_LMTT_CHUNK_TRANSMISSION_CANCELLED:Ljava/lang/String; = "lmtt-chunk-transmission-cancelled"

.field public static final ULE_HPID_LMTT_CHUNK_TRANSMISSION_ERRORED_OUT:Ljava/lang/String; = "lmtt-chunk-transmission-errored-out"

.field public static final ULE_HPID_LMTT_CHUNK_TRANSMISSION_FAILED:Ljava/lang/String; = "lmtt-chunk-transmission-failed"

.field public static final ULE_HPID_LMTT_COMM_ERROR_CONTACT_UPDATE:Ljava/lang/String; = "lmtt-comm-error-contact-update"

.field public static final ULE_HPID_LMTT_COMM_ERROR_MUSIC_UPDATE:Ljava/lang/String; = "lmtt-comm-error-music-update"

.field public static final ULE_HPID_LMTT_CONTACT_RESCHEDULED:Ljava/lang/String; = "lmtt-error-occurred-contact-rescheduled"

.field public static final ULE_HPID_LMTT_CONTACT_UPDATE_SUCCESSFUL:Ljava/lang/String; = "lmtt-contact-update-successful"

.field public static final ULE_HPID_LMTT_GENERATING_CHANGE_LIST:Ljava/lang/String; = "lmtt-error-generating-change-list"

.field public static final ULE_HPID_LMTT_MUSIC_RESCHEDULED:Ljava/lang/String; = "lmtt-error-occurred-music-rescheduled"

.field public static final ULE_HPID_LMTT_MUSIC_UPDATE_SUCCESSFUL:Ljava/lang/String; = "lmtt-music-update-successful"

.field public static final ULE_HPID_LMTT_ONFAILURE_OCCURRED_CONTACT_RESCHEDULED:Ljava/lang/String; = "lmtt-onFailure-occurred-contact-rescheduled"

.field public static final ULE_HPID_LMTT_ONFAILURE_OCCURRED_MUSIC_RESCHEDULED:Ljava/lang/String; = "lmtt-onFailure-occurred-music-rescheduled"

.field public static final ULE_HPID_LMTT_RESCHEDULE_FULL_CONTACT_UPDATE:Ljava/lang/String; = "lmtt-reschedule-full-contact-update"

.field public static final ULE_HPID_LMTT_RESCHEDULE_FULL_MUSIC_UPDATE:Ljava/lang/String; = "lmtt-reschedule-full-music-update"

.field public static final ULE_HPID_LMTT_RETRY_EXCEEDED_CONTACT_UPDATE:Ljava/lang/String; = "lmtt-retry-exceeded-contact-update"

.field public static final ULE_HPID_LMTT_RETRY_EXCEEDED_MUSIC_UPDATE:Ljava/lang/String; = "lmtt-retry-exceeded-music-update"

.field public static final ULE_HPID_LMTT_SCHEDULED_CONTACT_FULL:Ljava/lang/String; = "lmtt-scheduled-contact-full"

.field public static final ULE_HPID_LMTT_SCHEDULED_CONTACT_PARTIAL:Ljava/lang/String; = "lmtt-scheduled-contact-partial"

.field public static final ULE_HPID_LMTT_SCHEDULED_MUSIC_FULL:Ljava/lang/String; = "lmtt-scheduled-music-full"

.field public static final ULE_HPID_LMTT_SCHEDULED_MUSIC_PARTIAL:Ljava/lang/String; = "lmtt-scheduled-music-partial"

.field public static final ULE_HPID_LMTT_SYNCHED_ITEMS_NULL:Ljava/lang/String; = "lmtt-synched-items-null"

.field public static final ULE_HPID_LMTT_TIMED_OUT_CONTACT_RESCHEDULED:Ljava/lang/String; = "lmtt-timed-out-contact-rescheduled"

.field public static final ULE_HPID_LMTT_TIMED_OUT_MUSIC_RESCHEDULED:Ljava/lang/String; = "lmtt-timed-out-music-rescheduled"

.field public static final ULE_HPID_LMTT_ULE_HPID_LMTT_CANCELLED:Ljava/lang/String; = "lmtt-cancelled"

.field public static final ULE_HPID_LMTT_WRITING_DATA:Ljava/lang/String; = "lmtt-error-writing-data"

.field public static final ULE_HPID_PHRASESPOTTER_WAKE_UP_WORD_SPOTTED:Ljava/lang/String; = "wake-up-word-spotted"

.field public static final ULE_HPID_SAFEREADER_ENABLED_FALSE:Ljava/lang/String; = "toggle-safereader-enabled-false"

.field public static final ULE_HPID_SAFEREADER_ENABLED_TRUE:Ljava/lang/String; = "toggle-safereader-enabled-true"

.field public static final ULE_HPID_SETTINGS_SCREEN_CREATED:Ljava/lang/String; = "settings"

.field public static final ULE_HPID_TOS_ACCEPT:Ljava/lang/String; = "tos-accept"

.field public static final ULE_HPID_TTS_READBACK_FAILURE:Ljava/lang/String; = "safereader-readback-failure"

.field public static final ULE_HPID_TTS_READBACK_TIMEOUT:Ljava/lang/String; = "safereader-readback-timeout"

.field public static final USERLOGGING_ENGINE_ENABLED:Z = true

.field protected static instance:Lcom/vlingo/client/userlogging/UserLoggingEngine;


# instance fields
.field private final log:Lcom/vlingo/client/core/logging/Logger;

.field private startTime:J

.field private userLogRecord:Lcom/vlingo/client/userlogging/UserLogRecord;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/vlingo/client/userlogging/UserLoggingEngine;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->log:Lcom/vlingo/client/core/logging/Logger;

    .line 335
    new-instance v0, Lcom/vlingo/client/userlogging/UserLogRecord;

    invoke-direct {v0}, Lcom/vlingo/client/userlogging/UserLogRecord;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->userLogRecord:Lcom/vlingo/client/userlogging/UserLogRecord;

    .line 341
    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 373
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 374
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 375
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 377
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->instance:Lcom/vlingo/client/userlogging/UserLoggingEngine;

    if-nez v0, :cond_b

    .line 128
    new-instance v0, Lcom/vlingo/client/userlogging/UserLoggingEngine;

    invoke-direct {v0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;-><init>()V

    sput-object v0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->instance:Lcom/vlingo/client/userlogging/UserLoggingEngine;

    .line 130
    :cond_b
    sget-object v0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->instance:Lcom/vlingo/client/userlogging/UserLoggingEngine;

    return-object v0
.end method

.method public static getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;
    .registers 1

    .prologue
    .line 381
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized transmitIfNecessary()V
    .registers 5

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 345
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_21

    .line 346
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/userlogging/UALService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->userLogRecord:Lcom/vlingo/client/userlogging/UserLogRecord;

    invoke-virtual {v2}, Lcom/vlingo/client/userlogging/UserLogRecord;->getRecordSize()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_23

    .line 350
    const-string v2, "com.vlingo.client.userlogging.skipInitialDelay"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    .line 357
    .end local v1           #intent:Landroid/content/Intent;
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 354
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_23
    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_21

    .line 344
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized errorDisplayed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_5d

    move-result-object v0

    .line 199
    .local v0, errorId:Ljava/lang/String;
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/vlingo/client/core/net/ConnectionManager;->getInstance()Lcom/vlingo/client/core/net/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/net/ConnectionManager;->generateNetworkInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_30} :catch_60

    move-result-object v0

    .line 201
    :goto_31
    :try_start_31
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "errorId"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "viewCount"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "errorrecords"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 207
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->transmitIfNecessary()V
    :try_end_5b
    .catchall {:try_start_31 .. :try_end_5b} :catchall_5d

    .line 212
    monitor-exit p0

    return-void

    .line 197
    .end local v0           #errorId:Ljava/lang/String;
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_5d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 200
    .restart local v0       #errorId:Ljava/lang/String;
    :catch_60
    move-exception v2

    goto :goto_31
.end method

.method public declared-synchronized errorInEngine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_33

    move-result-object v0

    .line 222
    .local v0, errorId:Ljava/lang/String;
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vlingo/client/core/net/ConnectionManager;->getInstance()Lcom/vlingo/client/core/net/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/net/ConnectionManager;->generateNetworkInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_33
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_30} :catch_36

    move-result-object v0

    .line 231
    :goto_31
    monitor-exit p0

    return-void

    .line 220
    .end local v0           #errorId:Ljava/lang/String;
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1

    .line 223
    .restart local v0       #errorId:Ljava/lang/String;
    :catch_36
    move-exception v1

    goto :goto_31
.end method

.method public declared-synchronized flushUserLogRecord()Ljava/lang/String;
    .registers 6

    .prologue
    .line 360
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->userLogRecord:Lcom/vlingo/client/userlogging/UserLogRecord;

    invoke-virtual {v1}, Lcom/vlingo/client/userlogging/UserLogRecord;->prepareStatistics()V

    .line 361
    iget-object v1, p0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->userLogRecord:Lcom/vlingo/client/userlogging/UserLogRecord;

    invoke-virtual {v1}, Lcom/vlingo/client/userlogging/UserLogRecord;->generateXml()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, xml:Ljava/lang/String;
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "helppages"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "errorrecords"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 367
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "landingpages"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 369
    monitor-exit p0

    return-object v0

    .line 360
    .end local v0           #xml:Ljava/lang/String;
    :catchall_4d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUserLogRecord()Lcom/vlingo/client/userlogging/UserLogRecord;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->userLogRecord:Lcom/vlingo/client/userlogging/UserLogRecord;

    return-object v0
.end method

.method public declared-synchronized helpPageViewed(Ljava/lang/String;)V
    .registers 6
    .parameter "pageId"

    .prologue
    const/16 v2, 0x80

    .line 164
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_10

    .line 165
    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "pageId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "viewCount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "helppages"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 174
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->transmitIfNecessary()V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    .line 179
    monitor-exit p0

    return-void

    .line 164
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized landingPageAction(Ljava/lang/String;Ljava/util/Vector;Z)V
    .registers 9
    .parameter "pageId"
    .parameter
    .parameter "autoAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, textFieldData:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;>;"
    monitor-enter p0

    if-eqz p3, :cond_42

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, page:Ljava/lang/String;
    :goto_16
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "pageId"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "actionNoEditCount"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "landingpages"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 265
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->transmitIfNecessary()V
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_44

    .line 270
    monitor-exit p0

    return-void

    .end local v0           #page:Ljava/lang/String;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_42
    move-object v0, p1

    .line 256
    goto :goto_16

    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized landingPageCanceled(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 7
    .parameter "pageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, textFieldData:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "pageId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "backNoEditCount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "landingpages"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 311
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->transmitIfNecessary()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 316
    monitor-exit p0

    return-void

    .line 303
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized landingPageViewed(Ljava/lang/String;)V
    .registers 9
    .parameter "pageId"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vlingo/client/userlogging/UserLoggingEngine;->startTime:J

    sub-long v0, v3, v5

    .line 237
    .local v0, launchTime:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "pageId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v3, "viewCount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v3, "launchCount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v3, "launchTimeTotal"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "landingpages"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 246
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->transmitIfNecessary()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 251
    monitor-exit p0

    return-void

    .line 235
    .end local v0           #launchTime:J
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3
.end method
