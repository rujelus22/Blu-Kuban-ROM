.class public abstract Lcom/google/android/apps/googlevoice/VoiceUtil;
.super Ljava/lang/Object;
.source "VoiceUtil.java"


# static fields
.field public static final LOG:Lcom/google/android/apps/common/log/GLog; = null

.field public static final MILLISECONDS_PER_DAY:I = 0x5265c00

.field public static final MINUTE:J = 0xea60L

.field public static final SECOND:J = 0x3e8L

.field private static fullInternationalOnlyModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field private static fullModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field private static liteModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field private static noneModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const-class v0, Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceUtil;->fullModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 64
    new-array v0, v5, [Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceUtil;->fullInternationalOnlyModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 66
    new-array v0, v5, [Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceUtil;->liteModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 67
    new-array v0, v3, [Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceUtil;->noneModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 307
    if-eqz p0, :cond_5

    .line 309
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 314
    :cond_5
    :goto_5
    return-void

    .line 310
    :catch_6
    move-exception v0

    .line 311
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "close"

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static cycleMode(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z
    .registers 8
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 630
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getModes(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v2

    .line 632
    .local v2, modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v5

    if-eqz v5, :cond_2b

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 634
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    .line 635
    .local v0, currMode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    const/4 v1, 0x0

    .local v1, currModeIndex:I
    :goto_15
    array-length v5, v2

    if-ge v1, v5, :cond_1f

    aget-object v5, v2, v1

    if-eq v5, v0, :cond_1f

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 638
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    array-length v5, v2

    rem-int v4, v1, v5

    .line 639
    .local v4, nextModeValue:I
    aget-object v3, v2, v4

    .line 640
    .local v3, newMode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    invoke-interface {p1, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 641
    const/4 v5, 0x1

    .line 644
    .end local v0           #currMode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .end local v1           #currModeIndex:I
    .end local v3           #newMode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .end local v4           #nextModeValue:I
    :goto_2a
    return v5

    :cond_2b
    const/4 v5, 0x0

    goto :goto_2a
.end method

.method public static displayTextMessageStatusBarNotification(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z
    .registers 3
    .parameter "voicePreferences"
    .parameter "serverSettings"

    .prologue
    .line 426
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSmsNotificationEnabled(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->notifyWhenNewTextMessage()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static equalsNullSafe(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 409
    if-nez p0, :cond_8

    .line 410
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 412
    :goto_5
    return v0

    .line 410
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 412
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static excludeYear(JJ)Z
    .registers 6
    .parameter "timestamp"
    .parameter "now"

    .prologue
    .line 99
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static varargs executeInParallel(JLjava/util/concurrent/ThreadFactory;[Lcom/google/android/apps/googlevoice/util/Executable;)V
    .registers 25
    .parameter "millisToWait"
    .parameter "threadFactory"
    .parameter "tasks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v7, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;>;"
    move-object/from16 v3, p3

    .local v3, arr$:[Lcom/google/android/apps/googlevoice/util/Executable;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_9
    if-ge v8, v9, :cond_2a

    aget-object v5, v3, v8

    .line 483
    .local v5, executable:Lcom/google/android/apps/googlevoice/util/Executable;
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v18, Lcom/google/android/apps/googlevoice/VoiceUtil$1;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/google/android/apps/googlevoice/VoiceUtil$1;-><init>(Lcom/google/android/apps/googlevoice/util/Executable;)V

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 490
    .local v6, futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 491
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 497
    .end local v5           #executable:Lcom/google/android/apps/googlevoice/util/Executable;
    .end local v6           #futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 498
    .local v13, startTime:J
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v17, throwables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/FutureTask;

    .line 500
    .restart local v6       #futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, p0, v18

    add-long v11, v18, v13

    .line 503
    .local v11, remaining:J
    const-wide/16 v18, 0x1

    :try_start_4d
    move-wide/from16 v0, v18

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4d .. :try_end_5c} :catch_5d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_5c} :catch_66

    goto :goto_37

    .line 504
    :catch_5d
    move-exception v4

    .line 505
    .local v4, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 506
    .end local v4           #e:Ljava/util/concurrent/ExecutionException;
    :catch_66
    move-exception v4

    .line 507
    .local v4, e:Ljava/lang/Throwable;
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 512
    .end local v4           #e:Ljava/lang/Throwable;
    .end local v6           #futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    .end local v11           #remaining:J
    :cond_6d
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_82

    .line 513
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Throwable;

    throw v18

    .line 515
    :cond_82
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_cf

    .line 516
    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    .line 517
    .local v15, stringWriter:Ljava/io/StringWriter;
    new-instance v10, Ljava/io/PrintWriter;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v10, v15, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 518
    .local v10, printWriter:Ljava/io/PrintWriter;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Throwable;

    .line 519
    .local v16, throwable:Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_a0

    .line 521
    .end local v16           #throwable:Ljava/lang/Throwable;
    :cond_b2
    new-instance v18, Ljava/lang/Exception;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "executeInParallel() failed:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 523
    .end local v10           #printWriter:Ljava/io/PrintWriter;
    .end local v15           #stringWriter:Ljava/io/StringWriter;
    :cond_cf
    return-void
.end method

.method private static formatDateInternal(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 107
    const v0, 0x20010

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDateInternalWithoutYear(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 112
    const v0, 0x10018

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTime(Landroid/content/Context;JJ)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "time"
    .parameter "now"

    .prologue
    .line 82
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldShowTimeOnly(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatTimeInternal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatDateTimeInternal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static formatDateTimeInternal(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 117
    const v0, 0x20011

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatFullDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 91
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatDateTimeInternal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTime(Landroid/content/Context;JJ)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "time"
    .parameter "now"

    .prologue
    .line 71
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldShowTimeOnly(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 72
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatTimeInternal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_a
    return-object v0

    .line 73
    :cond_b
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->excludeYear(JJ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 74
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatDateInternalWithoutYear(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 76
    :cond_16
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatDateInternal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static formatTimeInternal(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBadgeForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)I
    .registers 2
    .parameter "phoneCall"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->getNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 190
    :pswitch_b
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_blocked:I

    :goto_d
    return v0

    .line 167
    :pswitch_e
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->sms_with_border:I

    goto :goto_d

    .line 170
    :pswitch_11
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->voicemail_with_border:I

    goto :goto_d

    .line 173
    :pswitch_14
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_missed_with_border:I

    goto :goto_d

    .line 181
    :pswitch_17
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_placed_with_border:I

    goto :goto_d

    .line 184
    :pswitch_1a
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_received_with_border:I

    goto :goto_d

    .line 187
    :pswitch_1d
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_recorded_with_border:I

    goto :goto_d

    .line 164
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1a
        :pswitch_11
        :pswitch_b
        :pswitch_1d
        :pswitch_b
        :pswitch_b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_e
        :pswitch_e
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public static getForwardingPhone(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 10
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    const/4 v6, 0x0

    .line 530
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v2

    .line 531
    .local v2, forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, forwardingNumber:Ljava/lang/String;
    if-eqz v2, :cond_d

    if-nez v1, :cond_f

    :cond_d
    move-object v5, v6

    .line 541
    :cond_e
    :goto_e
    return-object v5

    .line 535
    :cond_f
    move-object v0, v2

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Phone;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_12
    if-ge v3, v4, :cond_23

    aget-object v5, v0, v3

    .line 536
    .local v5, phone:Lcom/google/android/apps/googlevoice/core/Phone;
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .end local v5           #phone:Lcom/google/android/apps/googlevoice/core/Phone;
    :cond_23
    move-object v5, v6

    .line 541
    goto :goto_e
.end method

.method public static getIconForLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/Label;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "context"
    .parameter "label"

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, l:Ljava/lang/String;
    const-string v1, "voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->voicemail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    :goto_16
    return-object v1

    .line 239
    :cond_17
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->text_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16

    .line 241
    :cond_2a
    const-string v1, "recorded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->call_recorded:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16

    .line 243
    :cond_3d
    const-string v1, "placed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->call_placed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16

    .line 245
    :cond_50
    const-string v1, "received"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->call_received:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16

    .line 247
    :cond_63
    const-string v1, "missed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->call_missed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16

    .line 250
    :cond_76
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static getIconForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)I
    .registers 2
    .parameter "phoneCall"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->getNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 158
    :pswitch_b
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_blocked:I

    :goto_d
    return v0

    .line 135
    :pswitch_e
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->text_message:I

    goto :goto_d

    .line 138
    :pswitch_11
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->voicemail:I

    goto :goto_d

    .line 141
    :pswitch_14
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_missed:I

    goto :goto_d

    .line 149
    :pswitch_17
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_placed:I

    goto :goto_d

    .line 152
    :pswitch_1a
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_received:I

    goto :goto_d

    .line 155
    :pswitch_1d
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->call_recorded:I

    goto :goto_d

    .line 132
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1a
        :pswitch_11
        :pswitch_b
        :pswitch_1d
        :pswitch_b
        :pswitch_b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_e
        :pswitch_e
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public static getLabelForCallType(I)Ljava/lang/String;
    .registers 2
    .parameter "callType"

    .prologue
    .line 196
    packed-switch p0, :pswitch_data_18

    .line 222
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 198
    :pswitch_5
    const-string v0, "sms"

    goto :goto_4

    .line 201
    :pswitch_8
    const-string v0, "sms"

    goto :goto_4

    .line 204
    :pswitch_b
    const-string v0, "voicemail"

    goto :goto_4

    .line 207
    :pswitch_e
    const-string v0, "missed"

    goto :goto_4

    .line 215
    :pswitch_11
    const-string v0, "placed"

    goto :goto_4

    .line 218
    :pswitch_14
    const-string v0, "recorded"

    goto :goto_4

    .line 196
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_5
        :pswitch_8
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static getModes(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .registers 6
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 594
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptDomesticCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    .line 595
    .local v0, domestic:Z
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptInternationalCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v1

    .line 597
    .local v1, international:Z
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v2, v3, :cond_18

    .line 599
    if-eqz v1, :cond_15

    .line 600
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->liteModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 620
    :goto_14
    return-object v2

    .line 602
    :cond_15
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->noneModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_14

    .line 605
    :cond_18
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v2, v3, :cond_3f

    .line 606
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 607
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->fullModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_14

    .line 609
    :cond_27
    if-eqz v0, :cond_35

    if-nez v1, :cond_35

    .line 610
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "Intercepting domestic only calls is not supported."

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 611
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->noneModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_14

    .line 613
    :cond_35
    if-nez v0, :cond_3c

    if-eqz v1, :cond_3c

    .line 614
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->fullInternationalOnlyModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_14

    .line 617
    :cond_3c
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->noneModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_14

    .line 620
    :cond_3f
    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceUtil;->noneModes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_14
.end method

.method public static getPhotoForContactInfo(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"
    .parameter "contactInfo"
    .parameter "defaultContactPhoto"

    .prologue
    .line 228
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_9

    .line 231
    .end local p2
    :cond_8
    :goto_8
    return-object p2

    .restart local p2
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_8
.end method

.method public static getStarForLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/Label;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "context"
    .parameter "label"

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, l:Ljava/lang/String;
    const-string v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->star_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static getStarIconForConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)I
    .registers 2
    .parameter "conversation"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isStarred()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->star_on:I

    .line 268
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->star_off:I

    goto :goto_8
.end method

.method public static getTextForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)Ljava/lang/String;
    .registers 2
    .parameter "phoneCall"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Transcript;->getText()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static inflateDialogView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "rid"
    .parameter "root"

    .prologue
    .line 347
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103000b

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 348
    .local v1, wrapper:Landroid/view/ContextThemeWrapper;
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 350
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static isPhoneDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 274
    const/16 v0, 0x30

    if-eq p0, v0, :cond_34

    const/16 v0, 0x31

    if-eq p0, v0, :cond_34

    const/16 v0, 0x32

    if-eq p0, v0, :cond_34

    const/16 v0, 0x33

    if-eq p0, v0, :cond_34

    const/16 v0, 0x34

    if-eq p0, v0, :cond_34

    const/16 v0, 0x35

    if-eq p0, v0, :cond_34

    const/16 v0, 0x36

    if-eq p0, v0, :cond_34

    const/16 v0, 0x37

    if-eq p0, v0, :cond_34

    const/16 v0, 0x38

    if-eq p0, v0, :cond_34

    const/16 v0, 0x39

    if-eq p0, v0, :cond_34

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_34

    const/16 v0, 0x23

    if-eq p0, v0, :cond_34

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public static isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z
    .registers 3
    .parameter "voicePreferences"

    .prologue
    .line 457
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isSmsNotificationEnabled(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z
    .registers 10
    .parameter "voicePreferences"
    .parameter "serverSettings"

    .prologue
    const/4 v6, 0x0

    .line 437
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, forwardingNumber:Ljava/lang/String;
    if-nez v1, :cond_8

    .line 453
    :cond_7
    :goto_7
    return v6

    .line 442
    :cond_8
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v2

    .line 443
    .local v2, forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    if-eqz v2, :cond_7

    .line 447
    move-object v0, v2

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Phone;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_7

    aget-object v5, v0, v3

    .line 448
    .local v5, phone:Lcom/google/android/apps/googlevoice/core/Phone;
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 449
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Phone;->getSmsEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_7

    .line 447
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 2
    .parameter "emailAddress"

    .prologue
    .line 658
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static normalizedNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "number"

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_b
    if-ltz v2, :cond_1d

    .line 284
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 285
    .local v1, c:C
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isPhoneDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 289
    .end local v1           #c:C
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static safeParseInt(Ljava/lang/String;I)I
    .registers 3
    .parameter "parseThis"
    .parameter "defaultValue"

    .prologue
    .line 387
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p1

    .line 389
    .end local p1
    :goto_4
    return p1

    .line 388
    .restart local p1
    :catch_5
    move-exception v0

    .line 389
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_4
.end method

.method public static shouldConfigureVoicemail(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z
    .registers 5
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 546
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getForwardingPhone(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    .line 547
    .local v0, forwardingPhone:Lcom/google/android/apps/googlevoice/core/Phone;
    if-nez v0, :cond_f

    .line 549
    sget-object v1, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "shouldConfigureVoicemail: No forwarding phone found."

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x1

    .line 553
    :goto_e
    return v1

    .line 552
    :cond_f
    sget-object v1, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "shouldConfigureVoicemail"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getVoicemailDiversionSetupEnabled()Z

    move-result v1

    goto :goto_e
.end method

.method public static shouldInterceptCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z
    .registers 3
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 558
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptDomesticCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptInternationalCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static shouldInterceptDomesticCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z
    .registers 5
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 564
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getForwardingPhone(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    .line 565
    .local v0, forwardingPhone:Lcom/google/android/apps/googlevoice/core/Phone;
    if-nez v0, :cond_12

    .line 568
    sget-object v1, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "shouldInterceptDomesticCalls: No forwarding phone found."

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 569
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v1

    .line 572
    :goto_11
    return v1

    .line 571
    :cond_12
    sget-object v1, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "shouldInterceptDomesticCalls"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getDomesticCallInterceptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_11

    :cond_27
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static shouldInterceptInternationalCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z
    .registers 5
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 578
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getForwardingPhone(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    .line 579
    .local v0, forwardingPhone:Lcom/google/android/apps/googlevoice/core/Phone;
    if-nez v0, :cond_f

    .line 581
    sget-object v1, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "shouldInterceptInternationalCalls: No forwarding phone found."

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x1

    .line 585
    :goto_e
    return v1

    .line 584
    :cond_f
    sget-object v1, Lcom/google/android/apps/googlevoice/VoiceUtil;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "shouldInterceptInternationalCalls"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getInternationalCallInterceptionEnabled()Z

    move-result v1

    goto :goto_e
.end method

.method private static shouldShowTimeOnly(JJ)Z
    .registers 8
    .parameter "timestamp"
    .parameter "now"

    .prologue
    .line 95
    cmp-long v0, p0, p2

    if-gtz v0, :cond_f

    sub-long v0, p2, p0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static stackTrace()Ljava/lang/String;
    .registers 1

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->stackTrace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stackTrace(I)Ljava/lang/String;
    .registers 10
    .parameter "skip"

    .prologue
    .line 327
    :try_start_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_6

    .line 328
    :catch_6
    move-exception v2

    .line 329
    .local v2, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 330
    .local v1, elements:[Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v4, sb:Ljava/lang/StringBuilder;
    add-int/lit8 v3, p0, 0x1

    .local v3, i:I
    :goto_12
    array-length v5, v1

    if-ge v3, v5, :cond_46

    .line 334
    aget-object v0, v1, v3

    .line 335
    .local v0, e:Ljava/lang/StackTraceElement;
    const-string v5, "  %s.%s @ %s:%d\n"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 338
    .end local v0           #e:Ljava/lang/StackTraceElement;
    :cond_46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static stackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4
    .parameter "ex"

    .prologue
    .line 317
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 318
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 319
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 320
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static timestampToString(J)Ljava/lang/String;
    .registers 5
    .parameter "timestampInMillis"

    .prologue
    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "o"

    .prologue
    .line 402
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public static toTitleCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 294
    const-string v1, ""

    .line 298
    :goto_9
    return-object v1

    .line 296
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public static updateVoicemailProviderStatus(Lcom/google/android/apps/googlevoice/system/ComponentManager;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 5
    .parameter "componentManager"
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 653
    invoke-static {p1, p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldConfigureVoicemail(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    .line 654
    .local v0, enabled:Z
    const-class v1, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;

    invoke-interface {p0, v1, v0}, Lcom/google/android/apps/googlevoice/system/ComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 655
    return-void
.end method


# virtual methods
.method public abstract getLine1Number(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSimOperator(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract hasLine1Number(Landroid/content/Context;)Z
.end method

.method public abstract hasTelephony(Landroid/content/Context;)Z
.end method

.method public abstract inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isCdmaPhone(Landroid/content/Context;)Z
.end method

.method public abstract isOnSprintNetwork(Landroid/content/Context;)Z
.end method

.method public abstract isSimReady(Landroid/content/Context;)Z
.end method

.method public abstract mayCreateNewAccount(Landroid/content/Context;)Z
.end method
