.class public final Lcom/twitter/android/platform/c;
.super Landroid/content/AbstractThreadedSyncAdapter;


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twitter/android/platform/c;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;I)V
    .registers 10

    const/4 v6, 0x0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const v1, 0xea60

    mul-int/2addr v1, p2

    int-to-long v1, v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/client/AppService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.twitter.android.poll.alarm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_name"

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_3b
    return-void

    :cond_3c
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_3b
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/network/d;Landroid/accounts/Account;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;ILandroid/content/SyncResult;Lcom/twitter/android/platform/d;)V
    .registers 22

    sget-boolean v1, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v1, :cond_b

    const-string v1, "TwitterDataSync"

    const-string v2, "=====> Sync direct messages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {p0, v4, v5}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v1

    invoke-static {p0}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v7

    const/4 v2, 0x4

    const/4 v6, 0x1

    move/from16 v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(IIJI)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_122

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/twitter/android/provider/ae;->a(I)J

    move-result-wide v2

    const/16 v6, 0x64

    move-wide v12, v2

    move v2, v6

    :goto_2b
    if-nez p5, :cond_129

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "direct_messages"

    aput-object v8, v3, v6

    const/4 v6, 0x1

    const-string v8, "sent"

    aput-object v8, v3, v6

    invoke-virtual {v7, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".json"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    :goto_44
    const-wide/16 v9, 0x0

    cmp-long v3, v12, v9

    if-lez v3, :cond_4f

    const-string v3, "since_id"

    invoke-static {v8, v3, v12, v13}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_4f
    if-lez v2, :cond_56

    const-string v3, "count"

    invoke-static {v8, v3, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_56
    const-string v2, "include_entities"

    const/4 v3, 0x1

    invoke-static {v8, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :try_start_5c
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Lcom/twitter/android/network/a;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    const/4 v10, 0x1

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    iget v3, v2, Lcom/twitter/android/network/c;->b:I

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_142

    sget-object v2, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/a;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v2}, Lcom/twitter/android/api/r;->e(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-nez v2, :cond_13d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/p;

    iget-wide v6, v2, Lcom/twitter/android/api/p;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    :goto_a7
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/twitter/android/provider/ae;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    move-result v4

    sget-boolean v2, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v2, :cond_c8

    const-string v2, "TwitterDataSync"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "====> Sync direct messages, got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_121

    invoke-virtual {v1}, Lcom/twitter/android/provider/ae;->e()I

    move-result v5

    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v8, "message"

    if-lez v5, :cond_140

    const/4 v2, 0x1

    :goto_de
    invoke-virtual {v6, v7, v8, v2}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    if-lez v4, :cond_121

    new-instance v6, Lcom/twitter/android/platform/f;

    invoke-direct {v6}, Lcom/twitter/android/platform/f;-><init>()V

    iput v4, v6, Lcom/twitter/android/platform/f;->b:I

    move-object/from16 v0, p7

    iget-boolean v2, v0, Lcom/twitter/android/platform/d;->c:Z

    if-nez v2, :cond_11d

    iput v5, v6, Lcom/twitter/android/platform/f;->a:I

    const/4 v2, 0x1

    if-ne v5, v2, :cond_110

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/p;

    iget-object v3, v2, Lcom/twitter/android/api/p;->b:Ljava/lang/String;

    iput-object v3, v6, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/twitter/android/api/p;->d:Lcom/twitter/android/api/ac;

    if-eqz v3, :cond_110

    iget-object v3, v2, Lcom/twitter/android/api/p;->d:Lcom/twitter/android/api/ac;

    iget-wide v3, v3, Lcom/twitter/android/api/ac;->a:J

    iput-wide v3, v6, Lcom/twitter/android/platform/f;->e:J

    iget-object v2, v2, Lcom/twitter/android/api/p;->d:Lcom/twitter/android/api/ac;

    iget-object v2, v2, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object v2, v6, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    :cond_110
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    iput v1, v6, Lcom/twitter/android/platform/f;->g:I

    :cond_11d
    move-object/from16 v0, p7

    iput-object v6, v0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;
    :try_end_121
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_5c .. :try_end_121} :catch_154
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_121} :catch_161

    :cond_121
    :goto_121
    return-void

    :cond_122
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-wide v12, v2

    move v2, v6

    goto/16 :goto_2b

    :cond_129
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "direct_messages"

    aput-object v8, v3, v6

    invoke-virtual {v7, v3}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".json"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_44

    :cond_13d
    const/4 v9, 0x0

    goto/16 :goto_a7

    :cond_140
    const/4 v2, 0x0

    goto :goto_de

    :cond_142
    :try_start_142
    iget v1, v2, Lcom/twitter/android/network/c;->b:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_121

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_153
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_142 .. :try_end_153} :catch_154
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_153} :catch_161

    goto :goto_121

    :catch_154
    move-exception v1

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_121

    :catch_161
    move-exception v1

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_121
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/network/d;Landroid/accounts/Account;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;Landroid/content/SyncResult;Lcom/twitter/android/platform/d;)V
    .registers 21

    sget-boolean v1, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v1, :cond_b

    const-string v1, "TwitterDataSync"

    const-string v2, "=====> Sync about me activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {p0, v8, v9}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v10

    invoke-static {p0}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/twitter/android/provider/ae;->b(I)J

    move-result-wide v4

    iget-object v1, v2, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "i"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "activity"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "about_me"

    aput-object v7, v3, v6

    invoke-static {v1, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "include_entities"

    const/4 v6, 0x1

    invoke-static {v3, v1, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4b

    const-string v1, "since_id"

    invoke-static {v3, v1, v4, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_4b
    const-string v1, "count"

    const/16 v4, 0x14

    invoke-static {v3, v1, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :try_start_52
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lcom/twitter/android/network/a;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v1

    iget v2, v1, Lcom/twitter/android/network/c;->b:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_214

    sget-object v1, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/a;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v1}, Lcom/twitter/android/api/r;->r(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move-wide v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;JIZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    sget-boolean v1, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v1, :cond_a4

    const-string v1, "TwitterDataSync"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=====> Sync about me activity, got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    if-lez v11, :cond_213

    new-instance v12, Lcom/twitter/android/platform/f;

    invoke-direct {v12}, Lcom/twitter/android/platform/f;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v9, v1

    :goto_b6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/n;

    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/twitter/android/platform/d;->c:Z

    if-nez v2, :cond_dc

    if-nez v9, :cond_dc

    const/4 v2, 0x1

    move v8, v2

    :goto_cc
    iget v2, v1, Lcom/twitter/android/api/n;->a:I

    packed-switch v2, :pswitch_data_24e

    :cond_d1
    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    :goto_d6
    move v6, v4

    move v7, v5

    move v5, v3

    move v4, v2

    move v3, v1

    goto :goto_b6

    :cond_dc
    const/4 v2, 0x0

    move v8, v2

    goto :goto_cc

    :pswitch_df
    add-int/lit8 v2, v7, 0x1

    if-eqz v8, :cond_247

    iget-object v7, v1, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_247

    iget-object v1, v1, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/aa;

    iget-object v7, v1, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    invoke-virtual {v12, v1, v7}, Lcom/twitter/android/platform/f;->a(Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;)V

    const/4 v1, 0x1

    move v9, v1

    move v7, v2

    goto :goto_b6

    :pswitch_fd
    add-int/lit8 v2, v7, 0x1

    if-eqz v8, :cond_247

    iget-object v7, v1, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_247

    iget-object v1, v1, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/aa;

    iget-object v7, v1, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    invoke-virtual {v12, v1, v7}, Lcom/twitter/android/platform/f;->a(Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;)V

    const/4 v1, 0x1

    move v9, v1

    move v7, v2

    goto :goto_b6

    :pswitch_11b
    add-int/lit8 v6, v6, 0x1

    if-eqz v8, :cond_d1

    iget-object v2, v1, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d1

    iget-object v2, v1, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d1

    iget-object v2, v1, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/aa;

    iget-object v1, v1, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/ac;

    invoke-virtual {v12, v2, v1}, Lcom/twitter/android/platform/f;->a(Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;)V

    const/4 v1, 0x1

    move v9, v1

    goto/16 :goto_b6

    :pswitch_148
    add-int/lit8 v2, v5, 0x1

    if-eqz v8, :cond_240

    iget-object v5, v1, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_240

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/ac;

    invoke-virtual {v12, v5, v1}, Lcom/twitter/android/platform/f;->a(Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;)V

    const/4 v1, 0x1

    move v9, v1

    move v5, v2

    goto/16 :goto_b6

    :pswitch_166
    add-int/lit8 v4, v4, 0x1

    if-eqz v8, :cond_d1

    iget-object v2, v1, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d1

    iget-object v2, v1, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d1

    iget-object v2, v1, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/aa;

    iget-object v1, v1, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/ac;

    invoke-virtual {v12, v2, v1}, Lcom/twitter/android/platform/f;->a(Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;)V

    const/4 v1, 0x1

    move v9, v1

    goto/16 :goto_b6

    :pswitch_193
    add-int/lit8 v1, v3, 0x1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_d6

    :cond_19b
    sget-boolean v1, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v1, :cond_1d0

    const-string v1, "TwitterDataSync"

    const-string v2, "=====> Sync about me activity, %d %d %d %d %d"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d0
    const/4 v1, 0x0

    if-lez v7, :cond_1d4

    const/4 v1, 0x1

    :cond_1d4
    if-lez v6, :cond_1d8

    or-int/lit8 v1, v1, 0x2

    :cond_1d8
    if-lez v5, :cond_1dc

    or-int/lit8 v1, v1, 0x4

    :cond_1dc
    if-lez v4, :cond_1e0

    or-int/lit8 v1, v1, 0x8

    :cond_1e0
    if-lez v3, :cond_1e4

    or-int/lit8 v1, v1, 0x10

    :cond_1e4
    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;I)I

    iput v11, v12, Lcom/twitter/android/platform/f;->b:I

    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/twitter/android/platform/d;->c:Z

    if-nez v2, :cond_20b

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/twitter/android/provider/ae;->e(I)I

    move-result v2

    iput v2, v12, Lcom/twitter/android/platform/f;->a:I

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v10, v2, v3, v4, v5}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v2

    iput v2, v12, Lcom/twitter/android/platform/f;->g:I

    :cond_20b
    move-object/from16 v0, p6

    iput v1, v0, Lcom/twitter/android/platform/d;->e:I

    move-object/from16 v0, p6

    iput-object v12, v0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    :cond_213
    :goto_213
    return-void

    :cond_214
    iget v1, v1, Lcom/twitter/android/network/c;->b:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_213

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_225
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_52 .. :try_end_225} :catch_226
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_225} :catch_233

    goto :goto_213

    :catch_226
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_213

    :catch_233
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_213

    :cond_240
    move v1, v3

    move v5, v7

    move v3, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_d6

    :cond_247
    move v1, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_d6

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_fd
        :pswitch_df
        :pswitch_166
        :pswitch_148
        :pswitch_193
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/h;->b(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    const-string v1, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/network/d;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .registers 30

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/platform/c;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v16

    const-string v2, "account_user_info"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v2, "TwitterDataSync"

    const-string v3, "ACCOUNT_USER_INFO_KEY content not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2a
    :try_start_2a
    const-string v3, "com.twitter.android.oauth.token"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.twitter.android.oauth.token.secret"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_44

    if-nez v4, :cond_64

    :cond_44
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v2, "TwitterDataSync"

    const-string v3, "Token not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2a .. :try_end_56} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2a .. :try_end_56} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_56} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_56} :catch_421

    goto :goto_2

    :catch_57
    move-exception v2

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_2

    :cond_64
    :try_start_64
    invoke-static {v2}, Lcom/twitter/android/api/r;->c(Ljava/lang/String;)Lcom/twitter/android/api/ac;

    move-result-object v17

    new-instance v18, Lcom/twitter/android/network/j;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Lcom/twitter/android/network/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    new-instance v21, Landroid/content/Intent;

    const-string v2, "com.twitter.android.poll.data"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v22

    new-instance v23, Lcom/twitter/android/platform/d;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/twitter/android/api/ac;->a:J

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/twitter/android/platform/d;-><init>(Ljava/lang/String;JZ)V

    if-eqz p3, :cond_a3

    const-string v2, "home"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f2

    :cond_a3
    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v15, v5, v6}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/ae;->a(IIJI)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a5

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v6, v3}, Lcom/twitter/android/provider/ae;->d(JI)J

    move-result-wide v3

    const/16 v7, 0x64

    move-wide v13, v3

    move v3, v7

    :goto_bd
    sget-boolean v4, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v4, :cond_d5

    const-string v4, "TwitterDataSync"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sync home statuses newer than sinceId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    invoke-static {v15}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "statuses"

    aput-object v9, v4, v7

    const/4 v7, 0x1

    const-string v9, "home_timeline"

    aput-object v9, v4, v7

    invoke-virtual {v8, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".json"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v4, "include_entities"

    const/4 v7, 0x1

    invoke-static {v9, v4, v7}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez v3, :cond_ff

    const-string v3, "count"

    const/16 v4, 0x64

    invoke-static {v9, v3, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_ff
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_10a

    const-string v3, "since_id"

    invoke-static {v9, v3, v13, v14}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_10a
    const-string v3, "pc"

    const/4 v4, 0x1

    invoke-static {v9, v3, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    invoke-static {v15, v9}, Lcom/twitter/android/platform/c;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    :try_end_113
    .catch Landroid/accounts/AuthenticatorException; {:try_start_64 .. :try_end_113} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_64 .. :try_end_113} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_113} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_113} :catch_421

    :try_start_113
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v10, Lcom/twitter/android/network/a;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    const/4 v11, 0x1

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v3

    iget v4, v3, Lcom/twitter/android/network/c;->b:I

    const/16 v7, 0xc8

    if-ne v4, v7, :cond_3b2

    sget-object v3, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/a;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v0, v4, v7}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v7, 0x0

    cmp-long v3, v13, v7

    if-nez v3, :cond_3ac

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3ac

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/aa;

    iget-wide v7, v3, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    :goto_163
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/android/provider/ae;->c(I)I

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v24

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v7, 0x64

    if-lt v3, v7, :cond_190

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/aa;

    iget-wide v13, v3, Lcom/twitter/android/api/aa;->a:J

    move-object v7, v2

    move-wide v8, v5

    invoke-virtual/range {v7 .. v14}, Lcom/twitter/android/provider/ae;->a(JIJJ)V

    :cond_190
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v6, v3}, Lcom/twitter/android/provider/ae;->f(JI)I

    move-result v5

    invoke-static {v15}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v8, "tweet"

    if-lez v5, :cond_3af

    const/4 v3, 0x1

    :goto_1a2
    invoke-virtual {v6, v7, v8, v3}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    sget-boolean v3, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v3, :cond_1bf

    const-string v3, "TwitterDataSync"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "====> Sync home statuses, got "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bf
    if-lez v24, :cond_1f2

    new-instance v6, Lcom/twitter/android/platform/f;

    invoke-direct {v6}, Lcom/twitter/android/platform/f;-><init>()V

    move/from16 v0, v24

    iput v0, v6, Lcom/twitter/android/platform/f;->b:I

    move-object/from16 v0, v23

    iget-boolean v3, v0, Lcom/twitter/android/platform/d;->c:Z

    if-nez v3, :cond_1ee

    iput v5, v6, Lcom/twitter/android/platform/f;->a:I

    const/4 v3, 0x1

    if-ne v5, v3, :cond_1e1

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/aa;

    iget-object v4, v3, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    invoke-virtual {v6, v3, v4}, Lcom/twitter/android/platform/f;->a(Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;)V

    :cond_1e1
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v2

    iput v2, v6, Lcom/twitter/android/platform/f;->g:I

    :cond_1ee
    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;
    :try_end_1f2
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_113 .. :try_end_1f2} :catch_3c5
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_1f2} :catch_3e1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_113 .. :try_end_1f2} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_113 .. :try_end_1f2} :catch_3d3
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_1f2} :catch_421

    :cond_1f2
    :goto_1f2
    if-eqz p3, :cond_1ff

    :try_start_1f4
    const-string v2, "messages"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_221

    :cond_1ff
    const/4 v7, 0x1

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v8, p4

    move-object/from16 v9, v23

    invoke-static/range {v2 .. v9}, Lcom/twitter/android/platform/c;->a(Landroid/content/Context;Lcom/twitter/android/network/d;Landroid/accounts/Account;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;ILandroid/content/SyncResult;Lcom/twitter/android/platform/d;)V

    const/4 v7, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v8, p4

    move-object/from16 v9, v23

    invoke-static/range {v2 .. v9}, Lcom/twitter/android/platform/c;->a(Landroid/content/Context;Lcom/twitter/android/network/d;Landroid/accounts/Account;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;ILandroid/content/SyncResult;Lcom/twitter/android/platform/d;)V

    :cond_221
    if-eqz p3, :cond_22e

    const-string v2, "activity"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23e

    :cond_22e
    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v8, v23

    invoke-static/range {v2 .. v8}, Lcom/twitter/android/platform/c;->a(Landroid/content/Context;Lcom/twitter/android/network/d;Landroid/accounts/Account;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;Landroid/content/SyncResult;Lcom/twitter/android/platform/d;)V

    :cond_23e
    if-eqz p3, :cond_24b

    const-string v2, "discover"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2ef

    :cond_24b
    invoke-static {v15}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v3

    iget-object v2, v3, Lcom/twitter/android/network/o;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "discovery"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/twitter/android/network/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v15, v5, v6}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v8

    invoke-static {v15, v4}, Lcom/twitter/android/platform/c;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_28e

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28e

    const-string v5, "lang"

    invoke-static {v4, v5, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28e
    const-string v2, "schema"

    const/4 v5, 0x2

    invoke-static {v4, v2, v5}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    :try_end_294
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1f4 .. :try_end_294} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1f4 .. :try_end_294} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_294} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_1f4 .. :try_end_294} :catch_421

    :try_start_294
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lcom/twitter/android/network/a;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v2

    iget v3, v2, Lcom/twitter/android/network/c;->b:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_400

    sget-object v2, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/a;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v2}, Lcom/twitter/android/api/r;->t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v8, v2, v3, v4}, Lcom/twitter/android/provider/ae;->a(Ljava/util/List;J)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-lez v3, :cond_2ef

    invoke-static {v15}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    const-string v6, "discover"

    const/16 v2, 0xa

    if-lt v3, v2, :cond_3fd

    const/4 v2, 0x1

    :goto_2df
    invoke-virtual {v4, v5, v6, v2}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    new-instance v2, Lcom/twitter/android/platform/f;

    invoke-direct {v2}, Lcom/twitter/android/platform/f;-><init>()V

    iput v3, v2, Lcom/twitter/android/platform/f;->b:I

    iput v3, v2, Lcom/twitter/android/platform/f;->a:I

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/twitter/android/platform/d;->h:Lcom/twitter/android/platform/f;
    :try_end_2ef
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_294 .. :try_end_2ef} :catch_413
    .catch Ljava/io/IOException; {:try_start_294 .. :try_end_2ef} :catch_42f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_294 .. :try_end_2ef} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_294 .. :try_end_2ef} :catch_3d3
    .catch Lorg/json/JSONException; {:try_start_294 .. :try_end_2ef} :catch_421

    :cond_2ef
    :goto_2ef
    :try_start_2ef
    invoke-static {v15}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/twitter/android/platform/d;->a()Z

    move-result v2

    if-eqz v2, :cond_32b

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/twitter/android/platform/d;->d:I

    const-string v3, "show_notif"

    if-eqz p3, :cond_316

    const-string v5, "show_notif"

    if-nez v22, :cond_43d

    const/4 v2, 0x1

    :goto_30e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_440

    :cond_316
    const/4 v2, 0x1

    :goto_317
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data"

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.twitter.android.permission.RESTRICTED"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_32b
    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "auto_clean"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-wide/32 v7, 0x36ee80

    add-long/2addr v5, v7

    cmp-long v3, v5, v19

    if-gez v3, :cond_359

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v15, v5, v6}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v3, v5, v6}, Lcom/twitter/android/provider/ae;->f(J)V

    const-string v3, "auto_clean"

    move-wide/from16 v0, v19

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_359
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "com.twitter.android.auth.login"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_366
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/client/AppService;

    invoke-direct {v3, v15, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.twitter.android.poll.alarm"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v8, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v8, "account_name"

    iget-object v9, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v8, 0x0

    const/high16 v9, 0x2000

    invoke-static {v15, v8, v3, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_443

    const/4 v3, 0x1

    :goto_38f
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_399

    if-nez v3, :cond_3a2

    :cond_399
    iget-object v3, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/twitter/android/provider/a;->e(Ljava/lang/String;)I

    move-result v3

    invoke-static {v15, v7, v3}, Lcom/twitter/android/platform/c;->a(Landroid/content/Context;Landroid/accounts/Account;I)V
    :try_end_3a2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2ef .. :try_end_3a2} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2ef .. :try_end_3a2} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_2ef .. :try_end_3a2} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_2ef .. :try_end_3a2} :catch_421

    :cond_3a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_366

    :cond_3a5
    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move-wide v13, v3

    move v3, v7

    goto/16 :goto_bd

    :cond_3ac
    const/4 v12, 0x0

    goto/16 :goto_163

    :cond_3af
    const/4 v3, 0x0

    goto/16 :goto_1a2

    :cond_3b2
    :try_start_3b2
    iget v2, v3, Lcom/twitter/android/network/c;->b:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1f2

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_3c3
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_3b2 .. :try_end_3c3} :catch_3c5
    .catch Ljava/io/IOException; {:try_start_3b2 .. :try_end_3c3} :catch_3e1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3b2 .. :try_end_3c3} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3b2 .. :try_end_3c3} :catch_3d3
    .catch Lorg/json/JSONException; {:try_start_3b2 .. :try_end_3c3} :catch_421

    goto/16 :goto_1f2

    :catch_3c5
    move-exception v2

    :try_start_3c6
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_3d1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3c6 .. :try_end_3d1} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3c6 .. :try_end_3d1} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_3c6 .. :try_end_3d1} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_3c6 .. :try_end_3d1} :catch_421

    goto/16 :goto_1f2

    :catch_3d3
    move-exception v2

    sget-boolean v2, Lcom/twitter/android/platform/c;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "TwitterDataSync"

    const-string v3, "Sync canceled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3e1
    move-exception v2

    :try_start_3e2
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_3ed
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3e2 .. :try_end_3ed} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3e2 .. :try_end_3ed} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_3e2 .. :try_end_3ed} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_3e2 .. :try_end_3ed} :catch_421

    goto/16 :goto_1f2

    :catch_3ef
    move-exception v2

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_2

    :cond_3fd
    const/4 v2, 0x0

    goto/16 :goto_2df

    :cond_400
    :try_start_400
    iget v2, v2, Lcom/twitter/android/network/c;->b:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_2ef

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_411
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_400 .. :try_end_411} :catch_413
    .catch Ljava/io/IOException; {:try_start_400 .. :try_end_411} :catch_42f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_400 .. :try_end_411} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_400 .. :try_end_411} :catch_3d3
    .catch Lorg/json/JSONException; {:try_start_400 .. :try_end_411} :catch_421

    goto/16 :goto_2ef

    :catch_413
    move-exception v2

    :try_start_414
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_41f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_414 .. :try_end_41f} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_414 .. :try_end_41f} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_414 .. :try_end_41f} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_414 .. :try_end_41f} :catch_421

    goto/16 :goto_2ef

    :catch_421
    move-exception v2

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_2

    :catch_42f
    move-exception v2

    :try_start_430
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_43b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_430 .. :try_end_43b} :catch_57
    .catch Landroid/accounts/OperationCanceledException; {:try_start_430 .. :try_end_43b} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_430 .. :try_end_43b} :catch_3ef
    .catch Lorg/json/JSONException; {:try_start_430 .. :try_end_43b} :catch_421

    goto/16 :goto_2ef

    :cond_43d
    const/4 v2, 0x0

    goto/16 :goto_30e

    :cond_440
    const/4 v2, 0x0

    goto/16 :goto_317

    :cond_443
    const/4 v3, 0x0

    goto/16 :goto_38f
.end method

.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 7

    invoke-virtual {p0}, Lcom/twitter/android/platform/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p5}, Lcom/twitter/android/platform/c;->a(Lcom/twitter/android/network/d;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    return-void
.end method
