.class public Lcom/samsung/map/SmsObserver;
.super Landroid/database/ContentObserver;
.source "SmsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/map/SmsObserver$1;,
        Lcom/samsung/map/SmsObserver$SimFullReceiver;
    }
.end annotation


# static fields
.field private static lock:Z

.field private static sync:Ljava/lang/Object;


# instance fields
.field private content:Landroid/content/ContentResolver;

.field intentFilter:Landroid/content/IntentFilter;

.field private msgBuf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/map/SmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/samsung/map/MessageNotificationService;

.field simFullReceiver:Lcom/samsung/map/SmsObserver$SimFullReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/map/SmsObserver;->lock:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/map/SmsObserver;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/map/MessageHandler;Lcom/samsung/map/MessageNotificationService;)V
    .registers 11
    .parameter "smsHandler"
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    .line 268
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 75
    iput-object v7, p0, Lcom/samsung/map/SmsObserver;->content:Landroid/content/ContentResolver;

    .line 77
    iput-object v7, p0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    .line 269
    iput-object p2, p0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    .line 270
    invoke-virtual {p2}, Lcom/samsung/map/MessageNotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/SmsObserver;->content:Landroid/content/ContentResolver;

    .line 271
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    .line 273
    invoke-direct {p0}, Lcom/samsung/map/SmsObserver;->getInfo()Landroid/database/Cursor;

    move-result-object v0

    .line 274
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5c

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_26
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 276
    iget-object v2, p0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/map/SmsInfo;

    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "protocol"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/map/SmsInfo;-><init>(II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_26

    .line 281
    :cond_5c
    if-eqz v0, :cond_61

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_61
    const-string v2, "content://mms-sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 288
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/samsung/map/SmsObserver;->content:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    new-instance v2, Lcom/samsung/map/SmsObserver$SimFullReceiver;

    invoke-direct {v2, p0, v7}, Lcom/samsung/map/SmsObserver$SimFullReceiver;-><init>(Lcom/samsung/map/SmsObserver;Lcom/samsung/map/SmsObserver$1;)V

    iput-object v2, p0, Lcom/samsung/map/SmsObserver;->simFullReceiver:Lcom/samsung/map/SmsObserver$SimFullReceiver;

    .line 292
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/map/SmsObserver;->intentFilter:Landroid/content/IntentFilter;

    .line 293
    iget-object v2, p0, Lcom/samsung/map/SmsObserver;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SIM_FULL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/samsung/map/SmsObserver;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/map/SmsObserver;->simFullReceiver:Lcom/samsung/map/SmsObserver$SimFullReceiver;

    iget-object v3, p0, Lcom/samsung/map/SmsObserver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, v2, v3}, Lcom/samsung/map/MessageNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/map/SmsObserver;)Lcom/samsung/map/MessageNotificationService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    return-object v0
.end method

.method private getInfo()Landroid/database/Cursor;
    .registers 10

    .prologue
    .line 147
    const/4 v6, 0x0

    .line 148
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, "content://sms/"

    .line 149
    .local v8, uriStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    .local v1, uri:Landroid/net/Uri;
    :try_start_7
    iget-object v0, p0, Lcom/samsung/map/SmsObserver;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v6

    .line 163
    :cond_11
    :goto_11
    return-object v6

    .line 152
    :catch_12
    move-exception v7

    .line 153
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SmsObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz v6, :cond_11

    .line 156
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_36

    .line 159
    const/4 v6, 0x0

    .line 160
    goto :goto_11

    .line 157
    :catch_36
    move-exception v0

    .line 159
    const/4 v6, 0x0

    .line 160
    goto :goto_11

    .line 159
    :catchall_39
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method static lockObserver()V
    .registers 2

    .prologue
    .line 108
    sget-object v1, Lcom/samsung/map/SmsObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/samsung/map/SmsObserver;->lock:Z

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private typeToFolder(I)Ljava/lang/String;
    .registers 5
    .parameter "type"

    .prologue
    .line 167
    new-instance v0, Ljava/lang/String;

    const-string v1, "TELECOM/MSG/"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, folder:Ljava/lang/String;
    packed-switch p1, :pswitch_data_6e

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OTHER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_1d
    return-object v0

    .line 170
    :pswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    goto :goto_1d

    .line 173
    :pswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    goto :goto_1d

    .line 176
    :pswitch_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_1d

    .line 181
    :pswitch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OUTBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    goto :goto_1d

    .line 168
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_46
        :pswitch_1e
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method

.method static unlockObserver()V
    .registers 2

    .prologue
    .line 114
    sget-object v1, Lcom/samsung/map/SmsObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/samsung/map/SmsObserver;->lock:Z

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method baseToSms(I)I
    .registers 3
    .parameter "msgId"

    .prologue
    .line 191
    shl-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public checkMessages()V
    .registers 24

    .prologue
    .line 195
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 197
    .local v18, messages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/samsung/map/SmsObserver;->getInfo()Landroid/database/Cursor;

    move-result-object v14

    .line 198
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_147

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_147

    .line 199
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_14
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_147

    .line 200
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 201
    .local v17, id:I
    const-string v2, "type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 202
    .local v22, type:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b0

    const/4 v7, 0x2

    .line 204
    .local v7, proto:I
    :goto_3a
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/map/SmsInfo;

    iget v0, v2, Lcom/samsung/map/SmsInfo;->type:I

    move/from16 v19, v0

    .line 208
    .local v19, oldtype:I
    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_ab

    .line 209
    packed-switch v22, :pswitch_data_1ce

    .line 221
    :pswitch_6c
    const/4 v2, 0x6

    move/from16 v0, v19

    if-eq v0, v2, :cond_99

    .line 222
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    const/4 v9, 0x3

    const/4 v10, 0x0

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/16 v3, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/map/SmsObserver;->baseToSms(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/map/SmsObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/map/SmsObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9, v10, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    .line 227
    :cond_99
    :goto_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/map/SmsInfo;

    move/from16 v0, v22

    invoke-direct {v4, v0, v7}, Lcom/samsung/map/SmsInfo;-><init>(II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v19           #oldtype:I
    :cond_ab
    :goto_ab
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_14

    .line 202
    .end local v7           #proto:I
    :cond_b0
    const/4 v7, 0x1

    goto :goto_3a

    .line 211
    .restart local v7       #proto:I
    .restart local v19       #oldtype:I
    :pswitch_b2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    const/4 v9, 0x3

    const/4 v10, 0x0

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/map/SmsObserver;->baseToSms(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/map/SmsObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9, v10, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto :goto_99

    .line 216
    :pswitch_d4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    const/4 v9, 0x3

    const/4 v10, 0x0

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/map/SmsObserver;->baseToSms(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/map/SmsObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9, v10, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto :goto_99

    .line 230
    .end local v19           #oldtype:I
    :cond_f6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/map/SmsObserver;->baseToSms(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/map/MmsSmsMessageFolder;->checkHandlers(Ljava/lang/Integer;)Z

    move-result v15

    .line 232
    .local v15, exist:Z
    if-nez v15, :cond_133

    .line 236
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_112

    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_133

    .line 238
    :cond_112
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    const/4 v9, 0x3

    const/4 v10, 0x0

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/map/SmsObserver;->baseToSms(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/map/SmsObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9, v10, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    .line 243
    :cond_133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/map/SmsInfo;

    move/from16 v0, v22

    invoke-direct {v4, v0, v7}, Lcom/samsung/map/SmsInfo;-><init>(II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ab

    .line 247
    .end local v7           #proto:I
    .end local v15           #exist:Z
    .end local v17           #id:I
    .end local v22           #type:I
    :cond_147
    if-eqz v14, :cond_14c

    .line 248
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_14c
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 253
    .local v20, tempset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 254
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 255
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_169
    :goto_169
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1cd

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 256
    .restart local v17       #id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/samsung/map/SmsInfo;

    .line 257
    .local v21, tmp:Lcom/samsung/map/SmsInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/map/SmsObserver;->baseToSms(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/map/MmsSmsMessageFolder;->checkHandlers(Ljava/lang/Integer;)Z

    move-result v15

    .line 259
    .restart local v15       #exist:Z
    if-nez v15, :cond_169

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    new-instance v8, Lcom/samsung/map/MapEventReport;

    const/16 v9, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/map/SmsObserver;->baseToSms(I)I

    move-result v10

    move-object/from16 v0, v21

    iget v5, v0, Lcom/samsung/map/SmsInfo;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/map/SmsObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    move-object/from16 v0, v21

    iget v13, v0, Lcom/samsung/map/SmsInfo;->proto:I

    invoke-direct/range {v8 .. v13}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4, v8}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto :goto_169

    .line 265
    .end local v15           #exist:Z
    .end local v17           #id:I
    .end local v21           #tmp:Lcom/samsung/map/SmsInfo;
    :cond_1cd
    return-void

    .line 209
    :pswitch_data_1ce
    .packed-switch 0x2
        :pswitch_d4
        :pswitch_6c
        :pswitch_6c
        :pswitch_b2
    .end packed-switch
.end method

.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 301
    sget-object v1, Lcom/samsung/map/SmsObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_3
    sget-boolean v0, Lcom/samsung/map/SmsObserver;->lock:Z

    if-nez v0, :cond_a

    .line 303
    invoke-virtual {p0}, Lcom/samsung/map/SmsObserver;->checkMessages()V

    .line 305
    :cond_a
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method
