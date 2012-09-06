.class public Lcom/twitter/android/service/ScribeService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Z

.field private static final b:[Ljava/lang/String;

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:Ljava/util/HashMap;

.field private static final g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/twitter/android/service/ScribeService;->a:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "log"

    aput-object v1, v0, v2

    sput-object v0, Lcom/twitter/android/service/ScribeService;->b:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_54

    sput-object v0, Lcom/twitter/android/service/ScribeService;->c:[B

    new-array v0, v3, [B

    const/16 v1, 0x2c

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/android/service/ScribeService;->d:[B

    new-array v0, v3, [B

    const/16 v1, 0x5d

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/android/service/ScribeService;->e:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/service/ScribeService;->g:Ljava/util/HashMap;

    const-string v1, "LOG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/ScribeService;->g:Ljava/util/HashMap;

    const-string v1, "FLUSH"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/ScribeService;->g:Ljava/util/HashMap;

    const-string v1, "RAW"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_54
    .array-data 0x1
        0x6ct
        0x6ft
        0x67t
        0x5bt
        0x5dt
        0x3dt
        0x5bt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "ScribeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 11

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "log_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "log_interval"

    const-wide/32 v3, 0xea60

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "log_last_flush_request"

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v2

    cmp-long v4, v8, v4

    if-lez v4, :cond_4e

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "log_last_flush_request"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/twitter/android/service/h;

    invoke-direct {v4, v0}, Lcom/twitter/android/service/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4e
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/twitter/android/network/c;)V
    .registers 13

    invoke-virtual {p3}, Lcom/twitter/android/network/c;->d()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/twitter/android/network/c;->c()[Lcom/twitter/android/network/f;

    move-result-object v2

    array-length v0, v2

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v4, :cond_3d

    aget-object v5, v2, v0

    iget v6, v5, Lcom/twitter/android/network/f;->a:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_3a

    new-instance v6, Lcom/twitter/android/service/ScribeLog;

    sget-object v7, Lcom/twitter/android/service/ScribeEvent;->D:Lcom/twitter/android/service/ScribeEvent;

    const/4 v8, 0x0

    invoke-direct {v6, p1, p2, v7, v8}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iput-object v1, v6, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    iget v7, v5, Lcom/twitter/android/network/f;->a:I

    iput v7, v6, Lcom/twitter/android/service/ScribeLog;->statusCode:I

    iget-wide v7, v5, Lcom/twitter/android/network/f;->d:J

    iput-wide v7, v6, Lcom/twitter/android/service/ScribeLog;->durationMs:J

    const/4 v5, 0x2

    iput v5, v6, Lcom/twitter/android/service/ScribeLog;->clientInitiator:I

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_3d
    invoke-static {p0, v3}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_13
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_2c

    if-eqz v0, :cond_2b

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    invoke-direct {v1, p1, p2, v2, v2}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    const-string v2, "perftown"

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->category:Ljava/lang/String;

    iput-object p3, v1, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/twitter/android/service/ScribeLog;->durationMs:J

    const/4 v0, 0x2

    iput v0, v1, Lcom/twitter/android/service/ScribeLog;->clientInitiator:I

    invoke-static {p0, v1}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/Throwable;)V
    .registers 12

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->ba:Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "log_crash"

    new-instance v2, Lcom/twitter/android/service/ScribeLog;

    invoke-direct {v2, v6, v7, v0, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    sget-object v0, Lcom/twitter/android/util/x;->e:Ljava/security/SecureRandom;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_5d

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    invoke-direct {v1, v6, v7, v5, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    const-string v3, "client_watch_error"

    iput-object v3, v1, Lcom/twitter/android/service/ScribeLog;->category:Ljava/lang/String;

    const/4 v3, 0x1

    iput v3, v1, Lcom/twitter/android/service/ScribeLog;->errorType:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/twitter/android/service/ScribeLog;->error:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/service/ScribeLog;->errorDetails:[B

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    :goto_5c
    return-void

    :cond_5d
    invoke-static {p0, v2}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_5c
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "logs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;ZJII)V
    .registers 8

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_interval"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_error"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_crash"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;[B)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    sget-object v1, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    sget-object v0, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    goto :goto_c

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a([BJ)V
    .registers 5

    if-eqz p1, :cond_c

    invoke-static {p0, p2, p3}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/provider/ae;->a([B)J

    invoke-static {p0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method private a([BLcom/twitter/android/network/j;)V
    .registers 8

    const/4 v4, 0x0

    if-eqz p1, :cond_31

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v0, "https://twitter.com/scribe"

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    if-eqz p2, :cond_32

    new-instance v0, Lcom/twitter/android/network/i;

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/network/a;

    invoke-direct {v3, p2}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)V

    :goto_27
    invoke-static {p0}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    :cond_31
    return-void

    :cond_32
    new-instance v0, Lcom/twitter/android/network/c;

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    invoke-direct {v0, v2, v1, v4}, Lcom/twitter/android/network/c;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    goto :goto_27
.end method

.method private a(J)[B
    .registers 12

    const/4 v3, 0x0

    invoke-static {p0, p1, p2}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "scribe"

    sget-object v2, Lcom/twitter/android/service/ScribeService;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4d

    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_80

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Lcom/twitter/android/service/ScribeService;->c:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_32
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    sget-object v2, Lcom/twitter/android/service/ScribeService;->d:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_87
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_45} :catch_46

    goto :goto_32

    :catch_46
    move-exception v0

    invoke-virtual {v8}, Lcom/twitter/android/provider/ae;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    :goto_4d
    return-object v3

    :cond_4e
    :try_start_4e
    sget-object v2, Lcom/twitter/android/service/ScribeService;->e:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-boolean v2, Lcom/twitter/android/service/ScribeService;->a:Z

    if-eqz v2, :cond_75

    const-string v2, "ScribeService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting request ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_78
    .catchall {:try_start_4e .. :try_end_78} :catchall_87
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_78} :catch_46

    move-result-object v3

    invoke-virtual {v8}, Lcom/twitter/android/provider/ae;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    :cond_80
    invoke-virtual {v8}, Lcom/twitter/android/provider/ae;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    :catchall_87
    move-exception v0

    invoke-virtual {v8}, Lcom/twitter/android/provider/ae;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Lcom/twitter/android/service/ScribeLog;)[B
    .registers 9

    const/4 v0, 0x0

    sget-boolean v1, Lcom/twitter/android/service/ScribeService;->a:Z

    if-eqz v1, :cond_e

    const-string v1, "ScribeService"

    invoke-virtual {p0}, Lcom/twitter/android/service/ScribeLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :try_start_e
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_12e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_139

    :try_start_18
    sget-object v2, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/a;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_134
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_13d

    move-result-object v2

    :try_start_1e
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v4, "_category_"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->category:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "client_event"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->refEvent:Lcom/twitter/android/service/ScribeEvent;

    if-eqz v4, :cond_41

    const-string v4, "referring_event"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->refEvent:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v5}, Lcom/twitter/android/service/ScribeEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->event:Lcom/twitter/android/service/ScribeEvent;

    if-eqz v4, :cond_50

    const-string v4, "event_name"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->event:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v5}, Lcom/twitter/android/service/ScribeEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    const-string v4, "ts"

    iget-wide v5, p0, Lcom/twitter/android/service/ScribeLog;->ts:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->event:Lcom/twitter/android/service/ScribeEvent;

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->D:Lcom/twitter/android/service/ScribeEvent;

    if-ne v4, v5, :cond_6b

    const-string v4, "duration_ms"

    iget-wide v5, p0, Lcom/twitter/android/service/ScribeLog;->durationMs:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    const-string v4, "status_code"

    iget v5, p0, Lcom/twitter/android/service/ScribeLog;->statusCode:I

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    :cond_6b
    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    if-eqz v4, :cond_76

    const-string v4, "url"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    iget v4, p0, Lcom/twitter/android/service/ScribeLog;->clientInitiator:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_82

    const-string v4, "event_initiator"

    iget v5, p0, Lcom/twitter/android/service/ScribeLog;->clientInitiator:I

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    :cond_82
    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    if-eqz v4, :cond_8d

    const-string v4, "query"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->context:Ljava/lang/String;

    if-eqz v4, :cond_98

    const-string v4, "context"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->context:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->profileId:Ljava/lang/String;

    if-eqz v4, :cond_a3

    const-string v4, "profile_id"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->profileId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    :goto_a3
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_ac
    .catchall {:try_start_1e .. :try_end_ac} :catchall_f6
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_ac} :catch_e6

    move-result-object v0

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_b3
    return-object v0

    :cond_b4
    :try_start_b4
    const-string v4, "client_watch_error"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_106

    iget v4, p0, Lcom/twitter/android/service/ScribeLog;->errorType:I

    if-lez v4, :cond_106

    const-string v4, "product_name"

    const-string v5, "android"

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/twitter/android/service/ScribeLog;->errorType:I

    packed-switch v4, :pswitch_data_140

    :goto_ce
    const-string v4, "error"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->error:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->errorDetails:[B

    if-eqz v4, :cond_a3

    const-string v4, "error_details"

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/service/ScribeLog;->errorDetails:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_b4 .. :try_end_e5} :catchall_f6
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_e5} :catch_e6

    goto :goto_a3

    :catch_e6
    move-exception v3

    :goto_e7
    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_b3

    :pswitch_ee
    :try_start_ee
    const-string v4, "type"

    const-string v5, "crash"

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_f6
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f5} :catch_e6

    goto :goto_ce

    :catchall_f6
    move-exception v0

    :goto_f7
    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :pswitch_fe
    :try_start_fe
    const-string v4, "type"

    const-string v5, "error"

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :cond_106
    const-string v4, "perftown"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_127

    const-string v4, "product"

    const-string v5, "android"

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "duration_ms"

    iget-wide v5, p0, Lcom/twitter/android/service/ScribeLog;->durationMs:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    const-string v4, "description"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_fe .. :try_end_125} :catchall_f6
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_125} :catch_e6

    goto/16 :goto_a3

    :cond_127
    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_b3

    :catchall_12e
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_f7

    :catchall_134
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_f7

    :catch_139
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_e7

    :catch_13d
    move-exception v2

    move-object v2, v0

    goto :goto_e7

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_fe
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "log"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-object v1, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/service/ScribeService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 11

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/service/ScribeService;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_16

    move v0, v1

    :goto_12
    packed-switch v0, :pswitch_data_98

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_12

    :pswitch_1b
    const-string v0, "log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeLog;

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Lcom/twitter/android/service/ScribeLog;)[B

    move-result-object v1

    iget-wide v2, v0, Lcom/twitter/android/service/ScribeLog;->ownerId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/service/ScribeService;->a([BJ)V

    goto :goto_15

    :cond_2f
    const-string v0, "logs"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeLog;

    if-eqz v0, :cond_3d

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Lcom/twitter/android/service/ScribeLog;)[B

    move-result-object v2

    iget-wide v3, v0, Lcom/twitter/android/service/ScribeLog;->ownerId:J

    invoke-direct {p0, v2, v3, v4}, Lcom/twitter/android/service/ScribeService;->a([BJ)V

    goto :goto_3d

    :pswitch_55
    const-string v0, "raw"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, v7, v8}, Lcom/twitter/android/service/ScribeService;->a([BJ)V

    goto :goto_15

    :pswitch_5f
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_6b
    if-ge v0, v4, :cond_8b

    aget-object v1, v3, v0

    const-string v5, "account_user_info"

    invoke-virtual {v2, v1, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_88

    :try_start_77
    invoke-static {v5}, Lcom/twitter/android/api/r;->c(Ljava/lang/String;)Lcom/twitter/android/api/ac;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_7a} :catch_94
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_96

    move-result-object v5

    iget-wide v5, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-direct {p0, v5, v6}, Lcom/twitter/android/service/ScribeService;->a(J)[B

    move-result-object v5

    invoke-static {v2, v1}, Lcom/twitter/android/platform/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/j;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/twitter/android/service/ScribeService;->a([BLcom/twitter/android/network/j;)V

    :cond_88
    :goto_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_8b
    invoke-direct {p0, v7, v8}, Lcom/twitter/android/service/ScribeService;->a(J)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/service/ScribeService;->a([BLcom/twitter/android/network/j;)V

    goto :goto_15

    :catch_94
    move-exception v1

    goto :goto_88

    :catch_96
    move-exception v1

    goto :goto_88

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_5f
        :pswitch_55
    .end packed-switch
.end method
